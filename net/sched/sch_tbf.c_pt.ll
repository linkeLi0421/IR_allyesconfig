; ModuleID = '/llk/IR_all_yes/net/sched/sch_tbf.c_pt.bc'
source_filename = "../net/sched/sch_tbf.c"
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
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.psched_ratecfg = type { i64, i32, i16, i16, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.tc_tbf_qopt_offload = type { i32, i32, i32, %union.anon.126 }
%union.anon.126 = type { %struct.tc_tbf_qopt_offload_replace_params }
%struct.tc_tbf_qopt_offload_replace_params = type { %struct.psched_ratecfg, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tc_tbf_qopt = type { %struct.tc_ratespec, %struct.tc_ratespec, i32, i32, i32 }
%struct.tc_ratespec = type { i8, i8, i16, i16, i16, i32 }
%struct.tc_qopt_offload_stats = type { ptr, ptr }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }

@tbf_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @tbf_class_ops, [16 x i8] c"tbf\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 168, i32 0, ptr @tbf_enqueue, ptr @tbf_dequeue, ptr @qdisc_peek_dequeued, ptr @tbf_init, ptr @tbf_reset, ptr @tbf_destroy, ptr @tbf_change, ptr null, ptr null, ptr null, ptr @tbf_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_tbf__380_625_tbf_module_init6 = internal global ptr @tbf_module_init, section ".initcall6.init", align 4
@__exitcall_tbf_module_exit = internal global ptr @tbf_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file381 = internal constant [31 x i8] c"sch_tbf.file=net/sched/sch_tbf\00", section ".modinfo", align 1
@__UNIQUE_ID_license382 = internal constant [20 x i8] c"sch_tbf.license=GPL\00", section ".modinfo", align 1
@tbf_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr @tbf_graft, ptr @tbf_leaf, ptr null, ptr @tbf_find, ptr null, ptr null, ptr @tbf_walk, ptr null, ptr null, ptr null, ptr @tbf_dump_class, ptr null }, [40 x i8] zeroinitializer }, align 32
@noop_qdisc = external dso_local global %struct.Qdisc, align 128
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@qdisc_calculate_pkt_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@tbf_policy = internal constant { [9 x %struct.nla_policy], [56 x i8] } { [9 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 36, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 1024, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 1024, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.22 zeroinitializer }, %struct.nla_policy zeroinitializer], [56 x i8] zeroinitializer }, align 32
@tbf_change._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tbf_change = private unnamed_addr constant [11 x i8] c"tbf_change\00", align 1
@tbf_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tbf_change, ptr @.str.6, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014sch_tbf: peakrate %llu is lower than or equals to rate %llu !\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sched/sch_tbf.c\00", [44 x i8] zeroinitializer }, align 32
@tbf_change._entry_ptr = internal global ptr @tbf_change._entry, section ".printk_index", align 4
@tbf_change._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tbf_change._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.tbf_change, ptr @.str.6, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014sch_tbf: burst %llu is lower than device %s mtu (%u) !\0A\00", [38 x i8] zeroinitializer }, align 32
@tbf_change._entry_ptr.10 = internal global ptr @tbf_change._entry.8, section ".printk_index", align 4
@bfifo_qdisc_ops = external dso_local global %struct.Qdisc_ops, align 4
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"tbf_class_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 592, i32 37 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 596, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 835, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 271, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"tbf_policy\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 341, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 404, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private constant [23 x i8] c"../net/sched/sch_tbf.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 422, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 991, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_file381, ptr @__UNIQUE_ID_license382, ptr @__exitcall_tbf_module_exit, ptr @__initcall__kmod_sch_tbf__380_625_tbf_module_init6, ptr @tbf_change._entry, ptr @tbf_change._entry.8, ptr @tbf_change._entry_ptr, ptr @tbf_change._entry_ptr.10, ptr @tbf_module_exit, ptr @tbf_class_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tbf_policy, ptr @tbf_change._rs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tbf_change._rs.7, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbf_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbf_policy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbf_change._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbf_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbf_change._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbf_change._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tbf_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @tbf_qdisc_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tbf_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @tbf_qdisc_ops) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tbf_enqueue(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i, align 4
  %max_size = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %2 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.i.not = icmp eq i16 %7, 0
  br i1 %tobool.i.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call5 = tail call zeroext i1 @skb_gso_validate_mac_len(ptr noundef %skb, i32 noundef %3) #12
  br i1 %call5, label %if.then6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %call1.i = tail call i64 @netif_skb_features(ptr noundef %skb) #12
  %8 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cb.i.i, align 4
  %and.i = and i64 %call1.i, -34359672833
  %call.i.i = tail call ptr @__skb_gso_segment(ptr noundef %skb, i64 noundef %and.i, i1 noundef zeroext true) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then.i, label %cond.end.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %to_free, align 4
  %12 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %13 = ptrtoint ptr %drops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %drops.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %14, 1
  store i32 %inc.i.i.i.i, ptr %drops.i.i.i.i, align 4
  br label %cleanup

cond.end.i:                                       ; preds = %if.then6
  %qdisc.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %cond.end.i
  %nb.071.i = phi i32 [ 0, %cond.end.i ], [ %nb.1.i, %for.inc.i.for.body.i_crit_edge ]
  %len.070.i = phi i32 [ 0, %cond.end.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %segs.068.i = phi ptr [ %call.i.i, %cond.end.i ], [ %nskb.069.i, %for.inc.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %segs.068.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %nskb.069.i = load ptr, ptr %segs.068.i, align 8
  store ptr null, ptr %segs.068.i, align 8
  %len7.i = getelementptr inbounds %struct.sk_buff, ptr %segs.068.i, i32 0, i32 6
  %16 = ptrtoint ptr %len7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len7.i, align 4
  %cb.i.i37 = getelementptr inbounds %struct.sk_buff, ptr %segs.068.i, i32 0, i32 3
  %18 = ptrtoint ptr %cb.i.i37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %cb.i.i37, align 4
  %add.i = add i32 %17, %len.070.i
  %19 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qdisc.i, align 8
  %stab1.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %stab1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %stab1.i.i.i, align 4
  %call.i.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.do.end8.i.i.i_crit_edge

for.body.i.do.end8.i.i.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i
  %call3.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b14.i.i.i = load i1, ptr @qdisc_calculate_pkt_len.__warned, align 1
  br i1 %.b14.i.i.i, label %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge:     ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_calculate_pkt_len.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.2) #12
  br label %do.end8.i.i.i

do.end8.i.i.i:                                    ; preds = %if.then.i.i.i, %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, %for.body.i.do.end8.i.i.i_crit_edge
  %tobool10.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool10.not.i.i.i, label %do.end8.i.i.i.qdisc_enqueue.exit.i_crit_edge, label %if.then11.i.i.i

do.end8.i.i.i.qdisc_enqueue.exit.i_crit_edge:     ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_enqueue.exit.i

if.then11.i.i.i:                                  ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__qdisc_calculate_pkt_len(ptr noundef nonnull %segs.068.i, ptr noundef nonnull %22) #12
  br label %qdisc_enqueue.exit.i

qdisc_enqueue.exit.i:                             ; preds = %if.then11.i.i.i, %do.end8.i.i.i.qdisc_enqueue.exit.i_crit_edge
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 128
  %call.i66.i = tail call i32 %24(ptr noundef nonnull %segs.068.i, ptr noundef %20, ptr noundef %to_free) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i)
  %cmp.not.i = icmp eq i32 %call.i66.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %qdisc_enqueue.exit.i
  %and12.i = and i32 %call.i66.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.then16.i, label %if.then11.i.for.inc.i_crit_edge

if.then11.i.for.inc.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then16.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %26, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %qdisc_enqueue.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i = add i32 %nb.071.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then16.i, %if.then11.i.for.inc.i_crit_edge
  %nb.1.i = phi i32 [ %nb.071.i, %if.then11.i.for.inc.i_crit_edge ], [ %nb.071.i, %if.then16.i ], [ %inc.i, %if.else.i ]
  %tobool19.not.i = icmp eq ptr %nskb.069.i, null
  br i1 %tobool19.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %27 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i, align 8
  %add26.i = add i32 %28, %nb.1.i
  store i32 %add26.i, ptr %qlen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nb.1.i)
  %cmp27.i = icmp sgt i32 %nb.1.i, 1
  br i1 %cmp27.i, label %if.then28.i, label %for.end.i.if.end30.i_crit_edge

for.end.i.if.end30.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

if.then28.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub nsw i32 1, %nb.1.i
  %sub29.i = sub i32 %9, %add.i
  tail call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %sub.i, i32 noundef %sub29.i) #12
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %for.end.i.if.end30.i_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nb.1.i)
  %cmp31.i = icmp slt i32 %nb.1.i, 1
  %cond32.i = zext i1 %cmp31.i to i32
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %29 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %to_free, align 4
  %31 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i38 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %32 = ptrtoint ptr %drops.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %drops.i.i.i38, align 4
  %inc.i.i.i39 = add i32 %33, 1
  store i32 %inc.i.i.i39, ptr %drops.i.i.i38, align 4
  br label %cleanup

