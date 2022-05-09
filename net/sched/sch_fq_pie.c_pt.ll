; ModuleID = '/llk/IR_all_yes/net/sched/sch_fq_pie.c_pt.bc'
source_filename = "../net/sched/sch_fq_pie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.tcf_result = type { %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { i32, i32 }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
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
%struct.fq_pie_flow = type { %struct.pie_vars, i32, i32, i32, %struct.list_head, ptr, ptr }
%struct.pie_vars = type { i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.fq_pie_sched_data = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.pie_params, i32, i32, i32, i32, i32, i32, i32, %struct.pie_stats, %struct.timer_list }
%struct.pie_params = type { i64, i32, i32, i32, i32, i8, i8, i8 }
%struct.pie_stats = type { i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tc_fq_pie_xstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@fq_pie_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr null, [16 x i8] c"fq_pie\00\00\00\00\00\00\00\00\00\00", i32 160, i32 0, ptr @fq_pie_qdisc_enqueue, ptr @fq_pie_qdisc_dequeue, ptr @qdisc_peek_dequeued, ptr @fq_pie_init, ptr @fq_pie_reset, ptr @fq_pie_destroy, ptr @fq_pie_change, ptr null, ptr null, ptr null, ptr @fq_pie_dump, ptr @fq_pie_dump_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_fq_pie__501_564_fq_pie_module_init6 = internal global ptr @fq_pie_module_init, section ".initcall6.init", align 4
@__exitcall_fq_pie_module_exit = internal global ptr @fq_pie_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description502 = internal constant [85 x i8] c"sch_fq_pie.description=Flow Queue Proportional Integral controller Enhanced (FQ-PIE)\00", section ".modinfo", align 1
@__UNIQUE_ID_author503 = internal constant [37 x i8] c"sch_fq_pie.author=Mohit P. Tahiliani\00", section ".modinfo", align 1
@__UNIQUE_ID_file504 = internal constant [37 x i8] c"sch_fq_pie.file=net/sched/sch_fq_pie\00", section ".modinfo", align 1
@__UNIQUE_ID_license505 = internal constant [23 x i8] c"sch_fq_pie.license=GPL\00", section ".modinfo", align 1
@fq_pie_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/sched/sch_fq_pie.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@fq_pie_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&q->adapt_timer)\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fq_pie_policy = internal constant { [13 x %struct.nla_policy], [56 x i8] } { [13 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@fq_pie_change.__msg = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sch_fq_pie: Number of flows cannot be changed\00", [50 x i8] zeroinitializer }, align 32
@fq_pie_change.__msg.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"sch_fq_pie: Number of flows must range in [1..65536]\00", [43 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 92, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 598, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 271, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 411, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"fq_pie_policy\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 204, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 302, i32 4 }
@___asan_gen_.37 = private constant [26 x i8] c"../net/sched/sch_fq_pie.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 308, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 1208, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 596, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 991, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author503, ptr @__UNIQUE_ID_description502, ptr @__UNIQUE_ID_file504, ptr @__UNIQUE_ID_license505, ptr @__exitcall_fq_pie_module_exit, ptr @__initcall__kmod_sch_fq_pie__501_564_fq_pie_module_init6, ptr @fq_pie_module_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @fq_pie_init.__key, ptr @.str.4, ptr @fq_pie_policy, ptr @fq_pie_change.__msg, ptr @fq_pie_change.__msg.5, ptr @nla_parse_nested.__msg, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fq_pie_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fq_pie_policy to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fq_pie_change.__msg to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fq_pie_change.__msg.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fq_pie_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @fq_pie_qdisc_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_pie_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @fq_pie_qdisc_ops) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_pie_qdisc_enqueue(ptr noundef %skb, ptr noundef %sch, ptr nocapture noundef %to_free) #2 align 64 {
entry:
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
  %res.i = alloca %struct.tcf_result, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.i) #9
  %0 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %res.i, align 4, !annotation !49
  %1 = getelementptr inbounds %struct.anon.142, ptr %res.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !49
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %3 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %priority.i, align 4
  %and.i = and i32 %4, -65536
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %5 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handle.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %6)
  %cmp.i = icmp eq i32 %and.i, %6
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %and2.i = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp3.not.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %flows_cnt.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %7 = ptrtoint ptr %flows_cnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flows_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.i, i32 %8)
  %cmp7.not.i = icmp ugt i32 %and2.i, %8
  br i1 %cmp7.not.i, label %land.lhs.true4.i.if.end.i_crit_edge, label %land.lhs.true4.i.fq_pie_classify.exit.thread147_crit_edge

land.lhs.true4.i.fq_pie_classify.exit.thread147_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fq_pie_classify.exit.thread147

land.lhs.true4.i.if.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true4.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %9 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %privdata.i, align 8
  %call11.i = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %land.lhs.true12.i, label %if.end.i.do.end20.i_crit_edge

if.end.i.do.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20.i

land.lhs.true12.i:                                ; preds = %if.end.i
  %call13.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true12.i.do.end20.i_crit_edge, label %land.lhs.true15.i

land.lhs.true12.i.do.end20.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20.i

land.lhs.true15.i:                                ; preds = %land.lhs.true12.i
  %.b53.i = load i1, ptr @fq_pie_classify.__warned, align 1
  br i1 %.b53.i, label %land.lhs.true15.i.do.end20.i_crit_edge, label %if.then17.i

land.lhs.true15.i.do.end20.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20.i

if.then17.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fq_pie_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 92, ptr noundef nonnull @.str.1) #9
  br label %do.end20.i

do.end20.i:                                       ; preds = %if.then17.i, %land.lhs.true15.i.do.end20.i_crit_edge, %land.lhs.true12.i.do.end20.i_crit_edge, %if.end.i.do.end20.i_crit_edge
  %tobool22.not.i = icmp eq ptr %10, null
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end25.i

if.then23.i:                                      ; preds = %do.end20.i
  %l4_hash.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %11 = ptrtoint ptr %l4_hash.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i.i = load i16, ptr %l4_hash.i.i.i, align 8
  %12 = and i16 %bf.load.i.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %if.then.i.i.i, label %if.then23.i.fq_pie_hash.exit.i_crit_edge

if.then23.i.fq_pie_hash.exit.i_crit_edge:         ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fq_pie_hash.exit.i

if.then.i.i.i:                                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__skb_get_hash(ptr noundef %skb) #9
  br label %fq_pie_hash.exit.i

fq_pie_hash.exit.i:                               ; preds = %if.then.i.i.i, %if.then23.i.fq_pie_hash.exit.i_crit_edge
  %hash.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %14 = ptrtoint ptr %hash.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hash.i.i.i, align 4
  %flows_cnt.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %16 = ptrtoint ptr %flows_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flows_cnt.i.i, align 4
  %conv.i.i.i = zext i32 %15 to i64
  %conv1.i.i.i = zext i32 %17 to i64
  %mul.i.i.i = mul nuw i64 %conv1.i.i.i, %conv.i.i.i
  %shr.i.i.i = lshr i64 %mul.i.i.i, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %add.i = add nuw i32 %conv2.i.i.i, 1
  br label %fq_pie_classify.exit.thread147

if.end25.i:                                       ; preds = %do.end20.i
  %call26.i = call i32 @tcf_classify(ptr noundef %skb, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %res.i, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call26.i)
  %cmp27.i = icmp sgt i32 %call26.i, -1
  br i1 %cmp27.i, label %if.then28.i, label %if.end25.i.if.then.thread157_crit_edge

if.end25.i.if.then.thread157_crit_edge:           ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.thread157

if.then28.i:                                      ; preds = %if.end25.i
  %18 = zext i32 %call26.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call26.i, label %sw.epilog.i [
    i32 4, label %if.then28.i.if.then.thread162_crit_edge
    i32 5, label %if.then28.i.if.then.thread162_crit_edge172
    i32 8, label %if.then28.i.if.then.thread162_crit_edge173
    i32 2, label %if.then28.i.if.then.thread157_crit_edge
  ]

if.then28.i.if.then.thread157_crit_edge:          ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.thread157

if.then28.i.if.then.thread162_crit_edge173:       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.thread162

if.then28.i.if.then.thread162_crit_edge172:       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.thread162

if.then28.i.if.then.thread162_crit_edge:          ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.thread162

sw.epilog.i:                                      ; preds = %if.then28.i
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %and30.i = and i32 %20, 65535
  %flows_cnt31.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %21 = ptrtoint ptr %flows_cnt31.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flows_cnt31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and30.i, i32 %22)
  %cmp32.not.i = icmp ugt i32 %and30.i, %22
  br i1 %cmp32.not.i, label %sw.epilog.i.if.then.thread157_crit_edge, label %fq_pie_classify.exit

sw.epilog.i.if.then.thread157_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.thread157

