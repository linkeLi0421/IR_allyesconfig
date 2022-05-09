; ModuleID = '/llk/IR_all_yes/net/sched/sch_red.c_pt.bc'
source_filename = "../net/sched/sch_red.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.red_parms = type { i32, i32, i32, i32, %struct.reciprocal_value, i32, i32, i32, i8, i8, i8, [256 x i8] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.112, [48 x i8], %union.anon.113, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.115, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.112 = type { i64 }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { i32, ptr }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.117, i32, i32, i32, i16, i16, %union.anon.119, i32, %union.anon.120, %union.anon.121, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.117 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tc_red_qopt_offload = type { i32, i32, i32, %union.anon.151 }
%union.anon.151 = type { %struct.tc_red_qopt_offload_params }
%struct.tc_red_qopt_offload_params = type { i32, i32, i32, i32, i8, i8, i8, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_bitfield32 = type { i32, i32 }
%struct.tc_red_qopt = type { i32, i32, i32, i8, i8, i8, i8 }
%struct.red_sched_data = type { i32, i8, i8, %struct.timer_list, ptr, %struct.red_parms, %struct.red_vars, %struct.red_stats, ptr, %struct.tcf_qevent, %struct.tcf_qevent }
%struct.red_vars = type { i32, i32, i32, i64 }
%struct.red_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.tcf_qevent = type { ptr, %struct.tcf_block_ext_info, ptr }
%struct.tcf_block_ext_info = type { i32, ptr, ptr, i32 }
%struct.tc_red_xstats = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@red_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @red_class_ops, [16 x i8] c"red\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 464, i32 0, ptr @red_enqueue, ptr @red_dequeue, ptr @red_peek, ptr @red_init, ptr @red_reset, ptr @red_destroy, ptr @red_change, ptr null, ptr null, ptr null, ptr @red_dump, ptr @red_dump_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_red__507_568_red_module_init6 = internal global ptr @red_module_init, section ".initcall6.init", align 4
@__exitcall_red_module_exit = internal global ptr @red_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file508 = internal constant [31 x i8] c"sch_red.file=net/sched/sch_red\00", section ".modinfo", align 1
@__UNIQUE_ID_license509 = internal constant [20 x i8] c"sch_red.license=GPL\00", section ".modinfo", align 1
@red_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr @red_graft, ptr @red_leaf, ptr null, ptr @red_find, ptr null, ptr null, ptr @red_walk, ptr null, ptr null, ptr null, ptr @red_dump_class, ptr null }, [40 x i8] zeroinitializer }, align 32
@noop_qdisc = external dso_local global %struct.Qdisc, align 128
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@qdisc_calculate_pkt_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@red_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&q->adapt_timer)\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@red_policy = internal constant { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [40 x i8] } { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ { i8, i8, i16, { i16, [2 x i8] } } { i8 0, i8 0, i16 0, { i16, [2 x i8] } { i16 4, [2 x i8] undef } }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 256, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 16, i8 0, i16 0, %union.anon.48 { i32 15 } }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer } }>, [40 x i8] zeroinitializer }, align 32
@bfifo_qdisc_ops = external dso_local global %struct.Qdisc_ops, align 4
@red_get_flags.__msg = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"sch_red: flags should be passed either through qopt, or through a dedicated attribute\00", [42 x i8] zeroinitializer }, align 32
@red_validate_flags.__msg = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sch_red: nodrop mode is only meaningful with ECN\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"red_class_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 534, i32 37 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 596, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 598, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 835, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 271, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 341, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"red_policy\00", align 1
@___asan_gen_.35 = private constant [23 x i8] c"../net/sched/sch_red.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 224, i32 32 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 203, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"../include/net/red.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 223, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 991, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_file508, ptr @__UNIQUE_ID_license509, ptr @__exitcall_red_module_exit, ptr @__initcall__kmod_sch_red__507_568_red_module_init6, ptr @red_module_exit, ptr @red_class_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @red_init.__key, ptr @.str.5, ptr @red_policy, ptr @red_get_flags.__msg, ptr @red_validate_flags.__msg, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @red_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @red_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @red_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @red_get_flags.__msg to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @red_validate_flags.__msg to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @red_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @red_qdisc_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @red_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @red_qdisc_ops) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @red_enqueue(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #11
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ret, align 4, !annotation !44
  %parms = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %vars = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 2
  %qidlestart.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 24
  %3 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %qidlestart.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 19, i32 1
  %5 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %backlog, align 4
  %qavg.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %7 = ptrtoint ptr %qavg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qavg.i.i, align 8
  %Wlog.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 33
  %9 = ptrtoint ptr %Wlog.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %Wlog.i.i, align 1
  %conv.i6.i = zext i8 %10 to i32
  %shr.i.i = lshr i32 %8, %conv.i6.i
  %sub.i.i = add i32 %8, %6
  %add.i.i = sub i32 %sub.i.i, %shr.i.i
  br label %red_calc_qavg.exit

if.else.i:                                        ; preds = %entry
  %call.i.i = tail call i64 @ktime_get() #11
  %11 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %qidlestart.i.i, align 8
  %sub.i.i.i = sub i64 %call.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i.i)
  %cmp8.i.i.i.i.i = icmp slt i64 %sub.i.i.i, 0
  %13 = tail call i64 @llvm.abs.i64(i64 %sub.i.i.i, i1 false) #11
  %14 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %13, i32 0) #14, !srcloc !45
  %asmresult.i.i.i.i.i.i = extractvalue { i64, i32 } %14, 0
  %asmresult4.i.i.i.i.i.i = extractvalue { i64, i32 } %14, 1
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %13, i64 %asmresult.i.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i.i) #14, !srcloc !46
  %asmresult10.i.i.i.i.i.i = extractvalue { i64, i32 } %15, 0
  %div1811.i.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i.i, 9
  %sub210.i.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i.i
  %cond213.i.i.i.i.i = select i1 %cmp8.i.i.i.i.i, i64 %sub210.i.i.i.i.i, i64 %div1811.i.i.i.i.i
  %Scell_max.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %16 = ptrtoint ptr %Scell_max.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %Scell_max.i.i, align 4
  %conv.i8.i = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i.i.i, i64 %conv.i8.i)
  %cmp.i9.i = icmp slt i64 %cond213.i.i.i.i.i, %conv.i8.i
  %extract.t.i.i = trunc i64 %cond213.i.i.i.i.i to i32
  %cond.off0.i.i = select i1 %cmp.i9.i, i32 %extract.t.i.i, i32 %17
  %Scell_log.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %18 = ptrtoint ptr %Scell_log.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %Scell_log.i.i, align 4
  %conv4.i.i = zext i8 %19 to i32
  %shr.i10.i = ashr i32 %cond.off0.i.i, %conv4.i.i
  %and.i.i = and i32 %shr.i10.i, 255
  %arrayidx.i.i = getelementptr %struct.red_parms, ptr %parms, i32 0, i32 11, i32 %and.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i.i = zext i8 %21 to i32
  %qavg.i11.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %22 = ptrtoint ptr %qavg.i11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qavg.i11.i, align 8
  %shr6.i.i = lshr i32 %23, %conv5.i.i
  br label %red_calc_qavg.exit

if.else.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %qavg7.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %qavg7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qavg7.i.i, align 8
  %conv8.i.i = zext i32 %25 to i64
  %conv9.i.i = sext i32 %cond.off0.i.i to i64
  %mul.i.i = mul nsw i64 %conv8.i.i, %conv9.i.i
  %sh_prom.i.i = zext i8 %19 to i64
  %shr12.i.i = lshr i64 %mul.i.i, %sh_prom.i.i
  %conv13.i.i = trunc i64 %shr12.i.i to i32
  %shr15.i.i = lshr i32 %25, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr15.i.i, i32 %conv13.i.i)
  %cmp16.i.i = icmp ugt i32 %shr15.i.i, %conv13.i.i
  %sub.i12.i = sub i32 %25, %conv13.i.i
  %spec.select.i.i = select i1 %cmp16.i.i, i32 %sub.i12.i, i32 %shr15.i.i
  br label %red_calc_qavg.exit

red_calc_qavg.exit:                               ; preds = %if.else.i.i, %if.then.i.i, %if.then.i
  %retval.0.i = phi i32 [ %add.i.i, %if.then.i ], [ %shr6.i.i, %if.then.i.i ], [ %spec.select.i.i, %if.else.i.i ]
  %qavg = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %26 = ptrtoint ptr %qavg to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i, ptr %qavg, align 8
  %27 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %qidlestart.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %cmp.i.not = icmp eq i64 %28, 0
  br i1 %cmp.i.not, label %red_calc_qavg.exit.if.end_crit_edge, label %if.then

red_calc_qavg.exit.if.end_crit_edge:              ; preds = %red_calc_qavg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %red_calc_qavg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %qidlestart.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %red_calc_qavg.exit.if.end_crit_edge
  %30 = ptrtoint ptr %qavg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qavg, align 8
  %32 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %parms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp.i.i = icmp ult i32 %31, %33
  br i1 %cmp.i.i, label %sw.bb.i, label %if.else.i.i130

if.else.i.i130:                                   ; preds = %if.end
  %qth_max.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %34 = ptrtoint ptr %qth_max.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qth_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %31)
  %cmp1.not.i.i = icmp ugt i32 %35, %31
  br i1 %cmp1.not.i.i, label %sw.bb1.i, label %sw.bb32

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %vars to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %vars, align 8
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %if.else.i.i130
  %37 = ptrtoint ptr %vars to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vars, align 8
  %inc.i = add i32 %38, 1
  store i32 %inc.i, ptr %vars, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not.i = icmp eq i32 %inc.i, 0
  br i1 %tobool.not.i, label %if.else.i138, label %if.then.i135