if.end9:                                          ; preds = %entry
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %34 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %qdisc, align 8
  %stab1.i.i = getelementptr inbounds %struct.Qdisc, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %stab1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %stab1.i.i, align 4
  %call.i.i40 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40)
  %tobool.not.i.i41 = icmp eq i32 %call.i.i40, 0
  br i1 %tobool.not.i.i41, label %land.lhs.true.i.i, label %if.end9.do.end8.i.i_crit_edge

if.end9.do.end8.i.i_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end9
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @qdisc_calculate_pkt_len.__warned, align 1
  br i1 %.b14.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_calculate_pkt_len.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.2) #12
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %if.end9.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %37, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.qdisc_enqueue.exit_crit_edge, label %if.then11.i.i

do.end8.i.i.qdisc_enqueue.exit_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_enqueue.exit

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__qdisc_calculate_pkt_len(ptr noundef %skb, ptr noundef nonnull %37) #12
  br label %qdisc_enqueue.exit

qdisc_enqueue.exit:                               ; preds = %if.then11.i.i, %do.end8.i.i.qdisc_enqueue.exit_crit_edge
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 128
  %call.i = tail call i32 %39(ptr noundef %skb, ptr noundef %35, ptr noundef %to_free) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11.not = icmp eq i32 %call.i, 0
  br i1 %cmp11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %qdisc_enqueue.exit
  %and = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then13, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %40 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %41, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %cleanup

if.end15:                                         ; preds = %qdisc_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #14
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %42 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %backlog, align 4
  %add = add i32 %43, %1
  store i32 %add, ptr %backlog, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %44 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qlen, align 8
  %inc = add i32 %45, 1
  store i32 %inc, ptr %qlen, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.then12.cleanup_crit_edge, %if.end, %if.end30.i, %if.then.i
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.end15 ], [ %call.i, %if.then12.cleanup_crit_edge ], [ %call.i, %if.then13 ], [ 1, %if.then.i ], [ %cond32.i, %if.end30.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tbf_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
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
  %call2 = tail call ptr %5(ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup52_crit_edge, label %if.then

entry.cleanup52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup52

if.then:                                          ; preds = %entry
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 3
  %6 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cb.i.i, align 4
  %call.i = tail call i64 @ktime_get() #12
  %t_c = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %8 = ptrtoint ptr %t_c to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %t_c, align 8
  %sub = sub i64 %call.i, %9
  %buffer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %buffer, align 8
  %12 = tail call i64 @llvm.smin.i64(i64 %sub, i64 %11)
  %peak.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %13 = ptrtoint ptr %peak.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %peak.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.i.not = icmp eq i64 %14, 0
  br i1 %tobool.i.not, label %if.then.if.end12_crit_edge, label %if.then6

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then6:                                         ; preds = %if.then
  %ptokens = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %15 = ptrtoint ptr %ptokens to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ptokens, align 8
  %add = add i64 %16, %12
  %mtu = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %17 = ptrtoint ptr %mtu to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %mtu, align 8
  %19 = tail call i64 @llvm.smin.i64(i64 %add, i64 %18)
  %overhead.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %20 = ptrtoint ptr %overhead.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %overhead.i, align 4
  %conv.i = zext i16 %21 to i32
  %add.i = add i32 %7, %conv.i
  %mpu.i = getelementptr inbounds %struct.psched_ratecfg, ptr %peak.i, i32 0, i32 3
  %22 = ptrtoint ptr %mpu.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mpu.i, align 2
  %conv1.i = zext i16 %23 to i32
  %24 = tail call i32 @llvm.umax.i32(i32 %add.i, i32 %conv1.i) #12
  %linklayer.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %25 = ptrtoint ptr %linklayer.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %linklayer.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp6.i = icmp eq i8 %26, 2
  br i1 %cmp6.i, label %if.then9.i, label %if.then6.psched_l2t_ns.exit_crit_edge, !prof !48

if.then6.psched_l2t_ns.exit_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %psched_l2t_ns.exit

if.then9.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %24, 47
  %div.i = udiv i32 %sub.i, 48
  %mul.i = mul i32 %div.i, 53
  br label %psched_l2t_ns.exit

psched_l2t_ns.exit:                               ; preds = %if.then9.i, %if.then6.psched_l2t_ns.exit_crit_edge
  %.sink.i = phi i32 [ %mul.i, %if.then9.i ], [ %24, %if.then6.psched_l2t_ns.exit_crit_edge ]
  %conv16.i = zext i32 %.sink.i to i64
  %mult17.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %27 = ptrtoint ptr %mult17.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mult17.i, align 8
  %conv18.i = zext i32 %28 to i64
  %mul19.i = mul nuw i64 %conv18.i, %conv16.i
  %shift20.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 1
  %29 = ptrtoint ptr %shift20.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %shift20.i, align 1
  %sh_prom22.i = zext i8 %30 to i64
  %shr23.i = lshr i64 %mul19.i, %sh_prom22.i
  %sub11 = sub i64 %19, %shr23.i
  br label %if.end12

if.end12:                                         ; preds = %psched_l2t_ns.exit, %if.then.if.end12_crit_edge
  %ptoks.1 = phi i64 [ %sub11, %psched_l2t_ns.exit ], [ 0, %if.then.if.end12_crit_edge ]
  %tokens = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %31 = ptrtoint ptr %tokens to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tokens, align 8
  %add13 = add i64 %32, %12
  %33 = tail call i64 @llvm.smin.i64(i64 %add13, i64 %11)
  %rate = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %overhead.i101 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %34 = ptrtoint ptr %overhead.i101 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %overhead.i101, align 4
  %conv.i102 = zext i16 %35 to i32
  %add.i103 = add i32 %7, %conv.i102
  %mpu.i104 = getelementptr inbounds %struct.psched_ratecfg, ptr %rate, i32 0, i32 3
  %36 = ptrtoint ptr %mpu.i104 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mpu.i104, align 2
  %conv1.i105 = zext i16 %37 to i32
  %38 = tail call i32 @llvm.umax.i32(i32 %add.i103, i32 %conv1.i105) #12
  %linklayer.i106 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %39 = ptrtoint ptr %linklayer.i106 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %linklayer.i106, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp6.i107 = icmp eq i8 %40, 2
  br i1 %cmp6.i107, label %if.then9.i111, label %if.end12.psched_l2t_ns.exit120_crit_edge, !prof !48

if.end12.psched_l2t_ns.exit120_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %psched_l2t_ns.exit120

if.then9.i111:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i108 = add i32 %38, 47
  %div.i109 = udiv i32 %sub.i108, 48
  %mul.i110 = mul i32 %div.i109, 53
  br label %psched_l2t_ns.exit120

psched_l2t_ns.exit120:                            ; preds = %if.then9.i111, %if.end12.psched_l2t_ns.exit120_crit_edge
  %.sink.i112 = phi i32 [ %mul.i110, %if.then9.i111 ], [ %38, %if.end12.psched_l2t_ns.exit120_crit_edge ]
  %conv16.i113 = zext i32 %.sink.i112 to i64
  %mult17.i114 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %41 = ptrtoint ptr %mult17.i114 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mult17.i114, align 8
  %conv18.i115 = zext i32 %42 to i64
  %mul19.i116 = mul nuw i64 %conv18.i115, %conv16.i113
  %shift20.i117 = getelementptr inbounds %struct.psched_ratecfg, ptr %rate, i32 0, i32 5
  %43 = ptrtoint ptr %shift20.i117 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %shift20.i117, align 1
  %sh_prom22.i118 = zext i8 %44 to i64
  %shr23.i119 = lshr i64 %mul19.i116, %sh_prom22.i118
  %sub20 = sub i64 %33, %shr23.i119
  %or = or i64 %sub20, %ptoks.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %or)
  %cmp21 = icmp sgt i64 %or, -1
  br i1 %cmp21, label %if.then22, label %cleanup

if.then22:                                        ; preds = %psched_l2t_ns.exit120
  %45 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %qdisc, align 8
  %gso_skb.i = getelementptr inbounds %struct.Qdisc, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %gso_skb.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gso_skb.i, align 4
  %cmp.i.i = icmp eq ptr %48, %gso_skb.i
  %tobool.not31.i = icmp eq ptr %48, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not31.i
  br i1 %tobool.not.i, label %qdisc_dequeue_peeked.exit, label %__skb_dequeue.exit.i

__skb_dequeue.exit.i:                             ; preds = %if.then22
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %46, i32 0, i32 16, i32 1
  %49 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.0, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %48, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.0, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %54, ptr %prev17.i.i.i, align 4
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %52, ptr %54, align 8
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %46, i32 0, i32 2
  %57 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %58, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %__skb_dequeue.exit.i
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !49
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 3
  %60 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cb.i.i.i.i, align 4
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %46, i32 0, i32 12
  %62 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cpu_qstats.i.i, align 4
  %backlog.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %backlog.i.i to i32
  %65 = tail call i32 @llvm.read_register.i32(metadata !38) #12
  %and.i.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %70, %64
  %71 = inttoptr i32 %add.i.i to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %add14.i.i = sub i32 %73, %61
  store i32 %add14.i.i, ptr %71, align 4
  %74 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !50
  %and.i.i.i.i = and i32 %74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i19.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i19.i, label %if.then.i20.i, label %if.then4.i.qdisc_qstats_cpu_backlog_dec.exit.i_crit_edge, !prof !48

if.then4.i.qdisc_qstats_cpu_backlog_dec.exit.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_qstats_cpu_backlog_dec.exit.i

if.then.i20.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %qdisc_qstats_cpu_backlog_dec.exit.i

qdisc_qstats_cpu_backlog_dec.exit.i:              ; preds = %if.then.i20.i, %if.then4.i.qdisc_qstats_cpu_backlog_dec.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #12, !srcloc !51
  %75 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !49
  %76 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cpu_qstats.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  %79 = tail call i32 @llvm.read_register.i32(metadata !38) #12
  %and.i.i22.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i22.i to ptr
  %cpu.i23.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %cpu.i23.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cpu.i23.i, align 4
  %arrayidx.i24.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i24.i, align 4
  %add.i25.i = add i32 %84, %78
  %85 = inttoptr i32 %add.i25.i to ptr
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %add13.i.i = add i32 %87, -1
  store i32 %add13.i.i, ptr %85, align 4
  %88 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !50
  %and.i.i.i26.i = and i32 %88, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i26.i)
  %tobool.not.i27.i = icmp eq i32 %and.i.i.i26.i, 0
  br i1 %tobool.not.i27.i, label %if.then.i28.i, label %qdisc_qstats_cpu_backlog_dec.exit.i.qdisc_qstats_cpu_qlen_dec.exit.i_crit_edge, !prof !48