fq_pie_classify.exit.thread147:                   ; preds = %fq_pie_hash.exit.i, %land.lhs.true4.i.fq_pie_classify.exit.thread147_crit_edge
  %retval.0.i.ph = phi i32 [ %and2.i, %land.lhs.true4.i.fq_pie_classify.exit.thread147_crit_edge ], [ %add.i, %fq_pie_hash.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #9
  br label %if.end3

fq_pie_classify.exit:                             ; preds = %sw.epilog.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %cmp = icmp eq i32 %and30.i, 0
  br i1 %cmp, label %fq_pie_classify.exit.if.then2_crit_edge, label %fq_pie_classify.exit.if.end3_crit_edge

fq_pie_classify.exit.if.end3_crit_edge:           ; preds = %fq_pie_classify.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

fq_pie_classify.exit.if.then2_crit_edge:          ; preds = %fq_pie_classify.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

if.then.thread157:                                ; preds = %sw.epilog.i.if.then.thread157_crit_edge, %if.then28.i.if.then.thread157_crit_edge, %if.end25.i.if.then.thread157_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #9
  br label %if.then2

if.then.thread162:                                ; preds = %if.then28.i.if.then.thread162_crit_edge, %if.then28.i.if.then.thread162_crit_edge172, %if.then28.i.if.then.thread162_crit_edge173
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #9
  br label %if.end

if.then2:                                         ; preds = %if.then.thread157, %fq_pie_classify.exit.if.then2_crit_edge
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %23 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %24, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.thread162
  %ret.0145156 = phi i32 [ 131072, %if.then2 ], [ 65536, %if.then.thread162 ]
  %25 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %to_free, align 4
  %27 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  br label %cleanup

if.end3:                                          ; preds = %fq_pie_classify.exit.if.end3_crit_edge, %fq_pie_classify.exit.thread147
  %retval.0.i151 = phi i32 [ %retval.0.i.ph, %fq_pie_classify.exit.thread147 ], [ %and30.i, %fq_pie_classify.exit.if.end3_crit_edge ]
  %dec = add i32 %retval.0.i151, -1
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %28 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %flows, align 8
  %arrayidx = getelementptr %struct.fq_pie_flow, ptr %29, i32 %dec
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %30 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %truesize, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %mem_usage = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %32 = ptrtoint ptr %mem_usage to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %mem_usage, align 8
  %memory_usage = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %33 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qlen.i, align 8
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %35 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp9.not = icmp ult i32 %34, %36
  br i1 %cmp9.not, label %if.else, label %if.then13, !prof !50

if.then13:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %overlimit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 36
  %37 = ptrtoint ptr %overlimit to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %overlimit, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %overlimit, align 4
  br label %out

if.else:                                          ; preds = %if.end3
  %memory_limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %39 = ptrtoint ptr %memory_limit to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %memory_limit, align 4
  %41 = ptrtoint ptr %memory_usage to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %memory_usage, align 4
  %add = add i32 %40, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %add)
  %cmp6 = icmp ugt i32 %42, %add
  br i1 %cmp6, label %if.then21, label %if.else.if.end24_crit_edge, !prof !51

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %overmemory = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %43 = ptrtoint ptr %overmemory to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %overmemory, align 8
  %inc22 = add i32 %44, 1
  store i32 %inc22, ptr %overmemory, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.else.if.end24_crit_edge
  %p_params = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %backlog = getelementptr %struct.fq_pie_flow, ptr %29, i32 %dec, i32 2
  %45 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %backlog, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  %call25 = call zeroext i1 @pie_drop_early(ptr noundef %sch, ptr noundef %p_params, ptr noundef %arrayidx, i32 noundef %46, i32 noundef %48) #9
  br i1 %call25, label %if.else27, label %if.end24.if.then44_crit_edge

if.end24.if.then44_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

if.else27:                                        ; preds = %if.end24
  %ecn = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %49 = ptrtoint ptr %ecn to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ecn, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool30.not = icmp eq i8 %50, 0
  br i1 %tobool30.not, label %if.else27.out_crit_edge, label %land.lhs.true

if.else27.out_crit_edge:                          ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true:                                    ; preds = %if.else27
  %prob = getelementptr inbounds %struct.pie_vars, ptr %arrayidx, i32 0, i32 4
  %51 = ptrtoint ptr %prob to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %prob, align 8
  %ecn_prob = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %53 = ptrtoint ptr %ecn_prob to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ecn_prob, align 8
  %conv32 = zext i32 %54 to i64
  %mul = mul i64 %conv32, 720575940379279
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %mul)
  %cmp33.not = icmp ugt i64 %52, %mul
  br i1 %cmp33.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true35

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true35:                                  ; preds = %land.lhs.true
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %55 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %protocol.i.i.i, align 8
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %57 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %58 to i32
  %59 = zext i16 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %56, label %land.lhs.true35.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %land.lhs.true35.if.then.i.i.i.i_crit_edge
    i16 -32512, label %land.lhs.true35.if.then.i.i.i.i_crit_edge174
  ]

land.lhs.true35.if.then.i.i.i.i_crit_edge174:     ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

land.lhs.true35.if.then.i.i.i.i_crit_edge:        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

land.lhs.true35.skb_protocol.exit.i_crit_edge:    ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_protocol.exit.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true35.if.then.i.i.i.i_crit_edge, %land.lhs.true35.if.then.i.i.i.i_crit_edge174
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool.not.i.i.i.i = icmp eq i16 %58, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %58)
  %cmp.i.i.i.i = icmp ult i16 %58, 4
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !51

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 598, i32 noundef 9, ptr noundef null) #9
  br label %out

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge ]
  %60 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #9
  %61 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !49
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -1, ptr %60, align 2, !annotation !49
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len, align 4
  %65 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  %67 = add i32 %vlan_depth.1.i.i.i.i, %66
  %sub.i1.i.i.i.i.i = sub i32 %64, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, !prof !50

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %69, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !51
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %70 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !51
  br i1 %70, label %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i, !prof !51

skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #9
  br label %out

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #9
  %73 = zext i16 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %72, label %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge175
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge175: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge:  ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_protocol.exit.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge175
  %add.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

skb_protocol.exit.i:                              ; preds = %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge, %land.lhs.true35.skb_protocol.exit.i_crit_edge
  %retval.2.i.i.i.i = phi i16 [ %56, %land.lhs.true35.skb_protocol.exit.i_crit_edge ], [ %72, %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge ]
  %74 = zext i16 %retval.2.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %retval.2.i.i.i.i, label %skb_protocol.exit.i.out_crit_edge [
    i16 2048, label %sw.bb.i132
    i16 -31011, label %sw.bb6.i
  ]

skb_protocol.exit.i.out_crit_edge:                ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb.i132:                                       ; preds = %skb_protocol.exit.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %75 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %77 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %78 to i32
  %add.ptr.i.i = getelementptr i8, ptr %76, i32 %conv.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 20
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %79 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tail.i.i, align 8
  %cmp.not.i = icmp ugt ptr %add.ptr.i, %80
  br i1 %cmp.not.i, label %sw.bb.i132.out_crit_edge, label %if.then.i

sw.bb.i132.out_crit_edge:                         ; preds = %sw.bb.i132
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i:                                        ; preds = %sw.bb.i132
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %tos.i.i, align 1
  %83 = add i8 %82, 1
  %84 = and i8 %83, 3
  %85 = and i8 %83, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.i = icmp eq i8 %85, 0
  br i1 %tobool.not.i.i, label %INET_ECN_set_ce.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i.i = zext i8 %84 to i16
  %add5.i.i = add nuw nsw i16 %conv4.i.i, -5
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %86 = ptrtoint ptr %check.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %check.i.i, align 2
  %add.i.i.i = add i16 %87, %add5.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i, i16 %add5.i.i)
  %cmp.i.i.i = icmp ult i16 %add.i.i.i, %add5.i.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i16
  %add7.i.i.i = add i16 %add.i.i.i, %conv6.i.i.i
  %88 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %add7.i.i.i, ptr %check.i.i, align 2
  %89 = or i8 %82, 3
  %90 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %tos.i.i, align 1
  br label %if.then38

sw.bb6.i:                                         ; preds = %skb_protocol.exit.i
  %head.i23.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %91 = ptrtoint ptr %head.i23.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %head.i23.i, align 8
  %network_header.i24.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %93 = ptrtoint ptr %network_header.i24.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %network_header.i24.i, align 4
  %conv.i25.i = zext i16 %94 to i32
  %add.ptr.i26.i = getelementptr i8, ptr %92, i32 %conv.i25.i
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i26.i, i32 40
  %tail.i27.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %95 = ptrtoint ptr %tail.i27.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tail.i27.i, align 8
  %cmp10.not.i = icmp ugt ptr %add.ptr8.i, %96
  br i1 %cmp10.not.i, label %sw.bb6.i.out_crit_edge, label %if.then12.i

sw.bb6.i.out_crit_edge:                           ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then12.i:                                      ; preds = %sw.bb6.i
  %97 = ptrtoint ptr %add.ptr.i26.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %add.ptr.i26.i, align 2
  %99 = and i16 %98, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %cmp.i14.not.i.i = icmp eq i16 %99, 0
  br i1 %cmp.i14.not.i.i, label %if.then12.i.out_crit_edge, label %if.end.i32.i

if.then12.i.out_crit_edge:                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i32.i:                                     ; preds = %if.then12.i
  %100 = ptrtoint ptr %add.ptr.i26.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr.i26.i, align 4
  %or.i.i = or i32 %101, 3145728
  store i32 %or.i.i, ptr %add.ptr.i26.i, align 4
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %102 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %103 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %103)
  %cmp.i.i = icmp eq i16 %103, 1024
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i32.i.if.then38_crit_edge

if.end.i32.i.if.then38_crit_edge:                 ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.then3.i.i:                                     ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 8
  %neg.i.i.i = xor i32 %101, -1
  %add.i.i.i33.i = add i32 %106, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i33.i, i32 %neg.i.i.i)
  %cmp.i.i.i34.i = icmp ult i32 %add.i.i.i33.i, %neg.i.i.i
  %conv.i.i.i35.i = zext i1 %cmp.i.i.i34.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i33.i, %or.i.i
  %add.i.i36.i = add i32 %add1.i.i.i.i, %conv.i.i.i35.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i36.i, i32 %or.i.i)
  %cmp.i.i37.i = icmp ult i32 %add.i.i36.i, %or.i.i
  %conv.i.i38.i = zext i1 %cmp.i.i37.i to i32
  %add1.i.i.i = add i32 %add.i.i36.i, %conv.i.i38.i
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add1.i.i.i, ptr %104, align 8
  br label %if.then38