if.then.i135:                                     ; preds = %sw.bb1.i
  %sub.i.i131 = sub i32 %31, %33
  %Wlog.i.i132 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 33
  %39 = ptrtoint ptr %Wlog.i.i132 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %Wlog.i.i132, align 1
  %conv.i.i = zext i8 %40 to i32
  %shr.i.i133 = lshr i32 %sub.i.i131, %conv.i.i
  %mul.i.i134 = mul i32 %shr.i.i133, %inc.i
  %qR.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 3
  %41 = ptrtoint ptr %qR.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qR.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i134, i32 %42)
  %cmp.i25.not.i = icmp ult i32 %mul.i.i134, %42
  br i1 %cmp.i25.not.i, label %if.then.i135.sw.epilog_crit_edge, label %sw.bb

if.then.i135.sw.epilog_crit_edge:                 ; preds = %if.then.i135
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.else.i138:                                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i26.i = tail call i32 @prandom_u32() #11
  %max_P_reciprocal.i27.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %43 = ptrtoint ptr %max_P_reciprocal.i27.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.unpack.i28.i = load i32, ptr %max_P_reciprocal.i27.i, align 4
  %.elt2.i29.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %44 = ptrtoint ptr %.elt2.i29.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack3.i30.i = load i32, ptr %.elt2.i29.i, align 4
  %R.sroa.2.4.extract.shift.i.i31.i = lshr i32 %.unpack3.i30.i, 24
  %R.sroa.4.4.extract.shift.i.i32.i = lshr i32 %.unpack3.i30.i, 16
  %conv.i.i33.i = zext i32 %call.i26.i to i64
  %conv1.i.i34.i = zext i32 %.unpack.i28.i to i64
  %mul.i.i35.i = mul nuw i64 %conv1.i.i34.i, %conv.i.i33.i
  %shr.i.i36.i = lshr i64 %mul.i.i35.i, 32
  %conv2.i.i37.i = trunc i64 %shr.i.i36.i to i32
  %sub.i.i38.i = sub i32 %call.i26.i, %conv2.i.i37.i
  %shr4.i.i39.i = lshr i32 %sub.i.i38.i, %R.sroa.2.4.extract.shift.i.i31.i
  %add.i.i40.i = add i32 %shr4.i.i39.i, %conv2.i.i37.i
  %conv5.i.i41.i = and i32 %R.sroa.4.4.extract.shift.i.i32.i, 255
  %shr6.i.i42.i = lshr i32 %add.i.i40.i, %conv5.i.i41.i
  %qR9.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 3
  %45 = ptrtoint ptr %qR9.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr6.i.i42.i, ptr %qR9.i, align 4
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then.i135
  %46 = ptrtoint ptr %vars to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %vars, align 8
  %call.i.i136 = tail call i32 @prandom_u32() #11
  %max_P_reciprocal.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %47 = ptrtoint ptr %max_P_reciprocal.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack.i.i = load i32, ptr %max_P_reciprocal.i.i, align 4
  %.elt2.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %48 = ptrtoint ptr %.elt2.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.unpack3.i.i = load i32, ptr %.elt2.i.i, align 4
  %R.sroa.2.4.extract.shift.i.i.i = lshr i32 %.unpack3.i.i, 24
  %R.sroa.4.4.extract.shift.i.i.i = lshr i32 %.unpack3.i.i, 16
  %conv.i.i.i = zext i32 %call.i.i136 to i64
  %conv1.i.i.i = zext i32 %.unpack.i.i to i64
  %mul.i.i.i = mul nuw i64 %conv1.i.i.i, %conv.i.i.i
  %shr.i.i.i = lshr i64 %mul.i.i.i, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %sub.i.i.i137 = sub i32 %call.i.i136, %conv2.i.i.i
  %shr4.i.i.i = lshr i32 %sub.i.i.i137, %R.sroa.2.4.extract.shift.i.i.i
  %add.i.i.i = add i32 %shr4.i.i.i, %conv2.i.i.i
  %conv5.i.i.i = and i32 %R.sroa.4.4.extract.shift.i.i.i, 255
  %shr6.i.i.i = lshr i32 %add.i.i.i, %conv5.i.i.i
  %49 = ptrtoint ptr %qR.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shr6.i.i.i, ptr %qR.i.i, align 4
  %overlimits.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %50 = ptrtoint ptr %overlimits.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %overlimits.i, align 16
  %inc.i140 = add i32 %51, 1
  store i32 %inc.i140, ptr %overlimits.i, align 16
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %flags.i, align 4
  %54 = and i8 %53, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool12.not = icmp eq i8 %54, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %stats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25
  br label %congestion_drop

if.end14:                                         ; preds = %sw.bb
  %call15 = tail call fastcc i32 @INET_ECN_set_ce(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end14
  %prob_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 1
  %55 = ptrtoint ptr %prob_mark to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %prob_mark, align 4
  %inc19 = add i32 %56, 1
  store i32 %inc19, ptr %prob_mark, align 4
  %qe_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 2
  %call20 = call ptr @tcf_qevent_handle(ptr noundef %qe_mark, ptr noundef %sch, ptr noundef %skb, ptr noundef %to_free, ptr noundef nonnull %ret) #11
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.then22, label %if.then17.sw.epilog_crit_edge

if.then17.sw.epilog_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then22:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ret, align 4
  %or = or i32 %58, 2
  br label %cleanup

if.else:                                          ; preds = %if.end14
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %flags.i, align 4
  %61 = and i8 %60, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool25.not = icmp eq i8 %61, 0
  br i1 %tobool25.not, label %if.then26, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %stats27 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25
  br label %congestion_drop

sw.bb32:                                          ; preds = %if.else.i.i130
  %62 = ptrtoint ptr %vars to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %vars, align 8
  %overlimits.i143 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %63 = ptrtoint ptr %overlimits.i143 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %overlimits.i143, align 16
  %inc.i144 = add i32 %64, 1
  store i32 %inc.i144, ptr %overlimits.i143, align 16
  %flags.i145 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %65 = ptrtoint ptr %flags.i145 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %flags.i145, align 4
  %67 = and i8 %66, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %.not = icmp eq i8 %67, 1
  br i1 %.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  %forced_drop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 2
  br label %congestion_drop

if.end40:                                         ; preds = %sw.bb32
  %call41 = tail call fastcc i32 @INET_ECN_set_ce(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.else52, label %if.then43

if.then43:                                        ; preds = %if.end40
  %forced_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 3
  %68 = ptrtoint ptr %forced_mark to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %forced_mark, align 4
  %inc45 = add i32 %69, 1
  store i32 %inc45, ptr %forced_mark, align 4
  %qe_mark46 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 2
  %call47 = call ptr @tcf_qevent_handle(ptr noundef %qe_mark46, ptr noundef %sch, ptr noundef %skb, ptr noundef %to_free, ptr noundef nonnull %ret) #11
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.then49, label %if.then43.sw.epilog_crit_edge

if.then43.sw.epilog_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then49:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ret, align 4
  %or50 = or i32 %71, 2
  br label %cleanup

if.else52:                                        ; preds = %if.end40
  %72 = ptrtoint ptr %flags.i145 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %flags.i145, align 4
  %74 = and i8 %73, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool54.not = icmp eq i8 %74, 0
  br i1 %tobool54.not, label %if.then55, label %if.else52.sw.epilog_crit_edge

if.else52.sw.epilog_crit_edge:                    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then55:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #13
  %forced_drop57 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 2
  br label %congestion_drop

sw.epilog:                                        ; preds = %if.else52.sw.epilog_crit_edge, %if.then43.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %if.then17.sw.epilog_crit_edge, %if.else.i138, %if.then.i135.sw.epilog_crit_edge, %sw.bb.i
  %skb.addr.0 = phi ptr [ %call20, %if.then17.sw.epilog_crit_edge ], [ %skb, %if.else.sw.epilog_crit_edge ], [ %call47, %if.then43.sw.epilog_crit_edge ], [ %skb, %if.else52.sw.epilog_crit_edge ], [ %skb, %sw.bb.i ], [ %skb, %if.then.i135.sw.epilog_crit_edge ], [ %skb, %if.else.i138 ]
  %stab1.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 5
  %75 = ptrtoint ptr %stab1.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %stab1.i.i, align 4
  %call.i.i151 = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i151)
  %tobool.not.i.i152 = icmp eq i32 %call.i.i151, 0
  br i1 %tobool.not.i.i152, label %land.lhs.true.i.i, label %sw.epilog.do.end8.i.i_crit_edge

sw.epilog.do.end8.i.i_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %sw.epilog
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @qdisc_calculate_pkt_len.__warned, align 1
  br i1 %.b14.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i153

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

if.then.i.i153:                                   ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_calculate_pkt_len.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.3) #11
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i153, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %sw.epilog.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %76, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.qdisc_enqueue.exit_crit_edge, label %if.then11.i.i

do.end8.i.i.qdisc_enqueue.exit_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_enqueue.exit

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__qdisc_calculate_pkt_len(ptr noundef %skb.addr.0, ptr noundef nonnull %76) #11
  br label %qdisc_enqueue.exit

qdisc_enqueue.exit:                               ; preds = %if.then11.i.i, %do.end8.i.i.qdisc_enqueue.exit_crit_edge
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 128
  %call.i = call i32 %78(ptr noundef %skb.addr.0, ptr noundef %1, ptr noundef %to_free) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then64, label %if.else67, !prof !47

if.then64:                                        ; preds = %qdisc_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #13
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3
  %79 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %81 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %backlog.i, align 4
  %add.i = add i32 %82, %80
  store i32 %add.i, ptr %backlog.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %83 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %qlen, align 8
  %inc66 = add i32 %84, 1
  store i32 %inc66, ptr %qlen, align 8
  br label %cleanup

if.else67:                                        ; preds = %qdisc_enqueue.exit
  %and = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %if.then69, label %if.else67.cleanup_crit_edge

if.else67.cleanup_crit_edge:                      ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then69:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  %pdrop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4
  %85 = ptrtoint ptr %pdrop to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pdrop, align 8
  %inc71 = add i32 %86, 1
  store i32 %inc71, ptr %pdrop, align 8
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %87 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %88, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %cleanup