qdisc_qstats_cpu_backlog_dec.exit.i.qdisc_qstats_cpu_qlen_dec.exit.i_crit_edge: ; preds = %qdisc_qstats_cpu_backlog_dec.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_qstats_cpu_qlen_dec.exit.i

if.then.i28.i:                                    ; preds = %qdisc_qstats_cpu_backlog_dec.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %qdisc_qstats_cpu_qlen_dec.exit.i

qdisc_qstats_cpu_qlen_dec.exit.i:                 ; preds = %if.then.i28.i, %qdisc_qstats_cpu_backlog_dec.exit.i.qdisc_qstats_cpu_qlen_dec.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %75) #12, !srcloc !51
  br label %if.end30

if.else.i:                                        ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %cb.i.i.i29.i = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 3
  %89 = ptrtoint ptr %cb.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cb.i.i.i29.i, align 4
  %backlog.i30.i = getelementptr inbounds %struct.Qdisc, ptr %46, i32 0, i32 19, i32 1
  %91 = ptrtoint ptr %backlog.i30.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %backlog.i30.i, align 4
  %sub.i.i = sub i32 %92, %90
  store i32 %sub.i.i, ptr %backlog.i30.i, align 4
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %46, i32 0, i32 17, i32 2
  %93 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %qlen.i, align 8
  %dec.i = add i32 %94, -1
  store i32 %dec.i, ptr %qlen.i, align 8
  br label %if.end30

qdisc_dequeue_peeked.exit:                        ; preds = %if.then22
  %dequeue.i = getelementptr inbounds %struct.Qdisc, ptr %46, i32 0, i32 1
  %95 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dequeue.i, align 4
  %call6.i = tail call ptr %96(ptr noundef %46) #12
  %tobool25.not = icmp eq ptr %call6.i, null
  br i1 %tobool25.not, label %qdisc_dequeue_peeked.exit.cleanup52_crit_edge, label %qdisc_dequeue_peeked.exit.if.end30_crit_edge, !prof !48

qdisc_dequeue_peeked.exit.if.end30_crit_edge:     ; preds = %qdisc_dequeue_peeked.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

qdisc_dequeue_peeked.exit.cleanup52_crit_edge:    ; preds = %qdisc_dequeue_peeked.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup52

if.end30:                                         ; preds = %qdisc_dequeue_peeked.exit.if.end30_crit_edge, %if.else.i, %qdisc_qstats_cpu_qlen_dec.exit.i
  %skb.0.i125 = phi ptr [ %call6.i, %qdisc_dequeue_peeked.exit.if.end30_crit_edge ], [ %48, %qdisc_qstats_cpu_qlen_dec.exit.i ], [ %48, %if.else.i ]
  %97 = ptrtoint ptr %t_c to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %call.i, ptr %t_c, align 8
  %98 = ptrtoint ptr %tokens to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %sub20, ptr %tokens, align 8
  %ptokens33 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %99 = ptrtoint ptr %ptokens33 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %ptoks.1, ptr %ptokens33, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i125, i32 0, i32 3
  %100 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %102 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %backlog.i, align 4
  %sub.i121 = sub i32 %103, %101
  store i32 %sub.i121, ptr %backlog.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %104 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %qlen, align 8
  %dec = add i32 %105, -1
  store i32 %dec, ptr %qlen, align 8
  %106 = load i32, ptr %cb.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i125, i32 0, i32 17
  %107 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool.i.not.i.i = icmp eq i16 %110, 0
  br i1 %tobool.i.not.i.i, label %if.end30.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end30.cond.end.i.i_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %108, i32 0, i32 5
  %111 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %112 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end30.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %if.end30.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %113 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i.i.i.i.i = icmp eq i32 %113, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %114 = tail call i32 @llvm.read_register.i32(metadata !38) #12
  %and.i.i.i.i.i.i.i.i = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %117, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !52
  %118 = tail call i32 @llvm.read_register.i32(metadata !38) #12
  %and.i.i.i.i.i.i = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %121
  %122 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %123, ptrtoint (ptr @lockdep_recursion to i32)
  %124 = inttoptr i32 %add.i.i.i.i.i to ptr
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %124, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !53
  %127 = tail call i32 @llvm.read_register.i32(metadata !38) #12
  %and.i.i.i7.i.i.i.i.i = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %130, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %126, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %131 = tail call i32 @llvm.read_register.i32(metadata !38) #12
  %and.i.i.i.i.i.i.i = and i32 %131, -16384
  %132 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp.i.i.i.i.i = icmp eq i32 %134, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %135 = tail call i32 @llvm.read_register.i32(metadata !38) #12
  %and.i.i.i9.i.i.i.i.i = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %138, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !54
  %139 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %140
  %141 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %142, ptrtoint (ptr @hardirqs_enabled to i32)
  %143 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %143, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !55
  %146 = tail call i32 @llvm.read_register.i32(metadata !38) #12
  %and.i.i.i12.i.i.i.i.i = and i32 %146, -16384
  %147 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %149, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %145, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !56

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %106 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %150 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %151, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !57
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %152 = tail call ptr @llvm.returnaddress(i32 0) #12
  %153 = ptrtoint ptr %152 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %153) #12
  %154 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %155, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %156 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %157, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %153) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !58
  %158 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %159, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  br label %cleanup52

cleanup:                                          ; preds = %psched_l2t_ns.exit120
  call void @__sanitizer_cov_trace_pc() #14
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %160 = trunc i64 %sub20 to i32
  %conv = sub i32 0, %160
  %161 = trunc i64 %ptoks.1 to i32
  %conv38 = sub i32 0, %161
  %162 = tail call i32 @llvm.smax.i32(i32 %conv, i32 %conv38)
  %conv46 = sext i32 %162 to i64
  %add47 = add i64 %call.i, %conv46
  tail call void @qdisc_watchdog_schedule_range_ns(ptr noundef %watchdog, i64 noundef %add47, i64 noundef 0) #12
  %overlimits.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %163 = ptrtoint ptr %overlimits.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %overlimits.i, align 16
  %inc.i = add i32 %164, 1
  store i32 %inc.i, ptr %overlimits.i, align 16
  br label %cleanup52

cleanup52:                                        ; preds = %cleanup, %qdisc_bstats_update.exit, %qdisc_dequeue_peeked.exit.cleanup52_crit_edge, %entry.cleanup52_crit_edge
  %retval.1 = phi ptr [ null, %cleanup ], [ null, %entry.cleanup52_crit_edge ], [ null, %qdisc_dequeue_peeked.exit.cleanup52_crit_edge ], [ %skb.0.i125, %qdisc_bstats_update.exit ]
  ret ptr %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qdisc_peek_dequeued(ptr noundef %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not15 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not15
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %3(ptr noundef %sch) #12
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
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
define internal i32 @tbf_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  tail call void @qdisc_watchdog_init(ptr noundef %watchdog, ptr noundef %sch) #12
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @noop_qdisc, ptr %qdisc, align 8
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i64 @ktime_get() #12
  %t_c = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %1 = ptrtoint ptr %t_c to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %call.i, ptr %t_c, align 8
  %call2 = tail call i32 @tbf_change(ptr noundef %sch, ptr noundef nonnull %opt, ptr noundef %extack)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tbf_reset(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  tail call void @qdisc_reset(ptr noundef %1) #12
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %backlog, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %3 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen, align 8
  %call.i = tail call i64 @ktime_get() #12
  %t_c = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %4 = ptrtoint ptr %t_c to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i, ptr %t_c, align 8
  %buffer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %buffer, align 8
  %tokens = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %7 = ptrtoint ptr %tokens to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %tokens, align 8
  %mtu = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %8 = ptrtoint ptr %mtu to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mtu, align 8
  %ptokens = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %10 = ptrtoint ptr %ptokens to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %ptokens, align 8
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  tail call void @qdisc_watchdog_cancel(ptr noundef %watchdog) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tbf_destroy(ptr noundef %sch) #2 align 64 {
entry:
  %qopt.i = alloca %struct.tc_tbf_qopt_offload, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  tail call void @qdisc_watchdog_cancel(ptr noundef %watchdog) #12
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %qopt.i) #12
  %4 = getelementptr inbounds i8, ptr %qopt.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 255, i32 40)
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %7, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.tbf_offload_destroy.exit_crit_edge, label %lor.lhs.false.i