INET_ECN_set_ce.exit:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool2.not.i.i.not = icmp eq i8 %84, 0
  br i1 %tobool2.not.i.i.not, label %INET_ECN_set_ce.exit.if.then38_crit_edge, label %INET_ECN_set_ce.exit.out_crit_edge

INET_ECN_set_ce.exit.out_crit_edge:               ; preds = %INET_ECN_set_ce.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

INET_ECN_set_ce.exit.if.then38_crit_edge:         ; preds = %INET_ECN_set_ce.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.then38:                                        ; preds = %INET_ECN_set_ce.exit.if.then38_crit_edge, %if.then3.i.i, %if.end.i32.i.if.then38_crit_edge, %if.end.i.i
  %ecn_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %108 = ptrtoint ptr %ecn_mark to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ecn_mark, align 4
  %inc40 = add i32 %109, 1
  store i32 %inc40, ptr %ecn_mark, align 4
  br label %if.then44

if.then44:                                        ; preds = %if.then38, %if.end24.if.then44_crit_edge
  %dq_rate_estimator = getelementptr inbounds %struct.fq_pie_sched_data, ptr %privdata.i, i32 0, i32 6, i32 7
  %110 = ptrtoint ptr %dq_rate_estimator to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %dq_rate_estimator, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool46.not = icmp eq i8 %111, 0
  br i1 %tobool46.not, label %if.then47, label %if.then44.if.end48_crit_edge

if.then44.if.end48_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call i64 @ktime_get() #9
  %shr.i.i = lshr i64 %call.i.i.i, 6
  %112 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %shr.i.i, ptr %data.i, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.then44.if.end48_crit_edge
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %113 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cb.i.i, align 4
  %stats50 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 28
  %115 = ptrtoint ptr %stats50 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %stats50, align 4
  %inc51 = add i32 %116, 1
  store i32 %inc51, ptr %stats50, align 4
  %117 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %truesize, align 8
  %119 = ptrtoint ptr %memory_usage to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %memory_usage, align 4
  %add54 = add i32 %120, %118
  store i32 %add54, ptr %memory_usage, align 4
  %backlog55 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %121 = ptrtoint ptr %backlog55 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %backlog55, align 4
  %add56 = add i32 %122, %114
  store i32 %add56, ptr %backlog55, align 4
  %123 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %qlen.i, align 8
  %inc58 = add i32 %124, 1
  store i32 %inc58, ptr %qlen.i, align 8
  %head.i = getelementptr %struct.fq_pie_flow, ptr %29, i32 %dec, i32 5
  %125 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %head.i, align 4
  %tobool.not.i134 = icmp eq ptr %126, null
  br i1 %tobool.not.i134, label %if.then.i135, label %if.else.i

if.then.i135:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %127 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %skb, ptr %head.i, align 4
  br label %flow_queue_add.exit

if.else.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %tail.i = getelementptr %struct.fq_pie_flow, ptr %29, i32 %dec, i32 6
  %128 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %tail.i, align 8
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %skb, ptr %129, align 8
  br label %flow_queue_add.exit

flow_queue_add.exit:                              ; preds = %if.else.i, %if.then.i135
  %tail2.i = getelementptr %struct.fq_pie_flow, ptr %29, i32 %dec, i32 6
  %131 = ptrtoint ptr %tail2.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %skb, ptr %tail2.i, align 8
  %132 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %skb, align 8
  %flowchain = getelementptr %struct.fq_pie_flow, ptr %29, i32 %dec, i32 4
  %133 = ptrtoint ptr %flowchain to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile ptr, ptr %flowchain, align 4
  %cmp.i137.not = icmp eq ptr %134, %flowchain
  br i1 %cmp.i137.not, label %if.then61, label %flow_queue_add.exit.if.end66_crit_edge

flow_queue_add.exit.if.end66_crit_edge:           ; preds = %flow_queue_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then61:                                        ; preds = %flow_queue_add.exit
  %new_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %135 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %flowchain, ptr noundef %136, ptr noundef %new_flows) #9
  br i1 %call.i.i, label %if.end.i.i138, label %if.then61.list_add_tail.exit_crit_edge

if.then61.list_add_tail.exit_crit_edge:           ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i138:                                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %flowchain, ptr %prev.i, align 4
  %138 = ptrtoint ptr %flowchain to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %new_flows, ptr %flowchain, align 4
  %prev3.i.i = getelementptr %struct.fq_pie_flow, ptr %29, i32 %dec, i32 4, i32 1
  %139 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %prev3.i.i, align 4
  %140 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %flowchain, ptr %136, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i138, %if.then61.list_add_tail.exit_crit_edge
  %new_flow_count = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %141 = ptrtoint ptr %new_flow_count to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %new_flow_count, align 8
  %inc63 = add i32 %142, 1
  store i32 %inc63, ptr %new_flow_count, align 8
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %143 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %quantum, align 8
  %deficit = getelementptr %struct.fq_pie_flow, ptr %29, i32 %dec, i32 1
  %145 = ptrtoint ptr %deficit to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %deficit, align 8
  %qlen64 = getelementptr %struct.fq_pie_flow, ptr %29, i32 %dec, i32 3
  %146 = ptrtoint ptr %qlen64 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %qlen64, align 8
  %147 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %backlog, align 4
  br label %if.end66

if.end66:                                         ; preds = %list_add_tail.exit, %flow_queue_add.exit.if.end66_crit_edge
  %qlen67 = getelementptr %struct.fq_pie_flow, ptr %29, i32 %dec, i32 3
  %148 = ptrtoint ptr %qlen67 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %qlen67, align 8
  %inc68 = add i32 %149, 1
  store i32 %inc68, ptr %qlen67, align 8
  %150 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %backlog, align 4
  %add70 = add i32 %151, %114
  store i32 %add70, ptr %backlog, align 4
  br label %cleanup

out:                                              ; preds = %INET_ECN_set_ce.exit.out_crit_edge, %if.then12.i.out_crit_edge, %sw.bb6.i.out_crit_edge, %sw.bb.i132.out_crit_edge, %skb_protocol.exit.i.out_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i, %land.lhs.true.out_crit_edge, %if.else27.out_crit_edge, %if.then13
  %dropped = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %152 = ptrtoint ptr %dropped to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %dropped, align 4
  %inc73 = add i32 %153, 1
  store i32 %inc73, ptr %dropped, align 4
  %accu_prob = getelementptr inbounds %struct.pie_vars, ptr %arrayidx, i32 0, i32 5
  %154 = ptrtoint ptr %accu_prob to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 0, ptr %accu_prob, align 8
  %155 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %to_free, align 4
  %157 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %156, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i139 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %158 = ptrtoint ptr %drops.i.i139 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %drops.i.i139, align 4
  %inc.i.i140 = add i32 %159, 1
  store i32 %inc.i.i140, ptr %drops.i.i139, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end66, %if.end
  %retval.0 = phi i32 [ %ret.0145156, %if.end ], [ 2, %out ], [ 0, %if.end66 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fq_pie_qdisc_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %new_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %old_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %prev.i2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  br label %begin

begin:                                            ; preds = %begin.backedge, %entry
  %0 = ptrtoint ptr %new_flows to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %new_flows, align 4
  %cmp.i.not = icmp eq ptr %1, %new_flows
  br i1 %cmp.i.not, label %if.then, label %begin.if.end5_crit_edge

begin.if.end5_crit_edge:                          ; preds = %begin
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %begin
  %2 = ptrtoint ptr %old_flows to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %old_flows, align 4
  %cmp.i75.not = icmp eq ptr %3, %old_flows
  br i1 %cmp.i75.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %begin.if.end5_crit_edge
  %head.0 = phi ptr [ %old_flows, %if.then.if.end5_crit_edge ], [ %new_flows, %begin.if.end5_crit_edge ]
  %4 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.0, align 4
  %deficit = getelementptr i8, ptr %5, i32 -12
  %6 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %deficit, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp slt i32 %7, 1
  br i1 %cmp, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end5
  %8 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quantum, align 8
  %add = add i32 %9, %7
  %10 = ptrtoint ptr %deficit to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %deficit, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.__list_del_entry.exit.i_crit_edge

if.then6.__list_del_entry.exit.i_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then6.__list_del_entry.exit.i_crit_edge
  %17 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %18, ptr noundef %old_flows) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.begin.backedge_crit_edge

__list_del_entry.exit.i.begin.backedge_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %begin.backedge

begin.backedge:                                   ; preds = %list_del_init.exit, %if.end.i.i.i87, %__list_del_entry.exit.i85.begin.backedge_crit_edge, %if.end.i.i.i, %__list_del_entry.exit.i.begin.backedge_crit_edge
  br label %begin

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %5, ptr %prev.i2.i, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %old_flows, ptr %5, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %5, ptr %18, align 4
  br label %begin.backedge

if.end9:                                          ; preds = %if.end5
  %head10 = getelementptr i8, ptr %5, i32 8
  %23 = ptrtoint ptr %head10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head10, align 4
  %tobool11.not = icmp eq ptr %24, null
  br i1 %tobool11.not, label %if.end9.if.then18_crit_edge, label %if.then12

if.end9.if.then18_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.then12:                                        ; preds = %if.end9
  %25 = ptrtoint ptr %head10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head10, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  store ptr %28, ptr %head10, align 4
  store ptr null, ptr %26, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cb.i.i, align 4
  %31 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %backlog, align 4
  %sub = sub i32 %32, %30
  store i32 %sub, ptr %backlog, align 4
  %33 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qlen, align 8
  %dec = add i32 %34, -1
  store i32 %dec, ptr %qlen, align 8
  %35 = load i32, ptr %cb.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 17
  %36 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.i.not.i.i = icmp eq i16 %39, 0
  br i1 %tobool.i.not.i.i, label %if.then12.cond.end.i.i_crit_edge, label %cond.true.i.i