congestion_drop:                                  ; preds = %if.then55, %if.then37, %if.then26, %if.then13
  %forced_drop57.sink157 = phi ptr [ %forced_drop57, %if.then55 ], [ %forced_drop, %if.then37 ], [ %stats27, %if.then26 ], [ %stats, %if.then13 ]
  %89 = ptrtoint ptr %forced_drop57.sink157 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %forced_drop57.sink157, align 8
  %inc58 = add i32 %90, 1
  store i32 %inc58, ptr %forced_drop57.sink157, align 8
  %qe_early_drop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 2
  %call74 = call ptr @tcf_qevent_handle(ptr noundef %qe_early_drop, ptr noundef %sch, ptr noundef %skb, ptr noundef %to_free, ptr noundef nonnull %ret) #11
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %if.then76, label %if.end78

if.then76:                                        ; preds = %congestion_drop
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ret, align 4
  %or77 = or i32 %92, 2
  br label %cleanup

if.end78:                                         ; preds = %congestion_drop
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %to_free, align 4
  %95 = ptrtoint ptr %call74 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %call74, align 8
  store ptr %call74, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %96 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %97, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.then76, %if.then69, %if.else67.cleanup_crit_edge, %if.then64, %if.then49, %if.then22
  %retval.0 = phi i32 [ %or, %if.then22 ], [ 2, %if.end78 ], [ %or77, %if.then76 ], [ %or50, %if.then49 ], [ %call.i, %if.then69 ], [ %call.i, %if.else67.cleanup_crit_edge ], [ 0, %if.then64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @red_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %3(ptr noundef %1) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb.i.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i.not.i.i = icmp eq i16 %9, 0
  br i1 %tobool.i.not.i.i, label %if.then.cond.end.i.i_crit_edge, label %cond.true.i.i

if.then.cond.end.i.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %11 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %if.then.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %12 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %13 = tail call i32 @llvm.read_register.i32(metadata !34) #11
  %and.i.i.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !48
  %17 = tail call i32 @llvm.read_register.i32(metadata !34) #11
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %22, ptrtoint (ptr @lockdep_recursion to i32)
  %23 = inttoptr i32 %add.i.i.i.i.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !49
  %26 = tail call i32 @llvm.read_register.i32(metadata !34) #11
  %and.i.i.i7.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !34) #11
  %and.i.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %34 = tail call i32 @llvm.read_register.i32(metadata !34) #11
  %and.i.i.i9.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %37, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !50
  %38 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %41, ptrtoint (ptr @hardirqs_enabled to i32)
  %42 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !51
  %45 = tail call i32 @llvm.read_register.i32(metadata !34) #11
  %and.i.i.i12.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %44, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !47

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %5 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %49 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %50, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !52
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %51 = tail call ptr @llvm.returnaddress(i32 0) #11
  %52 = ptrtoint ptr %51 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %52) #11
  %53 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %54, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %55 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %56, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %52) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !53
  %57 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %58, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  %59 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cb.i.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %61 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %62, %60
  store i32 %sub.i, ptr %backlog.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %63 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %qlen, align 8
  %dec = add i32 %64, -1
  store i32 %dec, ptr %qlen, align 8
  br label %if.end7

if.else:                                          ; preds = %entry
  %qidlestart.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 24
  %65 = ptrtoint ptr %qidlestart.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %qidlestart.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %cmp.i.not = icmp eq i64 %66, 0
  br i1 %cmp.i.not, label %if.then5, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i64 @ktime_get() #11
  %67 = ptrtoint ptr %qidlestart.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %call.i, ptr %qidlestart.i, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.else.if.end7_crit_edge, %qdisc_bstats_update.exit
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @red_peek(ptr nocapture noundef readonly %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  %ops = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 16
  %peek = getelementptr inbounds %struct.Qdisc_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %peek to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peek, align 4
  %call1 = tail call ptr %5(ptr noundef %1) #11
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @red_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tb) #11
  %0 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 5
  %1 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 6
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 1, i32 1
  %2 = call ptr @memset(ptr %tb, i32 255, i32 28)
  %3 = ptrtoint ptr %qdisc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @noop_qdisc, ptr %qdisc, align 8
  %sch1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %4 = ptrtoint ptr %sch1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sch, ptr %sch1, align 8
  %adapt_timer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  tail call void @init_timer_key(ptr noundef %adapt_timer, ptr noundef nonnull @red_adaptative_timer, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @red_init.__key) #11
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %5 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %6 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @red_policy, i32 noundef 0, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = call fastcc i32 @__red_change(ptr noundef %sch, ptr noundef nonnull %tb, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %qe_early_drop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %call10 = call i32 @tcf_qevent_init(ptr noundef %qe_early_drop, ptr noundef %sch, i32 noundef 3, ptr noundef %8, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %qe_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call15 = call i32 @tcf_qevent_init(ptr noundef %qe_mark, ptr noundef %sch, i32 noundef 4, ptr noundef %10, ptr noundef %extack) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @red_reset(ptr nocapture noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  tail call void @qdisc_reset(ptr noundef %1) #11
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %backlog, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %3 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen, align 8
  %vars = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 2
  %qidlestart.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 24
  %4 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %qidlestart.i.i, align 8
  %qavg.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %5 = ptrtoint ptr %qavg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qavg.i, align 8
  %6 = ptrtoint ptr %vars to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %vars, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @red_destroy(ptr noundef %sch) #2 align 64 {
entry:
  %opt.i = alloca %struct.tc_red_qopt_offload, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qe_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 2
  tail call void @tcf_qevent_destroy(ptr noundef %qe_mark, ptr noundef %sch) #11
  %qe_early_drop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 2
  tail call void @tcf_qevent_destroy(ptr noundef %qe_early_drop, ptr noundef %sch) #11
  %adapt_timer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %call1 = tail call i32 @del_timer_sync(ptr noundef %adapt_timer) #11
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %opt.i) #11
  %4 = getelementptr inbounds i8, ptr %opt.i, i32 12
  %5 = call ptr @memset(ptr %4, i32 0, i32 24)
  %handle.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt.i, i32 0, i32 1
  %handle2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %6 = ptrtoint ptr %handle2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle2.i, align 32
  %8 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %handle.i, align 4
  %parent.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt.i, i32 0, i32 2
  %parent3.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %9 = ptrtoint ptr %parent3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %parent3.i, align 4
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %parent.i, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %12 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %13, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.red_offload.exit_crit_edge, label %lor.lhs.false.i

entry.red_offload.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %red_offload.exit

lor.lhs.false.i:                                  ; preds = %entry
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %15, i32 0, i32 42
  %16 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.red_offload.exit_crit_edge, label %if.end.i

lor.lhs.false.i.red_offload.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %red_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %opt.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %opt.i, align 4
  %call29.i = call i32 %17(ptr noundef %3, i32 noundef 7, ptr noundef nonnull %opt.i) #11
  br label %red_offload.exit

red_offload.exit:                                 ; preds = %if.end.i, %lor.lhs.false.i.red_offload.exit_crit_edge, %entry.red_offload.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %opt.i) #11
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 1, i32 1
  %19 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qdisc, align 8
  call void @qdisc_put(ptr noundef %20) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @red_change(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tb) #11
  %0 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 5
  %1 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 6
  %tobool.not = icmp eq ptr %opt, null
  %2 = call ptr @memset(ptr %tb, i32 255, i32 28)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %3 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %4 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @red_policy, i32 noundef 0, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %qe_early_drop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %call4 = call i32 @tcf_qevent_validate_change(ptr noundef %qe_early_drop, ptr noundef %6, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %qe_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call9 = call i32 @tcf_qevent_validate_change(ptr noundef %qe_mark, ptr noundef %8, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = call fastcc i32 @__red_change(ptr noundef %sch, ptr noundef nonnull %tb, ptr noundef %extack)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @red_dump(ptr noundef %sch, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i73 = alloca %struct.nla_bitfield32, align 4
  %tmp.i = alloca i32, align 4
  %hw_stats.i = alloca %struct.tc_red_qopt_offload, align 4
  %opt = alloca %struct.tc_red_qopt, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %opt) #11
  %0 = getelementptr inbounds %struct.tc_red_qopt, ptr %opt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tc_red_qopt, ptr %opt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tc_red_qopt, ptr %opt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tc_red_qopt, ptr %opt, i32 0, i32 4
  %4 = getelementptr inbounds %struct.tc_red_qopt, ptr %opt, i32 0, i32 5
  %5 = getelementptr inbounds %struct.tc_red_qopt, ptr %opt, i32 0, i32 6
  %6 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %privdata.i, align 8
  %8 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %opt, align 4
  %parms = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %9 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %parms, align 4
  %Wlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 33
  %11 = ptrtoint ptr %Wlog to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %Wlog, align 1
  %conv = zext i8 %12 to i32
  %shr = lshr i32 %10, %conv
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr, ptr %0, align 4
  %qth_max5 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %14 = ptrtoint ptr %qth_max5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qth_max5, align 4
  %shr9 = lshr i32 %15, %conv
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr9, ptr %1, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %12, ptr %2, align 4
  %Plog14 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 34
  %18 = ptrtoint ptr %Plog14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %Plog14, align 2
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %3, align 1
  %Scell_log16 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %21 = ptrtoint ptr %Scell_log16 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %Scell_log16, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %4, align 2
  %flags17 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %24 = ptrtoint ptr %flags17 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags17, align 4
  %26 = and i8 %25, 7
  %userbits = getelementptr inbounds %struct.red_sched_data, ptr %privdata.i, i32 0, i32 2
  %27 = ptrtoint ptr %userbits to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %userbits, align 1
  %or71 = or i8 %26, %28
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or71, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hw_stats.i) #11
  %30 = getelementptr inbounds i8, ptr %hw_stats.i, i32 20
  %31 = call ptr @memset(ptr %30, i32 255, i32 16)
  %32 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %hw_stats.i, align 4
  %handle.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %hw_stats.i, i32 0, i32 1
  %handle1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %33 = ptrtoint ptr %handle1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %handle1.i, align 32
  %35 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %handle.i, align 4
  %parent.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %hw_stats.i, i32 0, i32 2
  %parent2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %36 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %parent2.i, align 4
  %38 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %parent.i, align 4
  %39 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %hw_stats.i, i32 0, i32 3
  %bstats3.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %bstats3.i, ptr %39, align 4
  %qstats.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %hw_stats.i, i32 0, i32 3, i32 0, i32 1
  %qstats4.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  %41 = ptrtoint ptr %qstats.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %qstats4.i, ptr %qstats.i, align 4
  %call.i = call i32 @qdisc_offload_dump_helper(ptr noundef %sch, i32 noundef 7, ptr noundef nonnull %hw_stats.i) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hw_stats.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp79 = icmp eq ptr %43, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp79
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end25

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %call26 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 16, ptr noundef nonnull %opt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %lor.lhs.false, label %if.end25.if.then.i.i_crit_edge

if.end25.if.then.i.i_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end25
  %max_P = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %44 = ptrtoint ptr %max_P to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_P, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #11
  %46 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tmp.i, align 4
  %call.i72 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool30.not = icmp eq i32 %call.i72, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %47 = ptrtoint ptr %flags17 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %flags17, align 4
  %conv33 = zext i8 %48 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i73) #11
  %49 = getelementptr inbounds %struct.nla_bitfield32, ptr %tmp.i73, i32 0, i32 1
  %50 = ptrtoint ptr %tmp.i73 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv33, ptr %tmp.i73, align 4
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 15, ptr %49, align 4
  %call.i74 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i73) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool35.not = icmp eq i32 %call.i74, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %lor.lhs.false31.if.then.i.i_crit_edge