entry.tbf_offload_destroy.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tbf_offload_destroy.exit

lor.lhs.false.i:                                  ; preds = %entry
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %9, i32 0, i32 42
  %10 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.tbf_offload_destroy.exit_crit_edge, label %if.end.i

lor.lhs.false.i.tbf_offload_destroy.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tbf_offload_destroy.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %qopt.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %qopt.i, align 8
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %13 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %handle.i, align 32
  %handle2.i = getelementptr inbounds %struct.tc_tbf_qopt_offload, ptr %qopt.i, i32 0, i32 1
  %15 = ptrtoint ptr %handle2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %handle2.i, align 4
  %parent.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %parent.i, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %4, align 8
  %call6.i = call i32 %11(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %qopt.i) #12
  br label %tbf_offload_destroy.exit

tbf_offload_destroy.exit:                         ; preds = %if.end.i, %lor.lhs.false.i.tbf_offload_destroy.exit_crit_edge, %entry.tbf_offload_destroy.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %qopt.i) #12
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %19 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qdisc, align 8
  call void @qdisc_put(ptr noundef %20) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tbf_change(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  %qopt.i = alloca %struct.tc_tbf_qopt_offload, align 8
  %qstats.i.i = alloca %struct.gnet_stats_queue, align 4
  %tmp.i274 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  %tb = alloca [9 x ptr], align 4
  %rate = alloca %struct.psched_ratecfg, align 8
  %peak = alloca %struct.psched_ratecfg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tb) #12
  %0 = call ptr @memset(ptr %tb, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rate) #12
  %1 = call ptr @memset(ptr %rate, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %peak) #12
  %2 = call ptr @memset(ptr %peak, i32 255, i32 24)
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %3 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %4 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 8, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tbf_policy, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %6, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  %linklayer = getelementptr i8, ptr %6, i32 5
  %7 = ptrtoint ptr %linklayer to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %linklayer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp8 = icmp eq i8 %8, 0
  br i1 %cmp8, label %if.then10, label %if.end4.if.end14_crit_edge

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx12 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx12, align 4
  %call13 = call ptr @qdisc_get_rtab(ptr noundef %add.ptr.i, ptr noundef %10, ptr noundef null) #12
  call void @qdisc_put_rtab(ptr noundef %call13) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end4.if.end14_crit_edge
  %peakrate = getelementptr i8, ptr %6, i32 16
  %linklayer15 = getelementptr i8, ptr %6, i32 17
  %11 = ptrtoint ptr %linklayer15 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %linklayer15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp17 = icmp eq i8 %12, 0
  br i1 %cmp17, label %if.then19, label %if.end14.if.end23_crit_edge

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx21 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx21, align 4
  %call22 = call ptr @qdisc_get_rtab(ptr noundef %peakrate, ptr noundef %14, ptr noundef null) #12
  call void @qdisc_put_rtab(ptr noundef %call22) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end14.if.end23_crit_edge
  %buffer24 = getelementptr i8, ptr %6, i32 32
  %15 = ptrtoint ptr %buffer24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buffer24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %16)
  %cmp26 = icmp ult i32 %16, 67108864
  %conv25 = zext i32 %16 to i64
  %shl = shl nuw nsw i64 %conv25, 6
  %cond = select i1 %cmp26, i64 %shl, i64 4294967295
  %mtu28 = getelementptr i8, ptr %6, i32 36
  %17 = ptrtoint ptr %mtu28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mtu28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %18)
  %cmp32 = icmp ult i32 %18, 67108864
  %conv29 = zext i32 %18 to i64
  %shl30 = shl nuw nsw i64 %conv29, 6
  %cond37 = select i1 %cmp32, i64 %shl30, i64 4294967295
  %arrayidx38 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 4
  %19 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx38, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %if.end23.if.end42_crit_edge, label %if.then39

if.end23.if.end42_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then39:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #12
  %21 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -1, ptr %tmp.i, align 8, !annotation !59
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %20, i32 noundef 8) #12
  %22 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end23.if.end42_crit_edge
  %rate64.0 = phi i64 [ %23, %if.then39 ], [ 0, %if.end23.if.end42_crit_edge ]
  call void @psched_ratecfg_precompute(ptr noundef nonnull %rate, ptr noundef %add.ptr.i, i64 noundef %rate64.0) #12
  %arrayidx44 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 6
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx44, align 4
  %tobool45.not = icmp eq ptr %25, null
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.end42
  %add.ptr.i.i270 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i270 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i270, align 4
  %conv49 = zext i32 %27 to i64
  %overhead.i = getelementptr inbounds %struct.psched_ratecfg, ptr %rate, i32 0, i32 2
  %28 = ptrtoint ptr %overhead.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %overhead.i, align 4
  %conv.i = zext i16 %29 to i32
  %add.i = add i32 %27, %conv.i
  %mpu.i = getelementptr inbounds %struct.psched_ratecfg, ptr %rate, i32 0, i32 3
  %30 = ptrtoint ptr %mpu.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mpu.i, align 2
  %conv1.i = zext i16 %31 to i32
  %32 = call i32 @llvm.umax.i32(i32 %add.i, i32 %conv1.i) #12
  %linklayer.i = getelementptr inbounds %struct.psched_ratecfg, ptr %rate, i32 0, i32 4
  %33 = ptrtoint ptr %linklayer.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %linklayer.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp6.i = icmp eq i8 %34, 2
  br i1 %cmp6.i, label %if.then9.i, label %if.then46.psched_l2t_ns.exit_crit_edge, !prof !48

if.then46.psched_l2t_ns.exit_crit_edge:           ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  br label %psched_l2t_ns.exit

if.then9.i:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %32, 47
  %div.i = udiv i32 %sub.i, 48
  %mul.i = mul i32 %div.i, 53
  br label %psched_l2t_ns.exit

psched_l2t_ns.exit:                               ; preds = %if.then9.i, %if.then46.psched_l2t_ns.exit_crit_edge
  %.sink.i = phi i32 [ %mul.i, %if.then9.i ], [ %32, %if.then46.psched_l2t_ns.exit_crit_edge ]
  %conv16.i = zext i32 %.sink.i to i64
  %mult17.i = getelementptr inbounds %struct.psched_ratecfg, ptr %rate, i32 0, i32 1
  %35 = ptrtoint ptr %mult17.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mult17.i, align 8
  %conv18.i = zext i32 %36 to i64
  %mul19.i = mul nuw i64 %conv18.i, %conv16.i
  %shift20.i = getelementptr inbounds %struct.psched_ratecfg, ptr %rate, i32 0, i32 5
  %37 = ptrtoint ptr %shift20.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %shift20.i, align 1
  %sh_prom22.i = zext i8 %38 to i64
  %shr23.i = lshr i64 %mul19.i, %sh_prom22.i
  br label %if.end60

if.else:                                          ; preds = %if.end42
  %39 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %rate, align 8
  %mul.i271 = mul i64 %40, %cond
  %41 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i271, i32 0) #15, !srcloc !60
  %asmresult.i.i = extractvalue { i64, i32 } %41, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %41, 1
  %42 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i271, i64 %asmresult.i.i, i32 %asmresult4.i.i) #15, !srcloc !61
  %asmresult10.i.i = extractvalue { i64, i32 } %42, 0
  %len.0.i = lshr i64 %asmresult10.i.i, 29
  %linklayer.i272 = getelementptr inbounds %struct.psched_ratecfg, ptr %rate, i32 0, i32 4
  %43 = ptrtoint ptr %linklayer.i272 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %linklayer.i272, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %cmp182.i = icmp eq i8 %44, 2
  br i1 %cmp182.i, label %if.end410.i, label %if.else.psched_ns_t2l.exit_crit_edge, !prof !48

if.else.psched_ns_t2l.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %psched_ns_t2l.exit

if.end410.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %45 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -7309087274488690263, i64 %len.0.i, i32 0) #15, !srcloc !60
  %asmresult.i586.i = extractvalue { i64, i32 } %45, 0
  %asmresult4.i587.i = extractvalue { i64, i32 } %45, 1
  %46 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7309087274488690263, i64 %len.0.i, i64 %asmresult.i586.i, i32 %asmresult4.i587.i) #15, !srcloc !61
  %asmresult10.i588.i = extractvalue { i64, i32 } %46, 0
  %len.1.i = lshr i64 %asmresult10.i588.i, 5
  %mul412.i = mul i64 %len.1.i, 48
  br label %psched_ns_t2l.exit