if.then12.cond.end.i.i_crit_edge:                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %37, i32 0, i32 5
  %40 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %41 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then12.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %if.then12.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %42 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.if.end16_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.if.end16_crit_edge:                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %43 = tail call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i.i.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %46, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !52
  %47 = tail call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %52, ptrtoint (ptr @lockdep_recursion to i32)
  %53 = inttoptr i32 %add.i.i.i.i.i to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !53
  %56 = tail call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i7.i.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %55, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.end16_crit_edge

land.lhs.true.i.i.i.i.i.if.end16_crit_edge:       ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %60 = tail call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i.i.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i.i.i.i.i = icmp eq i32 %63, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.if.end16_crit_edge

land.rhs.i.i.i.i.i.if.end16_crit_edge:            ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %64 = tail call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i9.i.i.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %67, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !54
  %68 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %71, ptrtoint (ptr @hardirqs_enabled to i32)
  %72 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  %75 = tail call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i12.i.i.i.i.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %78, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %74, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.if.end16_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.if.end16_crit_edge:          ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.if.end16_crit_edge, label %if.then.i.i.i.i.i, !prof !50

land.rhs58.i.i.i.i.i.if.end16_crit_edge:          ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.if.end16_crit_edge, %land.rhs22.i.i.i.i.i.if.end16_crit_edge, %land.rhs.i.i.i.i.i.if.end16_crit_edge, %land.lhs.true.i.i.i.i.i.if.end16_crit_edge, %cond.end.i.i.if.end16_crit_edge
  %conv.i.i = zext i32 %35 to i64
  %79 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %80, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  %81 = tail call ptr @llvm.returnaddress(i32 0) #9
  %82 = ptrtoint ptr %81 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %82) #9
  %83 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %84, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %85 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %86, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %82) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  %87 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %88, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  %tobool17.not = icmp eq ptr %26, null
  br i1 %tobool17.not, label %if.end16.if.then18_crit_edge, label %if.end29

if.end16.if.then18_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.then18:                                        ; preds = %if.end16.if.then18_crit_edge, %if.end9.if.then18_crit_edge
  %cmp20 = icmp eq ptr %head.0, %new_flows
  br i1 %cmp20, label %land.lhs.true, label %if.then18.if.else_crit_edge

if.then18.if.else_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.then18
  %89 = ptrtoint ptr %old_flows to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile ptr, ptr %old_flows, align 4
  %cmp.i77.not = icmp eq ptr %90, %old_flows
  br i1 %cmp.i77.not, label %land.lhs.true.if.else_crit_edge, label %if.then24

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then24:                                        ; preds = %land.lhs.true
  %call.i.i79 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i79, label %if.end.i.i82, label %if.then24.__list_del_entry.exit.i85_crit_edge

if.then24.__list_del_entry.exit.i85_crit_edge:    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i85

if.end.i.i82:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i80 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i.i80 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i.i80, align 4
  %93 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %5, align 4
  %prev1.i.i.i81 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i.i81 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev1.i.i.i81, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %94, ptr %92, align 4
  br label %__list_del_entry.exit.i85

__list_del_entry.exit.i85:                        ; preds = %if.end.i.i82, %if.then24.__list_del_entry.exit.i85_crit_edge
  %97 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i84 = tail call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %98, ptr noundef %old_flows) #9
  br i1 %call.i.i.i84, label %if.end.i.i.i87, label %__list_del_entry.exit.i85.begin.backedge_crit_edge

__list_del_entry.exit.i85.begin.backedge_crit_edge: ; preds = %__list_del_entry.exit.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %begin.backedge

if.end.i.i.i87:                                   ; preds = %__list_del_entry.exit.i85
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %5, ptr %prev.i2.i, align 4
  %100 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %old_flows, ptr %5, align 4
  %prev3.i.i.i86 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %101 = ptrtoint ptr %prev3.i.i.i86 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev3.i.i.i86, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %5, ptr %98, align 4
  br label %begin.backedge

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then18.if.else_crit_edge
  %call.i.i89 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i89, label %if.end.i.i92, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i92:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i90 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i.i90 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i.i90, align 4
  %105 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %5, align 4
  %prev1.i.i.i91 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %prev1.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev1.i.i.i91, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %106, ptr %104, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i92, %if.else.list_del_init.exit_crit_edge
  %109 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %110 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %5, ptr %prev.i3.i, align 4
  br label %begin.backedge