lor.lhs.false31.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false36:                                  ; preds = %lor.lhs.false31
  %qe_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 26, i32 0, i32 0, i32 2
  %call37 = call i32 @tcf_qevent_dump(ptr noundef %skb, i32 noundef 6, ptr noundef %qe_mark) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %lor.lhs.false36.if.then.i.i_crit_edge

lor.lhs.false36.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %qe_early_drop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 2
  %call40 = call i32 @tcf_qevent_dump(ptr noundef %skb, i32 noundef 5, ptr noundef %qe_early_drop) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %lor.lhs.false39.if.then.i.i_crit_edge

lor.lhs.false39.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end43:                                         ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %54 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i, ptr %43, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %55 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %lor.lhs.false39.if.then.i.i_crit_edge, %lor.lhs.false36.if.then.i.i_crit_edge, %lor.lhs.false31.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end25.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %57 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %58, %43
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !54

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %59 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %60 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end43, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %56, %if.end43 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %opt) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @red_dump_stats(ptr noundef %sch, ptr noundef %d) #2 align 64 {
entry:
  %st = alloca %struct.tc_red_xstats, align 4
  %hw_stats_request = alloca %struct.tc_red_qopt_offload, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %st) #11
  %flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hw_stats_request) #11
  %6 = ptrtoint ptr %hw_stats_request to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %hw_stats_request, align 4
  %handle = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %hw_stats_request, i32 0, i32 1
  %handle2 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %7 = ptrtoint ptr %handle2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle2, align 32
  %9 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %handle, align 4
  %parent = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %hw_stats_request, i32 0, i32 2
  %parent3 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %10 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %parent3, align 4
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %parent, align 4
  %13 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %hw_stats_request, i32 0, i32 3
  %14 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %hw_stats_request, i32 0, i32 3, i32 0, i32 1
  %15 = call ptr @memset(ptr %14, i32 0, i32 20)
  %stats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %stats, ptr %13, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev_ops, align 8
  %ndo_setup_tc = getelementptr inbounds %struct.net_device_ops, ptr %18, i32 0, i32 42
  %19 = ptrtoint ptr %ndo_setup_tc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndo_setup_tc, align 4
  %call4 = call i32 %20(ptr noundef %3, i32 noundef 7, ptr noundef nonnull %hw_stats_request) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hw_stats_request) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stats5 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25
  %21 = ptrtoint ptr %stats5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stats5, align 8
  %forced_drop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 2
  %23 = ptrtoint ptr %forced_drop to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %forced_drop, align 8
  %add = add i32 %24, %22
  %25 = ptrtoint ptr %st to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %st, align 4
  %pdrop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4
  %26 = ptrtoint ptr %pdrop to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pdrop, align 8
  %pdrop8 = getelementptr inbounds %struct.tc_red_xstats, ptr %st, i32 0, i32 1
  %28 = ptrtoint ptr %pdrop8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %pdrop8, align 4
  %other = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %other to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %other, align 4
  %other10 = getelementptr inbounds %struct.tc_red_xstats, ptr %st, i32 0, i32 2
  %31 = ptrtoint ptr %other10 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %other10, align 4
  %prob_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %prob_mark to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prob_mark, align 4
  %forced_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 3
  %34 = ptrtoint ptr %forced_mark to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %forced_mark, align 4
  %add13 = add i32 %35, %33
  %marked = getelementptr inbounds %struct.tc_red_xstats, ptr %st, i32 0, i32 3
  %36 = ptrtoint ptr %marked to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add13, ptr %marked, align 4
  %call14 = call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef nonnull %st, i32 noundef 16) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %st) #11
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @red_graft(ptr noundef %sch, i32 noundef %arg, ptr noundef %new, ptr nocapture noundef writeonly %old, ptr noundef %extack) #2 align 64 {
entry:
  %graft_offload.i = alloca %struct.tc_red_qopt_offload, align 4
  %qstats.i.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %new, null
  %spec.store.select = select i1 %cmp, ptr @noop_qdisc, ptr %new
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 1, i32 1
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.sch_tree_lock.exit.i_crit_edge

entry.sch_tree_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit.i

if.else.i.i:                                      ; preds = %entry
  %dev_queue.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i.i.i.i, align 8
  %qdisc_sleeping.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %qdisc_sleeping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc_sleeping.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !47

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #11
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %entry.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %sch, %entry.sch_tree_lock.exit.i_crit_edge ], [ %5, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %5, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %5, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #11
  %6 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qdisc, align 4
  store ptr %spec.store.select, ptr %qdisc, align 4
  %cmp.not.i = icmp eq ptr %7, null
  br i1 %cmp.not.i, label %sch_tree_lock.exit.i.if.end.i_crit_edge, label %if.then.i

sch_tree_lock.exit.i.if.end.i_crit_edge:          ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i.i) #11
  %8 = call ptr @memset(ptr %qstats.i.i.i, i32 0, i32 20)
  %cpu_qstats.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %cpu_qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_qstats.i.i.i, align 4
  %qstats1.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %7, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i.i, ptr noundef %10, ptr noundef %qstats1.i.i.i) #11
  %11 = ptrtoint ptr %qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qstats.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %7, i32 0, i32 17, i32 2
  %13 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i.i.i.i, align 8
  %add.i.i.i = add i32 %14, %12
  %backlog3.i.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %backlog3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %backlog3.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i.i) #11
  call void @qdisc_reset(ptr noundef nonnull %7) #11
  call void @qdisc_tree_reduce_backlog(ptr noundef nonnull %7, i32 noundef %add.i.i.i, i32 noundef %16) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sch_tree_lock.exit.i.if.end.i_crit_edge
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i, align 8
  %and.i6.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool.not.i7.i = icmp eq i32 %and.i6.i, 0
  br i1 %tobool.not.i7.i, label %if.else.i12.i, label %if.end.i.qdisc_replace.exit_crit_edge

if.end.i.qdisc_replace.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_replace.exit

if.else.i12.i:                                    ; preds = %if.end.i
  %dev_queue.i.i.i8.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %19 = ptrtoint ptr %dev_queue.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_queue.i.i.i8.i, align 8
  %qdisc_sleeping.i.i.i9.i = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %qdisc_sleeping.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qdisc_sleeping.i.i.i9.i, align 4
  %call1.i.i10.i = call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i10.i)
  %tobool.not.i.i11.i = icmp eq i32 %call1.i.i10.i, 0
  br i1 %tobool.not.i.i11.i, label %land.rhs.i.i14.i, label %if.else.i12.i.qdisc_replace.exit_crit_edge

if.else.i12.i.qdisc_replace.exit_crit_edge:       ; preds = %if.else.i12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_replace.exit

land.rhs.i.i14.i:                                 ; preds = %if.else.i12.i
  %.b41.i.i13.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i13.i, label %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, label %if.then.i.i15.i, !prof !47

land.rhs.i.i14.i.qdisc_replace.exit_crit_edge:    ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_replace.exit

if.then.i.i15.i:                                  ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #11
  br label %qdisc_replace.exit