psched_ns_t2l.exit:                               ; preds = %if.end410.i, %if.else.psched_ns_t2l.exit_crit_edge
  %len.2.i = phi i64 [ %mul412.i, %if.end410.i ], [ %len.0.i, %if.else.psched_ns_t2l.exit_crit_edge ]
  %overhead.i273 = getelementptr inbounds %struct.psched_ratecfg, ptr %rate, i32 0, i32 2
  %47 = ptrtoint ptr %overhead.i273 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %overhead.i273, align 4
  %conv414.i = zext i16 %48 to i64
  %49 = call i64 @llvm.usub.sat.i64(i64 %len.2.i, i64 %conv414.i) #12
  %50 = call i64 @llvm.umin.i64(i64 %49, i64 4294967295)
  br label %if.end60

if.end60:                                         ; preds = %psched_ns_t2l.exit, %psched_l2t_ns.exit
  %buffer.0 = phi i64 [ %shr23.i, %psched_l2t_ns.exit ], [ %cond, %psched_ns_t2l.exit ]
  %max_size.0 = phi i64 [ %conv49, %psched_l2t_ns.exit ], [ %50, %psched_ns_t2l.exit ]
  %rate62 = getelementptr i8, ptr %6, i32 24
  %51 = ptrtoint ptr %rate62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rate62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool63.not = icmp eq i32 %52, 0
  br i1 %tobool63.not, label %if.else110, label %if.then64

if.then64:                                        ; preds = %if.end60
  %arrayidx65 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 5
  %53 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx65, align 4
  %tobool66.not = icmp eq ptr %54, null
  br i1 %tobool66.not, label %if.then64.if.end70_crit_edge, label %if.then67

if.then64.if.end70_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i274) #12
  %55 = ptrtoint ptr %tmp.i274 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 -1, ptr %tmp.i274, align 8, !annotation !59
  %call.i275 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i274, ptr noundef nonnull %54, i32 noundef 8) #12
  %56 = ptrtoint ptr %tmp.i274 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %tmp.i274, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i274) #12
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.then64.if.end70_crit_edge
  %prate64.0 = phi i64 [ %57, %if.then67 ], [ 0, %if.then64.if.end70_crit_edge ]
  call void @psched_ratecfg_precompute(ptr noundef nonnull %peak, ptr noundef %peakrate, i64 noundef %prate64.0) #12
  %58 = ptrtoint ptr %peak to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %peak, align 8
  %60 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %rate, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %61)
  %cmp73.not = icmp ugt i64 %59, %61
  br i1 %cmp73.not, label %if.end84, label %if.then75

if.then75:                                        ; preds = %if.end70
  %call76 = call i32 @___ratelimit(ptr noundef nonnull @tbf_change._rs, ptr noundef nonnull @__func__.tbf_change) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then75.cleanup_crit_edge, label %do.end

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %peak to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %peak, align 8
  %64 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %rate, align 8
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i64 noundef %63, i64 noundef %65) #16
  br label %cleanup

if.end84:                                         ; preds = %if.end70
  %arrayidx85 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 7
  %66 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx85, align 4
  %tobool86.not = icmp eq ptr %67, null
  br i1 %tobool86.not, label %if.else100, label %if.then87

if.then87:                                        ; preds = %if.end84
  %add.ptr.i.i276 = getelementptr i8, ptr %67, i32 4
  %68 = ptrtoint ptr %add.ptr.i.i276 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i.i276, align 4
  %conv90 = trunc i64 %max_size.0 to i32
  %70 = call i32 @llvm.umin.i32(i32 %69, i32 %conv90)
  %conv98 = zext i32 %70 to i64
  %overhead.i277 = getelementptr inbounds %struct.psched_ratecfg, ptr %peak, i32 0, i32 2
  %71 = ptrtoint ptr %overhead.i277 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %overhead.i277, align 4
  %conv.i278 = zext i16 %72 to i32
  %add.i279 = add i32 %69, %conv.i278
  %mpu.i280 = getelementptr inbounds %struct.psched_ratecfg, ptr %peak, i32 0, i32 3
  %73 = ptrtoint ptr %mpu.i280 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %mpu.i280, align 2
  %conv1.i281 = zext i16 %74 to i32
  %75 = call i32 @llvm.umax.i32(i32 %add.i279, i32 %conv1.i281) #12
  %linklayer.i282 = getelementptr inbounds %struct.psched_ratecfg, ptr %peak, i32 0, i32 4
  %76 = ptrtoint ptr %linklayer.i282 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %linklayer.i282, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %77)
  %cmp6.i283 = icmp eq i8 %77, 2
  br i1 %cmp6.i283, label %if.then9.i287, label %if.then87.psched_l2t_ns.exit296_crit_edge, !prof !48

if.then87.psched_l2t_ns.exit296_crit_edge:        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  br label %psched_l2t_ns.exit296

if.then9.i287:                                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i284 = add i32 %75, 47
  %div.i285 = udiv i32 %sub.i284, 48
  %mul.i286 = mul i32 %div.i285, 53
  br label %psched_l2t_ns.exit296

psched_l2t_ns.exit296:                            ; preds = %if.then9.i287, %if.then87.psched_l2t_ns.exit296_crit_edge
  %.sink.i288 = phi i32 [ %mul.i286, %if.then9.i287 ], [ %75, %if.then87.psched_l2t_ns.exit296_crit_edge ]
  %conv16.i289 = zext i32 %.sink.i288 to i64
  %mult17.i290 = getelementptr inbounds %struct.psched_ratecfg, ptr %peak, i32 0, i32 1
  %78 = ptrtoint ptr %mult17.i290 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mult17.i290, align 8
  %conv18.i291 = zext i32 %79 to i64
  %mul19.i292 = mul nuw i64 %conv18.i291, %conv16.i289
  %shift20.i293 = getelementptr inbounds %struct.psched_ratecfg, ptr %peak, i32 0, i32 5
  %80 = ptrtoint ptr %shift20.i293 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %shift20.i293, align 1
  %sh_prom22.i294 = zext i8 %81 to i64
  %shr23.i295 = lshr i64 %mul19.i292, %sh_prom22.i294
  br label %if.end111

if.else100:                                       ; preds = %if.end84
  %mul.i297 = mul i64 %59, %cond37
  %82 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i297, i32 0) #15, !srcloc !60
  %asmresult.i.i298 = extractvalue { i64, i32 } %82, 0
  %asmresult4.i.i299 = extractvalue { i64, i32 } %82, 1
  %83 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i297, i64 %asmresult.i.i298, i32 %asmresult4.i.i299) #15, !srcloc !61
  %asmresult10.i.i300 = extractvalue { i64, i32 } %83, 0
  %len.0.i301 = lshr i64 %asmresult10.i.i300, 29
  %linklayer.i302 = getelementptr inbounds %struct.psched_ratecfg, ptr %peak, i32 0, i32 4
  %84 = ptrtoint ptr %linklayer.i302 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %linklayer.i302, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %85)
  %cmp182.i303 = icmp eq i8 %85, 2
  br i1 %cmp182.i303, label %if.end410.i309, label %if.else100.psched_ns_t2l.exit313_crit_edge, !prof !48

if.else100.psched_ns_t2l.exit313_crit_edge:       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #14
  br label %psched_ns_t2l.exit313

if.end410.i309:                                   ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #14
  %86 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -7309087274488690263, i64 %len.0.i301, i32 0) #15, !srcloc !60
  %asmresult.i586.i304 = extractvalue { i64, i32 } %86, 0
  %asmresult4.i587.i305 = extractvalue { i64, i32 } %86, 1
  %87 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7309087274488690263, i64 %len.0.i301, i64 %asmresult.i586.i304, i32 %asmresult4.i587.i305) #15, !srcloc !61
  %asmresult10.i588.i306 = extractvalue { i64, i32 } %87, 0
  %len.1.i307 = lshr i64 %asmresult10.i588.i306, 5
  %mul412.i308 = mul i64 %len.1.i307, 48
  br label %psched_ns_t2l.exit313

psched_ns_t2l.exit313:                            ; preds = %if.end410.i309, %if.else100.psched_ns_t2l.exit313_crit_edge
  %len.2.i310 = phi i64 [ %mul412.i308, %if.end410.i309 ], [ %len.0.i301, %if.else100.psched_ns_t2l.exit313_crit_edge ]
  %overhead.i311 = getelementptr inbounds %struct.psched_ratecfg, ptr %peak, i32 0, i32 2
  %88 = ptrtoint ptr %overhead.i311 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %overhead.i311, align 4
  %conv414.i312 = zext i16 %89 to i64
  %90 = call i64 @llvm.usub.sat.i64(i64 %len.2.i310, i64 %conv414.i312) #12
  %91 = call i64 @llvm.umin.i64(i64 %max_size.0, i64 %90)
  br label %if.end111

if.else110:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %92 = call ptr @memset(ptr %peak, i32 0, i32 24)
  br label %if.end111