if.end29:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.le.le = getelementptr i8, ptr %5, i32 -76
  %qlen30 = getelementptr i8, ptr %5, i32 -4
  %111 = ptrtoint ptr %qlen30 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %qlen30, align 8
  %dec31 = add i32 %112, -1
  store i32 %dec31, ptr %qlen30, align 8
  %113 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %deficit, align 8
  %sub33 = sub i32 %114, %30
  store i32 %sub33, ptr %deficit, align 8
  %backlog34 = getelementptr i8, ptr %5, i32 -8
  %115 = ptrtoint ptr %backlog34 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %backlog34, align 4
  %sub35 = sub i32 %116, %30
  store i32 %sub35, ptr %backlog34, align 4
  %mem_usage = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3, i32 16
  %117 = ptrtoint ptr %mem_usage to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mem_usage, align 8
  %memory_usage = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %119 = ptrtoint ptr %memory_usage to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %memory_usage, align 4
  %sub37 = sub i32 %120, %118
  store i32 %sub37, ptr %memory_usage, align 4
  %p_params = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %121 = load i32, ptr %backlog34, align 4
  tail call void @pie_process_dequeue(ptr noundef nonnull %26, ptr noundef %p_params, ptr noundef %add.ptr.le.le, i32 noundef %121) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %26, %if.end29 ], [ null, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qdisc_peek_dequeued(ptr noundef %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not15 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not15
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %3(ptr noundef %sch) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gso_skb, align 4
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %call1, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.0, ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %gso_skb, ptr %prev10.i.i.i, align 4
  %prev17.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call1, ptr %prev17.i.i.i, align 4
  store volatile ptr %call1, ptr %gso_skb, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 3
  %11 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %13 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %backlog.i, align 4
  %add.i = add i32 %14, %12
  store i32 %add.i, ptr %backlog.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %15 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %qlen, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %skb.0 = phi ptr [ %1, %entry.if.end5_crit_edge ], [ %call1, %if.then3 ], [ null, %if.then.if.end5_crit_edge ]
  ret ptr %skb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_pie_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %p_params = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %0 = ptrtoint ptr %p_params to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 234375, ptr %p_params, align 8
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 15000
  %spec.select.i = select i1 %cmp.i.i, i32 1073741822, i32 2
  %tupdate.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %1 = ptrtoint ptr %tupdate.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select.i, ptr %tupdate.i, align 8
  %limit.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %alpha.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %2 = ptrtoint ptr %alpha.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %alpha.i, align 8
  %beta.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 12
  %3 = ptrtoint ptr %beta.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 20, ptr %beta.i, align 4
  %ecn.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %4 = ptrtoint ptr %ecn.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ecn.i, align 8
  %bytemode.i = getelementptr inbounds %struct.pie_params, ptr %p_params, i32 0, i32 6
  %5 = ptrtoint ptr %bytemode.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %bytemode.i, align 1
  %dq_rate_estimator.i = getelementptr inbounds %struct.pie_params, ptr %p_params, i32 0, i32 7
  %6 = ptrtoint ptr %dq_rate_estimator.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %dq_rate_estimator.i, align 2
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %7 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 10240, ptr %limit, align 4
  %8 = ptrtoint ptr %limit.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10240, ptr %limit.i, align 4
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %9 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_queue.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 19
  %15 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %16 to i32
  %add.i = add i32 %14, %conv.i
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %17 = ptrtoint ptr %quantum to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i, ptr %quantum, align 8
  %sch6 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %18 = ptrtoint ptr %sch6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sch, ptr %sch6, align 4
  %ecn_prob = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %19 = ptrtoint ptr %ecn_prob to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 10, ptr %ecn_prob, align 8
  %flows_cnt = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %20 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1024, ptr %flows_cnt, align 4
  %memory_limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %21 = ptrtoint ptr %memory_limit to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 33554432, ptr %memory_limit, align 4
  %new_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %22 = ptrtoint ptr %new_flows to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %new_flows, ptr %new_flows, align 4
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %new_flows, ptr %prev.i, align 4
  %old_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %24 = ptrtoint ptr %old_flows to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %old_flows, ptr %old_flows, align 4
  %prev.i60 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %25 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %old_flows, ptr %prev.i60, align 4
  %adapt_timer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 48
  tail call void @init_timer_key(ptr noundef %adapt_timer, ptr noundef nonnull @fq_pie_timer, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @fq_pie_init.__key) #9
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %call7 = tail call i32 @fq_pie_change(ptr noundef %sch, ptr noundef nonnull %opt, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then.if.end10_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %call11 = tail call i32 @tcf_block_get(ptr noundef %block, ptr noundef %privdata.i, ptr noundef %sch, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.init_failure_crit_edge

if.end10.init_failure_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_failure

if.end14:                                         ; preds = %if.end10
  %26 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flows_cnt, align 4
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 96) #9
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %kvcalloc.exit.thread, label %kvcalloc.exit, !prof !51

kvcalloc.exit.thread:                             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %flows63 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %30 = ptrtoint ptr %flows63 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %flows63, align 8
  br label %init_failure

kvcalloc.exit:                                    ; preds = %if.end14
  %31 = extractvalue { i32, i1 } %28, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %31, i32 noundef 3520, i32 noundef -1) #12
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %32 = ptrtoint ptr %flows to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i.i, ptr %flows, align 8
  %tobool18.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool18.not, label %kvcalloc.exit.init_failure_crit_edge, label %for.cond.preheader

kvcalloc.exit.init_failure_crit_edge:             ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_failure

for.cond.preheader:                               ; preds = %kvcalloc.exit
  %33 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flows_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp65.not = icmp eq i32 %34, 0
  br i1 %cmp65.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %idx.066 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %35 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %flows, align 8
  %add.ptr = getelementptr %struct.fq_pie_flow, ptr %36, i32 %idx.066
  %flowchain = getelementptr %struct.fq_pie_flow, ptr %36, i32 %idx.066, i32 4
  %37 = ptrtoint ptr %flowchain to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %flowchain, ptr %flowchain, align 4
  %prev.i61 = getelementptr %struct.fq_pie_flow, ptr %36, i32 %idx.066, i32 4, i32 1
  %38 = ptrtoint ptr %prev.i61 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %flowchain, ptr %prev.i61, align 4
  %burst_time.i = getelementptr inbounds %struct.pie_vars, ptr %add.ptr, i32 0, i32 2
  %39 = ptrtoint ptr %burst_time.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 2343750, ptr %burst_time.i, align 8
  %dq_tstamp.i = getelementptr inbounds %struct.pie_vars, ptr %add.ptr, i32 0, i32 3
  %40 = ptrtoint ptr %dq_tstamp.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 -1, ptr %dq_tstamp.i, align 8
  %accu_prob.i = getelementptr inbounds %struct.pie_vars, ptr %add.ptr, i32 0, i32 5
  %41 = ptrtoint ptr %accu_prob.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %accu_prob.i, align 8
  %dq_count.i = getelementptr inbounds %struct.pie_vars, ptr %add.ptr, i32 0, i32 6
  %42 = ptrtoint ptr %dq_count.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 -1, ptr %dq_count.i, align 8
  %avg_dq_rate.i = getelementptr inbounds %struct.pie_vars, ptr %add.ptr, i32 0, i32 7
  %43 = ptrtoint ptr %avg_dq_rate.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %avg_dq_rate.i, align 8
  %inc = add nuw i32 %idx.066, 1
  %44 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flows_cnt, align 4
  %cmp = icmp ult i32 %inc, %45
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %46, 50
  %call24 = tail call i32 @mod_timer(ptr noundef %adapt_timer, i32 noundef %add) #9
  br label %cleanup

init_failure:                                     ; preds = %kvcalloc.exit.init_failure_crit_edge, %kvcalloc.exit.thread, %if.end10.init_failure_crit_edge
  %err.0 = phi i32 [ %call11, %if.end10.init_failure_crit_edge ], [ -12, %kvcalloc.exit.init_failure_crit_edge ], [ -12, %kvcalloc.exit.thread ]
  %47 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %flows_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %init_failure, %for.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %init_failure ], [ 0, %for.end ], [ %call7, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fq_pie_reset(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %new_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %0 = ptrtoint ptr %new_flows to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %new_flows, ptr %new_flows, align 4
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %new_flows, ptr %prev.i, align 4
  %old_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %2 = ptrtoint ptr %old_flows to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %old_flows, ptr %old_flows, align 4
  %prev.i14 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %3 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %old_flows, ptr %prev.i14, align 4
  %flows_cnt = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %4 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flows_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp16.not = icmp eq i32 %5, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %idx.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flows, align 8
  %add.ptr = getelementptr %struct.fq_pie_flow, ptr %7, i32 %idx.017
  %head = getelementptr %struct.fq_pie_flow, ptr %7, i32 %idx.017, i32 5
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head, align 4
  %tail = getelementptr %struct.fq_pie_flow, ptr %7, i32 %idx.017, i32 6
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail, align 8
  tail call void @rtnl_kfree_skbs(ptr noundef %9, ptr noundef %11) #9
  %12 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %head, align 4
  %flowchain = getelementptr %struct.fq_pie_flow, ptr %7, i32 %idx.017, i32 4
  %13 = ptrtoint ptr %flowchain to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %flowchain, ptr %flowchain, align 4
  %prev.i15 = getelementptr %struct.fq_pie_flow, ptr %7, i32 %idx.017, i32 4, i32 1
  %14 = ptrtoint ptr %prev.i15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %flowchain, ptr %prev.i15, align 4
  %burst_time.i = getelementptr inbounds %struct.pie_vars, ptr %add.ptr, i32 0, i32 2
  %15 = ptrtoint ptr %burst_time.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 2343750, ptr %burst_time.i, align 8
  %dq_tstamp.i = getelementptr inbounds %struct.pie_vars, ptr %add.ptr, i32 0, i32 3
  %16 = ptrtoint ptr %dq_tstamp.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %dq_tstamp.i, align 8
  %accu_prob.i = getelementptr inbounds %struct.pie_vars, ptr %add.ptr, i32 0, i32 5
  %17 = ptrtoint ptr %accu_prob.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %accu_prob.i, align 8
  %dq_count.i = getelementptr inbounds %struct.pie_vars, ptr %add.ptr, i32 0, i32 6
  %18 = ptrtoint ptr %dq_count.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %dq_count.i, align 8
  %avg_dq_rate.i = getelementptr inbounds %struct.pie_vars, ptr %add.ptr, i32 0, i32 7
  %19 = ptrtoint ptr %avg_dq_rate.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %avg_dq_rate.i, align 8
  %inc = add nuw i32 %idx.017, 1
  %20 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flows_cnt, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %22 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %qlen, align 8
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %23 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %backlog, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fq_pie_destroy(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 4
  tail call void @tcf_block_put(ptr noundef %1) #9
  %tupdate = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %2 = ptrtoint ptr %tupdate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tupdate, align 8
  %adapt_timer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 48
  %call1 = tail call i32 @del_timer_sync(ptr noundef %adapt_timer) #9
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %3 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %flows, align 8
  tail call void @kvfree(ptr noundef %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_pie_change(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [13 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %tb) #9
  %0 = call ptr @memset(ptr %tb, i32 255, i32 52)
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %opt, i32 0, i32 1
  %1 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %2)
  %tobool.not.i = icmp sgt i16 %2, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #9
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %4 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %opt, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %5 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %6 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i164 = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 12, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i164, ptr noundef nonnull @fq_pie_policy, i32 noundef 31, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %nla_parse_nested.exit.cleanup_crit_edge, label %if.end3

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %nla_parse_nested.exit
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i166 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i166, label %if.else.i167, label %if.end3.sch_tree_lock.exit_crit_edge

if.end3.sch_tree_lock.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_lock.exit

if.else.i167:                                     ; preds = %if.end3
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %10 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i167.sch_tree_lock.exit_crit_edge

if.else.i167.sch_tree_lock.exit_crit_edge:        ; preds = %if.else.i167
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i167
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !50

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 596) #9
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i167.sch_tree_lock.exit_crit_edge, %if.end3.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end3.sch_tree_lock.exit_crit_edge ], [ %13, %if.else.i167.sch_tree_lock.exit_crit_edge ], [ %13, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %13, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #9
  %arrayidx = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %sch_tree_lock.exit.if.end10_crit_edge, label %if.then5

sch_tree_lock.exit.if.end10_crit_edge:            ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then5:                                         ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i169 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i169 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i169, align 4
  %limit8 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %18 = ptrtoint ptr %limit8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %limit8, align 4
  %limit9 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %19 = ptrtoint ptr %limit9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %17, ptr %limit9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %sch_tree_lock.exit.if.end10_crit_edge
  %arrayidx11 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %21, null
  br i1 %tobool12.not, label %if.end10.if.end36_crit_edge, label %if.then13

if.end10.if.end36_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then13:                                        ; preds = %if.end10
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %22 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %flows, align 8
  %tobool14.not = icmp eq ptr %23, null
  br i1 %tobool14.not, label %if.end19, label %do.body

do.body:                                          ; preds = %if.then13
  call void @do_trace_netlink_extack(ptr noundef nonnull @fq_pie_change.__msg) #9
  %tobool16.not = icmp eq ptr %extack, null
  br i1 %tobool16.not, label %do.body.flow_error_crit_edge, label %do.body.flow_error.sink.split_crit_edge

do.body.flow_error.sink.split_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %flow_error.sink.split

do.body.flow_error_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %flow_error

if.end19:                                         ; preds = %if.then13
  %add.ptr.i.i170 = getelementptr i8, ptr %21, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i170 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i170, align 4
  %flows_cnt = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %26 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %flows_cnt, align 4
  %27 = add i32 %25, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %27)
  %28 = icmp ult i32 %27, -65536
  br i1 %28, label %do.body27, label %if.end19.if.end36_crit_edge

if.end19.if.end36_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.body27:                                        ; preds = %if.end19
  call void @do_trace_netlink_extack(ptr noundef nonnull @fq_pie_change.__msg.5) #9
  %tobool29.not = icmp eq ptr %extack, null
  br i1 %tobool29.not, label %do.body27.flow_error_crit_edge, label %do.body27.flow_error.sink.split_crit_edge

do.body27.flow_error.sink.split_crit_edge:        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %flow_error.sink.split

do.body27.flow_error_crit_edge:                   ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %flow_error

if.end36:                                         ; preds = %if.end19.if.end36_crit_edge, %if.end10.if.end36_crit_edge
  %arrayidx37 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %30, null
  br i1 %tobool38.not, label %if.end36.if.end44_crit_edge, label %if.then39

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i171 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i171 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i171, align 4
  %conv = zext i32 %32 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  %shr = lshr i64 %mul, 6
  %p_params42 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %33 = ptrtoint ptr %p_params42 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %shr, ptr %p_params42, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end36.if.end44_crit_edge
  %arrayidx45 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx45, align 4
  %tobool46.not = icmp eq ptr %35, null
  br i1 %tobool46.not, label %if.end44.if.end52_crit_edge, label %if.else.i

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.else.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i172 = getelementptr i8, ptr %35, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i172 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i172, align 4
  %call3.i = call i32 @__usecs_to_jiffies(i32 noundef %37) #9
  %tupdate = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %38 = ptrtoint ptr %tupdate to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call3.i, ptr %tupdate, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.else.i, %if.end44.if.end52_crit_edge
  %arrayidx53 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 5
  %39 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx53, align 4
  %tobool54.not = icmp eq ptr %40, null
  br i1 %tobool54.not, label %if.end52.if.end59_crit_edge, label %if.then55

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i173 = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i173 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i173, align 4
  %alpha = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %43 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %alpha, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.end52.if.end59_crit_edge
  %arrayidx60 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 6
  %44 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx60, align 4
  %tobool61.not = icmp eq ptr %45, null
  br i1 %tobool61.not, label %if.end59.if.end66_crit_edge, label %if.then62

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i174 = getelementptr i8, ptr %45, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i174 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.i174, align 4
  %beta = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 12
  %48 = ptrtoint ptr %beta to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %beta, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end59.if.end66_crit_edge
  %arrayidx67 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 7
  %49 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx67, align 4
  %tobool68.not = icmp eq ptr %50, null
  br i1 %tobool68.not, label %if.end66.if.end72_crit_edge, label %if.then69

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i175 = getelementptr i8, ptr %50, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i175 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i.i175, align 4
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %53 = ptrtoint ptr %quantum to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %quantum, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end66.if.end72_crit_edge
  %arrayidx73 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 8
  %54 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx73, align 4
  %tobool74.not = icmp eq ptr %55, null
  br i1 %tobool74.not, label %if.end72.if.end78_crit_edge, label %if.then75

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i176 = getelementptr i8, ptr %55, i32 4
  %56 = ptrtoint ptr %add.ptr.i.i176 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i.i176, align 4
  %memory_limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %58 = ptrtoint ptr %memory_limit to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %memory_limit, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end72.if.end78_crit_edge
  %arrayidx79 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 9
  %59 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx79, align 4
  %tobool80.not = icmp eq ptr %60, null
  br i1 %tobool80.not, label %if.end78.if.end84_crit_edge, label %if.then81

if.end78.if.end84_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i177 = getelementptr i8, ptr %60, i32 4
  %61 = ptrtoint ptr %add.ptr.i.i177 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i.i177, align 4
  %ecn_prob = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %63 = ptrtoint ptr %ecn_prob to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %ecn_prob, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end78.if.end84_crit_edge
  %arrayidx85 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 10
  %64 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx85, align 4
  %tobool86.not = icmp eq ptr %65, null
  br i1 %tobool86.not, label %if.end84.if.end92_crit_edge, label %if.then87

if.end84.if.end92_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i178 = getelementptr i8, ptr %65, i32 4
  %66 = ptrtoint ptr %add.ptr.i.i178 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i.i178, align 4
  %conv90 = trunc i32 %67 to i8
  %ecn = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %68 = ptrtoint ptr %ecn to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv90, ptr %ecn, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %if.end84.if.end92_crit_edge
  %arrayidx93 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 11
  %69 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx93, align 4
  %tobool94.not = icmp eq ptr %70, null
  br i1 %tobool94.not, label %if.end92.if.end100_crit_edge, label %if.then95

if.end92.if.end100_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i179 = getelementptr i8, ptr %70, i32 4
  %71 = ptrtoint ptr %add.ptr.i.i179 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i.i179, align 4
  %conv98 = trunc i32 %72 to i8
  %bytemode = getelementptr inbounds %struct.fq_pie_sched_data, ptr %privdata.i, i32 0, i32 6, i32 6
  %73 = ptrtoint ptr %bytemode to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv98, ptr %bytemode, align 1
  br label %if.end100

if.end100:                                        ; preds = %if.then95, %if.end92.if.end100_crit_edge
  %arrayidx101 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 12
  %74 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx101, align 4
  %tobool102.not = icmp eq ptr %75, null
  br i1 %tobool102.not, label %if.end100.if.end108_crit_edge, label %if.then103

if.end100.if.end108_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i180 = getelementptr i8, ptr %75, i32 4
  %76 = ptrtoint ptr %add.ptr.i.i180 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i.i180, align 4
  %conv106 = trunc i32 %77 to i8
  %dq_rate_estimator = getelementptr inbounds %struct.fq_pie_sched_data, ptr %privdata.i, i32 0, i32 6, i32 7
  %78 = ptrtoint ptr %dq_rate_estimator to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv106, ptr %dq_rate_estimator, align 2
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %if.end100.if.end108_crit_edge
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %limit110 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %79 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %qlen, align 8
  %81 = ptrtoint ptr %limit110 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %limit110, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp111212 = icmp ugt i32 %80, %82
  br i1 %cmp111212, label %if.end108.while.body_crit_edge, label %if.end108.while.end_crit_edge

if.end108.while.end_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end108.while.body_crit_edge:                   ; preds = %if.end108
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end108.while.body_crit_edge
  %len_dropped.0214 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ 0, %if.end108.while.body_crit_edge ]
  %num_dropped.0213 = phi i32 [ %add115, %while.body.while.body_crit_edge ], [ 0, %if.end108.while.body_crit_edge ]
  %call113 = call ptr @fq_pie_qdisc_dequeue(ptr noundef %sch)
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call113, i32 0, i32 3
  %83 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cb.i.i, align 4
  %add = add i32 %84, %len_dropped.0214
  %add115 = add i32 %num_dropped.0213, 1
  call void @rtnl_kfree_skbs(ptr noundef %call113, ptr noundef %call113) #9
  %85 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %qlen, align 8
  %87 = ptrtoint ptr %limit110 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %limit110, align 4
  %cmp111 = icmp ugt i32 %86, %88
  br i1 %cmp111, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end108.while.end_crit_edge
  %num_dropped.0.lcssa = phi i32 [ 0, %if.end108.while.end_crit_edge ], [ %add115, %while.body.while.end_crit_edge ]
  %len_dropped.0.lcssa = phi i32 [ 0, %if.end108.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %num_dropped.0.lcssa, i32 noundef %len_dropped.0.lcssa) #9
  %89 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags.i, align 8
  %and.i182 = and i32 %90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i182)
  %tobool.not.i183 = icmp eq i32 %and.i182, 0
  br i1 %tobool.not.i183, label %if.else.i188, label %while.end.sch_tree_unlock.exit_crit_edge

while.end.sch_tree_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit

if.else.i188:                                     ; preds = %while.end
  %dev_queue.i.i.i184 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %91 = ptrtoint ptr %dev_queue.i.i.i184 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev_queue.i.i.i184, align 8
  %qdisc_sleeping.i.i.i185 = getelementptr inbounds %struct.netdev_queue, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %qdisc_sleeping.i.i.i185 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %qdisc_sleeping.i.i.i185, align 4
  %call1.i.i186 = call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i186)
  %tobool.not.i.i187 = icmp eq i32 %call1.i.i186, 0
  br i1 %tobool.not.i.i187, label %land.rhs.i.i190, label %if.else.i188.sch_tree_unlock.exit_crit_edge