qdisc_replace.exit:                               ; preds = %if.then.i.i15.i, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, %if.else.i12.i.qdisc_replace.exit_crit_edge, %if.end.i.qdisc_replace.exit_crit_edge
  %.sink.i16.i = phi ptr [ %sch, %if.end.i.qdisc_replace.exit_crit_edge ], [ %22, %if.else.i12.i.qdisc_replace.exit_crit_edge ], [ %22, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge ], [ %22, %if.then.i.i15.i ]
  %lock.i.i.i17.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i16.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i17.i) #11
  %23 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %7, ptr %old, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %graft_offload.i) #11
  %24 = ptrtoint ptr %graft_offload.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %graft_offload.i, align 4
  %handle.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %graft_offload.i, i32 0, i32 1
  %handle1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %25 = ptrtoint ptr %handle1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %handle1.i, align 32
  %27 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %handle.i, align 4
  %parent.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %graft_offload.i, i32 0, i32 2
  %parent2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %28 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %parent2.i, align 4
  %30 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %parent.i, align 4
  %31 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %graft_offload.i, i32 0, i32 3
  %32 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %graft_offload.i, i32 0, i32 3, i32 0, i32 1
  %33 = call ptr @memset(ptr %32, i32 0, i32 20)
  %handle3.i = getelementptr inbounds %struct.Qdisc, ptr %spec.store.select, i32 0, i32 7
  %34 = ptrtoint ptr %handle3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %handle3.i, align 32
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %31, align 4
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %37 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_queue.i.i, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 128
  call void @qdisc_offload_graft_helper(ptr noundef %40, ptr noundef %sch, ptr noundef %spec.store.select, ptr noundef %7, i32 noundef 7, ptr noundef nonnull %graft_offload.i, ptr noundef %extack) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %graft_offload.i) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @red_leaf(ptr nocapture noundef readonly %sch, i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @red_find(ptr nocapture noundef readnone %sch, i32 noundef %classid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @red_walk(ptr noundef %sch, ptr noundef %walker) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %walker to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %walker, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %walker, i32 0, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %walker, i32 0, i32 1
  %4 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp slt i32 %3, %5
  br i1 %cmp.not, label %if.then.if.end5_crit_edge, label %if.then1

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then1:                                         ; preds = %if.then
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %walker, i32 0, i32 3
  %6 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fn, align 4
  %call = tail call i32 %7(ptr noundef %sch, i32 noundef 1, ptr noundef %walker) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.then1.if.end5_crit_edge

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %walker to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %walker, align 4
  br label %if.end7

if.end5:                                          ; preds = %if.then1.if.end5_crit_edge, %if.then.if.end5_crit_edge
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %count, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end5, %if.then3, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @red_dump_class(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %skb, ptr nocapture noundef %tcm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %0 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tcm_handle, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %tcm_handle, align 4
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 1, i32 1
  %2 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qdisc, align 8
  %handle = getelementptr inbounds %struct.Qdisc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 32
  %tcm_info = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 6
  %6 = ptrtoint ptr %tcm_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tcm_info, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sch_tree_unlock(ptr noundef %q) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %entry
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i.i, align 8
  %qdisc_sleeping.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %qdisc_sleeping.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc_sleeping.i.i, align 4
  %call1.i = tail call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs.i:                                       ; preds = %if.else
  %.b41.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !47

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi ptr [ %q, %entry.if.end_crit_edge ], [ %5, %if.else.if.end_crit_edge ], [ %5, %land.rhs.i.if.end_crit_edge ], [ %5, %if.then.i ]
  %lock.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_tree_reduce_backlog(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_add_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_offload_graft_helper(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @INET_ECN_set_ce(ptr noundef %skb) unnamed_addr #7 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #13
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %2 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %4 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %entry.skb_protocol.exit_crit_edge [
    i16 -30552, label %entry.if.then.i.i.i_crit_edge
    i16 -32512, label %entry.if.then.i.i.i_crit_edge42
  ]

entry.if.then.i.i.i_crit_edge42:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

entry.skb_protocol.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %entry.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge42
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i.i.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp.i.i.i = icmp ult i16 %3, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !54

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 598, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %5 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  %6 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !44
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %5, align 2, !annotation !44
  %8 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %12 = add i32 %vlan_depth.1.i.i.i, %11
  %sub.i1.i.i.i.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !47

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %14, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !54
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %15 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !54
  br i1 %15, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !54

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  br label %return

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %17, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %entry.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ %1, %entry.skb_protocol.exit_crit_edge ], [ %17, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %19 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %retval.2.i.i.i, label %skb_protocol.exit.return_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb6
  ]

skb_protocol.exit.return_crit_edge:               ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %skb_protocol.exit
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %23 to i32
  %add.ptr.i = getelementptr i8, ptr %21, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 20
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i, align 8
  %cmp.not = icmp ugt ptr %add.ptr, %25
  br i1 %cmp.not, label %sw.bb.return_crit_edge, label %if.then

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %sw.bb
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 1
  %26 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tos.i, align 1
  %28 = add i8 %27, 1
  %29 = and i8 %28, 3
  %30 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool2.not.i = icmp eq i8 %29, 0
  %lnot.ext.i = zext i1 %tobool2.not.i to i32
  br label %return

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv4.i = zext i8 %29 to i16
  %add5.i = add nuw nsw i16 %conv4.i, -5
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 7
  %31 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %check.i, align 2
  %add.i.i = add i16 %32, %add5.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i, i16 %add5.i)
  %cmp.i.i = icmp ult i16 %add.i.i, %add5.i
  %conv6.i.i = zext i1 %cmp.i.i to i16
  %add7.i.i = add i16 %add.i.i, %conv6.i.i
  %33 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %add7.i.i, ptr %check.i, align 2
  %34 = or i8 %27, 3
  %35 = ptrtoint ptr %tos.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %tos.i, align 1
  br label %return

sw.bb6:                                           ; preds = %skb_protocol.exit
  %head.i23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %36 = ptrtoint ptr %head.i23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i23, align 8
  %network_header.i24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i24 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i24, align 4
  %conv.i25 = zext i16 %39 to i32
  %add.ptr.i26 = getelementptr i8, ptr %37, i32 %conv.i25
  %add.ptr8 = getelementptr i8, ptr %add.ptr.i26, i32 40
  %tail.i27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i27, align 8
  %cmp10.not = icmp ugt ptr %add.ptr8, %41
  br i1 %cmp10.not, label %sw.bb6.return_crit_edge, label %if.then12

sw.bb6.return_crit_edge:                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then12:                                        ; preds = %sw.bb6
  %42 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i26, align 2
  %44 = and i16 %43, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp.i14.not.i = icmp eq i16 %44, 0
  br i1 %cmp.i14.not.i, label %if.then12.return_crit_edge, label %if.end.i32

if.then12.return_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i32:                                       ; preds = %if.then12
  %45 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i26, align 4
  %or.i = or i32 %46, 3145728
  store i32 %or.i, ptr %add.ptr.i26, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %47 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %48 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %48)
  %cmp.i = icmp eq i16 %48, 1024
  br i1 %cmp.i, label %if.then3.i, label %if.end.i32.return_crit_edge

if.end.i32.return_crit_edge:                      ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then3.i:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  %49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %neg.i.i = xor i32 %46, -1
  %add.i.i.i33 = add i32 %51, %neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i33, i32 %neg.i.i)
  %cmp.i.i.i34 = icmp ult i32 %add.i.i.i33, %neg.i.i
  %conv.i.i.i35 = zext i1 %cmp.i.i.i34 to i32
  %add1.i.i.i = add i32 %add.i.i.i33, %or.i
  %add.i.i36 = add i32 %add1.i.i.i, %conv.i.i.i35
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i36, i32 %or.i)
  %cmp.i.i37 = icmp ult i32 %add.i.i36, %or.i
  %conv.i.i38 = zext i1 %cmp.i.i37 to i32
  %add1.i.i = add i32 %add.i.i36, %conv.i.i38
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add1.i.i, ptr %49, align 8
  br label %return