if.end111:                                        ; preds = %if.else110, %psched_ns_t2l.exit313, %psched_l2t_ns.exit296
  %mtu.0 = phi i64 [ %shr23.i295, %psched_l2t_ns.exit296 ], [ %cond37, %psched_ns_t2l.exit313 ], [ %cond37, %if.else110 ]
  %max_size.1 = phi i64 [ %conv98, %psched_l2t_ns.exit296 ], [ %91, %psched_ns_t2l.exit313 ], [ %max_size.0, %if.else110 ]
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %93 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev_queue.i, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %96, i32 0, i32 20
  %97 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %96, i32 0, i32 19
  %99 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %hard_header_len.i, align 2
  %conv.i314 = zext i16 %100 to i32
  %add.i315 = add i32 %98, %conv.i314
  %conv114 = zext i32 %add.i315 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %max_size.1, i64 %conv114)
  %cmp115 = icmp ult i64 %max_size.1, %conv114
  br i1 %cmp115, label %if.then117, label %if.end111.if.end131_crit_edge

if.end111.if.end131_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

if.then117:                                       ; preds = %if.end111
  %call118 = call i32 @___ratelimit(ptr noundef nonnull @tbf_change._rs.7, ptr noundef nonnull @__func__.tbf_change) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.then117.if.end131_crit_edge, label %do.end123

if.then117.if.end131_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

do.end123:                                        ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev_queue.i, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 128
  %mtu.i318 = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 20
  %105 = ptrtoint ptr %mtu.i318 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mtu.i318, align 4
  %hard_header_len.i319 = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 19
  %107 = ptrtoint ptr %hard_header_len.i319 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %hard_header_len.i319, align 2
  %conv.i320 = zext i16 %108 to i32
  %add.i321 = add i32 %106, %conv.i320
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i64 noundef %max_size.1, ptr noundef %104, i32 noundef %add.i321) #16
  br label %if.end131

if.end131:                                        ; preds = %do.end123, %if.then117.if.end131_crit_edge, %if.end111.if.end131_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %max_size.1)
  %tobool132.not = icmp eq i64 %max_size.1, 0
  br i1 %tobool132.not, label %if.end131.cleanup_crit_edge, label %if.end134

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end134:                                        ; preds = %if.end131
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %109 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %qdisc, align 8
  %cmp135.not = icmp eq ptr %110, @noop_qdisc
  %limit144 = getelementptr i8, ptr %6, i32 28
  %111 = ptrtoint ptr %limit144 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %limit144, align 4
  br i1 %cmp135.not, label %if.else143, label %if.then137

if.then137:                                       ; preds = %if.end134
  %call139 = call i32 @fifo_set_limit(ptr noundef %110, i32 noundef %112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.then137.if.end155_crit_edge, label %if.then137.cleanup_crit_edge

if.then137.cleanup_crit_edge:                     ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then137.if.end155_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end155

if.else143:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp145.not = icmp eq i32 %112, 0
  br i1 %cmp145.not, label %if.else143.if.end155_crit_edge, label %if.then147

if.else143.if.end155_crit_edge:                   ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end155

if.then147:                                       ; preds = %if.else143
  %call149 = call ptr @fifo_create_dflt(ptr noundef %sch, ptr noundef nonnull @bfifo_qdisc_ops, i32 noundef %112, ptr noundef %extack) #12
  %cmp.i = icmp ugt ptr %call149, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then151, label %if.end153

if.then151:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %call149 to i32
  br label %cleanup

if.end153:                                        ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #14
  call void @qdisc_hash_add(ptr noundef %call149, i1 noundef zeroext true) #12
  br label %if.end155

if.end155:                                        ; preds = %if.end153, %if.else143.if.end155_crit_edge, %if.then137.if.end155_crit_edge
  %child.0 = phi ptr [ null, %if.then137.if.end155_crit_edge ], [ %call149, %if.end153 ], [ null, %if.else143.if.end155_crit_edge ]
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %114 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %115, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end155.sch_tree_lock.exit_crit_edge

if.end155.sch_tree_lock.exit_crit_edge:           ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.end155
  %116 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev_queue.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !56

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end155.sch_tree_lock.exit_crit_edge
  %.sink.i322 = phi ptr [ %sch, %if.end155.sch_tree_lock.exit_crit_edge ], [ %119, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %119, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %119, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i322, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #12
  %tobool156.not = icmp eq ptr %child.0, null
  br i1 %tobool156.not, label %sch_tree_lock.exit.if.end161_crit_edge, label %if.then157

sch_tree_lock.exit.if.end161_crit_edge:           ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end161

if.then157:                                       ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %qdisc, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i) #12
  %122 = call ptr @memset(ptr %qstats.i.i, i32 0, i32 20)
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %121, i32 0, i32 12
  %123 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cpu_qstats.i.i, align 4
  %qstats1.i.i = getelementptr inbounds %struct.Qdisc, ptr %121, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i, ptr noundef %124, ptr noundef %qstats1.i.i) #12
  %125 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %qstats.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %121, i32 0, i32 17, i32 2
  %127 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %qlen.i.i.i, align 8
  %add.i.i = add i32 %128, %126
  %backlog3.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i, i32 0, i32 1
  %129 = ptrtoint ptr %backlog3.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %backlog3.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i) #12
  call void @qdisc_tree_reduce_backlog(ptr noundef %121, i32 noundef %add.i.i, i32 noundef %130) #12
  %131 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %qdisc, align 8
  call void @qdisc_put(ptr noundef %132) #12
  %133 = ptrtoint ptr %qdisc to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %child.0, ptr %qdisc, align 8
  br label %if.end161

if.end161:                                        ; preds = %if.then157, %sch_tree_lock.exit.if.end161_crit_edge
  %limit162 = getelementptr i8, ptr %6, i32 28
  %134 = ptrtoint ptr %limit162 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %limit162, align 4
  %136 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %privdata.i, align 8
  %arrayidx164 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 7
  %137 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx164, align 4
  %tobool165.not = icmp eq ptr %138, null
  br i1 %tobool165.not, label %if.else168, label %if.end161.if.end173_crit_edge

if.end161.if.end173_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

if.else168:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #14
  %139 = ptrtoint ptr %mtu28 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %mtu28, align 4
  %conv170 = zext i32 %140 to i64
  %shl171 = shl nuw nsw i64 %conv170, 6
  br label %if.end173

if.end173:                                        ; preds = %if.else168, %if.end161.if.end173_crit_edge
  %mtu.0.sink = phi i64 [ %shl171, %if.else168 ], [ %mtu.0, %if.end161.if.end173_crit_edge ]
  %141 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %mtu.0.sink, ptr %141, align 8
  %conv174 = trunc i64 %max_size.1 to i32
  %max_size175 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %143 = ptrtoint ptr %max_size175 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv174, ptr %max_size175, align 4
  %144 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx44, align 4
  %tobool177.not = icmp eq ptr %145, null
  br i1 %tobool177.not, label %if.else180, label %if.end173.if.end185_crit_edge

if.end173.if.end185_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end185

if.else180:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  %146 = ptrtoint ptr %buffer24 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %buffer24, align 4
  %conv182 = zext i32 %147 to i64
  %shl183 = shl nuw nsw i64 %conv182, 6
  br label %if.end185

if.end185:                                        ; preds = %if.else180, %if.end173.if.end185_crit_edge
  %buffer.0.sink = phi i64 [ %shl183, %if.else180 ], [ %buffer.0, %if.end173.if.end185_crit_edge ]
  %148 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %buffer.0.sink, ptr %148, align 8
  %tokens = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %150 = ptrtoint ptr %tokens to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %buffer.0.sink, ptr %tokens, align 8
  %151 = ptrtoint ptr %141 to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %141, align 8
  %ptokens = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %153 = ptrtoint ptr %ptokens to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %152, ptr %ptokens, align 8
  %rate188 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %154 = call ptr @memcpy(ptr %rate188, ptr %rate, i32 24)
  %peak189 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %155 = call ptr @memcpy(ptr %peak189, ptr %peak, i32 24)
  %156 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %flags.i, align 8
  %and.i324 = and i32 %157, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i324)
  %tobool.not.i325 = icmp eq i32 %and.i324, 0
  br i1 %tobool.not.i325, label %if.else.i330, label %if.end185.sch_tree_unlock.exit_crit_edge

if.end185.sch_tree_unlock.exit_crit_edge:         ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

if.else.i330:                                     ; preds = %if.end185
  %158 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev_queue.i, align 8
  %qdisc_sleeping.i.i.i327 = getelementptr inbounds %struct.netdev_queue, ptr %159, i32 0, i32 3
  %160 = ptrtoint ptr %qdisc_sleeping.i.i.i327 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %qdisc_sleeping.i.i.i327, align 4
  %call1.i.i328 = call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i328)
  %tobool.not.i.i329 = icmp eq i32 %call1.i.i328, 0
  br i1 %tobool.not.i.i329, label %land.rhs.i.i332, label %if.else.i330.sch_tree_unlock.exit_crit_edge

if.else.i330.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i330
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

land.rhs.i.i332:                                  ; preds = %if.else.i330
  %.b41.i.i331 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i331, label %land.rhs.i.i332.sch_tree_unlock.exit_crit_edge, label %if.then.i.i333, !prof !56