if.else.i188.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i188
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit

land.rhs.i.i190:                                  ; preds = %if.else.i188
  %.b41.i.i189 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i189, label %land.rhs.i.i190.sch_tree_unlock.exit_crit_edge, label %if.then.i.i191, !prof !50

land.rhs.i.i190.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit

if.then.i.i191:                                   ; preds = %land.rhs.i.i190
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 596) #9
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i191, %land.rhs.i.i190.sch_tree_unlock.exit_crit_edge, %if.else.i188.sch_tree_unlock.exit_crit_edge, %while.end.sch_tree_unlock.exit_crit_edge
  %.sink.i192 = phi ptr [ %sch, %while.end.sch_tree_unlock.exit_crit_edge ], [ %94, %if.else.i188.sch_tree_unlock.exit_crit_edge ], [ %94, %land.rhs.i.i190.sch_tree_unlock.exit_crit_edge ], [ %94, %if.then.i.i191 ]
  %lock.i.i.i193 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i192, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i193) #9
  br label %cleanup

flow_error.sink.split:                            ; preds = %do.body27.flow_error.sink.split_crit_edge, %do.body.flow_error.sink.split_crit_edge
  %fq_pie_change.__msg.5.sink = phi ptr [ @fq_pie_change.__msg, %do.body.flow_error.sink.split_crit_edge ], [ @fq_pie_change.__msg.5, %do.body27.flow_error.sink.split_crit_edge ]
  %95 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %fq_pie_change.__msg.5.sink, ptr %extack, align 4
  br label %flow_error

flow_error:                                       ; preds = %flow_error.sink.split, %do.body27.flow_error_crit_edge, %do.body.flow_error_crit_edge
  %96 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags.i, align 8
  %and.i196 = and i32 %97, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i196)
  %tobool.not.i197 = icmp eq i32 %and.i196, 0
  br i1 %tobool.not.i197, label %if.else.i202, label %flow_error.sch_tree_unlock.exit209_crit_edge

flow_error.sch_tree_unlock.exit209_crit_edge:     ; preds = %flow_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit209