return:                                           ; preds = %if.then3.i, %if.end.i32.return_crit_edge, %if.then12.return_crit_edge, %sw.bb6.return_crit_edge, %if.end.i, %if.then.i, %sw.bb.return_crit_edge, %skb_protocol.exit.return_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i
  %retval.0 = phi i32 [ 0, %sw.bb6.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %skb_protocol.exit.return_crit_edge ], [ 1, %if.end.i ], [ %lnot.ext.i, %if.then.i ], [ 0, %if.then12.return_crit_edge ], [ 1, %if.then3.i ], [ 1, %if.end.i32.return_crit_edge ], [ 0, %do.end.i.i.i ], [ 0, %cleanup.thread.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcf_qevent_handle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qdisc_calculate_pkt_len(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @red_adaptative_timer(ptr noundef %t) #7 align 64 {
entry:
  %tmp65.i = alloca %struct.reciprocal_value, align 8
  call void @__sanitizer_cov_trace_pc() #13
  %sch1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %sch1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sch1, align 8
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i, align 8
  %qdisc_sleeping.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %qdisc_sleeping.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc_sleeping.i, align 4
  %lock.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %qavg1.i = getelementptr i8, ptr %t, i32 360
  %6 = ptrtoint ptr %qavg1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qavg1.i, align 8
  %qidlestart.i.i = getelementptr i8, ptr %t, i32 368
  %8 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %qidlestart.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp.i.not.i = icmp eq i64 %9, 0
  br i1 %cmp.i.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %parms = getelementptr i8, ptr %t, i32 52
  %call.i.i = tail call i64 @ktime_get() #11
  %10 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %qidlestart.i.i, align 8
  %sub.i.i.i = sub i64 %call.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i.i)
  %cmp8.i.i.i.i.i = icmp slt i64 %sub.i.i.i, 0
  %12 = tail call i64 @llvm.abs.i64(i64 %sub.i.i.i, i1 false) #11
  %13 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %12, i32 0) #14, !srcloc !45
  %asmresult.i.i.i.i.i.i = extractvalue { i64, i32 } %13, 0
  %asmresult4.i.i.i.i.i.i = extractvalue { i64, i32 } %13, 1
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %12, i64 %asmresult.i.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i.i) #14, !srcloc !46
  %asmresult10.i.i.i.i.i.i = extractvalue { i64, i32 } %14, 0
  %div1811.i.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i.i, 9
  %sub210.i.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i.i
  %cond213.i.i.i.i.i = select i1 %cmp8.i.i.i.i.i, i64 %sub210.i.i.i.i.i, i64 %div1811.i.i.i.i.i
  %Scell_max.i.i = getelementptr i8, ptr %t, i32 60
  %15 = ptrtoint ptr %Scell_max.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %Scell_max.i.i, align 4
  %conv.i95.i = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i.i.i, i64 %conv.i95.i)
  %cmp.i96.i = icmp slt i64 %cond213.i.i.i.i.i, %conv.i95.i
  %extract.t.i.i = trunc i64 %cond213.i.i.i.i.i to i32
  %cond.off0.i.i = select i1 %cmp.i96.i, i32 %extract.t.i.i, i32 %16
  %Scell_log.i.i = getelementptr i8, ptr %t, i32 88
  %17 = ptrtoint ptr %Scell_log.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %Scell_log.i.i, align 4
  %conv4.i.i = zext i8 %18 to i32
  %shr.i.i = ashr i32 %cond.off0.i.i, %conv4.i.i
  %and.i.i = and i32 %shr.i.i, 255
  %arrayidx.i.i = getelementptr %struct.red_parms, ptr %parms, i32 0, i32 11, i32 %and.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %qavg1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qavg1.i, align 8
  %shr6.i.i = lshr i32 %22, %conv5.i.i
  br label %if.end.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %qavg1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qavg1.i, align 8
  %conv8.i.i = zext i32 %24 to i64
  %conv9.i.i = sext i32 %cond.off0.i.i to i64
  %mul.i.i = mul nsw i64 %conv8.i.i, %conv9.i.i
  %sh_prom.i.i = zext i8 %18 to i64
  %shr12.i.i = lshr i64 %mul.i.i, %sh_prom.i.i
  %conv13.i.i = trunc i64 %shr12.i.i to i32
  %shr15.i.i = lshr i32 %24, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr15.i.i, i32 %conv13.i.i)
  %cmp16.i.i = icmp ugt i32 %shr15.i.i, %conv13.i.i
  %sub.i.i = sub i32 %24, %conv13.i.i
  %spec.select.i.i = select i1 %cmp16.i.i, i32 %sub.i.i, i32 %shr15.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i, %if.then.i.i, %entry.if.end.i_crit_edge
  %qavg.0.i = phi i32 [ %7, %entry.if.end.i_crit_edge ], [ %shr6.i.i, %if.then.i.i ], [ %spec.select.i.i, %if.else.i.i ]
  %Wlog.i = getelementptr i8, ptr %t, i32 89
  %25 = ptrtoint ptr %Wlog.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %Wlog.i, align 1
  %conv.i = zext i8 %26 to i32
  %shr.i = lshr i32 %qavg.0.i, %conv.i
  %target_max.i = getelementptr i8, ptr %t, i32 84
  %27 = ptrtoint ptr %target_max.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %target_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %28)
  %cmp.i = icmp ugt i32 %shr.i, %28
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %max_P.i = getelementptr i8, ptr %t, i32 64
  %29 = ptrtoint ptr %max_P.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_P.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483645, i32 %30)
  %cmp8.i = icmp ult i32 %30, -2147483645
  br i1 %cmp8.i, label %if.then10.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 171798695, i32 %30)
  %cmp24.i = icmp ugt i32 %30, 171798695
  %div2293.i = lshr i32 %30, 2
  %cond.i = select i1 %cmp24.i, i32 42949673, i32 %div2293.i
  %add27.i = add nuw i32 %cond.i, %30
  %31 = ptrtoint ptr %max_P.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add27.i, ptr %max_P.i, align 4
  br label %red_adaptative_algo.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %target_min.i = getelementptr i8, ptr %t, i32 80
  %32 = ptrtoint ptr %target_min.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %target_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %33)
  %cmp28.i = icmp ult i32 %shr.i, %33
  br i1 %cmp28.i, label %land.lhs.true30.i, label %if.else.i.red_adaptative_algo.exit_crit_edge

if.else.i.red_adaptative_algo.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %red_adaptative_algo.exit

land.lhs.true30.i:                                ; preds = %if.else.i
  %max_P31.i = getelementptr i8, ptr %t, i32 64
  %34 = ptrtoint ptr %max_P31.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_P31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42949672, i32 %35)
  %cmp42.i = icmp ugt i32 %35, 42949672
  br i1 %cmp42.i, label %if.then44.i, label %land.lhs.true30.i.red_adaptative_algo.exit_crit_edge

land.lhs.true30.i.red_adaptative_algo.exit_crit_edge: ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %red_adaptative_algo.exit

if.then44.i:                                      ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #13
  %div46.i = udiv i32 %35, 10
  %mul47.i = mul nuw i32 %div46.i, 9
  %36 = ptrtoint ptr %max_P31.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul47.i, ptr %max_P31.i, align 4
  br label %red_adaptative_algo.exit

red_adaptative_algo.exit:                         ; preds = %if.then44.i, %land.lhs.true30.i.red_adaptative_algo.exit_crit_edge, %if.else.i.red_adaptative_algo.exit_crit_edge, %if.then10.i
  %max_P52.i = getelementptr i8, ptr %t, i32 64
  %37 = ptrtoint ptr %max_P52.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_P52.i, align 4
  %qth_delta.i = getelementptr i8, ptr %t, i32 76
  %39 = ptrtoint ptr %qth_delta.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qth_delta.i, align 4
  %div5592.i = lshr i32 %40, 1
  %add56.i = add i32 %div5592.i, %38
  %div57.i = udiv i32 %add56.i, %40
  %41 = tail call i32 @llvm.umax.i32(i32 %div57.i, i32 1) #11
  %max_P_reciprocal.i = getelementptr i8, ptr %t, i32 68
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp65.i) #11
  call void @reciprocal_value(ptr nonnull sret(%struct.reciprocal_value) align 4 %tmp65.i, i32 noundef %41) #11
  %42 = ptrtoint ptr %tmp65.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %tmp65.i, align 8
  %44 = ptrtoint ptr %max_P_reciprocal.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %43, ptr %max_P_reciprocal.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp65.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %45, 50
  %call3 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #11
  call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__red_change(ptr noundef %sch, ptr nocapture noundef readonly %tb, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca %struct.nla_bitfield32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 3
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %add.ptr.i129 = getelementptr i8, ptr %3, i32 4
  %qth_min = getelementptr i8, ptr %1, i32 8
  %8 = ptrtoint ptr %qth_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qth_min, align 4
  %qth_max = getelementptr i8, ptr %1, i32 12
  %Wlog = getelementptr i8, ptr %1, i32 16
  %10 = ptrtoint ptr %Wlog to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %Wlog, align 4
  %Scell_log = getelementptr i8, ptr %1, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 true) #11, !range !55
  %sub.i.i = sub nuw nsw i32 32, %12
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %conv.i = zext i8 %11 to i32
  %add.i = add nuw nsw i32 %cond.i.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 31
  br i1 %cmp.i, label %cond.end.cleanup_crit_edge, label %if.end.i

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %cond.end
  %13 = ptrtoint ptr %Scell_log to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %Scell_log, align 2
  %15 = ptrtoint ptr %qth_max to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qth_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i34.i = icmp eq i32 %16, 0
  %17 = tail call i32 @llvm.ctlz.i32(i32 %16, i1 true) #11, !range !55
  %sub.i35.i = sub nuw nsw i32 32, %17
  %cond.i36.i = select i1 %tobool.not.i34.i, i32 0, i32 %sub.i35.i
  %add4.i = add nuw nsw i32 %cond.i36.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add4.i)
  %cmp5.i = icmp ugt i32 %add4.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %14)
  %cmp10.i = icmp ugt i8 %14, 31
  %or.cond.i = or i1 %cmp10.i, %cmp5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %9)
  %cmp14.i = icmp ult i32 %16, %9
  %or.cond33.i = or i1 %cmp14.i, %or.cond.i
  br i1 %or.cond33.i, label %if.end.i.cleanup_crit_edge, label %if.end17.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17.i:                                       ; preds = %if.end.i
  %tobool.not.i = icmp eq ptr %add.ptr.i129, null
  br i1 %tobool.not.i, label %if.end17.i.if.end12_crit_edge, label %if.end17.i.for.body.i_crit_edge

if.end17.i.for.body.i_crit_edge:                  ; preds = %if.end17.i
  br label %for.body.i

if.end17.i.if.end12_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end17.i.for.body.i_crit_edge
  %i.038.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end17.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %add.ptr.i129, i32 %i.038.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %19)
  %cmp22.i = icmp ugt i8 %19, 31
  %inc.i = add nuw nsw i32 %i.038.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  %or.cond39.i = select i1 %cmp22.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond39.i, label %red_check_params.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

red_check_params.exit:                            ; preds = %for.body.i
  br i1 %cmp22.i, label %red_check_params.exit.cleanup_crit_edge, label %red_check_params.exit.if.end12_crit_edge

red_check_params.exit.if.end12_crit_edge:         ; preds = %red_check_params.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

red_check_params.exit.cleanup_crit_edge:          ; preds = %red_check_params.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %red_check_params.exit.if.end12_crit_edge, %if.end17.i.if.end12_crit_edge
  %flags13 = getelementptr i8, ptr %1, i32 19
  %20 = ptrtoint ptr %flags13 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags13, align 1
  %arrayidx14 = getelementptr ptr, ptr %tb, i32 4
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i130 = icmp eq i8 %21, 0
  %tobool1.not.i = icmp eq ptr %23, null
  %or.cond.i131 = or i1 %tobool.not.i130, %tobool1.not.i
  br i1 %or.cond.i131, label %if.end4.i, label %do.body.i

do.body.i:                                        ; preds = %if.end12
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @red_get_flags.__msg) #11
  %tobool2.not.i = icmp eq ptr %extack, null
  br i1 %tobool2.not.i, label %do.body.i.cleanup_crit_edge, label %if.then3.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @red_get_flags.__msg, ptr %extack, align 4
  br label %cleanup

if.end4.i:                                        ; preds = %if.end12
  br i1 %tobool1.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #11
  %25 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %tmp.i, align 4, !alias.scope !56, !annotation !44
  %26 = getelementptr inbounds %struct.nla_bitfield32, ptr %tmp.i, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %26, align 4, !alias.scope !56, !annotation !44
  %call.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %23, i32 noundef 8) #11
  %28 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %flags.sroa.0.0.copyload.i = load i32, ptr %tmp.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %flags.sroa.6.0.copyload.i = load i32, ptr %26, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #11
  %phi.bo = xor i32 %flags.sroa.6.0.copyload.i, -1
  br label %if.end18

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = and i8 %21, 7
  %and.i = zext i8 %30 to i32
  br label %if.end18