land.rhs.i.i332.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i332
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

if.then.i.i333:                                   ; preds = %land.rhs.i.i332
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i333, %land.rhs.i.i332.sch_tree_unlock.exit_crit_edge, %if.else.i330.sch_tree_unlock.exit_crit_edge, %if.end185.sch_tree_unlock.exit_crit_edge
  %.sink.i334 = phi ptr [ %sch, %if.end185.sch_tree_unlock.exit_crit_edge ], [ %161, %if.else.i330.sch_tree_unlock.exit_crit_edge ], [ %161, %land.rhs.i.i332.sch_tree_unlock.exit_crit_edge ], [ %161, %if.then.i.i333 ]
  %lock.i.i.i335 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i334, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i335) #12
  %162 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev_queue.i, align 8
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 128
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %qopt.i) #12
  %166 = getelementptr inbounds i8, ptr %qopt.i, i32 8
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 -1, ptr %166, align 8, !annotation !59
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %165, i32 0, i32 23
  %168 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %169, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sch_tree_unlock.exit.tbf_offload_change.exit_crit_edge, label %lor.lhs.false.i

sch_tree_unlock.exit.tbf_offload_change.exit_crit_edge: ; preds = %sch_tree_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tbf_offload_change.exit

lor.lhs.false.i:                                  ; preds = %sch_tree_unlock.exit
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %165, i32 0, i32 16
  %170 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %171, i32 0, i32 42
  %172 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool.not.i336 = icmp eq ptr %173, null
  br i1 %tobool.not.i336, label %lor.lhs.false.i.tbf_offload_change.exit_crit_edge, label %if.end.i

lor.lhs.false.i.tbf_offload_change.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tbf_offload_change.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %174 = ptrtoint ptr %qopt.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %qopt.i, align 8
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %175 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %handle.i, align 32
  %handle3.i = getelementptr inbounds %struct.tc_tbf_qopt_offload, ptr %qopt.i, i32 0, i32 1
  %177 = ptrtoint ptr %handle3.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %handle3.i, align 4
  %parent.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %178 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %parent.i, align 4
  %180 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %166, align 8
  %181 = getelementptr inbounds %struct.tc_tbf_qopt_offload, ptr %qopt.i, i32 0, i32 3
  %182 = call ptr @memcpy(ptr %181, ptr %rate188, i32 24)
  %183 = ptrtoint ptr %max_size175 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %max_size175, align 4
  %max_size6.i = getelementptr inbounds %struct.tc_tbf_qopt_offload, ptr %qopt.i, i32 0, i32 3, i32 0, i32 1
  %185 = ptrtoint ptr %max_size6.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %max_size6.i, align 8
  %qstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  %qstats7.i = getelementptr inbounds %struct.tc_tbf_qopt_offload, ptr %qopt.i, i32 0, i32 3, i32 0, i32 2
  %186 = ptrtoint ptr %qstats7.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %qstats.i, ptr %qstats7.i, align 4
  %call10.i = call i32 %173(ptr noundef %165, i32 noundef 16, ptr noundef nonnull %qopt.i) #12
  br label %tbf_offload_change.exit

tbf_offload_change.exit:                          ; preds = %if.end.i, %lor.lhs.false.i.tbf_offload_change.exit_crit_edge, %sch_tree_unlock.exit.tbf_offload_change.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %qopt.i) #12
  br label %cleanup

cleanup:                                          ; preds = %tbf_offload_change.exit, %if.then151, %if.then137.cleanup_crit_edge, %if.end131.cleanup_crit_edge, %do.end, %if.then75.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call139, %if.then137.cleanup_crit_edge ], [ 0, %tbf_offload_change.exit ], [ %113, %if.then151 ], [ -22, %do.end ], [ -22, %if.then75.cleanup_crit_edge ], [ -22, %if.end131.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %peak) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rate) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tb) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tbf_dump(ptr noundef %sch, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i76 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  %qopt.i = alloca %struct.tc_tbf_qopt_offload, align 8
  %opt = alloca %struct.tc_tbf_qopt, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %opt) #12
  %0 = getelementptr inbounds i8, ptr %opt, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %qopt.i) #12
  %2 = getelementptr inbounds i8, ptr %qopt.i, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 40)
  %4 = ptrtoint ptr %qopt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %qopt.i, align 8
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %5 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handle.i, align 32
  %handle1.i = getelementptr inbounds %struct.tc_tbf_qopt_offload, ptr %qopt.i, i32 0, i32 1
  %7 = ptrtoint ptr %handle1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %handle1.i, align 4
  %parent.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parent.i, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %2, align 8
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %11 = getelementptr inbounds %struct.tc_tbf_qopt_offload, ptr %qopt.i, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bstats.i, ptr %11, align 8
  %qstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  %qstats4.i = getelementptr inbounds %struct.tc_qopt_offload_stats, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %qstats4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %qstats.i, ptr %qstats4.i, align 4
  %call.i = call i32 @qdisc_offload_dump_helper(ptr noundef %sch, i32 noundef 16, ptr noundef nonnull %qopt.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %qopt.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp79 = icmp eq ptr %15, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp79
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %16 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %privdata.i, align 8
  %limit5 = getelementptr inbounds %struct.tc_tbf_qopt, ptr %opt, i32 0, i32 2
  %18 = ptrtoint ptr %limit5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %limit5, align 8
  %rate6 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %19 = ptrtoint ptr %opt to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %opt, align 8
  %20 = ptrtoint ptr %rate6 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rate6, align 8
  %22 = call i64 @llvm.umin.i64(i64 %21, i64 4294967295) #12
  %23 = trunc i64 %22 to i32
  %rate.i = getelementptr inbounds %struct.tc_ratespec, ptr %opt, i32 0, i32 5
  %24 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rate.i, align 8
  %overhead.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %25 = ptrtoint ptr %overhead.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %overhead.i, align 4
  %overhead1.i = getelementptr inbounds %struct.tc_ratespec, ptr %opt, i32 0, i32 2
  %27 = ptrtoint ptr %overhead1.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %overhead1.i, align 2
  %mpu.i = getelementptr inbounds %struct.psched_ratecfg, ptr %rate6, i32 0, i32 3
  %28 = ptrtoint ptr %mpu.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mpu.i, align 2
  %mpu2.i = getelementptr inbounds %struct.tc_ratespec, ptr %opt, i32 0, i32 4
  %30 = ptrtoint ptr %mpu2.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %mpu2.i, align 2
  %linklayer.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %31 = ptrtoint ptr %linklayer.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %linklayer.i, align 8
  %33 = and i8 %32, 15
  %linklayer5.i = getelementptr inbounds %struct.tc_ratespec, ptr %opt, i32 0, i32 1
  %34 = ptrtoint ptr %linklayer5.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %linklayer5.i, align 1
  %peak.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %35 = ptrtoint ptr %peak.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %peak.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool.i.not = icmp eq i64 %36, 0
  %peakrate9 = getelementptr inbounds %struct.tc_tbf_qopt, ptr %opt, i32 0, i32 1
  br i1 %tobool.i.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %peakrate9 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 0, ptr %peakrate9, align 4
  %38 = call i64 @llvm.umin.i64(i64 %36, i64 4294967295) #12
  %39 = trunc i64 %38 to i32
  %rate.i66 = getelementptr inbounds %struct.tc_tbf_qopt, ptr %opt, i32 0, i32 1, i32 5
  %40 = ptrtoint ptr %rate.i66 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %rate.i66, align 4
  %overhead.i67 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %41 = ptrtoint ptr %overhead.i67 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %overhead.i67, align 4
  %overhead1.i68 = getelementptr inbounds %struct.tc_tbf_qopt, ptr %opt, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %overhead1.i68 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %overhead1.i68, align 2
  %mpu.i69 = getelementptr inbounds %struct.psched_ratecfg, ptr %peak.i, i32 0, i32 3
  %44 = ptrtoint ptr %mpu.i69 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %mpu.i69, align 2
  %mpu2.i70 = getelementptr inbounds %struct.tc_tbf_qopt, ptr %opt, i32 0, i32 1, i32 4
  %46 = ptrtoint ptr %mpu2.i70 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %mpu2.i70, align 2
  %linklayer.i71 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %47 = ptrtoint ptr %linklayer.i71 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %linklayer.i71, align 8
  %49 = and i8 %48, 15
  %linklayer5.i72 = getelementptr inbounds %struct.tc_tbf_qopt, ptr %opt, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %linklayer5.i72 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %linklayer5.i72, align 1
  br label %if.end10

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %51 = call ptr @memset(ptr %peakrate9, i32 0, i32 12)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %mtu = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %52 = ptrtoint ptr %mtu to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %mtu, align 8
  %54 = lshr i64 %53, 6
  %conv = trunc i64 %54 to i32
  %mtu11 = getelementptr inbounds %struct.tc_tbf_qopt, ptr %opt, i32 0, i32 4
  %55 = ptrtoint ptr %mtu11 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv, ptr %mtu11, align 8
  %buffer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %56 = ptrtoint ptr %buffer to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %buffer, align 8
  %58 = lshr i64 %57, 6
  %conv13 = trunc i64 %58 to i32
  %buffer14 = getelementptr inbounds %struct.tc_tbf_qopt, ptr %opt, i32 0, i32 3
  %59 = ptrtoint ptr %buffer14 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv13, ptr %buffer14, align 4
  %call15 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 36, ptr noundef nonnull %opt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end10.if.then.i.i_crit_edge

if.end10.if.then.i.i_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end18:                                         ; preds = %if.end10
  %60 = ptrtoint ptr %rate6 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %rate6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %61)
  %cmp20 = icmp ugt i64 %61, 4294967295
  br i1 %cmp20, label %land.lhs.true, label %if.end18.if.end27_crit_edge

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #12
  %62 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %tmp.i, align 8
  %call.i73 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool25.not = icmp eq i32 %call.i73, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %63 = ptrtoint ptr %peak.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %peak.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %64)
  %cmp33 = icmp ugt i64 %64, 4294967295
  br i1 %cmp33, label %land.lhs.true35, label %if.end27.if.end41_crit_edge

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.lhs.true35:                                  ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i76) #12
  %65 = ptrtoint ptr %tmp.i76 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %tmp.i76, align 8
  %call.i77 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i76, i32 noundef 8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i76) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool39.not = icmp eq i32 %call.i77, 0
  br i1 %tobool39.not, label %land.lhs.true35.if.end41_crit_edge, label %land.lhs.true35.if.then.i.i_crit_edge