if.else.i202:                                     ; preds = %flow_error
  %dev_queue.i.i.i198 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %98 = ptrtoint ptr %dev_queue.i.i.i198 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev_queue.i.i.i198, align 8
  %qdisc_sleeping.i.i.i199 = getelementptr inbounds %struct.netdev_queue, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %qdisc_sleeping.i.i.i199 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %qdisc_sleeping.i.i.i199, align 4
  %call1.i.i200 = call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i200)
  %tobool.not.i.i201 = icmp eq i32 %call1.i.i200, 0
  br i1 %tobool.not.i.i201, label %land.rhs.i.i204, label %if.else.i202.sch_tree_unlock.exit209_crit_edge

if.else.i202.sch_tree_unlock.exit209_crit_edge:   ; preds = %if.else.i202
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit209

land.rhs.i.i204:                                  ; preds = %if.else.i202
  %.b41.i.i203 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i203, label %land.rhs.i.i204.sch_tree_unlock.exit209_crit_edge, label %if.then.i.i205, !prof !50

land.rhs.i.i204.sch_tree_unlock.exit209_crit_edge: ; preds = %land.rhs.i.i204
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit209

if.then.i.i205:                                   ; preds = %land.rhs.i.i204
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 596) #9
  br label %sch_tree_unlock.exit209

sch_tree_unlock.exit209:                          ; preds = %if.then.i.i205, %land.rhs.i.i204.sch_tree_unlock.exit209_crit_edge, %if.else.i202.sch_tree_unlock.exit209_crit_edge, %flow_error.sch_tree_unlock.exit209_crit_edge
  %.sink.i206 = phi ptr [ %sch, %flow_error.sch_tree_unlock.exit209_crit_edge ], [ %101, %if.else.i202.sch_tree_unlock.exit209_crit_edge ], [ %101, %land.rhs.i.i204.sch_tree_unlock.exit209_crit_edge ], [ %101, %if.then.i.i205 ]
  %lock.i.i.i207 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i206, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i207) #9
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit209, %sch_tree_unlock.exit, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sch_tree_unlock.exit209 ], [ 0, %sch_tree_unlock.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %tb) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_pie_dump(ptr nocapture noundef readonly %sch, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i97 = alloca i32, align 4
  %tmp.i95 = alloca i32, align 4
  %tmp.i93 = alloca i32, align 4
  %tmp.i91 = alloca i32, align 4
  %tmp.i89 = alloca i32, align 4
  %tmp.i87 = alloca i32, align 4
  %tmp.i85 = alloca i32, align 4
  %tmp.i83 = alloca i32, align 4
  %tmp.i81 = alloca i32, align 4
  %tmp.i79 = alloca i32, align 4
  %tmp.i77 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not100 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not100
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %2 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %limit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end
  %flows_cnt = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %5 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flows_cnt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i77) #9
  %7 = ptrtoint ptr %tmp.i77 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i77, align 4
  %call.i78 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i77) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool5.not = icmp eq i32 %call.i78, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %p_params = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %8 = ptrtoint ptr %p_params to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %p_params, align 8
  %.tr = trunc i64 %9 to i32
  %conv = shl i32 %.tr, 6
  %div = udiv i32 %conv, 1000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i79) #9
  %10 = ptrtoint ptr %tmp.i79 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %tmp.i79, align 4
  %call.i80 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i79) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i79) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool8.not = icmp eq i32 %call.i80, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false6.if.then.i.i_crit_edge

lor.lhs.false6.if.then.i.i_crit_edge:             ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %tupdate = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %11 = ptrtoint ptr %tupdate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tupdate, align 8
  %call11 = call i32 @jiffies_to_usecs(i32 noundef %12) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i81) #9
  %13 = ptrtoint ptr %tmp.i81 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call11, ptr %tmp.i81, align 4
  %call.i82 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i81) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool13.not = icmp eq i32 %call.i82, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %lor.lhs.false9.if.then.i.i_crit_edge

lor.lhs.false9.if.then.i.i_crit_edge:             ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false14:                                  ; preds = %lor.lhs.false9
  %alpha = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %14 = ptrtoint ptr %alpha to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %alpha, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i83) #9
  %16 = ptrtoint ptr %tmp.i83 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i83, align 4
  %call.i84 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i83) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i83) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool17.not = icmp eq i32 %call.i84, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %lor.lhs.false14.if.then.i.i_crit_edge

lor.lhs.false14.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %beta = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 12
  %17 = ptrtoint ptr %beta to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %beta, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i85) #9
  %19 = ptrtoint ptr %tmp.i85 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tmp.i85, align 4
  %call.i86 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i85) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i85) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool21.not = icmp eq i32 %call.i86, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %lor.lhs.false18.if.then.i.i_crit_edge

lor.lhs.false18.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %20 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %quantum, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i87) #9
  %22 = ptrtoint ptr %tmp.i87 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tmp.i87, align 4
  %call.i88 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i87) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i87) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool24.not = icmp eq i32 %call.i88, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %lor.lhs.false22.if.then.i.i_crit_edge

lor.lhs.false22.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %memory_limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %23 = ptrtoint ptr %memory_limit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %memory_limit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i89) #9
  %25 = ptrtoint ptr %tmp.i89 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tmp.i89, align 4
  %call.i90 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i89) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i89) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool27.not = icmp eq i32 %call.i90, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %lor.lhs.false25.if.then.i.i_crit_edge

lor.lhs.false25.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %ecn_prob = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %26 = ptrtoint ptr %ecn_prob to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ecn_prob, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i91) #9
  %28 = ptrtoint ptr %tmp.i91 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tmp.i91, align 4
  %call.i92 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i91) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i91) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool30.not = icmp eq i32 %call.i92, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %lor.lhs.false28.if.then.i.i_crit_edge

lor.lhs.false28.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %ecn = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %29 = ptrtoint ptr %ecn to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ecn, align 8
  %conv33 = zext i8 %30 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i93) #9
  %31 = ptrtoint ptr %tmp.i93 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv33, ptr %tmp.i93, align 4
  %call.i94 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i93) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i93) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool35.not = icmp eq i32 %call.i94, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %lor.lhs.false31.if.then.i.i_crit_edge

lor.lhs.false31.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false36:                                  ; preds = %lor.lhs.false31
  %bytemode = getelementptr inbounds %struct.fq_pie_sched_data, ptr %privdata.i, i32 0, i32 6, i32 6
  %32 = ptrtoint ptr %bytemode to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bytemode, align 1
  %conv38 = zext i8 %33 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i95) #9
  %34 = ptrtoint ptr %tmp.i95 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv38, ptr %tmp.i95, align 4
  %call.i96 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i95) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i95) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool40.not = icmp eq i32 %call.i96, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %lor.lhs.false36.if.then.i.i_crit_edge

lor.lhs.false36.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false41:                                  ; preds = %lor.lhs.false36
  %dq_rate_estimator = getelementptr inbounds %struct.fq_pie_sched_data, ptr %privdata.i, i32 0, i32 6, i32 7
  %35 = ptrtoint ptr %dq_rate_estimator to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dq_rate_estimator, align 2
  %conv43 = zext i8 %36 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i97) #9
  %37 = ptrtoint ptr %tmp.i97 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv43, ptr %tmp.i97, align 4
  %call.i98 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i97) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i97) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool45.not = icmp eq i32 %call.i98, 0
  br i1 %tobool45.not, label %if.end47, label %lor.lhs.false41.if.then.i.i_crit_edge

lor.lhs.false41.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end47:                                         ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i, ptr %1, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %lor.lhs.false41.if.then.i.i_crit_edge, %lor.lhs.false36.if.then.i.i_crit_edge, %lor.lhs.false31.if.then.i.i_crit_edge, %lor.lhs.false28.if.then.i.i_crit_edge, %lor.lhs.false25.if.then.i.i_crit_edge, %lor.lhs.false22.if.then.i.i_crit_edge, %lor.lhs.false18.if.then.i.i_crit_edge, %lor.lhs.false14.if.then.i.i_crit_edge, %lor.lhs.false9.if.then.i.i_crit_edge, %lor.lhs.false6.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i99 = icmp ugt ptr %44, %1
  br i1 %cmp.i.i99, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !51

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %45 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ %42, %if.end47 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_pie_dump_stats(ptr noundef %sch, ptr noundef %d) #2 align 64 {
entry:
  %st = alloca %struct.tc_fq_pie_xstats, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %st) #9
  %stats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 28
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats, align 4
  %2 = ptrtoint ptr %st to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %st, align 4
  %dropped = getelementptr inbounds %struct.tc_fq_pie_xstats, ptr %st, i32 0, i32 1
  %dropped3 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %3 = ptrtoint ptr %dropped3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dropped3, align 4
  %5 = ptrtoint ptr %dropped to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dropped, align 4
  %overlimit = getelementptr inbounds %struct.tc_fq_pie_xstats, ptr %st, i32 0, i32 2
  %overlimit5 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 36
  %6 = ptrtoint ptr %overlimit5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %overlimit5, align 4
  %8 = ptrtoint ptr %overlimit to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %overlimit, align 4
  %overmemory = getelementptr inbounds %struct.tc_fq_pie_xstats, ptr %st, i32 0, i32 3
  %overmemory6 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %9 = ptrtoint ptr %overmemory6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %overmemory6, align 8
  %11 = ptrtoint ptr %overmemory to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %overmemory, align 4
  %ecn_mark = getelementptr inbounds %struct.tc_fq_pie_xstats, ptr %st, i32 0, i32 4
  %ecn_mark8 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %12 = ptrtoint ptr %ecn_mark8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ecn_mark8, align 4
  %14 = ptrtoint ptr %ecn_mark to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ecn_mark, align 4
  %new_flow_count = getelementptr inbounds %struct.tc_fq_pie_xstats, ptr %st, i32 0, i32 5
  %new_flow_count9 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %15 = ptrtoint ptr %new_flow_count9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %new_flow_count9, align 8
  %17 = ptrtoint ptr %new_flow_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %new_flow_count, align 4
  %new_flows_len = getelementptr inbounds %struct.tc_fq_pie_xstats, ptr %st, i32 0, i32 6
  %18 = ptrtoint ptr %new_flows_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %new_flows_len, align 4
  %old_flows_len = getelementptr inbounds %struct.tc_fq_pie_xstats, ptr %st, i32 0, i32 7
  %19 = ptrtoint ptr %old_flows_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %old_flows_len, align 4
  %memory_usage = getelementptr inbounds %struct.tc_fq_pie_xstats, ptr %st, i32 0, i32 8
  %memory_usage10 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %20 = ptrtoint ptr %memory_usage10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %memory_usage10, align 4
  %22 = ptrtoint ptr %memory_usage to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %memory_usage, align 4
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.sch_tree_lock.exit_crit_edge