if.end18:                                         ; preds = %if.else.i, %if.then6.i
  %flags.sroa.6.0.i = phi i32 [ %phi.bo, %if.then6.i ], [ -8, %if.else.i ]
  %flags.sroa.0.0.i = phi i32 [ %flags.sroa.0.0.copyload.i, %if.then6.i ], [ %and.i, %if.else.i ]
  %and13.i = and i8 %21, -8
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp19.not = icmp eq i32 %32, 0
  br i1 %cmp19.not, label %if.end18.if.end27_crit_edge, label %if.then20

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then20:                                        ; preds = %if.end18
  %call22 = call ptr @fifo_create_dflt(ptr noundef %sch, ptr noundef nonnull @bfifo_qdisc_ops, i32 noundef %32, ptr noundef %extack) #11
  %cmp.i132 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  call void @qdisc_hash_add(ptr noundef %call22, i1 noundef zeroext true) #11
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end18.if.end27_crit_edge
  %child.0 = phi ptr [ %call22, %if.end26 ], [ null, %if.end18.if.end27_crit_edge ]
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 8
  %and.i133 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i133)
  %tobool.not.i134 = icmp eq i32 %and.i133, 0
  br i1 %tobool.not.i134, label %if.else.i136, label %if.end27.sch_tree_lock.exit_crit_edge

if.end27.sch_tree_lock.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit

if.else.i136:                                     ; preds = %if.end27
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %36 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i135 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i135, label %land.rhs.i.i, label %if.else.i136.sch_tree_lock.exit_crit_edge

if.else.i136.sch_tree_lock.exit_crit_edge:        ; preds = %if.else.i136
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i136
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !47

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #11
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i136.sch_tree_lock.exit_crit_edge, %if.end27.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end27.sch_tree_lock.exit_crit_edge ], [ %39, %if.else.i136.sch_tree_lock.exit_crit_edge ], [ %39, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %39, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #11
  %flags28 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %40 = ptrtoint ptr %flags28 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %flags28, align 4
  %conv = zext i8 %41 to i32
  %and = and i32 %flags.sroa.6.0.i, %conv
  %or = or i32 %and, %flags.sroa.0.0.i
  %conv29 = trunc i32 %or to i8
  %42 = and i8 %conv29, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %42)
  %43 = icmp eq i8 %42, 8
  br i1 %43, label %do.body.i138, label %if.end33

do.body.i138:                                     ; preds = %sch_tree_lock.exit
  call void @do_trace_netlink_extack(ptr noundef nonnull @red_validate_flags.__msg) #11
  %tobool4.not.i = icmp eq ptr %extack, null
  br i1 %tobool4.not.i, label %do.body.i138.unlock_out_crit_edge, label %if.then5.i

do.body.i138.unlock_out_crit_edge:                ; preds = %do.body.i138
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock_out

if.then5.i:                                       ; preds = %do.body.i138
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @red_validate_flags.__msg, ptr %extack, align 4
  br label %unlock_out

if.end33:                                         ; preds = %sch_tree_lock.exit
  %45 = ptrtoint ptr %flags28 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv29, ptr %flags28, align 4
  %userbits35 = getelementptr inbounds %struct.red_sched_data, ptr %privdata.i, i32 0, i32 2
  %46 = ptrtoint ptr %userbits35 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %and13.i, ptr %userbits35, align 1
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i, align 4
  %49 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %privdata.i, align 8
  %tobool38.not = icmp eq ptr %child.0, null
  br i1 %tobool38.not, label %if.end33.if.end42_crit_edge, label %if.then39

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 1, i32 1
  %50 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %qdisc, align 8
  call fastcc void @qdisc_tree_flush_backlog(ptr noundef %51)
  %52 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %qdisc, align 8
  store ptr %child.0, ptr %qdisc, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end33.if.end42_crit_edge
  %old_child.0 = phi ptr [ %53, %if.then39 ], [ null, %if.end33.if.end42_crit_edge ]
  %parms = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %54 = ptrtoint ptr %qth_min to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qth_min, align 4
  %56 = ptrtoint ptr %qth_max to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qth_max, align 4
  %58 = ptrtoint ptr %Wlog to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %Wlog, align 4
  %Plog = getelementptr i8, ptr %1, i32 17
  %60 = ptrtoint ptr %Plog to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %Plog, align 1
  %62 = ptrtoint ptr %Scell_log to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %Scell_log, align 2
  call fastcc void @red_set_parms(ptr noundef %parms, i32 noundef %55, i32 noundef %57, i8 noundef zeroext %59, i8 noundef zeroext %61, i8 noundef zeroext %63, ptr noundef %add.ptr.i129, i32 noundef %cond)
  %vars = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 2
  %qavg.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %64 = ptrtoint ptr %qavg.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %qavg.i, align 8
  %65 = ptrtoint ptr %vars to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %vars, align 8
  %adapt_timer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %call47 = call i32 @del_timer(ptr noundef %adapt_timer) #11
  %66 = ptrtoint ptr %flags13 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %flags13, align 1
  %68 = and i8 %67, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool51.not = icmp eq i8 %68, 0
  br i1 %tobool51.not, label %if.end42.if.end55_crit_edge, label %if.then52

if.end42.if.end55_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then52:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %69, 50
  %call54 = call i32 @mod_timer(ptr noundef %adapt_timer, i32 noundef %add) #11
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end42.if.end55_crit_edge
  %qdisc56 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 1, i32 1
  %70 = ptrtoint ptr %qdisc56 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %qdisc56, align 8
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %71, i32 0, i32 17, i32 2
  %72 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool58.not = icmp eq i32 %73, 0
  br i1 %tobool58.not, label %if.then59, label %if.end55.if.end61_crit_edge

if.end55.if.end61_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i64 @ktime_get() #11
  %qidlestart.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 24
  %74 = ptrtoint ptr %qidlestart.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %call.i, ptr %qidlestart.i, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end55.if.end61_crit_edge
  call fastcc void @sch_tree_unlock(ptr noundef %sch)
  call fastcc void @red_offload(ptr noundef %sch, i1 noundef zeroext true)
  %tobool63.not = icmp eq ptr %old_child.0, null
  br i1 %tobool63.not, label %if.end61.cleanup_crit_edge, label %if.then64

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  call void @qdisc_put(ptr noundef nonnull %old_child.0) #11
  br label %cleanup

unlock_out:                                       ; preds = %if.then5.i, %do.body.i138.unlock_out_crit_edge
  %75 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i, align 8
  %and.i141 = and i32 %76, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i141)
  %tobool.not.i142 = icmp eq i32 %and.i141, 0
  br i1 %tobool.not.i142, label %if.else.i147, label %unlock_out.sch_tree_unlock.exit_crit_edge

unlock_out.sch_tree_unlock.exit_crit_edge:        ; preds = %unlock_out
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_unlock.exit

if.else.i147:                                     ; preds = %unlock_out
  %dev_queue.i.i.i143 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %77 = ptrtoint ptr %dev_queue.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_queue.i.i.i143, align 8
  %qdisc_sleeping.i.i.i144 = getelementptr inbounds %struct.netdev_queue, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %qdisc_sleeping.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %qdisc_sleeping.i.i.i144, align 4
  %call1.i.i145 = call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i145)
  %tobool.not.i.i146 = icmp eq i32 %call1.i.i145, 0
  br i1 %tobool.not.i.i146, label %land.rhs.i.i149, label %if.else.i147.sch_tree_unlock.exit_crit_edge

if.else.i147.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i147
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_unlock.exit

land.rhs.i.i149:                                  ; preds = %if.else.i147
  %.b41.i.i148 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i148, label %land.rhs.i.i149.sch_tree_unlock.exit_crit_edge, label %if.then.i.i150, !prof !47

land.rhs.i.i149.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i149
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_unlock.exit

if.then.i.i150:                                   ; preds = %land.rhs.i.i149
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #11
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i150, %land.rhs.i.i149.sch_tree_unlock.exit_crit_edge, %if.else.i147.sch_tree_unlock.exit_crit_edge, %unlock_out.sch_tree_unlock.exit_crit_edge
  %.sink.i151 = phi ptr [ %sch, %unlock_out.sch_tree_unlock.exit_crit_edge ], [ %80, %if.else.i147.sch_tree_unlock.exit_crit_edge ], [ %80, %land.rhs.i.i149.sch_tree_unlock.exit_crit_edge ], [ %80, %if.then.i.i150 ]
  %lock.i.i.i152 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i151, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i152) #11
  %tobool66.not = icmp eq ptr %child.0, null
  br i1 %tobool66.not, label %sch_tree_unlock.exit.cleanup_crit_edge, label %if.then67