land.lhs.true35.if.then.i.i_crit_edge:            ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

land.lhs.true35.if.end41_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true35.if.end41_crit_edge, %if.end27.if.end41_crit_edge
  %66 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %68 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i, ptr %15, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %69 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %land.lhs.true35.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge, %if.end10.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %71 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %72, %15
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !48

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %73 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %74 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end41, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %70, %if.end41 ], [ %call.i, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %opt) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tbf_graft(ptr noundef %sch, i32 noundef %arg, ptr noundef %new, ptr nocapture noundef writeonly %old, ptr noundef %extack) #2 align 64 {
entry:
  %graft_offload.i = alloca %struct.tc_tbf_qopt_offload, align 8
  %qstats.i.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %new, null
  %spec.store.select = select i1 %cmp, ptr @noop_qdisc, ptr %new
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.sch_tree_lock.exit.i_crit_edge

entry.sch_tree_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !56

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %entry.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %sch, %entry.sch_tree_lock.exit.i_crit_edge ], [ %5, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %5, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %5, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #12
  %6 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qdisc, align 4
  store ptr %spec.store.select, ptr %qdisc, align 4
  %cmp.not.i = icmp eq ptr %7, null
  br i1 %cmp.not.i, label %sch_tree_lock.exit.i.if.end.i_crit_edge, label %if.then.i

sch_tree_lock.exit.i.if.end.i_crit_edge:          ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i.i) #12
  %8 = call ptr @memset(ptr %qstats.i.i.i, i32 0, i32 20)
  %cpu_qstats.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %cpu_qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_qstats.i.i.i, align 4
  %qstats1.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %7, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i.i, ptr noundef %10, ptr noundef %qstats1.i.i.i) #12
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
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i.i) #12
  call void @qdisc_reset(ptr noundef nonnull %7) #12
  call void @qdisc_tree_reduce_backlog(ptr noundef nonnull %7, i32 noundef %add.i.i.i, i32 noundef %16) #12
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
  call void @__sanitizer_cov_trace_pc() #14
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
  %call1.i.i10.i = call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i10.i)
  %tobool.not.i.i11.i = icmp eq i32 %call1.i.i10.i, 0
  br i1 %tobool.not.i.i11.i, label %land.rhs.i.i14.i, label %if.else.i12.i.qdisc_replace.exit_crit_edge

if.else.i12.i.qdisc_replace.exit_crit_edge:       ; preds = %if.else.i12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_replace.exit

land.rhs.i.i14.i:                                 ; preds = %if.else.i12.i
  %.b41.i.i13.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i13.i, label %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, label %if.then.i.i15.i, !prof !56

land.rhs.i.i14.i.qdisc_replace.exit_crit_edge:    ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_replace.exit

if.then.i.i15.i:                                  ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %qdisc_replace.exit

qdisc_replace.exit:                               ; preds = %if.then.i.i15.i, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, %if.else.i12.i.qdisc_replace.exit_crit_edge, %if.end.i.qdisc_replace.exit_crit_edge
  %.sink.i16.i = phi ptr [ %sch, %if.end.i.qdisc_replace.exit_crit_edge ], [ %22, %if.else.i12.i.qdisc_replace.exit_crit_edge ], [ %22, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge ], [ %22, %if.then.i.i15.i ]
  %lock.i.i.i17.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i16.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i17.i) #12
  %23 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %7, ptr %old, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %graft_offload.i) #12
  %24 = getelementptr inbounds i8, ptr %graft_offload.i, i32 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %24, align 8, !annotation !59
  %26 = ptrtoint ptr %graft_offload.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %graft_offload.i, align 8
  %handle.i = getelementptr inbounds %struct.tc_tbf_qopt_offload, ptr %graft_offload.i, i32 0, i32 1
  %handle1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %27 = ptrtoint ptr %handle1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %handle1.i, align 32
  %29 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %handle.i, align 4
  %parent2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %30 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %parent2.i, align 4
  store i32 %31, ptr %24, align 8
  %32 = getelementptr inbounds %struct.tc_tbf_qopt_offload, ptr %graft_offload.i, i32 0, i32 3
  %33 = call ptr @memset(ptr %32, i32 0, i32 32)
  %handle3.i = getelementptr inbounds %struct.Qdisc, ptr %spec.store.select, i32 0, i32 7
  %34 = ptrtoint ptr %handle3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %handle3.i, align 32
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %32, align 8
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %37 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_queue.i.i, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 128
  call void @qdisc_offload_graft_helper(ptr noundef %40, ptr noundef %sch, ptr noundef %spec.store.select, ptr noundef %7, i32 noundef 16, ptr noundef nonnull %graft_offload.i, ptr noundef %extack) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %graft_offload.i) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @tbf_leaf(ptr nocapture noundef readonly %sch, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tbf_find(ptr nocapture noundef readnone %sch, i32 noundef %classid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tbf_walk(ptr noundef %sch, ptr noundef %walker) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %walker to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %walker, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then1:                                         ; preds = %if.then
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %walker, i32 0, i32 3
  %6 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fn, align 4
  %call = tail call i32 %7(ptr noundef %sch, i32 noundef 1, ptr noundef %walker) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.then1.if.end5_crit_edge

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
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
define internal i32 @tbf_dump_class(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %skb, ptr nocapture noundef %tcm) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %0 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tcm_handle, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %tcm_handle, align 4
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
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
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_mac_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @netif_skb_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qdisc_calculate_pkt_len(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_schedule_range_ns(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put_rtab(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_get_rtab(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @psched_ratecfg_precompute(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fifo_set_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fifo_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_hash_add(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qdisc_offload_dump_helper(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_sch_tbf__380_625_tbf_module_init6, !1, !"__initcall__kmod_sch_tbf__380_625_tbf_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_tbf.c", i32 625, i32 1}
!2 = !{ptr @__exitcall_tbf_module_exit, !3, !"__exitcall_tbf_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_tbf.c", i32 626, i32 1}
!4 = !{ptr @__UNIQUE_ID_file381, !5, !"__UNIQUE_ID_file381", i1 false, i1 false}
!5 = !{!"../net/sched/sch_tbf.c", i32 627, i32 1}
!6 = !{ptr @__UNIQUE_ID_license382, !5, !"__UNIQUE_ID_license382", i1 false, i1 false}
!7 = !{ptr @tbf_qdisc_ops, !8, !"tbf_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_tbf.c", i32 600, i32 25}
!9 = !{ptr @tbf_class_ops, !10, !"tbf_class_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_tbf.c", i32 592, i32 37}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/net/sch_generic.h", i32 835, i32 34}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/sched/sch_tbf.c", i32 404, i32 4}
!23 = !{ptr @tbf_change._rs, !22, !"_rs", i1 false, i1 false}
!24 = !{ptr @__func__.tbf_change, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tbf_change._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @tbf_change._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @tbf_change._rs.7, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../net/sched/sch_tbf.c", i32 422, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tbf_change._entry.8, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @tbf_change._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @tbf_policy, !35, !"tbf_policy", i1 false, i1 false}
!35 = !{!"../net/sched/sch_tbf.c", i32 341, i32 32}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/net/netlink.h", i32 991, i32 3}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 757331, i64 757392}
!50 = !{i64 760063}
!51 = !{i64 760348}
!52 = !{i64 2149877789}
!53 = !{i64 2149882721}
!54 = !{i64 2149904433}
!55 = !{i64 2149909325}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2149985782}
!58 = !{i64 2149986107}
!59 = !{!"auto-init"}
!60 = !{i64 714511, i64 714538, i64 714560, i64 714588}
!61 = !{i64 714919, i64 714946, i64 714979, i64 715000, i64 715027, i64 715053}