entry.sch_tree_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %entry
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %25 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = tail call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !50

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 596) #9
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %entry.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %entry.sch_tree_lock.exit_crit_edge ], [ %28, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %28, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %28, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #9
  %new_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %29 = ptrtoint ptr %new_flows to i32
  call void @__asan_load4_noabort(i32 %29)
  %pos.058 = load ptr, ptr %new_flows, align 4
  %cmp.i.not59 = icmp eq ptr %pos.058, %new_flows
  br i1 %cmp.i.not59, label %sch_tree_lock.exit.for.end_crit_edge, label %sch_tree_lock.exit.for.body_crit_edge

sch_tree_lock.exit.for.body_crit_edge:            ; preds = %sch_tree_lock.exit
  br label %for.body

sch_tree_lock.exit.for.end_crit_edge:             ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sch_tree_lock.exit.for.body_crit_edge
  %pos.060 = phi ptr [ %pos.0, %for.body.for.body_crit_edge ], [ %pos.058, %sch_tree_lock.exit.for.body_crit_edge ]
  %30 = ptrtoint ptr %new_flows_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %new_flows_len, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %new_flows_len, align 4
  %32 = ptrtoint ptr %pos.060 to i32
  call void @__asan_load4_noabort(i32 %32)
  %pos.0 = load ptr, ptr %pos.060, align 4
  %cmp.i.not = icmp eq ptr %pos.0, %new_flows
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sch_tree_lock.exit.for.end_crit_edge
  %old_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %33 = ptrtoint ptr %old_flows to i32
  call void @__asan_load4_noabort(i32 %33)
  %pos.161 = load ptr, ptr %old_flows, align 4
  %cmp.i43.not62 = icmp eq ptr %pos.161, %old_flows
  br i1 %cmp.i43.not62, label %for.end.for.end26_crit_edge, label %for.end.for.body21_crit_edge

for.end.for.body21_crit_edge:                     ; preds = %for.end
  br label %for.body21

for.end.for.end26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.end.for.body21_crit_edge
  %pos.163 = phi ptr [ %pos.1, %for.body21.for.body21_crit_edge ], [ %pos.161, %for.end.for.body21_crit_edge ]
  %34 = ptrtoint ptr %old_flows_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %old_flows_len, align 4
  %inc23 = add i32 %35, 1
  store i32 %inc23, ptr %old_flows_len, align 4
  %36 = ptrtoint ptr %pos.163 to i32
  call void @__asan_load4_noabort(i32 %36)
  %pos.1 = load ptr, ptr %pos.163, align 4
  %cmp.i43.not = icmp eq ptr %pos.1, %old_flows
  br i1 %cmp.i43.not, label %for.body21.for.end26_crit_edge, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21

for.body21.for.end26_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26

for.end26:                                        ; preds = %for.body21.for.end26_crit_edge, %for.end.for.end26_crit_edge
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 8
  %and.i46 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool.not.i47 = icmp eq i32 %and.i46, 0
  br i1 %tobool.not.i47, label %if.else.i52, label %for.end26.sch_tree_unlock.exit_crit_edge

for.end26.sch_tree_unlock.exit_crit_edge:         ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit

if.else.i52:                                      ; preds = %for.end26
  %dev_queue.i.i.i48 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %39 = ptrtoint ptr %dev_queue.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_queue.i.i.i48, align 8
  %qdisc_sleeping.i.i.i49 = getelementptr inbounds %struct.netdev_queue, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %qdisc_sleeping.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %qdisc_sleeping.i.i.i49, align 4
  %call1.i.i50 = tail call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i50)
  %tobool.not.i.i51 = icmp eq i32 %call1.i.i50, 0
  br i1 %tobool.not.i.i51, label %land.rhs.i.i54, label %if.else.i52.sch_tree_unlock.exit_crit_edge

if.else.i52.sch_tree_unlock.exit_crit_edge:       ; preds = %if.else.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit

land.rhs.i.i54:                                   ; preds = %if.else.i52
  %.b41.i.i53 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i53, label %land.rhs.i.i54.sch_tree_unlock.exit_crit_edge, label %if.then.i.i55, !prof !50

land.rhs.i.i54.sch_tree_unlock.exit_crit_edge:    ; preds = %land.rhs.i.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit

if.then.i.i55:                                    ; preds = %land.rhs.i.i54
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 596) #9
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i55, %land.rhs.i.i54.sch_tree_unlock.exit_crit_edge, %if.else.i52.sch_tree_unlock.exit_crit_edge, %for.end26.sch_tree_unlock.exit_crit_edge
  %.sink.i56 = phi ptr [ %sch, %for.end26.sch_tree_unlock.exit_crit_edge ], [ %42, %if.else.i52.sch_tree_unlock.exit_crit_edge ], [ %42, %land.rhs.i.i54.sch_tree_unlock.exit_crit_edge ], [ %42, %if.then.i.i55 ]
  %lock.i.i.i57 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i56, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i57) #9
  %call27 = call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef nonnull %st, i32 noundef 36) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %st) #9
  ret i32 %call27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pie_drop_early(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_classify(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pie_process_dequeue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fq_pie_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sch1 = getelementptr i8, ptr %t, i32 -100
  %0 = ptrtoint ptr %sch1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sch1, align 4
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i, align 8
  %qdisc_sleeping.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %qdisc_sleeping.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc_sleeping.i, align 4
  %lock.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %flows_cnt = getelementptr i8, ptr %t, i32 -44
  %6 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flows_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp20.not = icmp eq i32 %7, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %p_params = getelementptr i8, ptr %t, i32 -80
  %flows = getelementptr i8, ptr %t, i32 -104
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %idx.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %flows, align 8
  %arrayidx = getelementptr %struct.fq_pie_flow, ptr %9, i32 %idx.021
  %backlog = getelementptr %struct.fq_pie_flow, ptr %9, i32 %idx.021, i32 2
  %10 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %backlog, align 4
  tail call void @pie_calculate_probability(ptr noundef %p_params, ptr noundef %arrayidx, i32 noundef %11) #9
  %inc = add nuw i32 %idx.021, 1
  %12 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flows_cnt, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tupdate = getelementptr i8, ptr %t, i32 -72
  %14 = ptrtoint ptr %tupdate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tupdate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %16, %15
  %call8 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_block_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pie_calculate_probability(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_kfree_skbs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_tree_reduce_backlog(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_app(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !19, !21, !22, !24, !25, !27, !29, !31, !33, !35, !36, !37}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_sch_fq_pie__501_564_fq_pie_module_init6, !1, !"__initcall__kmod_sch_fq_pie__501_564_fq_pie_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_fq_pie.c", i32 564, i32 1}
!2 = !{ptr @__exitcall_fq_pie_module_exit, !3, !"__exitcall_fq_pie_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_fq_pie.c", i32 565, i32 1}
!4 = !{ptr @__UNIQUE_ID_description502, !5, !"__UNIQUE_ID_description502", i1 false, i1 false}
!5 = !{!"../net/sched/sch_fq_pie.c", i32 567, i32 1}
!6 = !{ptr @__UNIQUE_ID_author503, !7, !"__UNIQUE_ID_author503", i1 false, i1 false}
!7 = !{!"../net/sched/sch_fq_pie.c", i32 568, i32 1}
!8 = !{ptr @__UNIQUE_ID_file504, !9, !"__UNIQUE_ID_file504", i1 false, i1 false}
!9 = !{!"../net/sched/sch_fq_pie.c", i32 569, i32 1}
!10 = !{ptr @__UNIQUE_ID_license505, !9, !"__UNIQUE_ID_license505", i1 false, i1 false}
!11 = !{ptr @fq_pie_qdisc_ops, !12, !"fq_pie_qdisc_ops", i1 false, i1 false}
!12 = !{!"../net/sched/sch_fq_pie.c", i32 539, i32 25}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sched/sch_fq_pie.c", i32 92, i32 11}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @fq_pie_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../net/sched/sch_fq_pie.c", i32 411, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @fq_pie_change.__msg, !26, !"__msg", i1 false, i1 false}
!26 = !{!"../net/sched/sch_fq_pie.c", i32 302, i32 4}
!27 = !{ptr @fq_pie_change.__msg.5, !28, !"__msg", i1 false, i1 false}
!28 = !{!"../net/sched/sch_fq_pie.c", i32 308, i32 4}
!29 = !{ptr @nla_parse_nested.__msg, !30, !"__msg", i1 false, i1 false}
!30 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!31 = !{ptr @fq_pie_policy, !32, !"fq_pie_policy", i1 false, i1 false}
!32 = !{!"../net/sched/sch_fq_pie.c", i32 204, i32 32}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!35 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/net/netlink.h", i32 991, i32 3}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 2150384686}
!53 = !{i64 2150389620}
!54 = !{i64 2150411338}
!55 = !{i64 2150416232}
!56 = !{i64 2150492759}
!57 = !{i64 2150493084}