sch_tree_unlock.exit.cleanup_crit_edge:           ; preds = %sch_tree_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then67:                                        ; preds = %sch_tree_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @qdisc_put(ptr noundef nonnull %child.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %sch_tree_unlock.exit.cleanup_crit_edge, %if.then64, %if.end61.cleanup_crit_edge, %if.then24, %if.then3.i, %do.body.i.cleanup_crit_edge, %red_check_params.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %33, %if.then24 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %red_check_params.exit.cleanup_crit_edge ], [ 0, %if.then64 ], [ 0, %if.end61.cleanup_crit_edge ], [ -22, %if.then67 ], [ -22, %sch_tree_unlock.exit.cleanup_crit_edge ], [ -22, %cond.end.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.then3.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_qevent_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @reciprocal_value(ptr sret(%struct.reciprocal_value) align 4, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fifo_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_hash_add(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qdisc_tree_flush_backlog(ptr noundef %sch) unnamed_addr #7 align 64 {
entry:
  %qstats.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i) #11
  %0 = call ptr @memset(ptr %qstats.i, i32 0, i32 20)
  %cpu_qstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 12
  %1 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpu_qstats.i, align 4
  %qstats1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i, ptr noundef %2, ptr noundef %qstats1.i) #11
  %3 = ptrtoint ptr %qstats.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qstats.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i.i, align 8
  %add.i = add i32 %6, %4
  %backlog3.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i, i32 0, i32 1
  %7 = ptrtoint ptr %backlog3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %backlog3.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i) #11
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %add.i, i32 noundef %8) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @red_set_parms(ptr nocapture noundef writeonly %p, i32 noundef %qth_min, i32 noundef %qth_max, i8 noundef zeroext %Wlog, i8 noundef zeroext %Plog, i8 noundef zeroext %Scell_log, ptr noundef readonly %stab, i32 noundef %max_P) unnamed_addr #7 align 64 {
entry:
  %tmp13 = alloca %struct.reciprocal_value, align 8
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 %qth_max, %qth_min
  %conv = zext i8 %Wlog to i32
  %shl = shl i32 %qth_min, %conv
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shl, ptr %p, align 4
  %shl3 = shl i32 %qth_max, %conv
  %qth_max4 = getelementptr inbounds %struct.red_parms, ptr %p, i32 0, i32 1
  %1 = ptrtoint ptr %qth_max4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shl3, ptr %qth_max4, align 4
  %Wlog5 = getelementptr inbounds %struct.red_parms, ptr %p, i32 0, i32 9
  %2 = ptrtoint ptr %Wlog5 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %Wlog, ptr %Wlog5, align 1
  %Plog6 = getelementptr inbounds %struct.red_parms, ptr %p, i32 0, i32 10
  %3 = ptrtoint ptr %Plog6 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %Plog, ptr %Plog6, align 2
  %4 = tail call i32 @llvm.smax.i32(i32 %sub, i32 1)
  %qth_delta = getelementptr inbounds %struct.red_parms, ptr %p, i32 0, i32 5
  %5 = ptrtoint ptr %qth_delta to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %qth_delta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_P)
  %tobool.not = icmp eq i32 %max_P, 0
  br i1 %tobool.not, label %if.then8, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %Plog)
  %cmp.i = icmp ult i8 %Plog, 32
  %conv.i = zext i8 %Plog to i32
  %shr.i = lshr i32 -1, %conv.i
  %cond.i = select i1 %cmp.i, i32 %shr.i, i32 -1
  %mul = mul i32 %cond.i, %4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %entry.if.end9_crit_edge
  %max_P.addr.0 = phi i32 [ %max_P, %entry.if.end9_crit_edge ], [ %mul, %if.then8 ]
  %max_P10 = getelementptr inbounds %struct.red_parms, ptr %p, i32 0, i32 3
  %6 = ptrtoint ptr %max_P10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %max_P.addr.0, ptr %max_P10, align 4
  %div = udiv i32 %max_P.addr.0, %4
  %7 = tail call i32 @llvm.umax.i32(i32 %div, i32 1)
  %max_P_reciprocal = getelementptr inbounds %struct.red_parms, ptr %p, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp13) #11
  call void @reciprocal_value(ptr nonnull sret(%struct.reciprocal_value) align 4 %tmp13, i32 noundef %7) #11
  %8 = ptrtoint ptr %tmp13 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tmp13, align 8
  %10 = ptrtoint ptr %max_P_reciprocal to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %max_P_reciprocal, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp13) #11
  %div14 = udiv i32 %4, 5
  %mul15 = shl nuw nsw i32 %div14, 1
  %add = add i32 %mul15, %qth_min
  %target_min = getelementptr inbounds %struct.red_parms, ptr %p, i32 0, i32 6
  %11 = ptrtoint ptr %target_min to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %target_min, align 4
  %mul16 = mul nuw nsw i32 %div14, 3
  %add17 = add i32 %mul16, %qth_min
  %target_max = getelementptr inbounds %struct.red_parms, ptr %p, i32 0, i32 7
  %12 = ptrtoint ptr %target_max to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add17, ptr %target_max, align 4
  %Scell_log18 = getelementptr inbounds %struct.red_parms, ptr %p, i32 0, i32 8
  %13 = ptrtoint ptr %Scell_log18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %Scell_log, ptr %Scell_log18, align 4
  %conv19 = zext i8 %Scell_log to i32
  %shl20 = shl i32 255, %conv19
  %Scell_max = getelementptr inbounds %struct.red_parms, ptr %p, i32 0, i32 2
  %14 = ptrtoint ptr %Scell_max to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl20, ptr %Scell_max, align 4
  %tobool21.not = icmp eq ptr %stab, null
  br i1 %tobool21.not, label %if.end9.if.end23_crit_edge, label %if.then22

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then22:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %Stab = getelementptr inbounds %struct.red_parms, ptr %p, i32 0, i32 11
  %15 = call ptr @memcpy(ptr %Stab, ptr %stab, i32 256)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end9.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @red_offload(ptr noundef %sch, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %opt = alloca %struct.tc_red_qopt_offload, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %opt) #11
  %4 = call ptr @memset(ptr %opt, i32 0, i32 36)
  %handle = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 1
  %handle2 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %5 = ptrtoint ptr %handle2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handle2, align 32
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %handle, align 4
  %parent = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 2
  %parent3 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %8 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parent3, align 4
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %parent, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %11 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %features.i, align 16
  %and.i = and i64 %12, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %13 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev_ops, align 8
  %ndo_setup_tc = getelementptr inbounds %struct.net_device_ops, ptr %14, i32 0, i32 42
  %15 = ptrtoint ptr %ndo_setup_tc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndo_setup_tc, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br i1 %enable, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %parms = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %17 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %parms, align 4
  %Wlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 33
  %19 = ptrtoint ptr %Wlog to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %Wlog, align 1
  %conv = zext i8 %20 to i32
  %shr = lshr i32 %18, %conv
  %21 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr, ptr %21, align 4
  %qth_max = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %23 = ptrtoint ptr %qth_max to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qth_max, align 4
  %shr12 = lshr i32 %24, %conv
  %max = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3, i32 0, i32 1
  %25 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr12, ptr %max, align 4
  %max_P = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %26 = ptrtoint ptr %max_P to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_P, align 4
  %probability = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3, i32 0, i32 2
  %28 = ptrtoint ptr %probability to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %probability, align 4
  %29 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %privdata.i, align 8
  %limit14 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3, i32 0, i32 3
  %31 = ptrtoint ptr %limit14 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %limit14, align 4
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags.i, align 4
  %34 = and i8 %33, 1
  %is_ecn = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3, i32 0, i32 4
  %35 = ptrtoint ptr %is_ecn to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %is_ecn, align 4
  %is_harddrop = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3, i32 0, i32 5
  %36 = lshr i8 %33, 1
  %.lobit = and i8 %36, 1
  %37 = ptrtoint ptr %is_harddrop to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %.lobit, ptr %is_harddrop, align 1
  %is_nodrop = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3, i32 0, i32 6
  %38 = lshr i8 %33, 3
  %.lobit6 = and i8 %38, 1
  %39 = ptrtoint ptr %is_nodrop to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.lobit6, ptr %is_nodrop, align 2
  %qstats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  %qstats24 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3, i32 0, i32 7
  %40 = ptrtoint ptr %qstats24 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %qstats, ptr %qstats24, align 4
  br label %if.end26

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %opt, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then6
  %42 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev_ops, align 8
  %ndo_setup_tc28 = getelementptr inbounds %struct.net_device_ops, ptr %43, i32 0, i32 42
  %44 = ptrtoint ptr %ndo_setup_tc28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ndo_setup_tc28, align 4
  %call29 = call i32 %45(ptr noundef %3, i32 noundef 7, ptr noundef nonnull %opt) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %opt) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_qevent_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_qevent_validate_change(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_qevent_dump(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qdisc_offload_dump_helper(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_app(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17, !19, !20, !22, !23, !25, !26, !28, !30, !32}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_sch_red__507_568_red_module_init6, !1, !"__initcall__kmod_sch_red__507_568_red_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_red.c", i32 568, i32 1}
!2 = !{ptr @__exitcall_red_module_exit, !3, !"__exitcall_red_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_red.c", i32 569, i32 1}
!4 = !{ptr @__UNIQUE_ID_file508, !5, !"__UNIQUE_ID_file508", i1 false, i1 false}
!5 = !{!"../net/sched/sch_red.c", i32 571, i32 1}
!6 = !{ptr @__UNIQUE_ID_license509, !5, !"__UNIQUE_ID_license509", i1 false, i1 false}
!7 = !{ptr @red_qdisc_ops, !8, !"red_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_red.c", i32 542, i32 25}
!9 = !{ptr @red_class_ops, !10, !"red_class_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_red.c", i32 534, i32 37}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/net/sch_generic.h", i32 835, i32 34}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @red_init.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../net/sched/sch_red.c", i32 341, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @red_policy, !27, !"red_policy", i1 false, i1 false}
!27 = !{!"../net/sched/sch_red.c", i32 224, i32 32}
!28 = !{ptr @red_get_flags.__msg, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../include/net/red.h", i32 203, i32 3}
!30 = !{ptr @red_validate_flags.__msg, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../include/net/red.h", i32 223, i32 3}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/net/netlink.h", i32 991, i32 3}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"auto-init"}
!45 = !{i64 712692, i64 712719, i64 712741, i64 712769}
!46 = !{i64 713100, i64 713127, i64 713160, i64 713181, i64 713208, i64 713234}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2149875970}
!49 = !{i64 2149880902}
!50 = !{i64 2149902614}
!51 = !{i64 2149907506}
!52 = !{i64 2149983963}
!53 = !{i64 2149984288}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i32 0, i32 33}
!56 = !{!57}
!57 = distinct !{!57, !58, !"nla_get_bitfield32: %agg.result"}
!58 = distinct !{!58, !"nla_get_bitfield32"}
