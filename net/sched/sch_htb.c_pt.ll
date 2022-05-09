; ModuleID = '/llk/IR_all_yes/net/sched/sch_htb.c_pt.bc'
source_filename = "../net/sched/sch_htb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.99 }
%union.anon.99 = type { ptr }
%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.109 }
%union.anon.109 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.tcf_result = type { %union.anon.121 }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.hlist_head = type { ptr }
%struct.Qdisc_class_common = type { i32, %struct.hlist_node }
%struct.htb_class = type { %struct.Qdisc_class_common, %struct.psched_ratecfg, %struct.psched_ratecfg, i64, i64, i64, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.gnet_stats_basic_sync, %struct.gnet_stats_basic_sync, %struct.tc_htb_xstats, i64, i64, i64, %union.anon.127, i64, i32, i32, %struct.rb_node, [8 x %struct.rb_node], [20 x i8], i32, i32, [120 x i8] }
%struct.psched_ratecfg = type { i64, i32, i16, i16, i8, i8 }
%struct.tc_htb_xstats = type { i32, i32, i32, i32, i32 }
%union.anon.127 = type { %struct.htb_class_inner }
%struct.htb_class_inner = type { [8 x %struct.htb_prio] }
%struct.htb_prio = type { %union.anon.126, ptr, i32 }
%union.anon.126 = type { %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.htb_sched = type { %struct.Qdisc_class_hash, i32, i32, ptr, ptr, i32, i32, %struct.work_struct, %struct.qdisc_skb_head, i32, i32, %struct.qdisc_watchdog, i64, [8 x i64], [8 x i32], [8 x %struct.htb_level], ptr, i32, i8 }
%struct.Qdisc_class_hash = type { ptr, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.qdisc_watchdog = type { i64, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.htb_level = type { %struct.rb_root, [8 x %struct.htb_prio] }
%struct.sk_buff_list = type { ptr, ptr }
%struct.tc_htb_qopt_offload = type { ptr, i32, i32, i16, i16, i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.125, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.125 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tc_htb_glob = type { i32, i32, i32, i32, i32 }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.anon.128 = type { %struct.nlattr, %struct.gnet_estimator }
%struct.nlattr = type { i16, i16 }
%struct.gnet_estimator = type { i8, i8 }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tc_htb_opt = type { %struct.tc_ratespec, %struct.tc_ratespec, i32, i32, i32, i32, i32 }
%struct.tc_ratespec = type { i8, i8, i16, i16, i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.130 = type { ptr, ptr, ptr }

@__param_str_htb_hysteresis = internal constant [23 x i8] c"sch_htb.htb_hysteresis\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@htb_hysteresis = internal global i32 0, section ".data..read_mostly", align 4
@__param_htb_hysteresis = internal constant %struct.kernel_param { ptr @__param_str_htb_hysteresis, ptr null, ptr @param_ops_int, i16 416, i8 -1, i8 0, %union.anon.99 { ptr @htb_hysteresis } }, section "__param", align 4
@__UNIQUE_ID_htb_hysteresistype366 = internal constant [36 x i8] c"sch_htb.parmtype=htb_hysteresis:int\00", section ".modinfo", align 1
@__UNIQUE_ID_htb_hysteresis367 = internal constant [74 x i8] c"sch_htb.parm=htb_hysteresis:Hysteresis mode, less CPU load, less accurate\00", section ".modinfo", align 1
@__param_str_htb_rate_est = internal constant [21 x i8] c"sch_htb.htb_rate_est\00", align 1
@htb_rate_est = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_htb_rate_est = internal constant %struct.kernel_param { ptr @__param_str_htb_rate_est, ptr null, ptr @param_ops_int, i16 416, i8 -1, i8 0, %union.anon.99 { ptr @htb_rate_est } }, section "__param", align 4
@__UNIQUE_ID_htb_rate_esttype368 = internal constant [34 x i8] c"sch_htb.parmtype=htb_rate_est:int\00", section ".modinfo", align 1
@__UNIQUE_ID_htb_rate_est369 = internal constant [86 x i8] c"sch_htb.parm=htb_rate_est:setup a default rate estimator (4sec 16sec) for htb classes\00", section ".modinfo", align 1
@htb_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @htb_class_ops, [16 x i8] c"htb\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1136, i32 0, ptr @htb_enqueue, ptr @htb_dequeue, ptr @qdisc_peek_dequeued, ptr @htb_init, ptr @htb_reset, ptr @htb_destroy, ptr null, ptr @htb_attach, ptr null, ptr null, ptr @htb_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_htb__402_2197_htb_module_init6 = internal global ptr @htb_module_init, section ".initcall6.init", align 4
@__exitcall_htb_module_exit = internal global ptr @htb_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file403 = internal constant [31 x i8] c"sch_htb.file=net/sched/sch_htb\00", section ".modinfo", align 1
@__UNIQUE_ID_license404 = internal constant [20 x i8] c"sch_htb.license=GPL\00", section ".modinfo", align 1
@htb_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr @htb_select_queue, ptr @htb_graft, ptr @htb_leaf, ptr @htb_qlen_notify, ptr @htb_search, ptr @htb_change_class, ptr @htb_delete, ptr @htb_walk, ptr @htb_tcf_block, ptr @htb_bind_filter, ptr @htb_unbind_filter, ptr @htb_dump_class, ptr @htb_dump_class_stats }, [40 x i8] zeroinitializer }, align 32
@pfifo_qdisc_ops = external dso_local global %struct.Qdisc_ops, align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sched/sch_htb.c\00", [44 x i8] zeroinitializer }, align 32
@htb_set_lockdep_class_child.child_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&child_key\00", [21 x i8] zeroinitializer }, align 32
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@htb_policy = internal constant { [10 x %struct.nla_policy], [48 x i8] } { [10 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 44, %union.anon.109 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 20, %union.anon.109 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 1024, %union.anon.109 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 1024, %union.anon.109 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.109 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.109 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.109 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.109 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@htb_change_class.__msg = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"HTB offload doesn't support the overhead parameter\00", [45 x i8] zeroinitializer }, align 32
@htb_change_class.__msg.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"HTB offload doesn't support the mpu parameter\00", [50 x i8] zeroinitializer }, align 32
@htb_change_class.__msg.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"HTB offload doesn't support the quantum parameter\00", [46 x i8] zeroinitializer }, align 32
@htb_change_class.__msg.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"HTB offload doesn't support the prio parameter\00", [49 x i8] zeroinitializer }, align 32
@htb_change_class._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 1871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013htb: tree is too deep\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"htb_change_class\00", [47 x i8] zeroinitializer }, align 32
@htb_change_class._entry_ptr = internal global ptr @htb_change_class._entry, section ".printk_index", align 4
@htb_change_class.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@htb_change_class._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str, i32 1931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013htb: TC_HTB_LEAF_ALLOC_QUEUE failed with err = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@htb_change_class._entry_ptr.11 = internal global ptr @htb_change_class._entry.9, section ".printk_index", align 4
@htb_change_class._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str, i32 1951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013htb: TC_HTB_LEAF_TO_INNER failed with err = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@htb_change_class._entry_ptr.14 = internal global ptr @htb_change_class._entry.12, section ".printk_index", align 4
@noop_qdisc = external dso_local global %struct.Qdisc, align 128
@htb_change_class._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str, i32 2081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014HTB: quantum of class %X is %s. Consider r2q change.\0A\00", [40 x i8] zeroinitializer }, align 32
@htb_change_class._entry_ptr.17 = internal global ptr @htb_change_class._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"small\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"big\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@htb_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@htb_classify.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@htb_classify.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@qdisc_calculate_pkt_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@htb_do_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014htb: too many events!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"htb_do_events\00", [18 x i8] zeroinitializer }, align 32
@htb_do_events._entry_ptr = internal global ptr @htb_do_events._entry, section ".printk_index", align 4
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"htb\00", [28 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@htb_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(work_completion)(&q->work)\00", [36 x i8] zeroinitializer }, align 32
@htb_init.__msg = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"HTB must be the root qdisc to use offload\00", [54 x i8] zeroinitializer }, align 32
@htb_init.__msg.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"hw-tc-offload ethtool feature flag must be on\00", [50 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@qdisc_root.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__qdisc_reset_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.htb_enqueue = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 131072, i32 65536, i32 65536, i32 65536, i32 65536, i32 65536, i32 65536], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"htb_rate_est\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 65, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"htb_class_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 2157, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1495, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"child_key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1040, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1042, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 596, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"htb_policy\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1017, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1816, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1820, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1824, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1828, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1871, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1930, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1950, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 2080, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 271, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 991, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 236, i32 9 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 771, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 906, i32 20 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1063, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1088, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.134 = private constant [23 x i8] c"../net/sched/sch_htb.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1093, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 695, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 723, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [25 x i8] c"switch.table.htb_enqueue\00", align 1
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_file403, ptr @__UNIQUE_ID_htb_hysteresis367, ptr @__UNIQUE_ID_htb_hysteresistype366, ptr @__UNIQUE_ID_htb_rate_est369, ptr @__UNIQUE_ID_htb_rate_esttype368, ptr @__UNIQUE_ID_license404, ptr @__exitcall_htb_module_exit, ptr @__initcall__kmod_sch_htb__402_2197_htb_module_init6, ptr @__param_htb_hysteresis, ptr @__param_htb_rate_est, ptr @htb_change_class._entry, ptr @htb_change_class._entry.12, ptr @htb_change_class._entry.15, ptr @htb_change_class._entry.9, ptr @htb_change_class._entry_ptr, ptr @htb_change_class._entry_ptr.11, ptr @htb_change_class._entry_ptr.14, ptr @htb_change_class._entry_ptr.17, ptr @htb_do_events._entry, ptr @htb_do_events._entry_ptr, ptr @htb_module_exit, ptr @htb_rate_est, ptr @htb_class_ops, ptr @.str, ptr @htb_set_lockdep_class_child.child_key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @htb_policy, ptr @htb_change_class.__msg, ptr @htb_change_class.__msg.4, ptr @htb_change_class.__msg.5, ptr @htb_change_class.__msg.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @htb_init.__key, ptr @.str.28, ptr @htb_init.__msg, ptr @htb_init.__msg.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @switch.table.htb_enqueue], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htb_rate_est to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htb_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htb_set_lockdep_class_child.child_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htb_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htb_change_class.__msg to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htb_change_class.__msg.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htb_change_class.__msg.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htb_change_class.__msg.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htb_change_class._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htb_change_class._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htb_change_class._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htb_change_class._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htb_do_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htb_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htb_init.__msg to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htb_init.__msg.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.htb_enqueue to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @htb_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @htb_qdisc_ops) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @htb_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @htb_qdisc_ops) #17
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htb_enqueue(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  %res.i = alloca %struct.tcf_result, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i, align 4
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.i) #17
  %2 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %res.i, align 4, !annotation !117
  %3 = getelementptr inbounds %struct.anon.122, ptr %res.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !117
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %5 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %priority.i, align 4
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %7 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.i = icmp eq i32 %6, %8
  br i1 %cmp.i, label %entry.htb_classify.exit_crit_edge, label %if.end.i

entry.htb_classify.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_classify.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.if.else.i_crit_edge, label %if.end.i.i.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %hashmask.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %9 = ptrtoint ptr %hashmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hashmask.i.i.i, align 4
  %shr.i.i.i.i = lshr i32 %6, 8
  %xor.i.i.i.i = xor i32 %shr.i.i.i.i, %6
  %shr1.i.i.i.i = lshr i32 %xor.i.i.i.i, 4
  %xor2.i.i.i.i = xor i32 %shr1.i.i.i.i, %xor.i.i.i.i
  %and.i.i.i.i = and i32 %10, %xor2.i.i.i.i
  %11 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %privdata.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.hlist_head, ptr %12, i32 %and.i.i.i.i
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %14, null
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 -4
  %tobool4.not3033.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool4.not30.i.i.i = or i1 %tobool2.not.i.i.i, %tobool4.not3033.i.i.i
  br i1 %tobool4.not30.i.i.i, label %if.end.i.i.i.if.else.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %for.body.i.i.i

if.end.i.i.i.if.else.i_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i.for.body.i.i.i_crit_edge
  %cl.031.i.i.i = phi ptr [ %add.ptr13.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %cl.031.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cl.031.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %6)
  %cmp.i.i.i = icmp eq i32 %16, %6
  br i1 %cmp.i.i.i, label %if.then3.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %hnode.i.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %hnode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hnode.i.i.i, align 4
  %tobool9.not.i.i.i = icmp eq ptr %18, null
  %add.ptr13.i.i.i = getelementptr i8, ptr %18, i32 -4
  %tobool4.not34.i.i.i = icmp eq ptr %add.ptr13.i.i.i, null
  %tobool4.not.i.i.i = or i1 %tobool9.not.i.i.i, %tobool4.not34.i.i.i
  br i1 %tobool4.not.i.i.i, label %for.inc.i.i.i.if.else.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i.i

for.inc.i.i.i.if.else.i_crit_edge:                ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.then3.i:                                       ; preds = %for.body.i.i.i
  %level.i = getelementptr inbounds %struct.htb_class, ptr %cl.031.i.i.i, i32 0, i32 11
  %19 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp4.i = icmp eq i32 %20, 0
  br i1 %cmp4.i, label %if.then3.i.htb_classify.exit_crit_edge, label %if.end6.i

if.then3.i.htb_classify.exit_crit_edge:           ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_classify.exit

if.end6.i:                                        ; preds = %if.then3.i
  %filter_list.i = getelementptr inbounds %struct.htb_class, ptr %cl.031.i.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %filter_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %filter_list.i, align 32
  %call8.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i, label %if.end6.i.if.end37.i_crit_edge

if.end6.i.if.end37.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %call10.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.if.end37.i_crit_edge, label %land.lhs.true12.i

land.lhs.true.i.if.end37.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37.i

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %.b117.i = load i1, ptr @htb_classify.__warned, align 1
  br i1 %.b117.i, label %land.lhs.true12.i.if.end37.i_crit_edge, label %land.lhs.true12.i.if.end37.sink.split.i_crit_edge

land.lhs.true12.i.if.end37.sink.split.i_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37.sink.split.i

land.lhs.true12.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37.i

if.else.i:                                        ; preds = %for.inc.i.i.i.if.else.i_crit_edge, %if.end.i.i.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %filter_list23.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %23 = ptrtoint ptr %filter_list23.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %filter_list23.i, align 8
  %call25.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %land.lhs.true27.i, label %if.else.i.if.end37.i_crit_edge

if.else.i.if.end37.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37.i

land.lhs.true27.i:                                ; preds = %if.else.i
  %call28.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true27.i.if.end37.i_crit_edge, label %land.lhs.true30.i

land.lhs.true27.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37.i

land.lhs.true30.i:                                ; preds = %land.lhs.true27.i
  %.b113116.i = load i1, ptr @htb_classify.__warned.23, align 1
  br i1 %.b113116.i, label %land.lhs.true30.i.if.end37.i_crit_edge, label %land.lhs.true30.i.if.end37.sink.split.i_crit_edge

land.lhs.true30.i.if.end37.sink.split.i_crit_edge: ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37.sink.split.i

land.lhs.true30.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37.i

if.end37.sink.split.i:                            ; preds = %land.lhs.true30.i.if.end37.sink.split.i_crit_edge, %land.lhs.true12.i.if.end37.sink.split.i_crit_edge
  %htb_classify.__warned.23.sink.i = phi ptr [ @htb_classify.__warned, %land.lhs.true12.i.if.end37.sink.split.i_crit_edge ], [ @htb_classify.__warned.23, %land.lhs.true30.i.if.end37.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 236, %land.lhs.true12.i.if.end37.sink.split.i_crit_edge ], [ 238, %land.lhs.true30.i.if.end37.sink.split.i_crit_edge ]
  %tcf.0.ph.i = phi ptr [ %22, %land.lhs.true12.i.if.end37.sink.split.i_crit_edge ], [ %24, %land.lhs.true30.i.if.end37.sink.split.i_crit_edge ]
  %25 = ptrtoint ptr %htb_classify.__warned.23.sink.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i1 true, ptr %htb_classify.__warned.23.sink.i, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef %.sink.i, ptr noundef nonnull @.str.22) #17
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end37.sink.split.i, %land.lhs.true30.i.if.end37.i_crit_edge, %land.lhs.true27.i.if.end37.i_crit_edge, %if.else.i.if.end37.i_crit_edge, %land.lhs.true12.i.if.end37.i_crit_edge, %land.lhs.true.i.if.end37.i_crit_edge, %if.end6.i.if.end37.i_crit_edge
  %tcf.0.i = phi ptr [ %22, %land.lhs.true12.i.if.end37.i_crit_edge ], [ %22, %land.lhs.true.i.if.end37.i_crit_edge ], [ %22, %if.end6.i.if.end37.i_crit_edge ], [ %24, %land.lhs.true30.i.if.end37.i_crit_edge ], [ %24, %land.lhs.true27.i.if.end37.i_crit_edge ], [ %24, %if.else.i.if.end37.i_crit_edge ], [ %tcf.0.ph.i, %if.end37.sink.split.i ]
  %tobool38.not179.i = icmp eq ptr %tcf.0.i, null
  br i1 %tobool38.not179.i, label %if.end37.i.while.end.i_crit_edge, label %land.rhs.lr.ph.i

if.end37.i.while.end.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

land.rhs.lr.ph.i:                                 ; preds = %if.end37.i
  %hashmask.i.i120.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %do.end74.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %tcf.1180.i = phi ptr [ %tcf.0.i, %land.rhs.lr.ph.i ], [ %47, %do.end74.i.land.rhs.i_crit_edge ]
  %call39.i = call i32 @tcf_classify(ptr noundef %skb, ptr noundef null, ptr noundef nonnull %tcf.1180.i, ptr noundef nonnull %res.i, i1 noundef zeroext false) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call39.i)
  %cmp40.i = icmp sgt i32 %call39.i, -1
  br i1 %cmp40.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %switch.tableidx = add i32 %call39.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %26 = icmp ult i32 %switch.tableidx, 7
  br i1 %26, label %switch.hole_check, label %while.body.i.sw.epilog.i_crit_edge

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.hole_check.sw.epilog.i_crit_edge, %while.body.i.sw.epilog.i_crit_edge
  %27 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %res.i, align 4
  %29 = inttoptr i32 %28 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool42.not.i = icmp eq i32 %28, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %sw.epilog.i.if.end53.i_crit_edge

sw.epilog.i.if.end53.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53.i

if.then43.i:                                      ; preds = %sw.epilog.i
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %3, align 4
  %32 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %handle.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp45.i = icmp eq i32 %31, %33
  br i1 %cmp45.i, label %if.then43.i.htb_classify.exit_crit_edge, label %if.end47.i

if.then43.i.htb_classify.exit_crit_edge:          ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_classify.exit

if.end47.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i118.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i118.i, label %if.end47.i.while.end.i_crit_edge, label %if.end.i.i131.i

if.end47.i.while.end.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.end.i.i131.i:                                  ; preds = %if.end47.i
  %34 = ptrtoint ptr %hashmask.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hashmask.i.i120.i, align 4
  %shr.i.i.i121.i = lshr i32 %31, 8
  %xor.i.i.i122.i = xor i32 %shr.i.i.i121.i, %31
  %shr1.i.i.i123.i = lshr i32 %xor.i.i.i122.i, 4
  %xor2.i.i.i124.i = xor i32 %shr1.i.i.i123.i, %xor.i.i.i122.i
  %and.i.i.i125.i = and i32 %35, %xor2.i.i.i124.i
  %36 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %privdata.i, align 4
  %arrayidx.i.i126.i = getelementptr %struct.hlist_head, ptr %37, i32 %and.i.i.i125.i
  %38 = ptrtoint ptr %arrayidx.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i126.i, align 4
  %tobool2.not.i.i127.i = icmp eq ptr %39, null
  %add.ptr.i.i128.i = getelementptr i8, ptr %39, i32 -4
  %tobool4.not3033.i.i129.i = icmp eq ptr %add.ptr.i.i128.i, null
  %tobool4.not30.i.i130.i = or i1 %tobool2.not.i.i127.i, %tobool4.not3033.i.i129.i
  br i1 %tobool4.not30.i.i130.i, label %if.end.i.i131.i.while.end.i_crit_edge, label %if.end.i.i131.i.for.body.i.i134.i_crit_edge

if.end.i.i131.i.for.body.i.i134.i_crit_edge:      ; preds = %if.end.i.i131.i
  br label %for.body.i.i134.i

if.end.i.i131.i.while.end.i_crit_edge:            ; preds = %if.end.i.i131.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

for.body.i.i134.i:                                ; preds = %for.inc.i.i140.i.for.body.i.i134.i_crit_edge, %if.end.i.i131.i.for.body.i.i134.i_crit_edge
  %cl.031.i.i132.i = phi ptr [ %add.ptr13.i.i137.i, %for.inc.i.i140.i.for.body.i.i134.i_crit_edge ], [ %add.ptr.i.i128.i, %if.end.i.i131.i.for.body.i.i134.i_crit_edge ]
  %40 = ptrtoint ptr %cl.031.i.i132.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cl.031.i.i132.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %31)
  %cmp.i.i133.i = icmp eq i32 %41, %31
  br i1 %cmp.i.i133.i, label %for.body.i.i134.i.if.end53.i_crit_edge, label %for.inc.i.i140.i

for.body.i.i134.i.if.end53.i_crit_edge:           ; preds = %for.body.i.i134.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53.i

for.inc.i.i140.i:                                 ; preds = %for.body.i.i134.i
  %hnode.i.i135.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i132.i, i32 0, i32 1
  %42 = ptrtoint ptr %hnode.i.i135.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hnode.i.i135.i, align 4
  %tobool9.not.i.i136.i = icmp eq ptr %43, null
  %add.ptr13.i.i137.i = getelementptr i8, ptr %43, i32 -4
  %tobool4.not34.i.i138.i = icmp eq ptr %add.ptr13.i.i137.i, null
  %tobool4.not.i.i139.i = or i1 %tobool9.not.i.i136.i, %tobool4.not34.i.i138.i
  br i1 %tobool4.not.i.i139.i, label %for.inc.i.i140.i.while.end.i_crit_edge, label %for.inc.i.i140.i.for.body.i.i134.i_crit_edge

for.inc.i.i140.i.for.body.i.i134.i_crit_edge:     ; preds = %for.inc.i.i140.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i134.i

for.inc.i.i140.i.while.end.i_crit_edge:           ; preds = %for.inc.i.i140.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.end53.i:                                       ; preds = %for.body.i.i134.i.if.end53.i_crit_edge, %sw.epilog.i.if.end53.i_crit_edge
  %cl.0.i = phi ptr [ %29, %sw.epilog.i.if.end53.i_crit_edge ], [ %cl.031.i.i132.i, %for.body.i.i134.i.if.end53.i_crit_edge ]
  %level54.i = getelementptr inbounds %struct.htb_class, ptr %cl.0.i, i32 0, i32 11
  %44 = ptrtoint ptr %level54.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %level54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool55.not.i = icmp eq i32 %45, 0
  br i1 %tobool55.not.i, label %if.end53.i.htb_classify.exit_crit_edge, label %if.end57.i

if.end53.i.htb_classify.exit_crit_edge:           ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_classify.exit

if.end57.i:                                       ; preds = %if.end53.i
  %filter_list62.i = getelementptr inbounds %struct.htb_class, ptr %cl.0.i, i32 0, i32 8
  %46 = ptrtoint ptr %filter_list62.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %filter_list62.i, align 32
  %call64.i = call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %land.lhs.true66.i, label %if.end57.i.do.end74.i_crit_edge

if.end57.i.do.end74.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end74.i

land.lhs.true66.i:                                ; preds = %if.end57.i
  %call67.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %land.lhs.true66.i.do.end74.i_crit_edge, label %land.lhs.true69.i

land.lhs.true66.i.do.end74.i_crit_edge:           ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end74.i

land.lhs.true69.i:                                ; preds = %land.lhs.true66.i
  %.b114115.i = load i1, ptr @htb_classify.__warned.24, align 1
  br i1 %.b114115.i, label %land.lhs.true69.i.do.end74.i_crit_edge, label %if.then71.i

land.lhs.true69.i.do.end74.i_crit_edge:           ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end74.i

if.then71.i:                                      ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @htb_classify.__warned.24, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 266, ptr noundef nonnull @.str.22) #17
  br label %do.end74.i

do.end74.i:                                       ; preds = %if.then71.i, %land.lhs.true69.i.do.end74.i_crit_edge, %land.lhs.true66.i.do.end74.i_crit_edge, %if.end57.i.do.end74.i_crit_edge
  %tobool38.not.i = icmp eq ptr %47, null
  br i1 %tobool38.not.i, label %do.end74.i.while.end.i_crit_edge, label %do.end74.i.land.rhs.i_crit_edge

do.end74.i.land.rhs.i_crit_edge:                  ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i

do.end74.i.while.end.i_crit_edge:                 ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.end.i:                                      ; preds = %do.end74.i.while.end.i_crit_edge, %for.inc.i.i140.i.while.end.i_crit_edge, %if.end.i.i131.i.while.end.i_crit_edge, %if.end47.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %if.end37.i.while.end.i_crit_edge
  %48 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %handle.i, align 32
  %and.i = and i32 %49, -65536
  %defcls.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %50 = ptrtoint ptr %defcls.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %defcls.i, align 8
  %and78.i = and i32 %51, 65535
  %or.i = or i32 %and78.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i.i143.i = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i.i143.i, label %while.end.i.htb_classify.exit_crit_edge, label %if.end.i.i156.i

while.end.i.htb_classify.exit_crit_edge:          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_classify.exit

if.end.i.i156.i:                                  ; preds = %while.end.i
  %hashmask.i.i145.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %52 = ptrtoint ptr %hashmask.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hashmask.i.i145.i, align 4
  %shr.i.i.i146.i = lshr i32 %or.i, 8
  %xor.i.i.i147.i = xor i32 %shr.i.i.i146.i, %or.i
  %shr1.i.i.i148.i = lshr i32 %xor.i.i.i147.i, 4
  %xor2.i.i.i149.i = xor i32 %shr1.i.i.i148.i, %xor.i.i.i147.i
  %and.i.i.i150.i = and i32 %53, %xor2.i.i.i149.i
  %54 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %privdata.i, align 4
  %arrayidx.i.i151.i = getelementptr %struct.hlist_head, ptr %55, i32 %and.i.i.i150.i
  %56 = ptrtoint ptr %arrayidx.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i151.i, align 4
  %tobool2.not.i.i152.i = icmp eq ptr %57, null
  %add.ptr.i.i153.i = getelementptr i8, ptr %57, i32 -4
  %tobool4.not3033.i.i154.i = icmp eq ptr %add.ptr.i.i153.i, null
  %tobool4.not30.i.i155.i = or i1 %tobool2.not.i.i152.i, %tobool4.not3033.i.i154.i
  br i1 %tobool4.not30.i.i155.i, label %if.end.i.i156.i.htb_classify.exit_crit_edge, label %if.end.i.i156.i.for.body.i.i159.i_crit_edge

if.end.i.i156.i.for.body.i.i159.i_crit_edge:      ; preds = %if.end.i.i156.i
  br label %for.body.i.i159.i

if.end.i.i156.i.htb_classify.exit_crit_edge:      ; preds = %if.end.i.i156.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_classify.exit

for.body.i.i159.i:                                ; preds = %for.inc.i.i165.i.for.body.i.i159.i_crit_edge, %if.end.i.i156.i.for.body.i.i159.i_crit_edge
  %cl.031.i.i157.i = phi ptr [ %add.ptr13.i.i162.i, %for.inc.i.i165.i.for.body.i.i159.i_crit_edge ], [ %add.ptr.i.i153.i, %if.end.i.i156.i.for.body.i.i159.i_crit_edge ]
  %58 = ptrtoint ptr %cl.031.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cl.031.i.i157.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %or.i)
  %cmp.i.i158.i = icmp eq i32 %59, %or.i
  br i1 %cmp.i.i158.i, label %lor.lhs.false.i, label %for.inc.i.i165.i

for.inc.i.i165.i:                                 ; preds = %for.body.i.i159.i
  %hnode.i.i160.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i157.i, i32 0, i32 1
  %60 = ptrtoint ptr %hnode.i.i160.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hnode.i.i160.i, align 4
  %tobool9.not.i.i161.i = icmp eq ptr %61, null
  %add.ptr13.i.i162.i = getelementptr i8, ptr %61, i32 -4
  %tobool4.not34.i.i163.i = icmp eq ptr %add.ptr13.i.i162.i, null
  %tobool4.not.i.i164.i = or i1 %tobool9.not.i.i161.i, %tobool4.not34.i.i163.i
  br i1 %tobool4.not.i.i164.i, label %for.inc.i.i165.i.htb_classify.exit_crit_edge, label %for.inc.i.i165.i.for.body.i.i159.i_crit_edge

for.inc.i.i165.i.for.body.i.i159.i_crit_edge:     ; preds = %for.inc.i.i165.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i159.i

for.inc.i.i165.i.htb_classify.exit_crit_edge:     ; preds = %for.inc.i.i165.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_classify.exit

lor.lhs.false.i:                                  ; preds = %for.body.i.i159.i
  call void @__sanitizer_cov_trace_pc() #19
  %level81.i = getelementptr inbounds %struct.htb_class, ptr %cl.031.i.i157.i, i32 0, i32 11
  %62 = ptrtoint ptr %level81.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %level81.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool82.not.i = icmp eq i32 %63, 0
  %spec.select.i = select i1 %tobool82.not.i, ptr %cl.031.i.i157.i, ptr inttoptr (i32 -1 to ptr)
  br label %htb_classify.exit

switch.hole_check:                                ; preds = %while.body.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 77, %switch.maskindex
  %64 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %switch.lobit.not = icmp eq i8 %64, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.htb_enqueue, i32 0, i32 %switch.tableidx
  %65 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %htb_classify.exit

htb_classify.exit:                                ; preds = %switch.lookup, %lor.lhs.false.i, %for.inc.i.i165.i.htb_classify.exit_crit_edge, %if.end.i.i156.i.htb_classify.exit_crit_edge, %while.end.i.htb_classify.exit_crit_edge, %if.end53.i.htb_classify.exit_crit_edge, %if.then43.i.htb_classify.exit_crit_edge, %if.then3.i.htb_classify.exit_crit_edge, %entry.htb_classify.exit_crit_edge
  %ret.0 = phi i32 [ -1, %entry.htb_classify.exit_crit_edge ], [ 131072, %while.end.i.htb_classify.exit_crit_edge ], [ 131072, %if.end.i.i156.i.htb_classify.exit_crit_edge ], [ 131072, %lor.lhs.false.i ], [ -1, %if.then3.i.htb_classify.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ 131072, %for.inc.i.i165.i.htb_classify.exit_crit_edge ], [ 131072, %if.end53.i.htb_classify.exit_crit_edge ], [ 131072, %if.then43.i.htb_classify.exit_crit_edge ]
  %retval.0.i = phi ptr [ inttoptr (i32 -1 to ptr), %entry.htb_classify.exit_crit_edge ], [ inttoptr (i32 -1 to ptr), %while.end.i.htb_classify.exit_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end.i.i156.i.htb_classify.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ], [ %cl.031.i.i.i, %if.then3.i.htb_classify.exit_crit_edge ], [ null, %switch.lookup ], [ inttoptr (i32 -1 to ptr), %for.inc.i.i165.i.htb_classify.exit_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.then43.i.htb_classify.exit_crit_edge ], [ %cl.0.i, %if.end53.i.htb_classify.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #17
  %magicptr = ptrtoint ptr %retval.0.i to i32
  %66 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr, label %if.else12 [
    i32 -1, label %if.then
    i32 0, label %if.then8
  ]

if.then:                                          ; preds = %htb_classify.exit
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 28
  %67 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %qlen, align 4
  %direct_qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %69 = ptrtoint ptr %direct_qlen to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %direct_qlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp3 = icmp ult i32 %68, %70
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %71 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %72, null
  br i1 %tobool.not.i, label %if.else.i53, label %if.then.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  %73 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %skb, align 8
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %skb, ptr %72, align 8
  br label %__qdisc_enqueue_tail.exit

if.else.i53:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  %direct_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %75 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %skb, ptr %tail.i, align 4
  br label %__qdisc_enqueue_tail.exit

__qdisc_enqueue_tail.exit:                        ; preds = %if.else.i53, %if.then.i
  %qh.sink.i = phi ptr [ %direct_queue, %if.else.i53 ], [ %tail.i, %if.then.i ]
  %76 = ptrtoint ptr %qh.sink.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %skb, ptr %qh.sink.i, align 4
  %77 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %qlen, align 4
  %inc.i = add i32 %78, 1
  store i32 %inc.i, ptr %qlen, align 4
  %direct_pkts = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2
  %79 = ptrtoint ptr %direct_pkts to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %direct_pkts, align 4
  %inc = add i32 %80, 1
  store i32 %inc, ptr %direct_pkts, align 4
  br label %if.end25

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %81 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %to_free, align 4
  %83 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %84 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %85, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %cleanup

if.then8:                                         ; preds = %htb_classify.exit
  %and = and i32 %ret.0, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then8.if.end11_crit_edge, label %if.then10

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %86 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %87, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8.if.end11_crit_edge
  %88 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %to_free, align 4
  %90 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  br label %cleanup

if.else12:                                        ; preds = %htb_classify.exit
  %q13 = getelementptr inbounds %struct.htb_class, ptr %retval.0.i, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %91 = ptrtoint ptr %q13 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %q13, align 16
  %stab1.i.i = getelementptr inbounds %struct.Qdisc, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %stab1.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %stab1.i.i, align 4
  %call.i.i = call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.else12.do.end8.i.i_crit_edge

if.else12.do.end8.i.i_crit_edge:                  ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.else12
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @qdisc_calculate_pkt_len.__warned, align 1
  br i1 %.b14.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @qdisc_calculate_pkt_len.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 835, ptr noundef nonnull @.str.22) #17
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %if.else12.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %94, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.qdisc_enqueue.exit_crit_edge, label %if.then11.i.i

do.end8.i.i.qdisc_enqueue.exit_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_enqueue.exit

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__qdisc_calculate_pkt_len(ptr noundef %skb, ptr noundef nonnull %94) #17
  br label %qdisc_enqueue.exit

qdisc_enqueue.exit:                               ; preds = %if.then11.i.i, %do.end8.i.i.qdisc_enqueue.exit_crit_edge
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %92, align 128
  %call.i = call i32 %96(ptr noundef %skb, ptr noundef %92, ptr noundef %to_free) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15.not = icmp eq i32 %call.i, 0
  br i1 %cmp15.not, label %if.else22, label %if.then16

if.then16:                                        ; preds = %qdisc_enqueue.exit
  %and17 = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then19, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  %drops.i.i55 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %97 = ptrtoint ptr %drops.i.i55 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %drops.i.i55, align 4
  %inc.i.i56 = add i32 %98, 1
  store i32 %inc.i.i56, ptr %drops.i.i55, align 4
  %drops = getelementptr inbounds %struct.htb_class, ptr %retval.0.i, i32 0, i32 28
  %99 = ptrtoint ptr %drops to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %drops, align 128
  %inc20 = add i32 %100, 1
  store i32 %inc20, ptr %drops, align 128
  br label %cleanup

if.else22:                                        ; preds = %qdisc_enqueue.exit
  %level.i57 = getelementptr inbounds %struct.htb_class, ptr %retval.0.i, i32 0, i32 11
  %101 = ptrtoint ptr %level.i57 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %level.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i58 = icmp eq i32 %102, 0
  br i1 %tobool.not.i58, label %lor.lhs.false.i59, label %if.else22.do.end.i_crit_edge

if.else22.do.end.i_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

lor.lhs.false.i59:                                ; preds = %if.else22
  %103 = ptrtoint ptr %q13 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %q13, align 16
  %tobool2.not.i = icmp eq ptr %104, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i59.do.end.i_crit_edge, label %lor.rhs.i

lor.lhs.false.i59.do.end.i_crit_edge:             ; preds = %lor.lhs.false.i59
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i59
  %qlen.i60 = getelementptr inbounds %struct.Qdisc, ptr %104, i32 0, i32 17, i32 2
  %105 = ptrtoint ptr %qlen.i60 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %qlen.i60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool5.not.i = icmp eq i32 %106, 0
  br i1 %tobool5.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %lor.rhs.i.if.end.i62_crit_edge, !prof !118

lor.rhs.i.if.end.i62_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i62

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %lor.lhs.false.i59.do.end.i_crit_edge, %if.else22.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 588, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i62

if.end.i62:                                       ; preds = %do.end.i, %lor.rhs.i.if.end.i62_crit_edge
  %prio_activity.i = getelementptr inbounds %struct.htb_class, ptr %retval.0.i, i32 0, i32 23
  %107 = ptrtoint ptr %prio_activity.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %prio_activity.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool26.not.i61 = icmp eq i32 %108, 0
  br i1 %tobool26.not.i61, label %if.then27.i, label %if.end.i62.if.end25_crit_edge

if.end.i62.if.end25_crit_edge:                    ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then27.i:                                      ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #19
  %prio.i = getelementptr inbounds %struct.htb_class, ptr %retval.0.i, i32 0, i32 6
  %109 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %prio.i, align 8
  %shl.i = shl nuw i32 1, %110
  %111 = ptrtoint ptr %prio_activity.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %shl.i, ptr %prio_activity.i, align 8
  call fastcc void @htb_activate_prios(ptr noundef %privdata.i, ptr noundef %retval.0.i) #17
  br label %if.end25

if.end25:                                         ; preds = %if.then27.i, %if.end.i62.if.end25_crit_edge, %__qdisc_enqueue_tail.exit
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %112 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %backlog, align 4
  %add = add i32 %113, %1
  store i32 %add, ptr %backlog, align 4
  %qlen27 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %114 = ptrtoint ptr %qlen27 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %qlen27, align 8
  %inc28 = add i32 %115, 1
  store i32 %inc28, ptr %qlen27, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then19, %if.then16.cleanup_crit_edge, %if.end11, %if.else
  %retval.0 = phi i32 [ 0, %if.end25 ], [ 1, %if.else ], [ %ret.0, %if.end11 ], [ %call.i, %if.then16.cleanup_crit_edge ], [ %call.i, %if.then19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @htb_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  %diff.i.i = alloca i64, align 8
  %diff.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %direct_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %0 = ptrtoint ptr %direct_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %direct_queue, align 4
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %if.end, label %if.then.i, !prof !118

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %direct_queue to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %direct_queue, align 4
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 28
  %5 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i, align 4
  %dec.i = add i32 %6, -1
  store i32 %dec.i, ptr %qlen.i, align 4
  %cmp4.i = icmp eq ptr %3, null
  br i1 %cmp4.i, label %if.then5.i, label %if.then.i.__qdisc_dequeue_head.exit_crit_edge

if.then.i.__qdisc_dequeue_head.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__qdisc_dequeue_head.exit

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i, align 4
  br label %__qdisc_dequeue_head.exit

__qdisc_dequeue_head.exit:                        ; preds = %if.then5.i, %if.then.i.__qdisc_dequeue_head.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %1, align 8
  br label %ok

ok:                                               ; preds = %htb_dequeue_tree.exit.ok_crit_edge, %__qdisc_dequeue_head.exit
  %skb.0 = phi ptr [ %1, %__qdisc_dequeue_head.exit ], [ %retval.3.i, %htb_dequeue_tree.exit.ok_crit_edge ]
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3
  %9 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb.i.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 17
  %11 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.i.not.i.i = icmp eq i16 %14, 0
  br i1 %tobool.i.not.i.i, label %ok.qdisc_bstats_update.exit_crit_edge, label %cond.true.i.i

ok.qdisc_bstats_update.exit_crit_edge:            ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_bstats_update.exit

cond.true.i.i:                                    ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #19
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %16 to i32
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %cond.true.i.i, %ok.qdisc_bstats_update.exit_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %ok.qdisc_bstats_update.exit_crit_edge ]
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %10 to i64
  tail call fastcc void @_bstats_update(ptr noundef %bstats.i, i64 noundef %conv.i.i, i32 noundef %cond.i.i) #17
  %17 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cb.i.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %19 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %20, %18
  store i32 %sub.i, ptr %backlog.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %21 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qlen, align 8
  %dec = add i32 %22, -1
  store i32 %dec, ptr %qlen, align 8
  br label %cleanup50

if.end:                                           ; preds = %entry
  %qlen4 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %23 = ptrtoint ptr %qlen4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qlen4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.end.cleanup50_crit_edge, label %if.end6

if.end.cleanup50_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup50

if.end6:                                          ; preds = %if.end
  %call.i = tail call i64 @ktime_get() #17
  %now = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %call.i, ptr %now, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add = add i64 %call.i, 5000000000
  %add.neg.i = sub i32 -2, %26
  %warned.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6
  %next_event.0143 = phi i64 [ %add, %if.end6 ], [ %89, %for.inc.for.body_crit_edge ]
  %level.0142 = phi i32 [ 0, %if.end6 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.htb_sched, ptr %privdata.i, i32 0, i32 13, i32 %level.0142
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx, align 8
  %29 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %now, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %28)
  %cmp11.not = icmp slt i64 %30, %28
  br i1 %cmp11.not, label %for.body.if.end21_crit_edge, label %if.then12

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.then12:                                        ; preds = %for.body
  %arrayidx.i = getelementptr %struct.htb_sched, ptr %privdata.i, i32 0, i32 15, i32 %level.0142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub47.i = add i32 %31, %add.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub47.i)
  %cmp48.i = icmp slt i32 %sub47.i, 0
  br i1 %cmp48.i, label %if.then12.while.body.i_crit_edge, label %if.then12.while.end.i_crit_edge

if.then12.while.end.i_crit_edge:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.then12.while.body.i_crit_edge:                 ; preds = %if.then12
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.then12.while.body.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %diff.i) #17
  %call.i92 = tail call ptr @rb_first(ptr noundef %arrayidx.i) #17
  %tobool.not.i = icmp eq ptr %call.i92, null
  br i1 %tobool.not.i, label %while.body.i.cleanup.thread.i_crit_edge, label %if.end.i93

while.body.i.cleanup.thread.i_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.i

if.end.i93:                                       ; preds = %while.body.i
  %add.ptr.i = getelementptr i8, ptr %call.i92, i32 -384
  %pq_key.i = getelementptr i8, ptr %call.i92, i32 -16
  %32 = ptrtoint ptr %pq_key.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %pq_key.i, align 16
  %34 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %now, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %35)
  %cmp2.i = icmp sgt i64 %33, %35
  br i1 %cmp2.i, label %if.end.i93.cleanup.thread.i_crit_edge, label %if.end5.i

if.end.i93.cleanup.thread.i_crit_edge:            ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.i

if.end5.i:                                        ; preds = %if.end.i93
  %36 = ptrtoint ptr %call.i92 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call.i92, align 4
  %38 = ptrtoint ptr %call.i92 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %38)
  %cmp.i.i = icmp eq i32 %37, %38
  br i1 %cmp.i.i, label %do.end.i.i, label %if.else.i.i

do.end.i.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 375, i32 noundef 9, ptr noundef null) #17
  br label %htb_safe_rb_erase.exit.i

if.else.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rb_erase(ptr noundef nonnull %call.i92, ptr noundef %arrayidx.i) #17
  %39 = ptrtoint ptr %call.i92 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %call.i92, align 4
  br label %htb_safe_rb_erase.exit.i

htb_safe_rb_erase.exit.i:                         ; preds = %if.else.i.i, %do.end.i.i
  %40 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %now, align 8
  %t_c.i = getelementptr i8, ptr %call.i92, i32 -120
  %42 = ptrtoint ptr %t_c.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %t_c.i, align 8
  %sub7.i = sub i64 %41, %43
  %mbuffer.i = getelementptr i8, ptr %call.i92, i32 -304
  %44 = ptrtoint ptr %mbuffer.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %mbuffer.i, align 16
  %46 = tail call i64 @llvm.smin.i64(i64 %sub7.i, i64 %45) #17
  %47 = ptrtoint ptr %diff.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %diff.i, align 8
  call fastcc void @htb_change_class_mode(ptr noundef %privdata.i, ptr noundef %add.ptr.i, ptr noundef nonnull %diff.i) #17
  %cmode.i = getelementptr i8, ptr %call.i92, i32 -4
  %48 = ptrtoint ptr %cmode.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp10.not.i = icmp eq i32 %49, 2
  br i1 %cmp10.not.i, label %htb_safe_rb_erase.exit.i.cleanup.i_crit_edge, label %if.then11.i

htb_safe_rb_erase.exit.i.cleanup.i_crit_edge:     ; preds = %htb_safe_rb_erase.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

if.then11.i:                                      ; preds = %htb_safe_rb_erase.exit.i
  %50 = ptrtoint ptr %diff.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %diff.i, align 8
  %level.i.i = getelementptr i8, ptr %call.i92, i32 -276
  %52 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %level.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.htb_sched, ptr %privdata.i, i32 0, i32 15, i32 %53
  %54 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %now, align 8
  %add.i.i = add i64 %55, %51
  %56 = ptrtoint ptr %pq_key.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %add.i.i, ptr %pq_key.i, align 16
  %57 = load i64, ptr %now, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %57)
  %cmp.i44.i = icmp eq i64 %add.i.i, %57
  br i1 %cmp.i44.i, label %if.then.i.i, label %if.then11.i.if.end.i.i_crit_edge

if.then11.i.if.end.i.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc.i.i = add i64 %add.i.i, 1
  %58 = ptrtoint ptr %pq_key.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %inc.i.i, ptr %pq_key.i, align 16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then11.i.if.end.i.i_crit_edge
  %arrayidx5.i.i = getelementptr %struct.htb_sched, ptr %privdata.i, i32 0, i32 13, i32 %53
  %59 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx5.i.i, align 8
  %61 = ptrtoint ptr %pq_key.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %pq_key.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %62)
  %cmp7.i.i = icmp sgt i64 %60, %62
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.end.i.i.if.end13.i.i_crit_edge

if.end.i.i.if.end13.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %63 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %arrayidx5.i.i, align 8
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then8.i.i, %if.end.i.i.if.end13.i.i_crit_edge
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not46.i.i = icmp eq ptr %65, null
  br i1 %tobool.not46.i.i, label %if.end13.i.i.htb_add_to_wait_tree.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.end13.i.i.htb_add_to_wait_tree.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_add_to_wait_tree.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.end13.i.i
  %66 = ptrtoint ptr %pq_key.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %pq_key.i, align 16
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %68 = phi ptr [ %65, %while.body.lr.ph.i.i ], [ %72, %while.body.i.i.while.body.i.i_crit_edge ]
  %pq_key15.i.i = getelementptr i8, ptr %68, i32 -16
  %69 = ptrtoint ptr %pq_key15.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %pq_key15.i.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %70)
  %cmp16.not.i.i = icmp slt i64 %67, %70
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 1
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 2
  %p.1.i.i = select i1 %cmp16.not.i.i, ptr %rb_left.i.i, ptr %rb_right.i.i
  %71 = ptrtoint ptr %p.1.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %p.1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %phi.cast.le.i.i = ptrtoint ptr %68 to i32
  br label %htb_add_to_wait_tree.exit.i

htb_add_to_wait_tree.exit.i:                      ; preds = %while.cond.while.end_crit_edge.i.i, %if.end13.i.i.htb_add_to_wait_tree.exit.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.end13.i.i.htb_add_to_wait_tree.exit.i_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %p.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %arrayidx.i.i, %if.end13.i.i.htb_add_to_wait_tree.exit.i_crit_edge ]
  %73 = ptrtoint ptr %call.i92 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %parent.0.lcssa.i.i, ptr %call.i92, align 4
  %rb_right.i.i.i = getelementptr i8, ptr %call.i92, i32 4
  %74 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr i8, ptr %call.i92, i32 8
  %75 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %76 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i92, ptr %p.0.lcssa.i.i, align 4
  %77 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %level.i.i, align 4
  %arrayidx22.i.i = getelementptr %struct.htb_sched, ptr %privdata.i, i32 0, i32 15, i32 %78
  tail call void @rb_insert_color(ptr noundef nonnull %call.i92, ptr noundef %arrayidx22.i.i) #17
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.end.i93.cleanup.thread.i_crit_edge, %while.body.i.cleanup.thread.i_crit_edge
  %retval.1.ph.i = phi i64 [ %33, %if.end.i93.cleanup.thread.i_crit_edge ], [ 0, %while.body.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %diff.i) #17
  br label %htb_do_events.exit

cleanup.i:                                        ; preds = %htb_add_to_wait_tree.exit.i, %htb_safe_rb_erase.exit.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %diff.i) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %79 = load volatile i32, ptr @jiffies, align 128
  %sub.i94 = add i32 %79, %add.neg.i
  %cmp.i = icmp slt i32 %sub.i94, 0
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.while.end.i_crit_edge

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.then12.while.end.i_crit_edge
  %80 = ptrtoint ptr %warned.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %warned.i, align 8
  %and.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %do.end.i, label %while.end.i.if.end20.i_crit_edge

while.end.i.if.end20.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20.i

do.end.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #20
  %82 = ptrtoint ptr %warned.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %warned.i, align 8
  %or.i = or i32 %83, 1
  store i32 %or.i, ptr %warned.i, align 8
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i, %while.end.i.if.end20.i_crit_edge
  %84 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %now, align 8
  br label %htb_do_events.exit

htb_do_events.exit:                               ; preds = %if.end20.i, %cleanup.thread.i
  %retval.2.i = phi i64 [ %85, %if.end20.i ], [ %retval.1.ph.i, %cleanup.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.2.i)
  %tobool14.not = icmp eq i64 %retval.2.i, 0
  br i1 %tobool14.not, label %if.then15, label %htb_do_events.exit.if.end18_crit_edge

htb_do_events.exit.if.end18_crit_edge:            ; preds = %htb_do_events.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then15:                                        ; preds = %htb_do_events.exit
  call void @__sanitizer_cov_trace_pc() #19
  %86 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %now, align 8
  %add17 = add i64 %87, 1000000000
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %htb_do_events.exit.if.end18_crit_edge
  %event.0 = phi i64 [ %retval.2.i, %htb_do_events.exit.if.end18_crit_edge ], [ %add17, %if.then15 ]
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %event.0, ptr %arrayidx, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %for.body.if.end21_crit_edge
  %event.1 = phi i64 [ %event.0, %if.end18 ], [ %28, %for.body.if.end21_crit_edge ]
  %89 = tail call i64 @llvm.smin.i64(i64 %next_event.0143, i64 %event.1)
  %arrayidx25 = getelementptr %struct.htb_sched, ptr %privdata.i, i32 0, i32 14, i32 %level.0142
  %90 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx25, align 4
  %neg = xor i32 %91, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0142)
  %tobool39.not.i = icmp eq i32 %level.0142, 0
  br label %while.cond

while.cond:                                       ; preds = %htb_dequeue_tree.exit.while.cond_crit_edge, %if.end21
  %m.0 = phi i32 [ %neg, %if.end21 ], [ %or, %htb_dequeue_tree.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %m.0)
  %cmp26.not = icmp eq i32 %m.0, -1
  br i1 %cmp26.not, label %for.inc, label %while.body

while.body:                                       ; preds = %while.cond
  %neg27 = xor i32 %m.0, -1
  %92 = tail call i32 @llvm.cttz.i32(i32 %neg27, i1 false) #17, !range !119
  %shl = shl nuw i32 1, %92
  %or = or i32 %shl, %m.0
  %arrayidx3.i = getelementptr %struct.htb_sched, ptr %privdata.i, i32 0, i32 15, i32 %level.0142, i32 1, i32 %92
  %call.i95 = tail call fastcc ptr @htb_lookup_leaf(ptr noundef %arrayidx3.i, i32 noundef %92) #17
  %ptr45.i = getelementptr %struct.htb_sched, ptr %privdata.i, i32 0, i32 15, i32 0, i32 1, i32 %92, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %cond.end.i.do.body.i_crit_edge, %while.body
  %cl.0.i = phi ptr [ %call.i95, %while.body ], [ %call46.i, %cond.end.i.do.body.i_crit_edge ]
  %start.0.i = phi ptr [ %call.i95, %while.body ], [ %start.1159.i, %cond.end.i.do.body.i_crit_edge ]
  %tobool.not157.i = icmp eq ptr %cl.0.i, null
  br i1 %tobool.not157.i, label %do.body.i.htb_dequeue_tree.exit_crit_edge, label %do.body.i.if.end.i98_crit_edge, !prof !118

do.body.i.if.end.i98_crit_edge:                   ; preds = %do.body.i
  br label %if.end.i98

do.body.i.htb_dequeue_tree.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_dequeue_tree.exit

if.end.i98:                                       ; preds = %cleanup.i101.if.end.i98_crit_edge, %do.body.i.if.end.i98_crit_edge
  %start.1159.i = phi ptr [ %spec.select.i, %cleanup.i101.if.end.i98_crit_edge ], [ %start.0.i, %do.body.i.if.end.i98_crit_edge ]
  %cl.1158.i = phi ptr [ %call21.i, %cleanup.i101.if.end.i98_crit_edge ], [ %cl.0.i, %do.body.i.if.end.i98_crit_edge ]
  %q7.i = getelementptr inbounds %struct.htb_class, ptr %cl.1158.i, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %93 = ptrtoint ptr %q7.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %q7.i, align 16
  %qlen.i96 = getelementptr inbounds %struct.Qdisc, ptr %94, i32 0, i32 17, i32 2
  %95 = ptrtoint ptr %qlen.i96 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %qlen.i96, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.i97 = icmp eq i32 %96, 0
  br i1 %cmp.i97, label %if.then15.i, label %if.end25.i, !prof !118

if.then15.i:                                      ; preds = %if.end.i98
  %prio_activity.i = getelementptr inbounds %struct.htb_class, ptr %cl.1158.i, i32 0, i32 23
  %97 = ptrtoint ptr %prio_activity.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %prio_activity.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i126 = icmp eq i32 %98, 0
  br i1 %tobool.not.i126, label %do.end.i127, label %if.then15.i.htb_deactivate.exit_crit_edge, !prof !118

if.then15.i.htb_deactivate.exit_crit_edge:        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_deactivate.exit

do.end.i127:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 606, i32 noundef 9, ptr noundef null) #17
  br label %htb_deactivate.exit

htb_deactivate.exit:                              ; preds = %do.end.i127, %if.then15.i.htb_deactivate.exit_crit_edge
  tail call fastcc void @htb_deactivate_prios(ptr noundef %privdata.i, ptr noundef nonnull %cl.1158.i) #17
  %99 = ptrtoint ptr %prio_activity.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %prio_activity.i, align 8
  %100 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx25, align 4
  %and.i99 = and i32 %101, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %cmp18.i = icmp eq i32 %and.i99, 0
  br i1 %cmp18.i, label %htb_deactivate.exit.htb_dequeue_tree.exit_crit_edge, label %cleanup.i101

htb_deactivate.exit.htb_dequeue_tree.exit_crit_edge: ; preds = %htb_deactivate.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_dequeue_tree.exit

cleanup.i101:                                     ; preds = %htb_deactivate.exit
  %call21.i = tail call fastcc ptr @htb_lookup_leaf(ptr noundef %arrayidx3.i, i32 noundef %92) #17
  %cmp22.i = icmp eq ptr %cl.1158.i, %start.1159.i
  %spec.select.i = select i1 %cmp22.i, ptr %call21.i, ptr %start.1159.i
  %tobool.not.i100 = icmp eq ptr %call21.i, null
  br i1 %tobool.not.i100, label %cleanup.i101.htb_dequeue_tree.exit_crit_edge, label %cleanup.i101.if.end.i98_crit_edge, !prof !118

cleanup.i101.if.end.i98_crit_edge:                ; preds = %cleanup.i101
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i98

cleanup.i101.htb_dequeue_tree.exit_crit_edge:     ; preds = %cleanup.i101
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_dequeue_tree.exit

if.end25.i:                                       ; preds = %if.end.i98
  %q7.i.le = getelementptr inbounds %struct.htb_class, ptr %cl.1158.i, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %dequeue.i = getelementptr inbounds %struct.Qdisc, ptr %94, i32 0, i32 1
  %102 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dequeue.i, align 4
  %call28.i = tail call ptr %103(ptr noundef %94) #17
  %cmp29.not.i = icmp eq ptr %call28.i, null
  br i1 %cmp29.not.i, label %if.end37.i, label %if.then55.i, !prof !118

if.end37.i:                                       ; preds = %if.end25.i
  %104 = ptrtoint ptr %q7.i.le to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %q7.i.le, align 16
  tail call void @qdisc_warn_nonwc(ptr noundef nonnull @.str.27, ptr noundef %105) #17
  br i1 %tobool39.not.i, label %if.end37.i.cond.end.i_crit_edge, label %cond.true.i

if.end37.i.cond.end.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i = getelementptr inbounds %struct.htb_class, ptr %cl.1158.i, i32 0, i32 13
  %106 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %parent.i, align 4
  %108 = getelementptr inbounds %struct.htb_class, ptr %107, i32 0, i32 21
  %ptr.i = getelementptr [8 x %struct.htb_prio], ptr %108, i32 0, i32 %92, i32 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end37.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %ptr.i, %cond.true.i ], [ %ptr45.i, %if.end37.i.cond.end.i_crit_edge ]
  %109 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cond.i, align 4
  %call.i.i = tail call ptr @rb_next(ptr noundef %110) #17
  %111 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call.i.i, ptr %cond.i, align 4
  %call46.i = tail call fastcc ptr @htb_lookup_leaf(ptr noundef %arrayidx3.i, i32 noundef %92) #17
  %cmp47.not.i = icmp eq ptr %call46.i, %start.1159.i
  br i1 %cmp47.not.i, label %cond.end.i.htb_dequeue_tree.exit_crit_edge, label %cond.end.i.do.body.i_crit_edge

cond.end.i.do.body.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

cond.end.i.htb_dequeue_tree.exit_crit_edge:       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_dequeue_tree.exit

if.then55.i:                                      ; preds = %if.end25.i
  %bstats.i102 = getelementptr inbounds %struct.htb_class, ptr %cl.1158.i, i32 0, i32 15
  %cb.i.i.i.i103 = getelementptr inbounds %struct.sk_buff, ptr %call28.i, i32 0, i32 3
  %112 = ptrtoint ptr %cb.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cb.i.i.i.i103, align 4
  %end.i.i.i.i104 = getelementptr inbounds %struct.sk_buff, ptr %call28.i, i32 0, i32 17
  %114 = ptrtoint ptr %end.i.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %end.i.i.i.i104, align 4
  %gso_size.i.i.i105 = getelementptr inbounds %struct.skb_shared_info, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %gso_size.i.i.i105 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %gso_size.i.i.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool.i.not.i.i106 = icmp eq i16 %117, 0
  br i1 %tobool.i.not.i.i106, label %if.then55.i.bstats_update.exit.i_crit_edge, label %cond.true.i.i109

if.then55.i.bstats_update.exit.i_crit_edge:       ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bstats_update.exit.i

cond.true.i.i109:                                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #19
  %gso_segs.i.i107 = getelementptr inbounds %struct.skb_shared_info, ptr %115, i32 0, i32 5
  %118 = ptrtoint ptr %gso_segs.i.i107 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %gso_segs.i.i107, align 2
  %conv4.i.i108 = zext i16 %119 to i32
  br label %bstats_update.exit.i

bstats_update.exit.i:                             ; preds = %cond.true.i.i109, %if.then55.i.bstats_update.exit.i_crit_edge
  %cond.i.i110 = phi i32 [ %conv4.i.i108, %cond.true.i.i109 ], [ 1, %if.then55.i.bstats_update.exit.i_crit_edge ]
  %conv.i.i111 = zext i32 %113 to i64
  tail call fastcc void @_bstats_update(ptr noundef %bstats.i102, i64 noundef %conv.i.i111, i32 noundef %cond.i.i110) #17
  %120 = ptrtoint ptr %cb.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cb.i.i.i.i103, align 4
  %122 = getelementptr inbounds %struct.htb_class, ptr %cl.1158.i, i32 0, i32 21
  %arrayidx57.i = getelementptr [8 x i32], ptr %122, i32 0, i32 %level.0142
  %123 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx57.i, align 4
  %sub.i112 = sub i32 %124, %121
  store i32 %sub.i112, ptr %arrayidx57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i112)
  %cmp60.i = icmp slt i32 %sub.i112, 0
  br i1 %cmp60.i, label %if.then61.i, label %bstats_update.exit.i.if.end78.i_crit_edge

bstats_update.exit.i.if.end78.i_crit_edge:        ; preds = %bstats_update.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end78.i

if.then61.i:                                      ; preds = %bstats_update.exit.i
  %quantum.i = getelementptr inbounds %struct.htb_class, ptr %cl.1158.i, i32 0, i32 7
  %125 = ptrtoint ptr %quantum.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %quantum.i, align 4
  %add.i = add i32 %126, %sub.i112
  %127 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %add.i, ptr %arrayidx57.i, align 4
  br i1 %tobool39.not.i, label %if.then61.i.cond.end76.i_crit_edge, label %cond.true65.i

if.then61.i.cond.end76.i_crit_edge:               ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end76.i

cond.true65.i:                                    ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #19
  %parent66.i = getelementptr inbounds %struct.htb_class, ptr %cl.1158.i, i32 0, i32 13
  %128 = ptrtoint ptr %parent66.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %parent66.i, align 4
  %130 = getelementptr inbounds %struct.htb_class, ptr %129, i32 0, i32 21
  %ptr69.i = getelementptr [8 x %struct.htb_prio], ptr %130, i32 0, i32 %92, i32 1
  br label %cond.end76.i

cond.end76.i:                                     ; preds = %cond.true65.i, %if.then61.i.cond.end76.i_crit_edge
  %cond77.i = phi ptr [ %ptr69.i, %cond.true65.i ], [ %ptr45.i, %if.then61.i.cond.end76.i_crit_edge ]
  %131 = ptrtoint ptr %cond77.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cond77.i, align 4
  %call.i139.i = tail call ptr @rb_next(ptr noundef %132) #17
  %133 = ptrtoint ptr %cond77.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i139.i, ptr %cond77.i, align 4
  br label %if.end78.i

if.end78.i:                                       ; preds = %cond.end76.i, %bstats_update.exit.i.if.end78.i_crit_edge
  %134 = ptrtoint ptr %q7.i.le to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %q7.i.le, align 16
  %qlen81.i = getelementptr inbounds %struct.Qdisc, ptr %135, i32 0, i32 17, i32 2
  %136 = ptrtoint ptr %qlen81.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %qlen81.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool82.not.i = icmp eq i32 %137, 0
  br i1 %tobool82.not.i, label %if.then83.i, label %if.end78.i.while.body.lr.ph.i.i115_crit_edge

if.end78.i.while.body.lr.ph.i.i115_crit_edge:     ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.lr.ph.i.i115

if.then83.i:                                      ; preds = %if.end78.i
  %prio_activity.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.1158.i, i32 0, i32 23
  %138 = ptrtoint ptr %prio_activity.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %prio_activity.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.not.i.i113 = icmp eq i32 %139, 0
  br i1 %tobool.not.i.i113, label %do.end.i.i114, label %if.then83.i.htb_deactivate.exit.i_crit_edge, !prof !118

if.then83.i.htb_deactivate.exit.i_crit_edge:      ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_deactivate.exit.i

do.end.i.i114:                                    ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 606, i32 noundef 9, ptr noundef null) #17
  br label %htb_deactivate.exit.i

htb_deactivate.exit.i:                            ; preds = %do.end.i.i114, %if.then83.i.htb_deactivate.exit.i_crit_edge
  tail call fastcc void @htb_deactivate_prios(ptr noundef %privdata.i, ptr noundef nonnull %cl.1158.i) #17
  %140 = ptrtoint ptr %prio_activity.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %prio_activity.i.i, align 8
  br label %while.body.lr.ph.i.i115

while.body.lr.ph.i.i115:                          ; preds = %htb_deactivate.exit.i, %if.end78.i.while.body.lr.ph.i.i115_crit_edge
  %141 = ptrtoint ptr %cb.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cb.i.i.i.i103, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %diff.i.i) #17
  br label %while.body.i.i116

while.body.i.i116:                                ; preds = %if.end26.i.i.while.body.i.i116_crit_edge, %while.body.lr.ph.i.i115
  %cl.addr.088.i.i = phi ptr [ %cl.1158.i, %while.body.lr.ph.i.i115 ], [ %252, %if.end26.i.i.while.body.i.i116_crit_edge ]
  %143 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %now, align 8
  %t_c.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 20
  %145 = ptrtoint ptr %t_c.i.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %t_c.i.i, align 8
  %sub.i.i = sub i64 %144, %146
  %mbuffer.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 5
  %147 = ptrtoint ptr %mbuffer.i.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %mbuffer.i.i, align 16
  %149 = tail call i64 @llvm.smin.i64(i64 %sub.i.i, i64 %148) #17
  %level1.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 11
  %150 = ptrtoint ptr %level1.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %level1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %level.0142)
  %cmp2.not.i.i = icmp slt i32 %151, %level.0142
  br i1 %cmp2.not.i.i, label %if.else.i.i121, label %if.then.i.i117

if.then.i.i117:                                   ; preds = %while.body.i.i116
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %level.0142)
  %cmp4.i.i = icmp eq i32 %151, %level.0142
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.then.i.i117.if.end.i.i119_crit_edge

if.then.i.i117.if.end.i.i119_crit_edge:           ; preds = %if.then.i.i117
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i119

if.then5.i.i:                                     ; preds = %if.then.i.i117
  call void @__sanitizer_cov_trace_pc() #19
  %xstats.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 17
  %152 = ptrtoint ptr %xstats.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %xstats.i.i, align 32
  %inc.i.i118 = add i32 %153, 1
  store i32 %inc.i.i118, ptr %xstats.i.i, align 32
  br label %if.end.i.i119

if.end.i.i119:                                    ; preds = %if.then5.i.i, %if.then.i.i117.if.end.i.i119_crit_edge
  %tokens.i.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 18
  %154 = ptrtoint ptr %tokens.i.i.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %tokens.i.i.i, align 8
  %buffer.i.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 3
  %156 = ptrtoint ptr %buffer.i.i.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %buffer.i.i.i, align 64
  %overhead.i.i.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 1, i32 2
  %158 = ptrtoint ptr %overhead.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %overhead.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %159 to i32
  %add.i.i.i.i = add i32 %142, %conv.i.i.i.i
  %mpu.i.i.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 1, i32 3
  %160 = ptrtoint ptr %mpu.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %mpu.i.i.i.i, align 2
  %conv1.i.i.i.i = zext i16 %161 to i32
  %162 = tail call i32 @llvm.umax.i32(i32 %add.i.i.i.i, i32 %conv1.i.i.i.i) #17
  %linklayer.i.i.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 1, i32 4
  %163 = ptrtoint ptr %linklayer.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %linklayer.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %164)
  %cmp6.i.i.i.i = icmp eq i8 %164, 2
  br i1 %cmp6.i.i.i.i, label %if.then9.i.i.i.i, label %if.end.i.i119.htb_accnt_tokens.exit.i.i_crit_edge, !prof !118

if.end.i.i119.htb_accnt_tokens.exit.i.i_crit_edge: ; preds = %if.end.i.i119
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_accnt_tokens.exit.i.i

if.then9.i.i.i.i:                                 ; preds = %if.end.i.i119
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i.i.i = add i32 %162, 47
  %div.i.i.i.i = udiv i32 %sub.i.i.i.i, 48
  %mul.i.i.i.i = mul i32 %div.i.i.i.i, 53
  br label %htb_accnt_tokens.exit.i.i

htb_accnt_tokens.exit.i.i:                        ; preds = %if.then9.i.i.i.i, %if.end.i.i119.htb_accnt_tokens.exit.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ %mul.i.i.i.i, %if.then9.i.i.i.i ], [ %162, %if.end.i.i119.htb_accnt_tokens.exit.i.i_crit_edge ]
  %add.i.i.i = add i64 %155, %149
  %165 = tail call i64 @llvm.smin.i64(i64 %add.i.i.i, i64 %157) #17
  %conv16.i.i.i.i = zext i32 %.sink.i.i.i.i to i64
  %mult17.i.i.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 1, i32 1
  %166 = ptrtoint ptr %mult17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %mult17.i.i.i.i, align 8
  %conv18.i.i.i.i = zext i32 %167 to i64
  %mul19.i.i.i.i = mul nuw i64 %conv18.i.i.i.i, %conv16.i.i.i.i
  %shift20.i.i.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 1, i32 5
  %168 = ptrtoint ptr %shift20.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %shift20.i.i.i.i, align 1
  %sh_prom22.i.i.i.i = zext i8 %169 to i64
  %shr23.i.i.i.i = lshr i64 %mul19.i.i.i.i, %sh_prom22.i.i.i.i
  %sub.i.i.i = sub i64 %165, %shr23.i.i.i.i
  %170 = ptrtoint ptr %mbuffer.i.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %mbuffer.i.i, align 16
  %sub2.i.i.i = sub i64 0, %171
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i.i, i64 %sub2.i.i.i)
  %cmp3.not.i.i.i = icmp sgt i64 %sub.i.i.i, %sub2.i.i.i
  %sub6.i.i.i = sub i64 1, %171
  %toks.1.i.i.i = select i1 %cmp3.not.i.i.i, i64 %sub.i.i.i, i64 %sub6.i.i.i
  %172 = ptrtoint ptr %tokens.i.i.i to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %toks.1.i.i.i, ptr %tokens.i.i.i, align 8
  br label %if.end8.i.i

if.else.i.i121:                                   ; preds = %while.body.i.i116
  call void @__sanitizer_cov_trace_pc() #19
  %borrows.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 17, i32 1
  %173 = ptrtoint ptr %borrows.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %borrows.i.i, align 4
  %inc7.i.i = add i32 %174, 1
  store i32 %inc7.i.i, ptr %borrows.i.i, align 4
  %tokens.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 18
  %175 = ptrtoint ptr %tokens.i.i to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %tokens.i.i, align 8
  %add.i.i120 = add i64 %176, %149
  store i64 %add.i.i120, ptr %tokens.i.i, align 8
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.else.i.i121, %htb_accnt_tokens.exit.i.i
  %ctokens.i.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 19
  %177 = ptrtoint ptr %ctokens.i.i.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %ctokens.i.i.i, align 128
  %cbuffer.i.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 4
  %179 = ptrtoint ptr %cbuffer.i.i.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %cbuffer.i.i.i, align 8
  %overhead.i.i59.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 2, i32 2
  %181 = ptrtoint ptr %overhead.i.i59.i.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %overhead.i.i59.i.i, align 4
  %conv.i.i60.i.i = zext i16 %182 to i32
  %add.i.i61.i.i = add i32 %142, %conv.i.i60.i.i
  %mpu.i.i62.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 2, i32 3
  %183 = ptrtoint ptr %mpu.i.i62.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %mpu.i.i62.i.i, align 2
  %conv1.i.i63.i.i = zext i16 %184 to i32
  %185 = tail call i32 @llvm.umax.i32(i32 %add.i.i61.i.i, i32 %conv1.i.i63.i.i) #17
  %linklayer.i.i64.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 2, i32 4
  %186 = ptrtoint ptr %linklayer.i.i64.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %linklayer.i.i64.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %187)
  %cmp6.i.i65.i.i = icmp eq i8 %187, 2
  br i1 %cmp6.i.i65.i.i, label %if.then9.i.i69.i.i, label %if.end8.i.i.htb_accnt_ctokens.exit.i.i_crit_edge, !prof !118

if.end8.i.i.htb_accnt_ctokens.exit.i.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_accnt_ctokens.exit.i.i

if.then9.i.i69.i.i:                               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i66.i.i = add i32 %185, 47
  %div.i.i67.i.i = udiv i32 %sub.i.i66.i.i, 48
  %mul.i.i68.i.i = mul i32 %div.i.i67.i.i, 53
  br label %htb_accnt_ctokens.exit.i.i

htb_accnt_ctokens.exit.i.i:                       ; preds = %if.then9.i.i69.i.i, %if.end8.i.i.htb_accnt_ctokens.exit.i.i_crit_edge
  %.sink.i.i70.i.i = phi i32 [ %mul.i.i68.i.i, %if.then9.i.i69.i.i ], [ %185, %if.end8.i.i.htb_accnt_ctokens.exit.i.i_crit_edge ]
  %add.i71.i.i = add i64 %178, %149
  %188 = tail call i64 @llvm.smin.i64(i64 %add.i71.i.i, i64 %180) #17
  %conv16.i.i72.i.i = zext i32 %.sink.i.i70.i.i to i64
  %mult17.i.i73.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 2, i32 1
  %189 = ptrtoint ptr %mult17.i.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %mult17.i.i73.i.i, align 8
  %conv18.i.i74.i.i = zext i32 %190 to i64
  %mul19.i.i75.i.i = mul nuw i64 %conv18.i.i74.i.i, %conv16.i.i72.i.i
  %shift20.i.i76.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 2, i32 5
  %191 = ptrtoint ptr %shift20.i.i76.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %shift20.i.i76.i.i, align 1
  %sh_prom22.i.i77.i.i = zext i8 %192 to i64
  %shr23.i.i78.i.i = lshr i64 %mul19.i.i75.i.i, %sh_prom22.i.i77.i.i
  %sub.i79.i.i = sub i64 %188, %shr23.i.i78.i.i
  %193 = ptrtoint ptr %mbuffer.i.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %mbuffer.i.i, align 16
  %sub2.i81.i.i = sub i64 0, %194
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i79.i.i, i64 %sub2.i81.i.i)
  %cmp3.not.i82.i.i = icmp sgt i64 %sub.i79.i.i, %sub2.i81.i.i
  %sub6.i83.i.i = sub i64 1, %194
  %toks.1.i84.i.i = select i1 %cmp3.not.i82.i.i, i64 %sub.i79.i.i, i64 %sub6.i83.i.i
  %195 = ptrtoint ptr %ctokens.i.i.i to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %toks.1.i84.i.i, ptr %ctokens.i.i.i, align 128
  %196 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %now, align 8
  %198 = ptrtoint ptr %t_c.i.i to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 %197, ptr %t_c.i.i, align 8
  %cmode.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 24
  %199 = ptrtoint ptr %cmode.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %cmode.i.i, align 4
  %201 = ptrtoint ptr %diff.i.i to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 0, ptr %diff.i.i, align 8
  call fastcc void @htb_change_class_mode(ptr noundef %privdata.i, ptr noundef nonnull %cl.addr.088.i.i, ptr noundef nonnull %diff.i.i) #17
  %202 = ptrtoint ptr %cmode.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %cmode.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %200, i32 %203)
  %cmp12.not.i.i = icmp eq i32 %200, %203
  br i1 %cmp12.not.i.i, label %htb_accnt_ctokens.exit.i.i.if.end22.i.i_crit_edge, label %if.then13.i.i

htb_accnt_ctokens.exit.i.i.if.end22.i.i_crit_edge: ; preds = %htb_accnt_ctokens.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22.i.i

if.then13.i.i:                                    ; preds = %htb_accnt_ctokens.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %200)
  %cmp14.not.i.i = icmp eq i32 %200, 2
  br i1 %cmp14.not.i.i, label %if.then13.i.i.if.end17.i.i_crit_edge, label %if.then15.i.i

if.then13.i.i.if.end17.i.i_crit_edge:             ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17.i.i

if.then15.i.i:                                    ; preds = %if.then13.i.i
  %pq_node.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 25
  %204 = ptrtoint ptr %pq_node.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %pq_node.i.i, align 4
  %206 = ptrtoint ptr %pq_node.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %205, i32 %206)
  %cmp.i.i.i = icmp eq i32 %205, %206
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.else.i.i.i

do.end.i.i.i:                                     ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 375, i32 noundef 9, ptr noundef null) #17
  br label %if.end17thread-pre-split.i.i

if.else.i.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %207 = ptrtoint ptr %level1.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %level1.i.i, align 4
  %arrayidx.i.i122 = getelementptr %struct.htb_sched, ptr %privdata.i, i32 0, i32 15, i32 %208
  tail call void @rb_erase(ptr noundef %pq_node.i.i, ptr noundef %arrayidx.i.i122) #17
  %209 = ptrtoint ptr %pq_node.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %206, ptr %pq_node.i.i, align 4
  br label %if.end17thread-pre-split.i.i

if.end17thread-pre-split.i.i:                     ; preds = %if.else.i.i.i, %do.end.i.i.i
  %210 = ptrtoint ptr %cmode.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %.pr.i.i = load i32, ptr %cmode.i.i, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.end17thread-pre-split.i.i, %if.then13.i.i.if.end17.i.i_crit_edge
  %211 = phi i32 [ %.pr.i.i, %if.end17thread-pre-split.i.i ], [ %203, %if.then13.i.i.if.end17.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %211)
  %cmp19.not.i.i = icmp eq i32 %211, 2
  br i1 %cmp19.not.i.i, label %if.end17.i.i.if.end22.i.i_crit_edge, label %if.then20.i.i

if.end17.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22.i.i

if.then20.i.i:                                    ; preds = %if.end17.i.i
  %212 = ptrtoint ptr %diff.i.i to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %diff.i.i, align 8
  %214 = ptrtoint ptr %level1.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %level1.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.htb_sched, ptr %privdata.i, i32 0, i32 15, i32 %215
  %216 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %now, align 8
  %add.i85.i.i = add i64 %217, %213
  %pq_key.i.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 22
  %218 = ptrtoint ptr %pq_key.i.i.i to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 %add.i85.i.i, ptr %pq_key.i.i.i, align 16
  %219 = load i64, ptr %now, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i85.i.i, i64 %219)
  %cmp.i86.i.i = icmp eq i64 %add.i85.i.i, %219
  br i1 %cmp.i86.i.i, label %if.then.i.i.i, label %if.then20.i.i.if.end.i.i.i_crit_edge

if.then20.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc.i.i.i = add i64 %add.i85.i.i, 1
  %220 = ptrtoint ptr %pq_key.i.i.i to i32
  call void @__asan_store8_noabort(i32 %220)
  store i64 %inc.i.i.i, ptr %pq_key.i.i.i, align 16
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then20.i.i.if.end.i.i.i_crit_edge
  %arrayidx5.i.i.i = getelementptr %struct.htb_sched, ptr %privdata.i, i32 0, i32 13, i32 %215
  %221 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %arrayidx5.i.i.i, align 8
  %223 = ptrtoint ptr %pq_key.i.i.i to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %pq_key.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %222, i64 %224)
  %cmp7.i.i.i = icmp sgt i64 %222, %224
  br i1 %cmp7.i.i.i, label %if.then8.i.i.i, label %if.end.i.i.i.if.end13.i.i.i_crit_edge

if.end.i.i.i.if.end13.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %225 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store8_noabort(i32 %225)
  store i64 %224, ptr %arrayidx5.i.i.i, align 8
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %if.then8.i.i.i, %if.end.i.i.i.if.end13.i.i.i_crit_edge
  %226 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not46.i.i.i = icmp eq ptr %227, null
  br i1 %tobool.not46.i.i.i, label %if.end13.i.i.i.htb_add_to_wait_tree.exit.i.i_crit_edge, label %while.body.lr.ph.i.i.i

if.end13.i.i.i.htb_add_to_wait_tree.exit.i.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_add_to_wait_tree.exit.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end13.i.i.i
  %228 = ptrtoint ptr %pq_key.i.i.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %pq_key.i.i.i, align 16
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %230 = phi ptr [ %227, %while.body.lr.ph.i.i.i ], [ %234, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %pq_key15.i.i.i = getelementptr i8, ptr %230, i32 -16
  %231 = ptrtoint ptr %pq_key15.i.i.i to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %pq_key15.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %229, i64 %232)
  %cmp16.not.i.i.i = icmp slt i64 %229, %232
  %rb_right.i.i.i123 = getelementptr inbounds %struct.rb_node, ptr %230, i32 0, i32 1
  %rb_left.i.i.i124 = getelementptr inbounds %struct.rb_node, ptr %230, i32 0, i32 2
  %p.1.i.i.i = select i1 %cmp16.not.i.i.i, ptr %rb_left.i.i.i124, ptr %rb_right.i.i.i123
  %233 = ptrtoint ptr %p.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %p.1.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %234, null
  br i1 %tobool.not.i.i.i, label %while.cond.while.end_crit_edge.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i.i

while.cond.while.end_crit_edge.i.i.i:             ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %phi.cast.le.i.i.i = ptrtoint ptr %230 to i32
  br label %htb_add_to_wait_tree.exit.i.i

htb_add_to_wait_tree.exit.i.i:                    ; preds = %while.cond.while.end_crit_edge.i.i.i, %if.end13.i.i.i.htb_add_to_wait_tree.exit.i.i_crit_edge
  %parent.0.lcssa.i.i.i = phi i32 [ %phi.cast.le.i.i.i, %while.cond.while.end_crit_edge.i.i.i ], [ 0, %if.end13.i.i.i.htb_add_to_wait_tree.exit.i.i_crit_edge ]
  %p.0.lcssa.i.i.i = phi ptr [ %p.1.i.i.i, %while.cond.while.end_crit_edge.i.i.i ], [ %arrayidx.i.i.i, %if.end13.i.i.i.htb_add_to_wait_tree.exit.i.i_crit_edge ]
  %pq_node.i.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 25
  %235 = ptrtoint ptr %pq_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %parent.0.lcssa.i.i.i, ptr %pq_node.i.i.i, align 4
  %rb_right.i.i.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 25, i32 1
  %236 = ptrtoint ptr %rb_right.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr null, ptr %rb_right.i.i.i.i, align 4
  %rb_left.i.i.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 25, i32 2
  %237 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr null, ptr %rb_left.i.i.i.i, align 4
  %238 = ptrtoint ptr %p.0.lcssa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %pq_node.i.i.i, ptr %p.0.lcssa.i.i.i, align 4
  %239 = ptrtoint ptr %level1.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %level1.i.i, align 4
  %arrayidx22.i.i.i = getelementptr %struct.htb_sched, ptr %privdata.i, i32 0, i32 15, i32 %240
  tail call void @rb_insert_color(ptr noundef %pq_node.i.i.i, ptr noundef %arrayidx22.i.i.i) #17
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %htb_add_to_wait_tree.exit.i.i, %if.end17.i.i.if.end22.i.i_crit_edge, %htb_accnt_ctokens.exit.i.i.if.end22.i.i_crit_edge
  %241 = ptrtoint ptr %level1.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %level1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool24.not.i.i = icmp eq i32 %242, 0
  br i1 %tobool24.not.i.i, label %if.end22.i.i.if.end26.i.i_crit_edge, label %if.then25.i.i

if.end22.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26.i.i

if.then25.i.i:                                    ; preds = %if.end22.i.i
  %bstats.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 15
  %243 = ptrtoint ptr %cb.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %cb.i.i.i.i103, align 4
  %245 = ptrtoint ptr %end.i.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %end.i.i.i.i104, align 4
  %gso_size.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %246, i32 0, i32 4
  %247 = ptrtoint ptr %gso_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %gso_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %248)
  %tobool.i.not.i.i.i = icmp eq i16 %248, 0
  br i1 %tobool.i.not.i.i.i, label %if.then25.i.i.bstats_update.exit.i.i_crit_edge, label %cond.true.i.i.i

if.then25.i.i.bstats_update.exit.i.i_crit_edge:   ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bstats_update.exit.i.i

cond.true.i.i.i:                                  ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %gso_segs.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %246, i32 0, i32 5
  %249 = ptrtoint ptr %gso_segs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %gso_segs.i.i.i, align 2
  %conv4.i.i.i = zext i16 %250 to i32
  br label %bstats_update.exit.i.i

bstats_update.exit.i.i:                           ; preds = %cond.true.i.i.i, %if.then25.i.i.bstats_update.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv4.i.i.i, %cond.true.i.i.i ], [ 1, %if.then25.i.i.bstats_update.exit.i.i_crit_edge ]
  %conv.i.i.i = zext i32 %244 to i64
  tail call fastcc void @_bstats_update(ptr noundef %bstats.i.i, i64 noundef %conv.i.i.i, i32 noundef %cond.i.i.i) #17
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %bstats_update.exit.i.i, %if.end22.i.i.if.end26.i.i_crit_edge
  %parent.i.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.088.i.i, i32 0, i32 13
  %251 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i141.i = icmp eq ptr %252, null
  br i1 %tobool.not.i141.i, label %htb_charge_class.exit.i, label %if.end26.i.i.while.body.i.i116_crit_edge

if.end26.i.i.while.body.i.i116_crit_edge:         ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i116

htb_charge_class.exit.i:                          ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %diff.i.i) #17
  br label %htb_dequeue_tree.exit

htb_dequeue_tree.exit:                            ; preds = %htb_charge_class.exit.i, %cond.end.i.htb_dequeue_tree.exit_crit_edge, %cleanup.i101.htb_dequeue_tree.exit_crit_edge, %htb_deactivate.exit.htb_dequeue_tree.exit_crit_edge, %do.body.i.htb_dequeue_tree.exit_crit_edge
  %retval.3.i = phi ptr [ %call28.i, %htb_charge_class.exit.i ], [ null, %cleanup.i101.htb_dequeue_tree.exit_crit_edge ], [ null, %htb_deactivate.exit.htb_dequeue_tree.exit_crit_edge ], [ null, %cond.end.i.htb_dequeue_tree.exit_crit_edge ], [ null, %do.body.i.htb_dequeue_tree.exit_crit_edge ]
  %cmp30.not = icmp eq ptr %retval.3.i, null
  br i1 %cmp30.not, label %htb_dequeue_tree.exit.while.cond_crit_edge, label %htb_dequeue_tree.exit.ok_crit_edge

htb_dequeue_tree.exit.ok_crit_edge:               ; preds = %htb_dequeue_tree.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %ok

htb_dequeue_tree.exit.while.cond_crit_edge:       ; preds = %htb_dequeue_tree.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond

for.inc:                                          ; preds = %while.cond
  %inc = add nuw nsw i32 %level.0142, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc
  %253 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %now, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %89, i64 %254)
  %cmp40 = icmp sgt i64 %89, %254
  br i1 %cmp40, label %if.then47, label %if.else, !prof !120

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 3
  tail call void @qdisc_watchdog_schedule_range_ns(ptr noundef %watchdog, i64 noundef %89, i64 noundef 0) #17
  br label %cleanup50

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %work = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %255 = load ptr, ptr @system_wq, align 4
  %call.i.i125 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %255, ptr noundef %work) #17
  br label %cleanup50

cleanup50:                                        ; preds = %if.else, %if.then47, %if.end.cleanup50_crit_edge, %qdisc_bstats_update.exit
  %retval.0 = phi ptr [ %skb.0, %qdisc_bstats_update.exit ], [ null, %if.then47 ], [ null, %if.else ], [ null, %if.end.cleanup50_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qdisc_peek_dequeued(ptr noundef %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not15 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not15
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then:                                          ; preds = %entry
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %3(ptr noundef %sch) #17
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gso_skb, align 4
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %call1, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %call1, i32 0, i32 1
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
define internal i32 @htb_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  %offload_opt = alloca %struct.tc_htb_qopt_offload, align 8
  %tb = alloca [10 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %offload_opt) #17
  %4 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 2
  %6 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 3
  %7 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 4
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %8 = call ptr @memset(ptr %offload_opt, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tb) #17
  %9 = call ptr @memset(ptr %tb, i32 255, i32 40)
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 3
  tail call void @qdisc_watchdog_init(ptr noundef %watchdog, ptr noundef %sch) #17
  %work = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #17
  %10 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.28, ptr noundef nonnull @htb_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry5 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %11 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 12
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @htb_work_func, ptr %func, align 4
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.cleanup118_crit_edge, label %if.end

entry.cleanup118_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup118

if.end:                                           ; preds = %entry
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %filter_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %call7 = tail call i32 @tcf_block_get(ptr noundef %block, ptr noundef %filter_list, ptr noundef %sch, ptr noundef %extack) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup118_crit_edge

if.end.cleanup118_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup118

if.end10:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %14 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %15 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 9, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @htb_policy, i32 noundef 0, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end10.cleanup118_crit_edge, label %if.end13

if.end10.cleanup118_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup118

if.end13:                                         ; preds = %if.end10
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %if.end13.cleanup118_crit_edge, label %if.end16

if.end13.cleanup118_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup118

if.end16:                                         ; preds = %if.end13
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp19.not = icmp eq i32 %19, 3
  br i1 %cmp19.not, label %if.end21, label %if.end16.cleanup118_crit_edge

if.end16.cleanup118_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup118

if.end21:                                         ; preds = %if.end16
  %arrayidx22 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 9
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx22, align 4
  %tobool.i.not = icmp eq ptr %21, null
  br i1 %tobool.i.not, label %if.end21.if.end54_crit_edge, label %if.then26

if.end21.if.end54_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54

if.then26:                                        ; preds = %if.end21
  %parent = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp27.not = icmp eq i32 %23, -1
  br i1 %cmp27.not, label %if.end35, label %do.body29

do.body29:                                        ; preds = %if.then26
  call void @do_trace_netlink_extack(ptr noundef nonnull @htb_init.__msg) #17
  %tobool30.not = icmp eq ptr %extack, null
  br i1 %tobool30.not, label %do.body29.cleanup118_crit_edge, label %if.then31

do.body29.cleanup118_crit_edge:                   ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup118

if.then31:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #19
  %24 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @htb_init.__msg, ptr %extack, align 4
  br label %cleanup118

if.end35:                                         ; preds = %if.then26
  %features.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %25 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %features.i, align 16
  %and.i = and i64 %26, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i196.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i196.not, label %if.end35.do.body39_crit_edge, label %lor.lhs.false

if.end35.do.body39_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body39

lor.lhs.false:                                    ; preds = %if.end35
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %27 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev_ops, align 8
  %ndo_setup_tc = getelementptr inbounds %struct.net_device_ops, ptr %28, i32 0, i32 42
  %29 = ptrtoint ptr %ndo_setup_tc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ndo_setup_tc, align 4
  %tobool37.not = icmp eq ptr %30, null
  br i1 %tobool37.not, label %lor.lhs.false.do.body39_crit_edge, label %if.end47

lor.lhs.false.do.body39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body39

do.body39:                                        ; preds = %lor.lhs.false.do.body39_crit_edge, %if.end35.do.body39_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @htb_init.__msg.29) #17
  %tobool41.not = icmp eq ptr %extack, null
  br i1 %tobool41.not, label %do.body39.cleanup118_crit_edge, label %if.then42

do.body39.cleanup118_crit_edge:                   ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup118

if.then42:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @htb_init.__msg.29, ptr %extack, align 4
  br label %cleanup118

if.end47:                                         ; preds = %lor.lhs.false
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 105
  %32 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %real_num_tx_queues, align 8
  %num_direct_qdiscs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 36
  %34 = ptrtoint ptr %num_direct_qdiscs to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %num_direct_qdiscs, align 4
  %35 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 4) #17
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !118

kcalloc.exit.thread:                              ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  %direct_qdiscs200 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 32
  %37 = ptrtoint ptr %direct_qdiscs200 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %direct_qdiscs200, align 8
  br label %cleanup118

if.end7.i.i:                                      ; preds = %if.end47
  %38 = extractvalue { i32, i1 } %35, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %38, i32 noundef 3520) #21
  %direct_qdiscs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 32
  %39 = ptrtoint ptr %direct_qdiscs to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call8.i.i, ptr %direct_qdiscs, align 8
  %tobool51.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool51.not, label %if.end7.i.i.cleanup118_crit_edge, label %if.end7.i.i.if.end54_crit_edge

if.end7.i.i.if.end54_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54

if.end7.i.i.cleanup118_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup118

if.end54:                                         ; preds = %if.end7.i.i.if.end54_crit_edge, %if.end21.if.end54_crit_edge
  %call55 = call i32 @qdisc_class_hash_init(ptr noundef %privdata.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end54.err_free_direct_qdiscs_crit_edge, label %if.end58

if.end54.err_free_direct_qdiscs_crit_edge:        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free_direct_qdiscs

if.end58:                                         ; preds = %if.end54
  %direct_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %40 = ptrtoint ptr %direct_queue to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %direct_queue, align 4
  %tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %41 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %tail.i, align 4
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 28
  %42 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %qlen.i, align 4
  %arrayidx59 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 5
  %43 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx59, align 4
  %tobool60.not = icmp eq ptr %44, null
  br i1 %tobool60.not, label %if.else, label %if.then61

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i197 = getelementptr i8, ptr %44, i32 4
  br label %if.end66

if.else:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  %45 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_queue.i, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 128
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 107
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then61
  %.sink.in = phi ptr [ %tx_queue_len, %if.else ], [ %add.ptr.i.i197, %if.then61 ]
  %49 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %49)
  %.sink = load i32, ptr %.sink.in, align 4
  %50 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink, ptr %50, align 4
  %rate2quantum = getelementptr i8, ptr %17, i32 8
  %52 = ptrtoint ptr %rate2quantum to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rate2quantum, align 4
  %rate2quantum67 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %54 = call i32 @llvm.smax.i32(i32 %53, i32 1)
  %55 = ptrtoint ptr %rate2quantum67 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %rate2quantum67, align 4
  %defcls = getelementptr i8, ptr %17, i32 12
  %56 = ptrtoint ptr %defcls to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %defcls, align 4
  %defcls72 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %58 = ptrtoint ptr %defcls72 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %defcls72, align 8
  br i1 %tobool.i.not, label %if.end66.cleanup118_crit_edge, label %for.cond.preheader

if.end66.cleanup118_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup118

for.cond.preheader:                               ; preds = %if.end66
  %num_direct_qdiscs76 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 36
  %59 = ptrtoint ptr %num_direct_qdiscs76 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_direct_qdiscs76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp77212.not = icmp eq i32 %60, 0
  br i1 %cmp77212.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %direct_qdiscs83 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ntx.0213 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %61 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %62, i32 %ntx.0213
  %63 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %handle, align 32
  %and = and i32 %64, -65536
  %call79 = call ptr @qdisc_create_dflt(ptr noundef %arrayidx.i, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %and, ptr noundef %extack) #17
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %for.body.err_free_qdiscs_crit_edge, label %for.inc

for.body.err_free_qdiscs_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free_qdiscs

for.inc:                                          ; preds = %for.body
  %dep_map.i = getelementptr inbounds %struct.Qdisc, ptr %call79, i32 0, i32 17, i32 3, i32 0, i32 0, i32 4
  %wait_type_inner.i = getelementptr inbounds %struct.Qdisc, ptr %call79, i32 0, i32 17, i32 3, i32 0, i32 0, i32 4, i32 4
  %65 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %wait_type_inner.i, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @htb_set_lockdep_class_child.child_key, i32 noundef 0, i8 noundef zeroext %66, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %67 = ptrtoint ptr %direct_qdiscs83 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %direct_qdiscs83, align 8
  %arrayidx84 = getelementptr ptr, ptr %68, i32 %ntx.0213
  %69 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call79, ptr %arrayidx84, align 4
  %flags = getelementptr inbounds %struct.Qdisc, ptr %call79, i32 0, i32 2
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags, align 8
  %or85 = or i32 %71, 80
  store i32 %or85, ptr %flags, align 8
  %inc = add nuw i32 %ntx.0213, 1
  %72 = ptrtoint ptr %num_direct_qdiscs76 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_direct_qdiscs76, align 4
  %cmp77 = icmp ult i32 %inc, %73
  br i1 %cmp77, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %flags87 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %74 = ptrtoint ptr %flags87 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags87, align 8
  %or88 = or i32 %75, 8
  store i32 %or88, ptr %flags87, align 8
  %handle91 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %76 = ptrtoint ptr %handle91 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %handle91, align 32
  %shr = lshr i32 %77, 16
  %78 = ptrtoint ptr %defcls72 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %defcls72, align 8
  %conv = trunc i32 %79 to i16
  %80 = ptrtoint ptr %offload_opt to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %extack, ptr %offload_opt, align 8
  %81 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %4, align 4
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %shr, ptr %5, align 8
  %83 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv, ptr %6, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %84 = call ptr @memset(ptr %7, i32 0, i32 18)
  %85 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %86, i32 0, i32 42
  %87 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ndo_setup_tc.i, align 4
  %call.i = call i32 %88(ptr noundef %3, i32 noundef 18, ptr noundef nonnull %offload_opt) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool96.not = icmp eq i32 %call.i, 0
  br i1 %tobool96.not, label %if.end98, label %for.end.err_free_qdiscs_crit_edge

for.end.err_free_qdiscs_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free_qdiscs

if.end98:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %offload99 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 40
  %89 = ptrtoint ptr %offload99 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %offload99, align 8
  br label %cleanup118

err_free_qdiscs:                                  ; preds = %for.end.err_free_qdiscs_crit_edge, %for.body.err_free_qdiscs_crit_edge
  %err.2 = phi i32 [ %call.i, %for.end.err_free_qdiscs_crit_edge ], [ -12, %for.body.err_free_qdiscs_crit_edge ]
  %direct_qdiscs104 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 32
  %90 = ptrtoint ptr %num_direct_qdiscs76 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_direct_qdiscs76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp102214.not = icmp eq i32 %91, 0
  br i1 %cmp102214.not, label %err_free_qdiscs.for.end112_crit_edge, label %err_free_qdiscs.land.rhs_crit_edge

err_free_qdiscs.land.rhs_crit_edge:               ; preds = %err_free_qdiscs
  br label %land.rhs

err_free_qdiscs.for.end112_crit_edge:             ; preds = %err_free_qdiscs
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end112

land.rhs:                                         ; preds = %for.body107.land.rhs_crit_edge, %err_free_qdiscs.land.rhs_crit_edge
  %ntx.1215 = phi i32 [ %inc111, %for.body107.land.rhs_crit_edge ], [ 0, %err_free_qdiscs.land.rhs_crit_edge ]
  %92 = ptrtoint ptr %direct_qdiscs104 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %direct_qdiscs104, align 8
  %arrayidx105 = getelementptr ptr, ptr %93, i32 %ntx.1215
  %94 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx105, align 4
  %tobool106.not = icmp eq ptr %95, null
  br i1 %tobool106.not, label %land.rhs.for.end112_crit_edge, label %for.body107

land.rhs.for.end112_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end112

for.body107:                                      ; preds = %land.rhs
  call void @qdisc_put(ptr noundef nonnull %95) #17
  %inc111 = add nuw i32 %ntx.1215, 1
  %96 = ptrtoint ptr %num_direct_qdiscs76 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_direct_qdiscs76, align 4
  %cmp102 = icmp ult i32 %inc111, %97
  br i1 %cmp102, label %for.body107.land.rhs_crit_edge, label %for.body107.for.end112_crit_edge

for.body107.for.end112_crit_edge:                 ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end112

for.body107.land.rhs_crit_edge:                   ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

for.end112:                                       ; preds = %for.body107.for.end112_crit_edge, %land.rhs.for.end112_crit_edge, %err_free_qdiscs.for.end112_crit_edge
  call void @qdisc_class_hash_destroy(ptr noundef %privdata.i) #17
  %98 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %privdata.i, align 8
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %99 = ptrtoint ptr %hashsize to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %hashsize, align 4
  br label %err_free_direct_qdiscs

err_free_direct_qdiscs:                           ; preds = %for.end112, %if.end54.err_free_direct_qdiscs_crit_edge
  %err.3 = phi i32 [ %call55, %if.end54.err_free_direct_qdiscs_crit_edge ], [ %err.2, %for.end112 ]
  %direct_qdiscs116 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 32
  %100 = ptrtoint ptr %direct_qdiscs116 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %direct_qdiscs116, align 8
  call void @kfree(ptr noundef %101) #17
  %102 = ptrtoint ptr %direct_qdiscs116 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %direct_qdiscs116, align 8
  br label %cleanup118

cleanup118:                                       ; preds = %err_free_direct_qdiscs, %if.end98, %if.end66.cleanup118_crit_edge, %if.end7.i.i.cleanup118_crit_edge, %kcalloc.exit.thread, %if.then42, %do.body39.cleanup118_crit_edge, %if.then31, %do.body29.cleanup118_crit_edge, %if.end16.cleanup118_crit_edge, %if.end13.cleanup118_crit_edge, %if.end10.cleanup118_crit_edge, %if.end.cleanup118_crit_edge, %entry.cleanup118_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_free_direct_qdiscs ], [ 0, %if.end98 ], [ -22, %entry.cleanup118_crit_edge ], [ %call7, %if.end.cleanup118_crit_edge ], [ %call2.i, %if.end10.cleanup118_crit_edge ], [ -22, %if.end13.cleanup118_crit_edge ], [ -22, %if.end16.cleanup118_crit_edge ], [ -95, %if.then31 ], [ -95, %do.body29.cleanup118_crit_edge ], [ -95, %if.then42 ], [ -95, %do.body39.cleanup118_crit_edge ], [ -12, %if.end7.i.i.cleanup118_crit_edge ], [ 0, %if.end66.cleanup118_crit_edge ], [ -12, %kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tb) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %offload_opt) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htb_reset(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %0 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp54.not = icmp eq i32 %1, 0
  br i1 %cmp54.not, label %entry.for.end24_crit_edge, label %for.body.lr.ph

entry.for.end24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end24

for.body.lr.ph:                                   ; preds = %entry
  %offload = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 40
  br label %for.body

for.body:                                         ; preds = %for.inc23.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc23.for.body_crit_edge ]
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %privdata.i, align 8
  %arrayidx = getelementptr %struct.hlist_head, ptr %3, i32 %i.055
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -4
  %tobool4.not5156 = icmp eq ptr %add.ptr, null
  %tobool4.not51 = or i1 %tobool.not, %tobool4.not5156
  br i1 %tobool4.not51, label %for.body.for.inc23_crit_edge, label %for.body.for.body5_crit_edge

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body.for.inc23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc23

for.body5:                                        ; preds = %if.end12.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %cl.052 = phi ptr [ %add.ptr19, %if.end12.for.body5_crit_edge ], [ %add.ptr, %for.body.for.body5_crit_edge ]
  %level = getelementptr inbounds %struct.htb_class, ptr %cl.052, i32 0, i32 11
  %6 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #19
  %8 = getelementptr inbounds %struct.htb_class, ptr %cl.052, i32 0, i32 21
  %9 = call ptr @memset(ptr %8, i32 0, i32 96)
  br label %if.end12

if.else:                                          ; preds = %for.body5
  %q7 = getelementptr inbounds %struct.htb_class, ptr %cl.052, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %q7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %q7, align 16
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.else.if.end12_crit_edge, label %land.lhs.true

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

land.lhs.true:                                    ; preds = %if.else
  %12 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @qdisc_reset(ptr noundef nonnull %11) #17
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true.if.end12_crit_edge, %if.else.if.end12_crit_edge, %if.then
  %prio_activity = getelementptr inbounds %struct.htb_class, ptr %cl.052, i32 0, i32 23
  %14 = ptrtoint ptr %prio_activity to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %prio_activity, align 8
  %cmode = getelementptr inbounds %struct.htb_class, ptr %cl.052, i32 0, i32 24
  %15 = ptrtoint ptr %cmode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %cmode, align 4
  %hnode = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.052, i32 0, i32 1
  %16 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hnode, align 4
  %tobool15.not = icmp eq ptr %17, null
  %add.ptr19 = getelementptr i8, ptr %17, i32 -4
  %tobool4.not57 = icmp eq ptr %add.ptr19, null
  %tobool4.not = or i1 %tobool15.not, %tobool4.not57
  br i1 %tobool4.not, label %if.end12.for.inc23_crit_edge, label %if.end12.for.body5_crit_edge

if.end12.for.body5_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body5

if.end12.for.inc23_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc23

for.inc23:                                        ; preds = %if.end12.for.inc23_crit_edge, %for.body.for.inc23_crit_edge
  %inc = add nuw i32 %i.055, 1
  %18 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hashsize, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.inc23.for.body_crit_edge, label %for.inc23.for.end24_crit_edge

for.inc23.for.end24_crit_edge:                    ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end24

for.inc23.for.body_crit_edge:                     ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end24:                                        ; preds = %for.inc23.for.end24_crit_edge, %entry.for.end24_crit_edge
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 3
  tail call void @qdisc_watchdog_cancel(ptr noundef %watchdog) #17
  %direct_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %call.i = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %for.end24.if.end29.i_crit_edge

for.end24.if.end29.i_crit_edge:                   ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

land.rhs.i:                                       ; preds = %for.end24
  %.b50.i = load i1, ptr @__qdisc_reset_queue.__already_done, align 1
  br i1 %.b50.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !120

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__qdisc_reset_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1165, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 1165) #17
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %for.end24.if.end29.i_crit_edge
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 28
  %20 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool37.not.i = icmp eq i32 %21, 0
  br i1 %tobool37.not.i, label %if.end29.i.__qdisc_reset_queue.exit_crit_edge, label %if.then38.i

if.end29.i.__qdisc_reset_queue.exit_crit_edge:    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__qdisc_reset_queue.exit

if.then38.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %direct_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %direct_queue, align 4
  %tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i, align 4
  tail call void @rtnl_kfree_skbs(ptr noundef %23, ptr noundef %25) #17
  %26 = ptrtoint ptr %direct_queue to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %direct_queue, align 4
  %27 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %tail.i, align 4
  %28 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %qlen.i, align 4
  br label %__qdisc_reset_queue.exit

__qdisc_reset_queue.exit:                         ; preds = %if.then38.i, %if.end29.i.__qdisc_reset_queue.exit_crit_edge
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %29 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %qlen, align 8
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %30 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %backlog, align 4
  %row_mask = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19
  %31 = call ptr @memset(ptr %row_mask, i32 0, i32 832)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htb_destroy(ptr noundef %sch) #2 align 64 {
entry:
  %offload_opt = alloca %struct.tc_htb_qopt_offload, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %offload_opt) #17
  %4 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 2
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %work = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %6 = call ptr @memset(ptr %offload_opt, i32 255, i32 32)
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #17
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 3
  tail call void @qdisc_watchdog_cancel(ptr noundef %watchdog) #17
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %7 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %block, align 4
  tail call void @tcf_block_put(ptr noundef %8) #17
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %9 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp230.not = icmp eq i32 %10, 0
  br i1 %cmp230.not, label %entry.do.body.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body.preheader_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.preheader

do.body.preheader:                                ; preds = %for.inc21.do.body.preheader_crit_edge, %entry.do.body.preheader_crit_edge
  %offload = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 40
  %11 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %hashsize, align 4
  br label %do.body

for.body:                                         ; preds = %for.inc21.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0231 = phi i32 [ %inc, %for.inc21.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %12 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %privdata.i, align 8
  %arrayidx = getelementptr %struct.hlist_head, ptr %13, i32 %i.0231
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %15, null
  %add.ptr = getelementptr i8, ptr %15, i32 -4
  %tobool6.not228247 = icmp eq ptr %add.ptr, null
  %tobool6.not228 = or i1 %tobool.not, %tobool6.not228247
  br i1 %tobool6.not228, label %for.body.for.inc21_crit_edge, label %for.body.for.body7_crit_edge

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.body.for.inc21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc21

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %cl.0229 = phi ptr [ %add.ptr17, %for.body7.for.body7_crit_edge ], [ %add.ptr, %for.body.for.body7_crit_edge ]
  %block8 = getelementptr inbounds %struct.htb_class, ptr %cl.0229, i32 0, i32 9
  %16 = ptrtoint ptr %block8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %block8, align 4
  tail call void @tcf_block_put(ptr noundef %17) #17
  %18 = ptrtoint ptr %block8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %block8, align 4
  %hnode = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.0229, i32 0, i32 1
  %19 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hnode, align 4
  %tobool13.not = icmp eq ptr %20, null
  %add.ptr17 = getelementptr i8, ptr %20, i32 -4
  %tobool6.not253 = icmp eq ptr %add.ptr17, null
  %tobool6.not = or i1 %tobool13.not, %tobool6.not253
  br i1 %tobool6.not, label %for.body7.for.inc21_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body7

for.body7.for.inc21_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc21

for.inc21:                                        ; preds = %for.body7.for.inc21_crit_edge, %for.body.for.inc21_crit_edge
  %inc = add nuw i32 %i.0231, 1
  %21 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hashsize, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.inc21.for.body_crit_edge, label %for.inc21.do.body.preheader_crit_edge

for.inc21.do.body.preheader_crit_edge:            ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.preheader

for.inc21.for.body_crit_edge:                     ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %23 = phi i32 [ %.pr, %do.body.preheader ], [ %53, %do.cond.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp26239.not = icmp eq i32 %23, 0
  br i1 %cmp26239.not, label %do.body.if.end101_crit_edge, label %do.body.for.body27_crit_edge

do.body.for.body27_crit_edge:                     ; preds = %do.body
  br label %for.body27

do.body.if.end101_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

for.body27:                                       ; preds = %for.inc79.for.body27_crit_edge, %do.body.for.body27_crit_edge
  %nonempty.0.off0242 = phi i1 [ %nonempty.1.off0.lcssa, %for.inc79.for.body27_crit_edge ], [ false, %do.body.for.body27_crit_edge ]
  %changed.0.off0241 = phi i1 [ %changed.1.off0.lcssa, %for.inc79.for.body27_crit_edge ], [ false, %do.body.for.body27_crit_edge ]
  %i.1240 = phi i32 [ %inc80, %for.inc79.for.body27_crit_edge ], [ 0, %do.body.for.body27_crit_edge ]
  %24 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %privdata.i, align 8
  %arrayidx31 = getelementptr %struct.hlist_head, ptr %25, i32 %i.1240
  %26 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx31, align 4
  %tobool34.not = icmp eq ptr %27, null
  %add.ptr38 = getelementptr i8, ptr %27, i32 -4
  %tobool43.not232248 = icmp eq ptr %add.ptr38, null
  %tobool43.not232 = or i1 %tobool34.not, %tobool43.not232248
  br i1 %tobool43.not232, label %for.body27.for.inc79_crit_edge, label %for.body27.land.rhs_crit_edge

for.body27.land.rhs_crit_edge:                    ; preds = %for.body27
  br label %land.rhs

for.body27.for.inc79_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc79

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %for.body27.land.rhs_crit_edge
  %nonempty.1.off0237 = phi i1 [ %nonempty.2.off0, %cleanup.land.rhs_crit_edge ], [ %nonempty.0.off0242, %for.body27.land.rhs_crit_edge ]
  %changed.1.off0236 = phi i1 [ %changed.2.off0, %cleanup.land.rhs_crit_edge ], [ %changed.0.off0241, %for.body27.land.rhs_crit_edge ]
  %cl.1233 = phi ptr [ %add.ptr74, %cleanup.land.rhs_crit_edge ], [ %add.ptr38, %for.body27.land.rhs_crit_edge ]
  %hnode45 = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.1233, i32 0, i32 1
  %28 = ptrtoint ptr %hnode45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hnode45, align 4
  %30 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool50.not = icmp eq i8 %31, 0
  %level.i = getelementptr inbounds %struct.htb_class, ptr %cl.1233, i32 0, i32 11
  %32 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool50.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.rhs
  br i1 %tobool.not.i, label %if.then.i, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %if.then
  %q.i = getelementptr inbounds %struct.htb_class, ptr %cl.1233, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %q.i, align 16
  %tobool1.not.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i, label %if.then.i.cleanup.sink.split.sink.split.sink.split_crit_edge, label %if.then.i.cleanup.sink.split.sink.split_crit_edge, !prof !118

if.then.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.sink.split

if.then.i.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.sink.split.sink.split

if.end:                                           ; preds = %land.rhs
  br i1 %tobool.not.i, label %if.end53, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end53:                                         ; preds = %if.end
  %parent.i = getelementptr inbounds %struct.htb_class, ptr %cl.1233, i32 0, i32 13
  %36 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent.i, align 4
  %tobool.not.i207 = icmp eq ptr %37, null
  br i1 %tobool.not.i207, label %if.end53.htb_parent_last_child.exit_crit_edge, label %if.end.i208

if.end53.htb_parent_last_child.exit_crit_edge:    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_parent_last_child.exit

if.end.i208:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  %children.i = getelementptr inbounds %struct.htb_class, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %children.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp.i = icmp ult i32 %39, 2
  %..i = zext i1 %cmp.i to i32
  br label %htb_parent_last_child.exit

htb_parent_last_child.exit:                       ; preds = %if.end.i208, %if.end53.htb_parent_last_child.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end53.htb_parent_last_child.exit_crit_edge ], [ %..i, %if.end.i208 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool55 = icmp ne i32 %retval.0.i, 0
  %call57 = tail call fastcc i32 @htb_destroy_class_offload(ptr noundef %sch, ptr noundef nonnull %cl.1233, i1 noundef zeroext %tobool55, i1 noundef zeroext true, ptr noundef null)
  tail call void @qdisc_class_hash_remove(ptr noundef %privdata.i, ptr noundef nonnull %cl.1233) #17
  %40 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent.i, align 4
  %tobool60.not = icmp eq ptr %41, null
  br i1 %tobool60.not, label %htb_parent_last_child.exit.if.end63_crit_edge, label %if.then61

htb_parent_last_child.exit.if.end63_crit_edge:    ; preds = %htb_parent_last_child.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

if.then61:                                        ; preds = %htb_parent_last_child.exit
  call void @__sanitizer_cov_trace_pc() #19
  %children = getelementptr inbounds %struct.htb_class, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %children, align 16
  %dec = add i32 %43, -1
  store i32 %dec, ptr %children, align 16
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %htb_parent_last_child.exit.if.end63_crit_edge
  br i1 %tobool55, label %if.then65, label %if.end63.if.end66_crit_edge

if.end63.if.end66_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end66

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @htb_parent_to_leaf(ptr noundef %sch, ptr noundef nonnull %cl.1233, ptr noundef null)
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end63.if.end66_crit_edge
  %44 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i210 = icmp eq i32 %45, 0
  br i1 %tobool.not.i210, label %if.then.i213, label %if.end66.cleanup.sink.split_crit_edge

if.end66.cleanup.sink.split_crit_edge:            ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.then.i213:                                     ; preds = %if.end66
  %q.i211 = getelementptr inbounds %struct.htb_class, ptr %cl.1233, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %q.i211 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %q.i211, align 16
  %tobool1.not.i212 = icmp eq ptr %47, null
  br i1 %tobool1.not.i212, label %if.then.i213.cleanup.sink.split.sink.split.sink.split_crit_edge, label %if.then.i213.cleanup.sink.split.sink.split_crit_edge, !prof !118

if.then.i213.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then.i213
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.sink.split

if.then.i213.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.then.i213
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.sink.split.sink.split

cleanup.sink.split.sink.split.sink.split:         ; preds = %if.then.i213.cleanup.sink.split.sink.split.sink.split_crit_edge, %if.then.i.cleanup.sink.split.sink.split.sink.split_crit_edge
  %q.i211.sink.ph = phi ptr [ %q.i, %if.then.i.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ %q.i211, %if.then.i213.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %changed.2.off0.ph.ph.ph = phi i1 [ %changed.1.off0236, %if.then.i.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ true, %if.then.i213.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %nonempty.2.off0.ph.ph.ph = phi i1 [ %nonempty.1.off0237, %if.then.i.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ true, %if.then.i213.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1623, i32 noundef 9, ptr noundef null) #17
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %cleanup.sink.split.sink.split.sink.split, %if.then.i213.cleanup.sink.split.sink.split_crit_edge, %if.then.i.cleanup.sink.split.sink.split_crit_edge
  %q.i211.sink = phi ptr [ %q.i, %if.then.i.cleanup.sink.split.sink.split_crit_edge ], [ %q.i211, %if.then.i213.cleanup.sink.split.sink.split_crit_edge ], [ %q.i211.sink.ph, %cleanup.sink.split.sink.split.sink.split ]
  %changed.2.off0.ph.ph = phi i1 [ %changed.1.off0236, %if.then.i.cleanup.sink.split.sink.split_crit_edge ], [ true, %if.then.i213.cleanup.sink.split.sink.split_crit_edge ], [ %changed.2.off0.ph.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  %nonempty.2.off0.ph.ph = phi i1 [ %nonempty.1.off0237, %if.then.i.cleanup.sink.split.sink.split_crit_edge ], [ true, %if.then.i213.cleanup.sink.split.sink.split_crit_edge ], [ %nonempty.2.off0.ph.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  %48 = ptrtoint ptr %q.i211.sink to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %q.i211.sink, align 16
  tail call void @qdisc_put(ptr noundef %49) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end66.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %changed.2.off0.ph = phi i1 [ %changed.1.off0236, %if.then.cleanup.sink.split_crit_edge ], [ true, %if.end66.cleanup.sink.split_crit_edge ], [ %changed.2.off0.ph.ph, %cleanup.sink.split.sink.split ]
  %nonempty.2.off0.ph = phi i1 [ %nonempty.1.off0237, %if.then.cleanup.sink.split_crit_edge ], [ true, %if.end66.cleanup.sink.split_crit_edge ], [ %nonempty.2.off0.ph.ph, %cleanup.sink.split.sink.split ]
  %rate_est.i216 = getelementptr inbounds %struct.htb_class, ptr %cl.1233, i32 0, i32 14
  tail call void @gen_kill_estimator(ptr noundef %rate_est.i216) #17
  %block.i217 = getelementptr inbounds %struct.htb_class, ptr %cl.1233, i32 0, i32 9
  %50 = ptrtoint ptr %block.i217 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %block.i217, align 4
  tail call void @tcf_block_put(ptr noundef %51) #17
  tail call void @kfree(ptr noundef nonnull %cl.1233) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %changed.2.off0 = phi i1 [ %changed.1.off0236, %if.end.cleanup_crit_edge ], [ %changed.2.off0.ph, %cleanup.sink.split ]
  %nonempty.2.off0 = phi i1 [ true, %if.end.cleanup_crit_edge ], [ %nonempty.2.off0.ph, %cleanup.sink.split ]
  %tobool70.not = icmp eq ptr %29, null
  %add.ptr74 = getelementptr i8, ptr %29, i32 -4
  %tobool43.not254 = icmp eq ptr %add.ptr74, null
  %tobool43.not = or i1 %tobool70.not, %tobool43.not254
  br i1 %tobool43.not, label %cleanup.for.inc79_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

cleanup.for.inc79_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc79

for.inc79:                                        ; preds = %cleanup.for.inc79_crit_edge, %for.body27.for.inc79_crit_edge
  %changed.1.off0.lcssa = phi i1 [ %changed.0.off0241, %for.body27.for.inc79_crit_edge ], [ %changed.2.off0, %cleanup.for.inc79_crit_edge ]
  %nonempty.1.off0.lcssa = phi i1 [ %nonempty.0.off0242, %for.body27.for.inc79_crit_edge ], [ %nonempty.2.off0, %cleanup.for.inc79_crit_edge ]
  %inc80 = add nuw i32 %i.1240, 1
  %52 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hashsize, align 4
  %cmp26 = icmp ult i32 %inc80, %53
  br i1 %cmp26, label %for.inc79.for.body27_crit_edge, label %do.cond

for.inc79.for.body27_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body27

do.cond:                                          ; preds = %for.inc79
  br i1 %changed.1.off0.lcssa, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.end:                                           ; preds = %do.cond
  br i1 %nonempty.1.off0.lcssa, label %do.end95, label %do.end.if.end101_crit_edge, !prof !118

do.end.if.end101_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

do.end95:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1690, i32 noundef 9, ptr noundef null) #17
  br label %if.end101

if.end101:                                        ; preds = %do.end95, %do.end.if.end101_crit_edge, %do.body.if.end101_crit_edge
  tail call void @qdisc_class_hash_destroy(ptr noundef %privdata.i) #17
  %direct_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %call.i = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i219 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i219, label %land.rhs.i, label %if.end101.if.end29.i_crit_edge

if.end101.if.end29.i_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.end101
  %.b50.i = load i1, ptr @__qdisc_reset_queue.__already_done, align 1
  br i1 %.b50.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i220, !prof !120

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

if.then.i220:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__qdisc_reset_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1165, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 1165) #17
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i220, %land.rhs.i.if.end29.i_crit_edge, %if.end101.if.end29.i_crit_edge
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 28
  %54 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool37.not.i = icmp eq i32 %55, 0
  br i1 %tobool37.not.i, label %if.end29.i.__qdisc_reset_queue.exit_crit_edge, label %if.then38.i

if.end29.i.__qdisc_reset_queue.exit_crit_edge:    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__qdisc_reset_queue.exit

if.then38.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #19
  %56 = ptrtoint ptr %direct_queue to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %direct_queue, align 4
  %tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %58 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i, align 4
  tail call void @rtnl_kfree_skbs(ptr noundef %57, ptr noundef %59) #17
  %60 = ptrtoint ptr %direct_queue to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %direct_queue, align 4
  %61 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %tail.i, align 4
  %62 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %qlen.i, align 4
  br label %__qdisc_reset_queue.exit

__qdisc_reset_queue.exit:                         ; preds = %if.then38.i, %if.end29.i.__qdisc_reset_queue.exit_crit_edge
  %63 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool111.not = icmp eq i8 %64, 0
  br i1 %tobool111.not, label %__qdisc_reset_queue.exit.cleanup132_crit_edge, label %if.end113

__qdisc_reset_queue.exit.cleanup132_crit_edge:    ; preds = %__qdisc_reset_queue.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup132

if.end113:                                        ; preds = %__qdisc_reset_queue.exit
  %65 = call ptr @memset(ptr %5, i32 0, i32 24)
  %66 = ptrtoint ptr %offload_opt to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %offload_opt, align 8
  %67 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %4, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %68 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %69, i32 0, i32 42
  %70 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ndo_setup_tc.i, align 4
  %call.i221 = call i32 %71(ptr noundef %3, i32 noundef 18, ptr noundef nonnull %offload_opt) #17
  %direct_qdiscs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 32
  %72 = ptrtoint ptr %direct_qdiscs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %direct_qdiscs, align 8
  %tobool115.not = icmp eq ptr %73, null
  br i1 %tobool115.not, label %if.end113.cleanup132_crit_edge, label %for.cond118.preheader

if.end113.cleanup132_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup132

for.cond118.preheader:                            ; preds = %if.end113
  %num_direct_qdiscs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 36
  %74 = ptrtoint ptr %num_direct_qdiscs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_direct_qdiscs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp119245.not = icmp eq i32 %75, 0
  br i1 %cmp119245.not, label %for.cond118.preheader.for.end130_crit_edge, label %for.cond118.preheader.land.rhs120_crit_edge

for.cond118.preheader.land.rhs120_crit_edge:      ; preds = %for.cond118.preheader
  br label %land.rhs120

for.cond118.preheader.for.end130_crit_edge:       ; preds = %for.cond118.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end130

land.rhs120:                                      ; preds = %for.body125.land.rhs120_crit_edge, %for.cond118.preheader.land.rhs120_crit_edge
  %i.2246 = phi i32 [ %inc129, %for.body125.land.rhs120_crit_edge ], [ 0, %for.cond118.preheader.land.rhs120_crit_edge ]
  %76 = ptrtoint ptr %direct_qdiscs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %direct_qdiscs, align 8
  %arrayidx122 = getelementptr ptr, ptr %77, i32 %i.2246
  %78 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx122, align 4
  %tobool123.not = icmp eq ptr %79, null
  br i1 %tobool123.not, label %land.rhs120.for.end130_crit_edge, label %for.body125

land.rhs120.for.end130_crit_edge:                 ; preds = %land.rhs120
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end130

for.body125:                                      ; preds = %land.rhs120
  call void @qdisc_put(ptr noundef nonnull %79) #17
  %inc129 = add nuw i32 %i.2246, 1
  %80 = ptrtoint ptr %num_direct_qdiscs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_direct_qdiscs, align 4
  %cmp119 = icmp ult i32 %inc129, %81
  br i1 %cmp119, label %for.body125.land.rhs120_crit_edge, label %for.body125.for.end130_crit_edge

for.body125.for.end130_crit_edge:                 ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end130

for.body125.land.rhs120_crit_edge:                ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs120

for.end130:                                       ; preds = %for.body125.for.end130_crit_edge, %land.rhs120.for.end130_crit_edge, %for.cond118.preheader.for.end130_crit_edge
  %82 = ptrtoint ptr %direct_qdiscs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %direct_qdiscs, align 8
  call void @kfree(ptr noundef %83) #17
  br label %cleanup132

cleanup132:                                       ; preds = %for.end130, %if.end113.cleanup132_crit_edge, %__qdisc_reset_queue.exit.cleanup132_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %offload_opt) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htb_attach(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %offload = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 40
  %0 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %dev_queue.i.i3 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i.i3, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %num_direct_qdiscs.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 36
  %6 = ptrtoint ptr %num_direct_qdiscs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_direct_qdiscs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp29.not.i = icmp eq i32 %7, 0
  br i1 %cmp29.not.i, label %if.then.for.cond4.preheader.i_crit_edge, label %for.body.lr.ph.i

if.then.for.cond4.preheader.i_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond4.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %direct_qdiscs.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 32
  br label %for.body.i

for.cond4.preheader.i:                            ; preds = %for.body.i.for.cond4.preheader.i_crit_edge, %if.then.for.cond4.preheader.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %if.then.for.cond4.preheader.i_crit_edge ], [ %17, %for.body.i.for.cond4.preheader.i_crit_edge ]
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 104
  %8 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa.i, i32 %9)
  %cmp531.i = icmp ult i32 %.lcssa.i, %9
  br i1 %cmp531.i, label %for.body6.lr.ph.i, label %for.cond4.preheader.i.htb_attach_offload.exit_crit_edge

for.cond4.preheader.i.htb_attach_offload.exit_crit_edge: ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_attach_offload.exit

for.body6.lr.ph.i:                                ; preds = %for.cond4.preheader.i
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  br label %for.body6.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ntx.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %direct_qdiscs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %direct_qdiscs.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %ntx.030.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_queue.i, align 8
  %call2.i = tail call ptr @dev_graft_qdisc(ptr noundef %15, ptr noundef %13) #17
  tail call void @qdisc_put(ptr noundef %call2.i) #17
  tail call void @qdisc_hash_add(ptr noundef %13, i1 noundef zeroext false) #17
  %inc.i = add nuw i32 %ntx.030.i, 1
  %16 = ptrtoint ptr %num_direct_qdiscs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_direct_qdiscs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond4.preheader.i_crit_edge

for.body.i.for.cond4.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond4.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %ntx.132.i = phi i32 [ %.lcssa.i, %for.body6.lr.ph.i ], [ %inc12.i, %for.body6.i.for.body6.i_crit_edge ]
  %18 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %19, i32 %ntx.132.i
  %call10.i = tail call ptr @dev_graft_qdisc(ptr noundef %arrayidx.i.i, ptr noundef null) #17
  tail call void @qdisc_put(ptr noundef %call10.i) #17
  %inc12.i = add nuw i32 %ntx.132.i, 1
  %20 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tx_queues.i, align 4
  %cmp5.i = icmp ult i32 %inc12.i, %21
  br i1 %cmp5.i, label %for.body6.i.for.body6.i_crit_edge, label %for.body6.i.htb_attach_offload.exit_crit_edge

for.body6.i.htb_attach_offload.exit_crit_edge:    ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_attach_offload.exit

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body6.i

htb_attach_offload.exit:                          ; preds = %for.body6.i.htb_attach_offload.exit_crit_edge, %for.cond4.preheader.i.htb_attach_offload.exit_crit_edge
  %direct_qdiscs14.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 32
  %22 = ptrtoint ptr %direct_qdiscs14.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %direct_qdiscs14.i, align 8
  tail call void @kfree(ptr noundef %23) #17
  %24 = ptrtoint ptr %direct_qdiscs14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %direct_qdiscs14.i, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %num_tx_queues.i4 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 104
  %25 = ptrtoint ptr %num_tx_queues.i4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_tx_queues.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp8.not.i = icmp eq i32 %26, 0
  br i1 %cmp8.not.i, label %if.else.if.end_crit_edge, label %for.body.lr.ph.i6

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.body.lr.ph.i6:                                ; preds = %if.else
  %_tx.i.i5 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %refcnt.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 14
  br label %for.body.i9

for.body.i9:                                      ; preds = %qdisc_refcount_inc.exit.i.for.body.i9_crit_edge, %for.body.lr.ph.i6
  %ntx.09.i = phi i32 [ 0, %for.body.lr.ph.i6 ], [ %inc.i10, %qdisc_refcount_inc.exit.i.for.body.i9_crit_edge ]
  %27 = ptrtoint ptr %_tx.i.i5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_tx.i.i5, align 128
  %arrayidx.i.i7 = getelementptr %struct.netdev_queue, ptr %28, i32 %ntx.09.i
  %call2.i8 = tail call ptr @dev_graft_qdisc(ptr noundef %arrayidx.i.i7, ptr noundef %sch) #17
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i9.qdisc_refcount_inc.exit.i_crit_edge

for.body.i9.qdisc_refcount_inc.exit.i_crit_edge:  ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_refcount_inc.exit.i

if.end.i.i:                                       ; preds = %for.body.i9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #17
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #17, !srcloc !122
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !118

if.end.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %32 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.qdisc_refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !120

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.qdisc_refcount_inc.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_refcount_inc.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #17
  br label %qdisc_refcount_inc.exit.i

qdisc_refcount_inc.exit.i:                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.qdisc_refcount_inc.exit.i_crit_edge, %for.body.i9.qdisc_refcount_inc.exit.i_crit_edge
  tail call void @qdisc_put(ptr noundef %call2.i8) #17
  %inc.i10 = add nuw i32 %ntx.09.i, 1
  %33 = ptrtoint ptr %num_tx_queues.i4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_tx_queues.i4, align 4
  %cmp.i11 = icmp ult i32 %inc.i10, %34
  br i1 %cmp.i11, label %qdisc_refcount_inc.exit.i.for.body.i9_crit_edge, label %qdisc_refcount_inc.exit.i.if.end_crit_edge

qdisc_refcount_inc.exit.i.if.end_crit_edge:       ; preds = %qdisc_refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

qdisc_refcount_inc.exit.i.for.body.i9_crit_edge:  ; preds = %qdisc_refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i9

if.end:                                           ; preds = %qdisc_refcount_inc.exit.i.if.end_crit_edge, %if.else.if.end_crit_edge, %htb_attach_offload.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htb_dump(ptr nocapture noundef %sch, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %gopt = alloca %struct.tc_htb_glob, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %gopt) #17
  %0 = getelementptr inbounds %struct.tc_htb_glob, ptr %gopt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tc_htb_glob, ptr %gopt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tc_htb_glob, ptr %gopt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tc_htb_glob, ptr %gopt, i32 0, i32 4
  %offload = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 40
  %4 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %flags1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1, align 8
  %and = and i32 %7, -513
  %masksel = select i1 %tobool.not, i32 0, i32 512
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %flags1, align 8
  %overlimits = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %overlimits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %overlimits, align 8
  %overlimits2 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %10 = ptrtoint ptr %overlimits2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %overlimits2, align 16
  %direct_pkts = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2
  %11 = ptrtoint ptr %direct_pkts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %direct_pkts, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %3, align 4
  %14 = ptrtoint ptr %gopt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 196625, ptr %gopt, align 4
  %rate2quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %15 = ptrtoint ptr %rate2quantum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate2quantum, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %0, align 4
  %defcls = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %18 = ptrtoint ptr %defcls to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %defcls, align 8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %1, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %2, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp42 = icmp eq ptr %23, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp42
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call9 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 20, ptr noundef nonnull %gopt) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end8.if.then.i.i_crit_edge

if.end8.if.then.i.i_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end8
  %direct_qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %24 = ptrtoint ptr %direct_qlen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %direct_qlen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %26 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

if.end14:                                         ; preds = %lor.lhs.false
  %27 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool16.not = icmp eq i8 %28, 0
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %land.lhs.true

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end14
  %call.i40 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 0, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool18.not = icmp eq i32 %call.i40, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end14.if.end20_crit_edge
  %29 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i, ptr %23, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %land.lhs.true.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end8.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %35, %23
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !118

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 991, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %33, %if.end20 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %gopt) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @htb_select_queue(ptr nocapture noundef readonly %sch, ptr nocapture noundef readonly %tcm) #2 align 64 {
entry:
  %offload_opt = alloca %struct.tc_htb_qopt_offload, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %offload_opt) #17
  %4 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 4
  %offload = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 40
  %5 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 3
  %8 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 2
  %9 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 1
  %10 = call ptr @memset(ptr %4, i32 0, i32 18)
  %tcm_parent = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 5
  %11 = ptrtoint ptr %tcm_parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tcm_parent, align 4
  %conv = trunc i32 %12 to i16
  %13 = ptrtoint ptr %offload_opt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %offload_opt, align 8
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %9, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %8, align 8
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %7, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %18, i32 0, i32 42
  %19 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndo_setup_tc.i, align 4
  %call.i = call i32 %20(ptr noundef %3, i32 noundef 18, ptr noundef nonnull %offload_opt) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %4, align 2
  %conv4 = zext i16 %22 to i32
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %23 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv4)
  %cmp.not = icmp ugt i32 %24, %conv4
  br i1 %cmp.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %25 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %26, i32 %conv4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx.i, %if.end7 ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %offload_opt) #17
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htb_graft(ptr noundef %sch, i32 noundef %arg, ptr noundef %new, ptr nocapture noundef writeonly %old, ptr noundef %extack) #2 align 64 {
entry:
  %qstats.i.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = inttoptr i32 %arg to ptr
  %level = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %dev_queue1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_queue1, align 8
  %offload = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 40
  %5 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %offload_queue.i = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 21, i32 0, i32 0, i32 3
  %7 = ptrtoint ptr %offload_queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %offload_queue.i, align 4
  %q.i = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %q.i, align 16
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then3.if.end5_crit_edge

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then.i:                                        ; preds = %if.then3
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %10, i32 0, i32 9
  %13 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_queue.i, align 8
  %cmp.not.i = icmp eq ptr %14, %8
  br i1 %cmp.not.i, label %if.then.i.if.end5_crit_edge, label %do.end.i, !prof !120

if.then.i.if.end5_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1427, i32 noundef 9, ptr noundef null) #17
  br label %if.end5

if.end5:                                          ; preds = %do.end.i, %if.then.i.if.end5_crit_edge, %if.then3.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev_queue.0 = phi ptr [ %4, %if.end.if.end5_crit_edge ], [ %8, %if.then3.if.end5_crit_edge ], [ %8, %if.then.i.if.end5_crit_edge ], [ %8, %do.end.i ]
  %tobool6.not = icmp eq ptr %new, null
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %0, align 128
  %call8 = tail call ptr @qdisc_create_dflt(ptr noundef %dev_queue.0, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %16, ptr noundef %extack) #17
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then7.cleanup_crit_edge, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %new.addr.0 = phi ptr [ %new, %if.end5.if.end12_crit_edge ], [ %call8, %if.then7.if.end12_crit_edge ]
  %17 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool14.not = icmp eq i8 %18, 0
  br i1 %tobool14.not, label %if.end12.if.end17_crit_edge, label %if.then15

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  %dep_map.i = getelementptr inbounds %struct.Qdisc, ptr %new.addr.0, i32 0, i32 17, i32 3, i32 0, i32 0, i32 4
  %wait_type_inner.i = getelementptr inbounds %struct.Qdisc, ptr %new.addr.0, i32 0, i32 17, i32 3, i32 0, i32 0, i32 4, i32 4
  %19 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %wait_type_inner.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @htb_set_lockdep_class_child.child_key, i32 noundef 0, i8 noundef zeroext %20, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %flags.i64 = getelementptr inbounds %struct.Qdisc, ptr %new.addr.0, i32 0, i32 2
  %21 = ptrtoint ptr %flags.i64 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i64, align 8
  %and.i65 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool.not.i66 = icmp eq i32 %and.i65, 0
  br i1 %tobool.not.i66, label %if.end.i, label %if.then15.qdisc_refcount_inc.exit_crit_edge

if.then15.qdisc_refcount_inc.exit_crit_edge:      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_refcount_inc.exit

if.end.i:                                         ; preds = %if.then15
  %refcnt.i = getelementptr inbounds %struct.Qdisc, ptr %new.addr.0, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #17
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #17, !srcloc !122
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !118

if.end.i.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.qdisc_refcount_inc.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !120

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.qdisc_refcount_inc.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_refcount_inc.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #17
  br label %qdisc_refcount_inc.exit

qdisc_refcount_inc.exit:                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.qdisc_refcount_inc.exit_crit_edge, %if.then15.qdisc_refcount_inc.exit_crit_edge
  %25 = ptrtoint ptr %dev_queue.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_queue.0, align 128
  %flags.i67 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %flags.i67 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i67, align 8
  %and.i68 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool.not.i69 = icmp eq i32 %and.i68, 0
  br i1 %tobool.not.i69, label %qdisc_refcount_inc.exit.if.end5.i_crit_edge, label %if.then.i70

qdisc_refcount_inc.exit.if.end5.i_crit_edge:      ; preds = %qdisc_refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5.i

if.then.i70:                                      ; preds = %qdisc_refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dev_deactivate(ptr noundef %26) #17
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i70, %qdisc_refcount_inc.exit.if.end5.i_crit_edge
  %call.i = tail call ptr @dev_graft_qdisc(ptr noundef %dev_queue.0, ptr noundef nonnull %new.addr.0) #17
  %29 = ptrtoint ptr %flags.i64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i64, align 8
  %or.i = or i32 %30, 80
  store i32 %or.i, ptr %flags.i64, align 8
  %31 = ptrtoint ptr %flags.i67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i67, align 8
  %and7.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.if.end17_crit_edge, label %if.then9.i

if.end5.i.if.end17_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dev_activate(ptr noundef %26) #17
  br label %if.end17

if.end17:                                         ; preds = %if.then9.i, %if.end5.i.if.end17_crit_edge, %if.end12.if.end17_crit_edge
  %old_q.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end12.if.end17_crit_edge ], [ %call.i, %if.end5.i.if.end17_crit_edge ], [ %call.i, %if.then9.i ]
  %q18 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end17.sch_tree_lock.exit.i_crit_edge

if.end17.sch_tree_lock.exit.i_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %sch_tree_lock.exit.i

if.else.i.i:                                      ; preds = %if.end17
  %35 = ptrtoint ptr %dev_queue1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_queue1, align 8
  %qdisc_sleeping.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %qdisc_sleeping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %qdisc_sleeping.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !120

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #17
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %if.end17.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %sch, %if.end17.sch_tree_lock.exit.i_crit_edge ], [ %38, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %38, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %38, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #17
  %39 = ptrtoint ptr %q18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %q18, align 4
  store ptr %new.addr.0, ptr %q18, align 4
  %cmp.not.i72 = icmp eq ptr %40, null
  br i1 %cmp.not.i72, label %sch_tree_lock.exit.i.if.end.i74_crit_edge, label %if.then.i73

sch_tree_lock.exit.i.if.end.i74_crit_edge:        ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i74

if.then.i73:                                      ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i.i) #17
  %41 = call ptr @memset(ptr %qstats.i.i.i, i32 0, i32 20)
  %cpu_qstats.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %40, i32 0, i32 12
  %42 = ptrtoint ptr %cpu_qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cpu_qstats.i.i.i, align 4
  %qstats1.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %40, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i.i, ptr noundef %43, ptr noundef %qstats1.i.i.i) #17
  %44 = ptrtoint ptr %qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qstats.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %40, i32 0, i32 17, i32 2
  %46 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qlen.i.i.i.i, align 8
  %add.i.i.i = add i32 %47, %45
  %backlog3.i.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %backlog3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %backlog3.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i.i) #17
  call void @qdisc_reset(ptr noundef nonnull %40) #17
  call void @qdisc_tree_reduce_backlog(ptr noundef nonnull %40, i32 noundef %add.i.i.i, i32 noundef %49) #17
  br label %if.end.i74

if.end.i74:                                       ; preds = %if.then.i73, %sch_tree_lock.exit.i.if.end.i74_crit_edge
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i.i, align 8
  %and.i6.i = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool.not.i7.i = icmp eq i32 %and.i6.i, 0
  br i1 %tobool.not.i7.i, label %if.else.i12.i, label %if.end.i74.qdisc_replace.exit_crit_edge

if.end.i74.qdisc_replace.exit_crit_edge:          ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_replace.exit

if.else.i12.i:                                    ; preds = %if.end.i74
  %52 = ptrtoint ptr %dev_queue1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_queue1, align 8
  %qdisc_sleeping.i.i.i9.i = getelementptr inbounds %struct.netdev_queue, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %qdisc_sleeping.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %qdisc_sleeping.i.i.i9.i, align 4
  %call1.i.i10.i = call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i10.i)
  %tobool.not.i.i11.i = icmp eq i32 %call1.i.i10.i, 0
  br i1 %tobool.not.i.i11.i, label %land.rhs.i.i14.i, label %if.else.i12.i.qdisc_replace.exit_crit_edge

if.else.i12.i.qdisc_replace.exit_crit_edge:       ; preds = %if.else.i12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_replace.exit

land.rhs.i.i14.i:                                 ; preds = %if.else.i12.i
  %.b41.i.i13.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i13.i, label %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, label %if.then.i.i15.i, !prof !120

land.rhs.i.i14.i.qdisc_replace.exit_crit_edge:    ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_replace.exit

if.then.i.i15.i:                                  ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #17
  br label %qdisc_replace.exit

qdisc_replace.exit:                               ; preds = %if.then.i.i15.i, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, %if.else.i12.i.qdisc_replace.exit_crit_edge, %if.end.i74.qdisc_replace.exit_crit_edge
  %.sink.i16.i = phi ptr [ %sch, %if.end.i74.qdisc_replace.exit_crit_edge ], [ %55, %if.else.i12.i.qdisc_replace.exit_crit_edge ], [ %55, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge ], [ %55, %if.then.i.i15.i ]
  %lock.i.i.i17.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i16.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i17.i) #17
  %56 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %40, ptr %old, align 4
  %57 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool21.not = icmp eq i8 %58, 0
  br i1 %tobool21.not, label %qdisc_replace.exit.cleanup_crit_edge, label %if.then22

qdisc_replace.exit.cleanup_crit_edge:             ; preds = %qdisc_replace.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then22:                                        ; preds = %qdisc_replace.exit
  %cmp.not = icmp eq ptr %old_q.0, %40
  br i1 %cmp.not, label %if.then22.if.end37_crit_edge, label %do.end, !prof !120

if.then22.if.end37_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1495, i32 noundef 9, ptr noundef null) #17
  br label %if.end37

if.end37:                                         ; preds = %do.end, %if.then22.if.end37_crit_edge
  call void @qdisc_put(ptr noundef %old_q.0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %qdisc_replace.exit.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -105, %if.then7.cleanup_crit_edge ], [ 0, %if.end37 ], [ 0, %qdisc_replace.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @htb_leaf(ptr nocapture noundef readnone %sch, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %level = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %q = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %q, align 16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %4, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htb_qlen_notify(ptr noundef %sch, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %prio_activity.i = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 23
  %1 = ptrtoint ptr %prio_activity.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %prio_activity.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.htb_deactivate.exit_crit_edge, !prof !118

entry.htb_deactivate.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_deactivate.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 606, i32 noundef 9, ptr noundef null) #17
  br label %htb_deactivate.exit

htb_deactivate.exit:                              ; preds = %do.end.i, %entry.htb_deactivate.exit_crit_edge
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  tail call fastcc void @htb_deactivate_prios(ptr noundef %privdata.i, ptr noundef %0) #17
  %3 = ptrtoint ptr %prio_activity.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %prio_activity.i, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @htb_search(ptr nocapture noundef readonly %sch, i32 noundef %handle) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool.not.i.i = icmp eq i32 %handle, 0
  br i1 %tobool.not.i.i, label %entry.htb_find.exit_crit_edge, label %if.end.i.i

entry.htb_find.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_find.exit

if.end.i.i:                                       ; preds = %entry
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %hashmask.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %0 = ptrtoint ptr %hashmask.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hashmask.i.i, align 4
  %shr.i.i.i = lshr i32 %handle, 8
  %xor.i.i.i = xor i32 %shr.i.i.i, %handle
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 4
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  %and.i.i.i = and i32 %1, %xor2.i.i.i
  %2 = ptrtoint ptr %privdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %privdata.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %3, i32 %and.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %5, null
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -4
  %tobool4.not3033.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool4.not30.i.i = or i1 %tobool2.not.i.i, %tobool4.not3033.i.i
  br i1 %tobool4.not30.i.i, label %if.end.i.i.htb_find.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.htb_find.exit_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_find.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cl.031.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %cl.031.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cl.031.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %handle)
  %cmp.i.i = icmp eq i32 %7, %handle
  br i1 %cmp.i.i, label %for.body.i.i.htb_find.exit_crit_edge, label %for.inc.i.i

for.body.i.i.htb_find.exit_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_find.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hnode.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %hnode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hnode.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %9, null
  %add.ptr13.i.i = getelementptr i8, ptr %9, i32 -4
  %tobool4.not34.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool4.not.i.i = or i1 %tobool9.not.i.i, %tobool4.not34.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.htb_find.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.inc.i.i.htb_find.exit_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_find.exit

htb_find.exit:                                    ; preds = %for.inc.i.i.htb_find.exit_crit_edge, %for.body.i.i.htb_find.exit_crit_edge, %if.end.i.i.htb_find.exit_crit_edge, %entry.htb_find.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %entry.htb_find.exit_crit_edge ], [ null, %if.end.i.i.htb_find.exit_crit_edge ], [ %cl.031.i.i, %for.body.i.i.htb_find.exit_crit_edge ], [ null, %for.inc.i.i.htb_find.exit_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i.i to i32
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htb_change_class(ptr noundef %sch, i32 noundef %classid, i32 noundef %parentid, ptr nocapture noundef readonly %tca, ptr nocapture noundef %arg, ptr noundef %extack) #2 align 64 {
entry:
  %tmp.i1102 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  %offload_opt = alloca %struct.tc_htb_qopt_offload, align 8
  %tb = alloca [10 x ptr], align 4
  %est = alloca %struct.anon.128, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %offload_opt) #17
  %3 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 1
  %4 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 2
  %5 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 3
  %6 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 4
  %7 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 5
  %8 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 6
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %9 = call ptr @memset(ptr %offload_opt, i32 255, i32 32)
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tb) #17
  %12 = call ptr @memset(ptr %tb, i32 255, i32 40)
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup792_crit_edge, label %if.end

entry.cleanup792_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup792

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %11, align 2
  %conv.i.i = zext i16 %14 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 9, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @htb_policy, i32 noundef 0, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup792_crit_edge, label %if.end3

if.end.cleanup792_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup792

if.end3:                                          ; preds = %if.end
  %arrayidx4 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx4, align 4
  %cmp5 = icmp eq ptr %16, null
  br i1 %cmp5, label %if.end3.cleanup792_crit_edge, label %if.end7

if.end3.cleanup792_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup792

if.end7:                                          ; preds = %if.end3
  %17 = zext i32 %parentid to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %parentid, label %if.end.i.i [
    i32 -1, label %if.end7.cond.end_crit_edge
    i32 0, label %if.end7.cond.end_crit_edge1153
  ]

if.end7.cond.end_crit_edge1153:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.end7.cond.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.end.i.i:                                       ; preds = %if.end7
  %hashmask.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %18 = ptrtoint ptr %hashmask.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hashmask.i.i, align 4
  %shr.i.i.i = lshr i32 %parentid, 8
  %xor.i.i.i = xor i32 %shr.i.i.i, %parentid
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 4
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  %and.i.i.i = and i32 %19, %xor2.i.i.i
  %20 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %privdata.i, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %21, i32 %and.i.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %23, null
  %add.ptr.i.i1101 = getelementptr i8, ptr %23, i32 -4
  %tobool4.not3033.i.i = icmp eq ptr %add.ptr.i.i1101, null
  %tobool4.not30.i.i = or i1 %tobool2.not.i.i, %tobool4.not3033.i.i
  br i1 %tobool4.not30.i.i, label %if.end.i.i.cond.end_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.cond.end_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cl.031.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i1101, %if.end.i.i.for.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %cl.031.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cl.031.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %parentid)
  %cmp.i.i = icmp eq i32 %25, %parentid
  br i1 %cmp.i.i, label %for.body.i.i.cond.end_crit_edge, label %for.inc.i.i

for.body.i.i.cond.end_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hnode.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %hnode.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hnode.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %27, null
  %add.ptr13.i.i = getelementptr i8, ptr %27, i32 -4
  %tobool4.not34.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool4.not.i.i = or i1 %tobool9.not.i.i, %tobool4.not34.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.cond.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.inc.i.i.cond.end_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.end:                                         ; preds = %for.inc.i.i.cond.end_crit_edge, %for.body.i.i.cond.end_crit_edge, %if.end.i.i.cond.end_crit_edge, %if.end7.cond.end_crit_edge, %if.end7.cond.end_crit_edge1153
  %cond = phi ptr [ null, %if.end7.cond.end_crit_edge ], [ null, %if.end.i.i.cond.end_crit_edge ], [ null, %if.end7.cond.end_crit_edge1153 ], [ %cl.031.i.i, %for.body.i.i.cond.end_crit_edge ], [ null, %for.inc.i.i.cond.end_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %16, i32 4
  %rate12 = getelementptr i8, ptr %16, i32 12
  %28 = ptrtoint ptr %rate12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rate12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool13.not = icmp eq i32 %29, 0
  br i1 %tobool13.not, label %cond.end.cleanup792_crit_edge, label %lor.lhs.false

cond.end.cleanup792_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup792

lor.lhs.false:                                    ; preds = %cond.end
  %ceil = getelementptr i8, ptr %16, i32 16
  %rate14 = getelementptr i8, ptr %16, i32 24
  %30 = ptrtoint ptr %rate14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rate14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool15.not = icmp eq i32 %31, 0
  br i1 %tobool15.not, label %lor.lhs.false.cleanup792_crit_edge, label %if.end17

lor.lhs.false.cleanup792_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup792

if.end17:                                         ; preds = %lor.lhs.false
  %offload = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 40
  %32 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool18.not = icmp eq i8 %33, 0
  br i1 %tobool18.not, label %if.end17.if.end72_crit_edge, label %if.then19

if.end17.if.end72_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end72

if.then19:                                        ; preds = %if.end17
  %overhead = getelementptr i8, ptr %16, i32 6
  %34 = ptrtoint ptr %overhead to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %overhead, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool21.not = icmp eq i16 %35, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %if.then19.do.body_crit_edge

if.then19.do.body_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

lor.lhs.false22:                                  ; preds = %if.then19
  %overhead24 = getelementptr i8, ptr %16, i32 18
  %36 = ptrtoint ptr %overhead24 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %overhead24, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool26.not = icmp eq i16 %37, 0
  br i1 %tobool26.not, label %if.end31, label %lor.lhs.false22.do.body_crit_edge

lor.lhs.false22.do.body_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false22.do.body_crit_edge, %if.then19.do.body_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @htb_change_class.__msg) #17
  %tobool28.not = icmp eq ptr %extack, null
  br i1 %tobool28.not, label %do.body.cleanup792_crit_edge, label %if.then29

do.body.cleanup792_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup792

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @htb_change_class.__msg, ptr %extack, align 4
  br label %cleanup792

if.end31:                                         ; preds = %lor.lhs.false22
  %mpu = getelementptr i8, ptr %16, i32 10
  %39 = ptrtoint ptr %mpu to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %mpu, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool34.not = icmp eq i16 %40, 0
  br i1 %tobool34.not, label %lor.lhs.false35, label %if.end31.do.body41_crit_edge

if.end31.do.body41_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body41

lor.lhs.false35:                                  ; preds = %if.end31
  %mpu37 = getelementptr i8, ptr %16, i32 22
  %41 = ptrtoint ptr %mpu37 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %mpu37, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool39.not = icmp eq i16 %42, 0
  br i1 %tobool39.not, label %if.end49, label %lor.lhs.false35.do.body41_crit_edge

lor.lhs.false35.do.body41_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body41

do.body41:                                        ; preds = %lor.lhs.false35.do.body41_crit_edge, %if.end31.do.body41_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @htb_change_class.__msg.4) #17
  %tobool43.not = icmp eq ptr %extack, null
  br i1 %tobool43.not, label %do.body41.cleanup792_crit_edge, label %if.then44

do.body41.cleanup792_crit_edge:                   ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup792

if.then44:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @htb_change_class.__msg.4, ptr %extack, align 4
  br label %cleanup792

if.end49:                                         ; preds = %lor.lhs.false35
  %quantum = getelementptr i8, ptr %16, i32 36
  %44 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %quantum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool50.not = icmp eq i32 %45, 0
  br i1 %tobool50.not, label %if.end60, label %do.body52

do.body52:                                        ; preds = %if.end49
  call void @do_trace_netlink_extack(ptr noundef nonnull @htb_change_class.__msg.5) #17
  %tobool54.not = icmp eq ptr %extack, null
  br i1 %tobool54.not, label %do.body52.cleanup792_crit_edge, label %if.then55

do.body52.cleanup792_crit_edge:                   ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup792

if.then55:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #19
  %46 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @htb_change_class.__msg.5, ptr %extack, align 4
  br label %cleanup792

if.end60:                                         ; preds = %if.end49
  %prio = getelementptr i8, ptr %16, i32 44
  %47 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %prio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool61.not = icmp eq i32 %48, 0
  br i1 %tobool61.not, label %if.end60.if.end72_crit_edge, label %do.body63

if.end60.if.end72_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end72

do.body63:                                        ; preds = %if.end60
  call void @do_trace_netlink_extack(ptr noundef nonnull @htb_change_class.__msg.6) #17
  %tobool65.not = icmp eq ptr %extack, null
  br i1 %tobool65.not, label %do.body63.cleanup792_crit_edge, label %if.then66

do.body63.cleanup792_crit_edge:                   ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup792

if.then66:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #19
  %49 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @htb_change_class.__msg.6, ptr %extack, align 4
  br label %cleanup792

if.end72:                                         ; preds = %if.end60.if.end72_crit_edge, %if.end17.if.end72_crit_edge
  %linklayer = getelementptr i8, ptr %16, i32 5
  %50 = ptrtoint ptr %linklayer to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %linklayer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp75 = icmp eq i8 %51, 0
  br i1 %cmp75, label %if.then77, label %if.end72.if.end81_crit_edge

if.end72.if.end81_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end81

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx79 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 4
  %52 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx79, align 4
  %call80 = call ptr @qdisc_get_rtab(ptr noundef %add.ptr.i, ptr noundef %53, ptr noundef null) #17
  call void @qdisc_put_rtab(ptr noundef %call80) #17
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.end72.if.end81_crit_edge
  %linklayer83 = getelementptr i8, ptr %16, i32 17
  %54 = ptrtoint ptr %linklayer83 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %linklayer83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp85 = icmp eq i8 %55, 0
  br i1 %cmp85, label %if.then87, label %if.end81.if.end91_crit_edge

if.end81.if.end91_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end91

if.then87:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx89 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 3
  %56 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx89, align 4
  %call90 = call ptr @qdisc_get_rtab(ptr noundef %ceil, ptr noundef %57, ptr noundef null) #17
  call void @qdisc_put_rtab(ptr noundef %call90) #17
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %if.end81.if.end91_crit_edge
  %arrayidx92 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 6
  %58 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx92, align 4
  %tobool93.not = icmp eq ptr %59, null
  br i1 %tobool93.not, label %if.end91.cond.end98_crit_edge, label %cond.true94

if.end91.cond.end98_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end98

cond.true94:                                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #17
  %60 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 -1, ptr %tmp.i, align 8, !annotation !117
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %59, i32 noundef 8) #17
  %61 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #17
  br label %cond.end98

cond.end98:                                       ; preds = %cond.true94, %if.end91.cond.end98_crit_edge
  %cond99 = phi i64 [ %62, %cond.true94 ], [ 0, %if.end91.cond.end98_crit_edge ]
  %arrayidx100 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 7
  %63 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx100, align 4
  %tobool101.not = icmp eq ptr %64, null
  br i1 %tobool101.not, label %cond.end98.cond.end106_crit_edge, label %cond.true102

cond.end98.cond.end106_crit_edge:                 ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end106

cond.true102:                                     ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i1102) #17
  %65 = ptrtoint ptr %tmp.i1102 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 -1, ptr %tmp.i1102, align 8, !annotation !117
  %call.i1103 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i1102, ptr noundef nonnull %64, i32 noundef 8) #17
  %66 = ptrtoint ptr %tmp.i1102 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %tmp.i1102, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i1102) #17
  br label %cond.end106

cond.end106:                                      ; preds = %cond.true102, %cond.end98.cond.end106_crit_edge
  %cond107 = phi i64 [ %67, %cond.true102 ], [ 0, %cond.end98.cond.end106_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool108.not = icmp eq i32 %1, 0
  br i1 %tobool108.not, label %if.then109, label %if.else461

if.then109:                                       ; preds = %cond.end106
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %68 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_queue.i, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 128
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %est) #17
  %72 = getelementptr inbounds %struct.nlattr, ptr %est, i32 0, i32 1
  %73 = getelementptr inbounds %struct.anon.128, ptr %est, i32 0, i32 1
  %74 = getelementptr inbounds %struct.anon.128, ptr %est, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %est to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 6, ptr %est, align 2
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 5, ptr %72, align 2
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 2, ptr %73, align 2
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 2, ptr %74, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %classid)
  %tobool115.not = icmp eq i32 %classid, 0
  br i1 %tobool115.not, label %if.then109.cleanup.thread_crit_edge, label %lor.lhs.false116

if.then109.cleanup.thread_crit_edge:              ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

lor.lhs.false116:                                 ; preds = %if.then109
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %79 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %handle, align 32
  %xor = xor i32 %80, %classid
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %xor)
  %tobool117.not = icmp ult i32 %xor, 65536
  br i1 %tobool117.not, label %lor.lhs.false118, label %lor.lhs.false116.cleanup.thread_crit_edge

lor.lhs.false116.cleanup.thread_crit_edge:        ; preds = %lor.lhs.false116
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

lor.lhs.false118:                                 ; preds = %lor.lhs.false116
  %call119 = call fastcc ptr @htb_find(i32 noundef %classid, ptr noundef %sch)
  %tobool120.not = icmp eq ptr %call119, null
  br i1 %tobool120.not, label %if.end122, label %lor.lhs.false118.cleanup.thread_crit_edge

lor.lhs.false118.cleanup.thread_crit_edge:        ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end122:                                        ; preds = %lor.lhs.false118
  %tobool123.not = icmp eq ptr %cond, null
  br i1 %tobool123.not, label %if.end122.if.end135_crit_edge, label %land.lhs.true

if.end122.if.end135_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end135

land.lhs.true:                                    ; preds = %if.end122
  %parent124 = getelementptr inbounds %struct.htb_class, ptr %cond, i32 0, i32 13
  %81 = ptrtoint ptr %parent124 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %parent124, align 4
  %tobool125.not = icmp eq ptr %82, null
  br i1 %tobool125.not, label %land.lhs.true.if.end135_crit_edge, label %land.lhs.true126

land.lhs.true.if.end135_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end135

land.lhs.true126:                                 ; preds = %land.lhs.true
  %level = getelementptr inbounds %struct.htb_class, ptr %82, i32 0, i32 11
  %83 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp128 = icmp slt i32 %84, 2
  br i1 %cmp128, label %do.end133, label %land.lhs.true126.if.end135_crit_edge

land.lhs.true126.if.end135_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end135

do.end133:                                        ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #19
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #20
  br label %cleanup.thread

if.end135:                                        ; preds = %land.lhs.true126.if.end135_crit_edge, %land.lhs.true.if.end135_crit_edge, %if.end122.if.end135_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %85 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 3520, i32 noundef 640) #22
  %tobool137.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool137.not, label %if.end135.cleanup.thread_crit_edge, label %if.end139

if.end135.cleanup.thread_crit_edge:               ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end139:                                        ; preds = %if.end135
  %bstats = getelementptr inbounds %struct.htb_class, ptr %call7.i.i, i32 0, i32 15
  call void @gnet_stats_basic_sync_init(ptr noundef %bstats) #17
  %bstats_bias = getelementptr inbounds %struct.htb_class, ptr %call7.i.i, i32 0, i32 16
  call void @gnet_stats_basic_sync_init(ptr noundef %bstats_bias) #17
  %block = getelementptr inbounds %struct.htb_class, ptr %call7.i.i, i32 0, i32 9
  %filter_list = getelementptr inbounds %struct.htb_class, ptr %call7.i.i, i32 0, i32 8
  %call140 = call i32 @tcf_block_get(ptr noundef %block, ptr noundef %filter_list, ptr noundef %sch, ptr noundef %extack) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.then142

if.then142:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup.thread

if.end143:                                        ; preds = %if.end139
  %86 = load i32, ptr @htb_rate_est, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool144.not = icmp eq i32 %86, 0
  br i1 %tobool144.not, label %lor.lhs.false145, label %if.end143.if.then148_crit_edge

if.end143.if.then148_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then148

lor.lhs.false145:                                 ; preds = %if.end143
  %arrayidx146 = getelementptr ptr, ptr %tca, i32 5
  %87 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx146, align 4
  %tobool147.not = icmp eq ptr %88, null
  br i1 %tobool147.not, label %lor.lhs.false145.if.end161_crit_edge, label %lor.lhs.false145.if.then148_crit_edge

lor.lhs.false145.if.then148_crit_edge:            ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then148

lor.lhs.false145.if.end161_crit_edge:             ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end161

if.then148:                                       ; preds = %lor.lhs.false145.if.then148_crit_edge, %if.end143.if.then148_crit_edge
  %rate_est = getelementptr inbounds %struct.htb_class, ptr %call7.i.i, i32 0, i32 14
  %arrayidx150 = getelementptr ptr, ptr %tca, i32 5
  %89 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx150, align 4
  %tobool151.not = icmp eq ptr %90, null
  %cond156 = select i1 %tobool151.not, ptr %est, ptr %90
  %call157 = call i32 @gen_new_estimator(ptr noundef %bstats, ptr noundef null, ptr noundef %rate_est, ptr noundef null, i1 noundef zeroext true, ptr noundef %cond156) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.then148.if.end161_crit_edge, label %cleanup

if.then148.if.end161_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end161

if.end161:                                        ; preds = %if.then148.if.end161_crit_edge, %lor.lhs.false145.if.end161_crit_edge
  %children = getelementptr inbounds %struct.htb_class, ptr %call7.i.i, i32 0, i32 12
  %91 = ptrtoint ptr %children to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %children, align 16
  %pq_node = getelementptr inbounds %struct.htb_class, ptr %call7.i.i, i32 0, i32 25
  %92 = ptrtoint ptr %pq_node to i32
  %93 = ptrtoint ptr %pq_node to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %pq_node, align 128
  %arrayidx165 = getelementptr %struct.htb_class, ptr %call7.i.i, i32 0, i32 26, i32 0
  %94 = ptrtoint ptr %arrayidx165 to i32
  %95 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %arrayidx165, align 4
  %arrayidx165.1 = getelementptr %struct.htb_class, ptr %call7.i.i, i32 0, i32 26, i32 1
  %96 = ptrtoint ptr %arrayidx165.1 to i32
  %97 = ptrtoint ptr %arrayidx165.1 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx165.1, align 8
  %arrayidx165.2 = getelementptr %struct.htb_class, ptr %call7.i.i, i32 0, i32 26, i32 2
  %98 = ptrtoint ptr %arrayidx165.2 to i32
  %99 = ptrtoint ptr %arrayidx165.2 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %arrayidx165.2, align 4
  %arrayidx165.3 = getelementptr %struct.htb_class, ptr %call7.i.i, i32 0, i32 26, i32 3
  %100 = ptrtoint ptr %arrayidx165.3 to i32
  %101 = ptrtoint ptr %arrayidx165.3 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %arrayidx165.3, align 8
  %arrayidx165.4 = getelementptr %struct.htb_class, ptr %call7.i.i, i32 0, i32 26, i32 4
  %102 = ptrtoint ptr %arrayidx165.4 to i32
  %103 = ptrtoint ptr %arrayidx165.4 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %arrayidx165.4, align 4
  %arrayidx165.5 = getelementptr %struct.htb_class, ptr %call7.i.i, i32 0, i32 26, i32 5
  %104 = ptrtoint ptr %arrayidx165.5 to i32
  %105 = ptrtoint ptr %arrayidx165.5 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx165.5, align 8
  %arrayidx165.6 = getelementptr %struct.htb_class, ptr %call7.i.i, i32 0, i32 26, i32 6
  %106 = ptrtoint ptr %arrayidx165.6 to i32
  %107 = ptrtoint ptr %arrayidx165.6 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %arrayidx165.6, align 4
  %arrayidx165.7 = getelementptr %struct.htb_class, ptr %call7.i.i, i32 0, i32 26, i32 7
  %108 = ptrtoint ptr %arrayidx165.7 to i32
  %109 = ptrtoint ptr %arrayidx165.7 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %arrayidx165.7, align 8
  %110 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %classid, ptr %call7.i.i, align 128
  %call170 = call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %land.rhs, label %if.end161.if.end207_crit_edge

if.end161.if.end207_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end207

land.rhs:                                         ; preds = %if.end161
  %.b1098 = load i1, ptr @htb_change_class.__already_done, align 1
  br i1 %.b1098, label %land.rhs.if.end207_crit_edge, label %if.then181, !prof !120

land.rhs.if.end207_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end207

if.then181:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @htb_change_class.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1908, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef 1908) #17
  br label %if.end207

if.end207:                                        ; preds = %if.then181, %land.rhs.if.end207_crit_edge, %if.end161.if.end207_crit_edge
  %111 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool216.not = icmp eq i8 %112, 0
  br i1 %tobool216.not, label %if.then217, label %if.else

if.then217:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #19
  %113 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev_queue.i, align 8
  br label %if.end358

if.else:                                          ; preds = %if.end207
  br i1 %tobool123.not, label %if.else.cond.end231_crit_edge, label %land.lhs.true220

if.else.cond.end231_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end231

land.lhs.true220:                                 ; preds = %if.else
  %level221 = getelementptr inbounds %struct.htb_class, ptr %cond, i32 0, i32 11
  %115 = ptrtoint ptr %level221 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %level221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool222.not = icmp eq i32 %116, 0
  br i1 %tobool222.not, label %if.else271, label %cond.true226.critedge

cond.true226.critedge:                            ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #19
  %117 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cond, align 128
  %and229 = and i32 %118, 65535
  br label %cond.end231

cond.end231:                                      ; preds = %cond.true226.critedge, %if.else.cond.end231_crit_edge
  %cond232 = phi i32 [ %and229, %cond.true226.critedge ], [ -1, %if.else.cond.end231_crit_edge ]
  %119 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %call7.i.i, align 128
  %conv236 = trunc i32 %120 to i16
  %121 = ptrtoint ptr %rate12 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rate12, align 4
  %conv240 = zext i32 %122 to i64
  %123 = call i64 @llvm.umax.i64(i64 %cond99, i64 %conv240)
  %124 = ptrtoint ptr %rate14 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rate14, align 4
  %conv251 = zext i32 %125 to i64
  %126 = call i64 @llvm.umax.i64(i64 %cond107, i64 %conv251)
  %127 = ptrtoint ptr %offload_opt to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %extack, ptr %offload_opt, align 8
  %128 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 2, ptr %3, align 4
  %129 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %cond232, ptr %4, align 8
  %130 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv236, ptr %5, align 4
  %131 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %6, align 2
  %132 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %123, ptr %7, align 8
  %133 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %126, ptr %8, align 8
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 16
  %134 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %135, i32 0, i32 42
  %136 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ndo_setup_tc.i, align 4
  %call.i1104 = call i32 %137(ptr noundef %71, i32 noundef 18, ptr noundef nonnull %offload_opt) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1104)
  %tobool260.not = icmp eq i32 %call.i1104, 0
  br i1 %tobool260.not, label %if.end267, label %do.end264

do.end264:                                        ; preds = %cond.end231
  call void @__sanitizer_cov_trace_pc() #19
  %call266 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call.i1104) #20
  br label %err_kill_estimator

if.end267:                                        ; preds = %cond.end231
  call void @__sanitizer_cov_trace_pc() #19
  %138 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %6, align 2
  %conv269 = zext i16 %139 to i32
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 103
  %140 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %141, i32 %conv269
  br label %if.end358

if.else271:                                       ; preds = %land.lhs.true220
  %call272 = call fastcc ptr @htb_offload_get_queue(ptr noundef nonnull %cond)
  %call273 = call fastcc ptr @htb_graft_helper(ptr noundef %call272, ptr noundef null)
  %q275 = getelementptr inbounds %struct.htb_class, ptr %cond, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %142 = ptrtoint ptr %q275 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %q275, align 16
  %cmp276.not = icmp eq ptr %call273, %143
  br i1 %cmp276.not, label %if.else271.if.end299_crit_edge, label %do.end293, !prof !120

if.else271.if.end299_crit_edge:                   ; preds = %if.else271
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end299

do.end293:                                        ; preds = %if.else271
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1938, i32 noundef 9, ptr noundef null) #17
  br label %if.end299

if.end299:                                        ; preds = %do.end293, %if.else271.if.end299_crit_edge
  %144 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %cond, align 128
  %and313 = and i32 %145, 65535
  %146 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %call7.i.i, align 128
  %conv317 = trunc i32 %147 to i16
  %148 = ptrtoint ptr %rate12 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rate12, align 4
  %conv322 = zext i32 %149 to i64
  %150 = call i64 @llvm.umax.i64(i64 %cond99, i64 %conv322)
  %151 = ptrtoint ptr %rate14 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %rate14, align 4
  %conv333 = zext i32 %152 to i64
  %153 = call i64 @llvm.umax.i64(i64 %cond107, i64 %conv333)
  %154 = ptrtoint ptr %offload_opt to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %extack, ptr %offload_opt, align 8
  %155 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 3, ptr %3, align 4
  %156 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %and313, ptr %4, align 8
  %157 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv317, ptr %5, align 4
  %158 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 0, ptr %6, align 2
  %159 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %150, ptr %7, align 8
  %160 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %153, ptr %8, align 8
  %netdev_ops.i1105 = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 16
  %161 = ptrtoint ptr %netdev_ops.i1105 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %netdev_ops.i1105, align 8
  %ndo_setup_tc.i1106 = getelementptr inbounds %struct.net_device_ops, ptr %162, i32 0, i32 42
  %163 = ptrtoint ptr %ndo_setup_tc.i1106 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ndo_setup_tc.i1106, align 4
  %call.i1107 = call i32 %164(ptr noundef %71, i32 noundef 18, ptr noundef nonnull %offload_opt) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1107)
  %tobool342.not = icmp eq i32 %call.i1107, 0
  br i1 %tobool342.not, label %if.end350, label %do.end346

do.end346:                                        ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #19
  %call348 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call.i1107) #20
  %call349 = call fastcc ptr @htb_graft_helper(ptr noundef %call272, ptr noundef %call273)
  br label %err_kill_estimator

if.end350:                                        ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #19
  %bstats_bias351 = getelementptr inbounds %struct.htb_class, ptr %cond, i32 0, i32 16
  %bstats352 = getelementptr inbounds %struct.Qdisc, ptr %call273, i32 0, i32 18
  %165 = ptrtoint ptr %bstats352 to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %bstats352, align 8
  %packets = getelementptr inbounds %struct.Qdisc, ptr %call273, i32 0, i32 18, i32 1
  %167 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %packets, align 8
  %conv356 = trunc i64 %168 to i32
  call fastcc void @_bstats_update(ptr noundef %bstats_bias351, i64 noundef %166, i32 noundef %conv356)
  call void @qdisc_put(ptr noundef %call273) #17
  br label %if.end358

if.end358:                                        ; preds = %if.end350, %if.end267, %if.then217
  %dev_queue.0 = phi ptr [ %arrayidx.i, %if.end267 ], [ %call272, %if.end350 ], [ %114, %if.then217 ]
  %call359 = call ptr @qdisc_create_dflt(ptr noundef %dev_queue.0, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %classid, ptr noundef null) #17
  %169 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool361.not = icmp eq i8 %170, 0
  br i1 %tobool361.not, label %if.end358.if.end401_crit_edge, label %if.then362

if.end358.if.end401_crit_edge:                    ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end401

if.then362:                                       ; preds = %if.end358
  %tobool363.not = icmp eq ptr %call359, null
  br i1 %tobool363.not, label %if.then362.if.end365_crit_edge, label %if.then364

if.then362.if.end365_crit_edge:                   ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end365

if.then364:                                       ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #19
  %dep_map.i = getelementptr inbounds %struct.Qdisc, ptr %call359, i32 0, i32 17, i32 3, i32 0, i32 0, i32 4
  %wait_type_inner.i = getelementptr inbounds %struct.Qdisc, ptr %call359, i32 0, i32 17, i32 3, i32 0, i32 0, i32 4, i32 4
  %171 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %wait_type_inner.i, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @htb_set_lockdep_class_child.child_key, i32 noundef 0, i8 noundef zeroext %172, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  call fastcc void @qdisc_refcount_inc(ptr noundef nonnull %call359)
  br label %if.end365

if.end365:                                        ; preds = %if.then364, %if.then362.if.end365_crit_edge
  %call366 = call fastcc ptr @htb_graft_helper(ptr noundef %dev_queue.0, ptr noundef %call359)
  %flags = getelementptr inbounds %struct.Qdisc, ptr %call366, i32 0, i32 2
  %173 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %flags, align 8
  %and368 = and i32 %174, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and368)
  %tobool369.not = icmp eq i32 %and368, 0
  br i1 %tobool369.not, label %do.end387, label %if.end365.if.end401_crit_edge, !prof !118

if.end365.if.end401_crit_edge:                    ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end401

do.end387:                                        ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1972, i32 noundef 9, ptr noundef null) #17
  br label %if.end401

if.end401:                                        ; preds = %do.end387, %if.end365.if.end401_crit_edge, %if.end358.if.end401_crit_edge
  call fastcc void @sch_tree_lock(ptr noundef %sch)
  br i1 %tobool123.not, label %if.end401.if.end428_crit_edge, label %land.lhs.true403

if.end401.if.end428_crit_edge:                    ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end428

land.lhs.true403:                                 ; preds = %if.end401
  %level404 = getelementptr inbounds %struct.htb_class, ptr %cond, i32 0, i32 11
  %175 = ptrtoint ptr %level404 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %level404, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool405.not = icmp eq i32 %176, 0
  br i1 %tobool405.not, label %if.then406, label %land.lhs.true403.if.end428_crit_edge

land.lhs.true403.if.end428_crit_edge:             ; preds = %land.lhs.true403
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end428

if.then406:                                       ; preds = %land.lhs.true403
  %177 = getelementptr inbounds %struct.htb_class, ptr %cond, i32 0, i32 21
  %q407 = getelementptr inbounds %struct.htb_class, ptr %cond, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %178 = ptrtoint ptr %q407 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %q407, align 16
  call fastcc void @qdisc_purge_queue(ptr noundef %179)
  %180 = ptrtoint ptr %q407 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %q407, align 16
  %prio_activity = getelementptr inbounds %struct.htb_class, ptr %cond, i32 0, i32 23
  %182 = ptrtoint ptr %prio_activity to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %prio_activity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool409.not = icmp eq i32 %183, 0
  br i1 %tobool409.not, label %if.then406.if.end411_crit_edge, label %if.then410

if.then406.if.end411_crit_edge:                   ; preds = %if.then406
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end411

if.then410:                                       ; preds = %if.then406
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @htb_deactivate(ptr noundef %privdata.i, ptr noundef nonnull %cond)
  br label %if.end411

if.end411:                                        ; preds = %if.then410, %if.then406.if.end411_crit_edge
  %cmode = getelementptr inbounds %struct.htb_class, ptr %cond, i32 0, i32 24
  %184 = ptrtoint ptr %cmode to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %185)
  %cmp412.not = icmp eq i32 %185, 2
  br i1 %cmp412.not, label %if.end411.if.end418_crit_edge, label %if.then414

if.end411.if.end418_crit_edge:                    ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end418

if.then414:                                       ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #19
  %pq_node415 = getelementptr inbounds %struct.htb_class, ptr %cond, i32 0, i32 25
  %hlevel = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23
  call fastcc void @htb_safe_rb_erase(ptr noundef %pq_node415, ptr noundef %hlevel)
  %186 = ptrtoint ptr %cmode to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 2, ptr %cmode, align 4
  br label %if.end418

if.end418:                                        ; preds = %if.then414, %if.end411.if.end418_crit_edge
  %parent419 = getelementptr inbounds %struct.htb_class, ptr %cond, i32 0, i32 13
  %187 = ptrtoint ptr %parent419 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %parent419, align 4
  %tobool420.not = icmp eq ptr %188, null
  br i1 %tobool420.not, label %if.end418.cond.end425_crit_edge, label %cond.true421

if.end418.cond.end425_crit_edge:                  ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end425

cond.true421:                                     ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #19
  %level423 = getelementptr inbounds %struct.htb_class, ptr %188, i32 0, i32 11
  %189 = ptrtoint ptr %level423 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %level423, align 4
  %phi.bo = add i32 %190, -1
  br label %cond.end425

cond.end425:                                      ; preds = %cond.true421, %if.end418.cond.end425_crit_edge
  %cond426 = phi i32 [ %phi.bo, %cond.true421 ], [ 7, %if.end418.cond.end425_crit_edge ]
  %191 = ptrtoint ptr %level404 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %cond426, ptr %level404, align 4
  %192 = call ptr @memset(ptr %177, i32 0, i32 96)
  br label %if.end428

if.end428:                                        ; preds = %cond.end425, %land.lhs.true403.if.end428_crit_edge, %if.end401.if.end428_crit_edge
  %parent_qdisc.0 = phi ptr [ null, %land.lhs.true403.if.end428_crit_edge ], [ %181, %cond.end425 ], [ null, %if.end401.if.end428_crit_edge ]
  %tobool429.not = icmp eq ptr %call359, null
  %spec.select = select i1 %tobool429.not, ptr @noop_qdisc, ptr %call359
  %q434 = getelementptr inbounds %struct.htb_class, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %193 = ptrtoint ptr %q434 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %spec.select, ptr %q434, align 16
  %194 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool436.not = icmp eq i8 %195, 0
  br i1 %tobool436.not, label %if.end428.if.end438_crit_edge, label %if.then437

if.end428.if.end438_crit_edge:                    ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end438

if.then437:                                       ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #19
  %offload_queue = getelementptr inbounds %struct.htb_class, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 0, i32 3
  %196 = ptrtoint ptr %offload_queue to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %dev_queue.0, ptr %offload_queue, align 4
  br label %if.end438

if.end438:                                        ; preds = %if.then437, %if.end428.if.end438_crit_edge
  %parent439 = getelementptr inbounds %struct.htb_class, ptr %call7.i.i, i32 0, i32 13
  %197 = ptrtoint ptr %parent439 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %cond, ptr %parent439, align 4
  %buffer = getelementptr i8, ptr %16, i32 28
  %198 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %buffer, align 4
  %conv440 = zext i32 %199 to i64
  %shl = shl nuw nsw i64 %conv440, 6
  %tokens = getelementptr inbounds %struct.htb_class, ptr %call7.i.i, i32 0, i32 18
  %200 = ptrtoint ptr %tokens to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %shl, ptr %tokens, align 8
  %cbuffer = getelementptr i8, ptr %16, i32 32
  %201 = ptrtoint ptr %cbuffer to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %cbuffer, align 4
  %conv441 = zext i32 %202 to i64
  %shl442 = shl nuw nsw i64 %conv441, 6
  %ctokens = getelementptr inbounds %struct.htb_class, ptr %call7.i.i, i32 0, i32 19
  %203 = ptrtoint ptr %ctokens to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %shl442, ptr %ctokens, align 128
  %mbuffer = getelementptr inbounds %struct.htb_class, ptr %call7.i.i, i32 0, i32 5
  %204 = ptrtoint ptr %mbuffer to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 60000000000, ptr %mbuffer, align 16
  %call.i1108 = call i64 @ktime_get() #17
  %t_c = getelementptr inbounds %struct.htb_class, ptr %call7.i.i, i32 0, i32 20
  %205 = ptrtoint ptr %t_c to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %call.i1108, ptr %t_c, align 8
  %cmode444 = getelementptr inbounds %struct.htb_class, ptr %call7.i.i, i32 0, i32 24
  %206 = ptrtoint ptr %cmode444 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 2, ptr %cmode444, align 4
  call void @qdisc_class_hash_insert(ptr noundef %privdata.i, ptr noundef nonnull %call7.i.i) #17
  br i1 %tobool123.not, label %if.end438.if.end450_crit_edge, label %if.then447

if.end438.if.end450_crit_edge:                    ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end450

if.then447:                                       ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #19
  %children448 = getelementptr inbounds %struct.htb_class, ptr %cond, i32 0, i32 12
  %207 = ptrtoint ptr %children448 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %children448, align 16
  %inc449 = add i32 %208, 1
  store i32 %inc449, ptr %children448, align 16
  br label %if.end450

if.end450:                                        ; preds = %if.then447, %if.end438.if.end450_crit_edge
  %209 = ptrtoint ptr %q434 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %q434, align 16
  %cmp452.not = icmp eq ptr %210, @noop_qdisc
  br i1 %cmp452.not, label %if.end450.cleanup.thread1123_crit_edge, label %if.then454

if.end450.cleanup.thread1123_crit_edge:           ; preds = %if.end450
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread1123

if.then454:                                       ; preds = %if.end450
  call void @__sanitizer_cov_trace_pc() #19
  call void @qdisc_hash_add(ptr noundef %210, i1 noundef zeroext true) #17
  br label %cleanup.thread1123

cleanup.thread:                                   ; preds = %if.then142, %if.end135.cleanup.thread_crit_edge, %do.end133, %lor.lhs.false118.cleanup.thread_crit_edge, %lor.lhs.false116.cleanup.thread_crit_edge, %if.then109.cleanup.thread_crit_edge
  %err.2.ph = phi i32 [ -105, %if.end135.cleanup.thread_crit_edge ], [ -22, %if.then109.cleanup.thread_crit_edge ], [ -22, %lor.lhs.false116.cleanup.thread_crit_edge ], [ -22, %lor.lhs.false118.cleanup.thread_crit_edge ], [ %call140, %if.then142 ], [ -22, %do.end133 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %est) #17
  br label %cleanup792

cleanup.thread1123:                               ; preds = %if.then454, %if.end450.cleanup.thread1123_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %est) #17
  br label %if.end517

cleanup:                                          ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %est) #17
  br label %err_block_put

if.else461:                                       ; preds = %cond.end106
  %arrayidx462 = getelementptr ptr, ptr %tca, i32 5
  %211 = ptrtoint ptr %arrayidx462 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx462, align 4
  %tobool463.not = icmp eq ptr %212, null
  br i1 %tobool463.not, label %if.else461.if.end472_crit_edge, label %if.then464

if.else461.if.end472_crit_edge:                   ; preds = %if.else461
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end472

if.then464:                                       ; preds = %if.else461
  %bstats465 = getelementptr inbounds %struct.htb_class, ptr %2, i32 0, i32 15
  %rate_est466 = getelementptr inbounds %struct.htb_class, ptr %2, i32 0, i32 14
  %call468 = call i32 @gen_replace_estimator(ptr noundef %bstats465, ptr noundef null, ptr noundef %rate_est466, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %212) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call468)
  %tobool469.not = icmp eq i32 %call468, 0
  br i1 %tobool469.not, label %if.then464.if.end472_crit_edge, label %if.then464.cleanup792_crit_edge

if.then464.cleanup792_crit_edge:                  ; preds = %if.then464
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup792

if.then464.if.end472_crit_edge:                   ; preds = %if.then464
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end472

if.end472:                                        ; preds = %if.then464.if.end472_crit_edge, %if.else461.if.end472_crit_edge
  %213 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool474.not = icmp eq i8 %214, 0
  br i1 %tobool474.not, label %if.end472.if.end516_crit_edge, label %if.then475

if.end472.if.end516_crit_edge:                    ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end516

if.then475:                                       ; preds = %if.end472
  %dev_queue.i1109 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %215 = ptrtoint ptr %dev_queue.i1109 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev_queue.i1109, align 8
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %216, align 128
  %219 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %2, align 128
  %conv485 = trunc i32 %220 to i16
  %221 = ptrtoint ptr %rate12 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %rate12, align 4
  %conv490 = zext i32 %222 to i64
  %223 = call i64 @llvm.umax.i64(i64 %cond99, i64 %conv490)
  %224 = ptrtoint ptr %rate14 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %rate14, align 4
  %conv501 = zext i32 %225 to i64
  %226 = call i64 @llvm.umax.i64(i64 %cond107, i64 %conv501)
  %227 = ptrtoint ptr %offload_opt to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %extack, ptr %offload_opt, align 8
  %228 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 7, ptr %3, align 4
  %229 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 0, ptr %4, align 8
  %230 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %conv485, ptr %5, align 4
  %231 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 0, ptr %6, align 2
  %232 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %232)
  store i64 %223, ptr %7, align 8
  %233 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %233)
  store i64 %226, ptr %8, align 8
  %netdev_ops.i1110 = getelementptr inbounds %struct.net_device, ptr %218, i32 0, i32 16
  %234 = ptrtoint ptr %netdev_ops.i1110 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %netdev_ops.i1110, align 8
  %ndo_setup_tc.i1111 = getelementptr inbounds %struct.net_device_ops, ptr %235, i32 0, i32 42
  %236 = ptrtoint ptr %ndo_setup_tc.i1111 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %ndo_setup_tc.i1111, align 4
  %call.i1112 = call i32 %237(ptr noundef %218, i32 noundef 18, ptr noundef nonnull %offload_opt) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1112)
  %tobool510.not = icmp eq i32 %call.i1112, 0
  br i1 %tobool510.not, label %if.then475.if.end516_crit_edge, label %if.then475.cleanup792_crit_edge

if.then475.cleanup792_crit_edge:                  ; preds = %if.then475
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup792

if.then475.if.end516_crit_edge:                   ; preds = %if.then475
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end516

if.end516:                                        ; preds = %if.then475.if.end516_crit_edge, %if.end472.if.end516_crit_edge
  call fastcc void @sch_tree_lock(ptr noundef %sch)
  br label %if.end517

if.end517:                                        ; preds = %if.end516, %cleanup.thread1123
  %parent_qdisc.2 = phi ptr [ null, %if.end516 ], [ %parent_qdisc.0, %cleanup.thread1123 ]
  %cl.1 = phi ptr [ %2, %if.end516 ], [ %call7.i.i, %cleanup.thread1123 ]
  %rate518 = getelementptr inbounds %struct.htb_class, ptr %cl.1, i32 0, i32 1
  call void @psched_ratecfg_precompute(ptr noundef %rate518, ptr noundef %add.ptr.i, i64 noundef %cond99) #17
  %ceil520 = getelementptr inbounds %struct.htb_class, ptr %cl.1, i32 0, i32 2
  call void @psched_ratecfg_precompute(ptr noundef %ceil520, ptr noundef %ceil, i64 noundef %cond107) #17
  %level522 = getelementptr inbounds %struct.htb_class, ptr %cl.1, i32 0, i32 11
  %238 = ptrtoint ptr %level522 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %level522, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool523.not = icmp eq i32 %239, 0
  br i1 %tobool523.not, label %if.then524, label %if.end517.if.end767_crit_edge

if.end517.if.end767_crit_edge:                    ; preds = %if.end517
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end767

if.then524:                                       ; preds = %if.end517
  %240 = ptrtoint ptr %rate518 to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %rate518, align 16
  %rate2quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %242 = ptrtoint ptr %rate2quantum to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %rate2quantum, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %241)
  %cmp707 = icmp ult i64 %241, 4294967296
  br i1 %cmp707, label %if.then715, label %if.else721, !prof !120

if.then715:                                       ; preds = %if.then524
  call void @__sanitizer_cov_trace_pc() #19
  %conv716 = trunc i64 %241 to i32
  %div719 = udiv i32 %conv716, %243
  %conv720 = zext i32 %div719 to i64
  br label %if.end725

if.else721:                                       ; preds = %if.then524
  call void @__sanitizer_cov_trace_pc() #19
  %244 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %243, i64 %241) #23, !srcloc !123
  %asmresult1.i = extractvalue { i64, i64 } %244, 1
  br label %if.end725

if.end725:                                        ; preds = %if.else721, %if.then715
  %quantum525.0 = phi i64 [ %conv720, %if.then715 ], [ %asmresult1.i, %if.else721 ]
  %245 = call i64 @llvm.umin.i64(i64 %quantum525.0, i64 2147483647)
  %246 = trunc i64 %245 to i32
  %quantum735 = getelementptr inbounds %struct.htb_class, ptr %cl.1, i32 0, i32 7
  %247 = ptrtoint ptr %quantum735 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %quantum735, align 4
  %quantum736 = getelementptr i8, ptr %16, i32 36
  %248 = ptrtoint ptr %quantum736 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %quantum736, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool737.not = icmp eq i32 %249, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %246)
  %cmp740 = icmp ult i32 %246, 1000
  %or.cond = select i1 %tobool737.not, i1 %cmp740, i1 false
  %spec.store.select = select i1 %or.cond, i32 1000, i32 %246
  %250 = ptrtoint ptr %quantum735 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %spec.store.select, ptr %quantum735, align 4
  %spec.select1100 = sext i1 %or.cond to i32
  %251 = ptrtoint ptr %quantum736 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %quantum736, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool746.not = icmp eq i32 %252, 0
  br i1 %tobool746.not, label %land.lhs.true747, label %if.end725.if.then756_crit_edge

if.end725.if.then756_crit_edge:                   ; preds = %if.end725
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then756

land.lhs.true747:                                 ; preds = %if.end725
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %spec.store.select)
  %cmp749 = icmp ugt i32 %spec.store.select, 200000
  br i1 %cmp749, label %if.end753, label %land.lhs.true747.if.end759_crit_edge

land.lhs.true747.if.end759_crit_edge:             ; preds = %land.lhs.true747
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end759

if.end753:                                        ; preds = %land.lhs.true747
  %253 = ptrtoint ptr %quantum735 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 200000, ptr %quantum735, align 4
  %254 = ptrtoint ptr %quantum736 to i32
  call void @__asan_load4_noabort(i32 %254)
  %.pr = load i32, ptr %quantum736, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool755.not = icmp eq i32 %.pr, 0
  br i1 %tobool755.not, label %if.end753.if.end759_crit_edge, label %if.end753.if.then756_crit_edge

if.end753.if.then756_crit_edge:                   ; preds = %if.end753
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then756

if.end753.if.end759_crit_edge:                    ; preds = %if.end753
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end759

if.then756:                                       ; preds = %if.end753.if.then756_crit_edge, %if.end725.if.then756_crit_edge
  %warn.11149 = phi i32 [ 1, %if.end753.if.then756_crit_edge ], [ %spec.select1100, %if.end725.if.then756_crit_edge ]
  %255 = phi i32 [ %.pr, %if.end753.if.then756_crit_edge ], [ %252, %if.end725.if.then756_crit_edge ]
  %256 = ptrtoint ptr %quantum735 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %quantum735, align 4
  br label %if.end759

if.end759:                                        ; preds = %if.then756, %if.end753.if.end759_crit_edge, %land.lhs.true747.if.end759_crit_edge
  %warn.11145 = phi i32 [ %warn.11149, %if.then756 ], [ 1, %if.end753.if.end759_crit_edge ], [ %spec.select1100, %land.lhs.true747.if.end759_crit_edge ]
  %prio760 = getelementptr i8, ptr %16, i32 44
  %257 = ptrtoint ptr %prio760 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %prio760, align 4
  %prio761 = getelementptr inbounds %struct.htb_class, ptr %cl.1, i32 0, i32 6
  %259 = call i32 @llvm.umin.i32(i32 %258, i32 7)
  %260 = ptrtoint ptr %prio761 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %259, ptr %prio761, align 8
  br label %if.end767

if.end767:                                        ; preds = %if.end759, %if.end517.if.end767_crit_edge
  %warn.2 = phi i32 [ 0, %if.end517.if.end767_crit_edge ], [ %warn.11145, %if.end759 ]
  %buffer768 = getelementptr i8, ptr %16, i32 28
  %261 = ptrtoint ptr %buffer768 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %buffer768, align 4
  %conv769 = zext i32 %262 to i64
  %shl770 = shl nuw nsw i64 %conv769, 6
  %buffer771 = getelementptr inbounds %struct.htb_class, ptr %cl.1, i32 0, i32 3
  %263 = ptrtoint ptr %buffer771 to i32
  call void @__asan_store8_noabort(i32 %263)
  store i64 %shl770, ptr %buffer771, align 64
  %cbuffer772 = getelementptr i8, ptr %16, i32 32
  %264 = ptrtoint ptr %cbuffer772 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %cbuffer772, align 4
  %conv773 = zext i32 %265 to i64
  %shl774 = shl nuw nsw i64 %conv773, 6
  %cbuffer775 = getelementptr inbounds %struct.htb_class, ptr %cl.1, i32 0, i32 4
  %266 = ptrtoint ptr %cbuffer775 to i32
  call void @__asan_store8_noabort(i32 %266)
  store i64 %shl774, ptr %cbuffer775, align 8
  call fastcc void @sch_tree_unlock(ptr noundef %sch)
  call void @qdisc_put(ptr noundef %parent_qdisc.2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %warn.2)
  %tobool776.not = icmp eq i32 %warn.2, 0
  br i1 %tobool776.not, label %if.end767.if.end788_crit_edge, label %do.end780

if.end767.if.end788_crit_edge:                    ; preds = %if.end767
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end788

do.end780:                                        ; preds = %if.end767
  call void @__sanitizer_cov_trace_pc() #19
  %267 = ptrtoint ptr %cl.1 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %cl.1, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %warn.2)
  %cmp784 = icmp eq i32 %warn.2, -1
  %cond786 = select i1 %cmp784, ptr @.str.18, ptr @.str.19
  %call787 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %268, ptr noundef nonnull %cond786) #20
  br label %if.end788

if.end788:                                        ; preds = %do.end780, %if.end767.if.end788_crit_edge
  call void @qdisc_class_hash_grow(ptr noundef %sch, ptr noundef %privdata.i) #17
  %269 = ptrtoint ptr %cl.1 to i32
  %270 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %269, ptr %arg, align 4
  br label %cleanup792

err_kill_estimator:                               ; preds = %do.end346, %do.end264
  %err.2.ph1129 = phi i32 [ %call.i1107, %do.end346 ], [ %call.i1104, %do.end264 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %est) #17
  %rate_est790 = getelementptr inbounds %struct.htb_class, ptr %call7.i.i, i32 0, i32 14
  call void @gen_kill_estimator(ptr noundef %rate_est790) #17
  br label %err_block_put

err_block_put:                                    ; preds = %err_kill_estimator, %cleanup
  %err.21137 = phi i32 [ %err.2.ph1129, %err_kill_estimator ], [ %call157, %cleanup ]
  %271 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %block, align 4
  call void @tcf_block_put(ptr noundef %272) #17
  call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup792

cleanup792:                                       ; preds = %err_block_put, %if.end788, %if.then475.cleanup792_crit_edge, %if.then464.cleanup792_crit_edge, %cleanup.thread, %if.then66, %do.body63.cleanup792_crit_edge, %if.then55, %do.body52.cleanup792_crit_edge, %if.then44, %do.body41.cleanup792_crit_edge, %if.then29, %do.body.cleanup792_crit_edge, %lor.lhs.false.cleanup792_crit_edge, %cond.end.cleanup792_crit_edge, %if.end3.cleanup792_crit_edge, %if.end.cleanup792_crit_edge, %entry.cleanup792_crit_edge
  %retval.1 = phi i32 [ 0, %if.end788 ], [ %call.i1112, %if.then475.cleanup792_crit_edge ], [ %call468, %if.then464.cleanup792_crit_edge ], [ %call2.i, %if.end.cleanup792_crit_edge ], [ -22, %if.end3.cleanup792_crit_edge ], [ %err.21137, %err_block_put ], [ -22, %lor.lhs.false.cleanup792_crit_edge ], [ -22, %cond.end.cleanup792_crit_edge ], [ -22, %entry.cleanup792_crit_edge ], [ -22, %if.then29 ], [ -22, %do.body.cleanup792_crit_edge ], [ -22, %if.then44 ], [ -22, %do.body41.cleanup792_crit_edge ], [ -22, %if.then55 ], [ -22, %do.body52.cleanup792_crit_edge ], [ -22, %if.then66 ], [ -22, %do.body63.cleanup792_crit_edge ], [ %err.2.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tb) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %offload_opt) #17
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htb_delete(ptr noundef %sch, i32 noundef %arg, ptr noundef %extack) #2 align 64 {
entry:
  %qstats.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = inttoptr i32 %arg to ptr
  %children = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 12
  %1 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %children, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %filter_cnt = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 10
  %3 = ptrtoint ptr %filter_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %filter_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %level = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 11
  %5 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %parent.i = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 13
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %land.lhs.true.htb_parent_last_child.exit_crit_edge, label %if.end.i

land.lhs.true.htb_parent_last_child.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_parent_last_child.exit

if.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %children.i = getelementptr inbounds %struct.htb_class, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %children.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i = icmp ult i32 %10, 2
  %..i = zext i1 %cmp.i to i32
  br label %htb_parent_last_child.exit

htb_parent_last_child.exit:                       ; preds = %if.end.i, %land.lhs.true.htb_parent_last_child.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %land.lhs.true.htb_parent_last_child.exit_crit_edge ], [ %..i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not = icmp eq i32 %retval.0.i, 0
  %not.tobool4.not = xor i1 %tobool4.not, true
  br label %if.end6

if.end6:                                          ; preds = %htb_parent_last_child.exit, %if.end.if.end6_crit_edge
  %tobool15.not = phi i1 [ true, %if.end.if.end6_crit_edge ], [ %tobool4.not, %htb_parent_last_child.exit ]
  %tobool9 = phi i1 [ false, %if.end.if.end6_crit_edge ], [ %not.tobool4.not, %htb_parent_last_child.exit ]
  %offload = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 40
  %11 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %if.end6.if.end14_crit_edge, label %if.then8

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  %call10 = tail call fastcc i32 @htb_destroy_class_offload(ptr noundef %sch, ptr noundef %0, i1 noundef zeroext %tobool9, i1 noundef zeroext false, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then8.if.end14_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  br i1 %tobool15.not, label %if.end14.if.end31_crit_edge, label %if.then16

if.end14.if.end31_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then16:                                        ; preds = %if.end14
  %dev_queue17 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %13 = ptrtoint ptr %dev_queue17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_queue17, align 8
  %15 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool19.not = icmp eq i8 %16, 0
  br i1 %tobool19.not, label %if.then16.if.end22_crit_edge, label %if.then20

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then20:                                        ; preds = %if.then16
  %offload_queue.i = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 21, i32 0, i32 0, i32 3
  %17 = ptrtoint ptr %offload_queue.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %offload_queue.i, align 4
  %q.i = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %q.i, align 16
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i95 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i95, label %if.then.i, label %if.then20.if.end22_crit_edge

if.then20.if.end22_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then.i:                                        ; preds = %if.then20
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %20, i32 0, i32 9
  %23 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_queue.i, align 8
  %cmp.not.i = icmp eq ptr %24, %18
  br i1 %cmp.not.i, label %if.then.i.if.end22_crit_edge, label %do.end.i, !prof !120

if.then.i.if.end22_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1427, i32 noundef 9, ptr noundef null) #17
  br label %if.end22

if.end22:                                         ; preds = %do.end.i, %if.then.i.if.end22_crit_edge, %if.then20.if.end22_crit_edge, %if.then16.if.end22_crit_edge
  %dev_queue.0 = phi ptr [ %14, %if.then16.if.end22_crit_edge ], [ %18, %if.then20.if.end22_crit_edge ], [ %18, %if.then.i.if.end22_crit_edge ], [ %18, %do.end.i ]
  %parent = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 13
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 128
  %call23 = tail call ptr @qdisc_create_dflt(ptr noundef %dev_queue.0, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %28, ptr noundef null) #17
  %29 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool25.not = icmp eq i8 %30, 0
  br i1 %tobool25.not, label %if.end22.if.end31_crit_edge, label %if.then26

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then26:                                        ; preds = %if.end22
  %tobool27.not = icmp eq ptr %call23, null
  br i1 %tobool27.not, label %if.then26.if.end.i98_crit_edge, label %if.then.i97

if.then26.if.end.i98_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i98

if.then.i97:                                      ; preds = %if.then26
  %dep_map.i = getelementptr inbounds %struct.Qdisc, ptr %call23, i32 0, i32 17, i32 3, i32 0, i32 0, i32 4
  %wait_type_inner.i = getelementptr inbounds %struct.Qdisc, ptr %call23, i32 0, i32 17, i32 3, i32 0, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %wait_type_inner.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @htb_set_lockdep_class_child.child_key, i32 noundef 0, i8 noundef zeroext %32, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %call23, i32 0, i32 2
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i97.if.end.i98_crit_edge

if.then.i97.if.end.i98_crit_edge:                 ; preds = %if.then.i97
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i98

if.end.i.i:                                       ; preds = %if.then.i97
  %refcnt.i.i = getelementptr inbounds %struct.Qdisc, ptr %call23, i32 0, i32 14
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #17
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #17, !srcloc !122
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !118

if.end.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %36 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %.not.i.i.i.i.i = icmp sgt i32 %36, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end.i98_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !120

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end.i98_crit_edge:           ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i98

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #17
  br label %if.end.i98

if.end.i98:                                       ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end.i98_crit_edge, %if.then.i97.if.end.i98_crit_edge, %if.then26.if.end.i98_crit_edge
  %37 = ptrtoint ptr %dev_queue.0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_queue.0, align 128
  %flags.i1.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 14
  %39 = ptrtoint ptr %flags.i1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i1.i, align 8
  %and.i2.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i3.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i3.i, label %if.end.i98.if.end.i4.i_crit_edge, label %if.then.i.i

if.end.i98.if.end.i4.i_crit_edge:                 ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i4.i

if.then.i.i:                                      ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dev_deactivate(ptr noundef %38) #17
  br label %if.end.i4.i

if.end.i4.i:                                      ; preds = %if.then.i.i, %if.end.i98.if.end.i4.i_crit_edge
  %call.i.i = tail call ptr @dev_graft_qdisc(ptr noundef %dev_queue.0, ptr noundef %call23) #17
  br i1 %tobool27.not, label %if.end.i4.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i4.i.if.end5.i.i_crit_edge:                ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #19
  %flags4.i.i = getelementptr inbounds %struct.Qdisc, ptr %call23, i32 0, i32 2
  %41 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags4.i.i, align 8
  %or.i.i = or i32 %42, 80
  store i32 %or.i.i, ptr %flags4.i.i, align 8
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i4.i.if.end5.i.i_crit_edge
  %43 = ptrtoint ptr %flags.i1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i1.i, align 8
  %and7.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end5.i.i.htb_graft_helper.exit.i_crit_edge, label %if.then9.i.i

if.end5.i.i.htb_graft_helper.exit.i_crit_edge:    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_graft_helper.exit.i

if.then9.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dev_activate(ptr noundef %38) #17
  br label %htb_graft_helper.exit.i

htb_graft_helper.exit.i:                          ; preds = %if.then9.i.i, %if.end5.i.i.htb_graft_helper.exit.i_crit_edge
  %flags.i99 = getelementptr inbounds %struct.Qdisc, ptr %call.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %flags.i99 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i99, align 8
  %and.i100 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %tobool1.not.i = icmp eq i32 %and.i100, 0
  br i1 %tobool1.not.i, label %do.end.i101, label %htb_graft_helper.exit.i.if.end31_crit_edge, !prof !118

htb_graft_helper.exit.i.if.end31_crit_edge:       ; preds = %htb_graft_helper.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

do.end.i101:                                      ; preds = %htb_graft_helper.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1559, i32 noundef 9, ptr noundef null) #17
  br label %if.end31

if.end31:                                         ; preds = %do.end.i101, %htb_graft_helper.exit.i.if.end31_crit_edge, %if.end22.if.end31_crit_edge, %if.end14.if.end31_crit_edge
  %new_q.0 = phi ptr [ null, %if.end14.if.end31_crit_edge ], [ %call23, %if.end22.if.end31_crit_edge ], [ %call23, %htb_graft_helper.exit.i.if.end31_crit_edge ], [ %call23, %do.end.i101 ]
  %flags.i102 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %47 = ptrtoint ptr %flags.i102 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i102, align 8
  %and.i103 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %tobool.not.i104 = icmp eq i32 %and.i103, 0
  br i1 %tobool.not.i104, label %if.else.i, label %if.end31.sch_tree_lock.exit_crit_edge

if.end31.sch_tree_lock.exit_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.end31
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %49 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i105 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i105, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i106, !prof !120

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sch_tree_lock.exit

if.then.i.i106:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #17
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i106, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end31.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end31.sch_tree_lock.exit_crit_edge ], [ %52, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %52, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %52, %if.then.i.i106 ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #17
  %53 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool33.not = icmp eq i32 %54, 0
  br i1 %tobool33.not, label %if.then34, label %sch_tree_lock.exit.if.end36_crit_edge

sch_tree_lock.exit.if.end36_crit_edge:            ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.then34:                                        ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  %q35 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %55 = ptrtoint ptr %q35 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %q35, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i) #17
  %57 = call ptr @memset(ptr %qstats.i.i, i32 0, i32 20)
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %56, i32 0, i32 12
  %58 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cpu_qstats.i.i, align 4
  %qstats1.i.i = getelementptr inbounds %struct.Qdisc, ptr %56, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i, ptr noundef %59, ptr noundef %qstats1.i.i) #17
  %60 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %qstats.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %56, i32 0, i32 17, i32 2
  %62 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %qlen.i.i.i, align 8
  %add.i.i = add i32 %63, %61
  %backlog3.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %backlog3.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %backlog3.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i) #17
  call void @qdisc_reset(ptr noundef %56) #17
  call void @qdisc_tree_reduce_backlog(ptr noundef %56, i32 noundef %add.i.i, i32 noundef %65) #17
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %sch_tree_lock.exit.if.end36_crit_edge
  call void @qdisc_class_hash_remove(ptr noundef %privdata.i, ptr noundef %0) #17
  %parent38 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 13
  %66 = ptrtoint ptr %parent38 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %parent38, align 4
  %tobool39.not = icmp eq ptr %67, null
  br i1 %tobool39.not, label %if.end36.if.end43_crit_edge, label %if.then40

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  %children42 = getelementptr inbounds %struct.htb_class, ptr %67, i32 0, i32 12
  %68 = ptrtoint ptr %children42 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %children42, align 16
  %dec = add i32 %69, -1
  store i32 %dec, ptr %children42, align 16
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end36.if.end43_crit_edge
  %prio_activity = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 23
  %70 = ptrtoint ptr %prio_activity to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %prio_activity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool44.not = icmp eq i32 %71, 0
  br i1 %tobool44.not, label %if.end43.if.end46_crit_edge, label %htb_deactivate.exit

if.end43.if.end46_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

htb_deactivate.exit:                              ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @htb_deactivate_prios(ptr noundef %privdata.i, ptr noundef %0) #17
  %72 = ptrtoint ptr %prio_activity to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %prio_activity, align 8
  br label %if.end46

if.end46:                                         ; preds = %htb_deactivate.exit, %if.end43.if.end46_crit_edge
  %cmode = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 24
  %73 = ptrtoint ptr %cmode to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp.not = icmp eq i32 %74, 2
  br i1 %cmp.not, label %if.end46.if.end49_crit_edge, label %if.then47

if.end46.if.end49_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then47:                                        ; preds = %if.end46
  %pq_node = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 25
  %75 = ptrtoint ptr %pq_node to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pq_node, align 4
  %77 = ptrtoint ptr %pq_node to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %77)
  %cmp.i111 = icmp eq i32 %76, %77
  br i1 %cmp.i111, label %do.end.i112, label %if.else.i113

do.end.i112:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 375, i32 noundef 9, ptr noundef null) #17
  br label %if.end49

if.else.i113:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #19
  %78 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %level, align 4
  %arrayidx = getelementptr %struct.htb_sched, ptr %privdata.i, i32 0, i32 15, i32 %79
  call void @rb_erase(ptr noundef %pq_node, ptr noundef %arrayidx) #17
  %80 = ptrtoint ptr %pq_node to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %77, ptr %pq_node, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else.i113, %do.end.i112, %if.end46.if.end49_crit_edge
  br i1 %tobool15.not, label %if.end49.if.end52_crit_edge, label %if.then51

if.end49.if.end52_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @htb_parent_to_leaf(ptr noundef %sch, ptr noundef %0, ptr noundef %new_q.0)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end49.if.end52_crit_edge
  %81 = ptrtoint ptr %flags.i102 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags.i102, align 8
  %and.i115 = and i32 %82, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool.not.i116 = icmp eq i32 %and.i115, 0
  br i1 %tobool.not.i116, label %if.else.i121, label %if.end52.sch_tree_unlock.exit_crit_edge

if.end52.sch_tree_unlock.exit_crit_edge:          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %sch_tree_unlock.exit

if.else.i121:                                     ; preds = %if.end52
  %dev_queue.i.i.i117 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %83 = ptrtoint ptr %dev_queue.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev_queue.i.i.i117, align 8
  %qdisc_sleeping.i.i.i118 = getelementptr inbounds %struct.netdev_queue, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %qdisc_sleeping.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %qdisc_sleeping.i.i.i118, align 4
  %call1.i.i119 = call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i119)
  %tobool.not.i.i120 = icmp eq i32 %call1.i.i119, 0
  br i1 %tobool.not.i.i120, label %land.rhs.i.i123, label %if.else.i121.sch_tree_unlock.exit_crit_edge

if.else.i121.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i121
  call void @__sanitizer_cov_trace_pc() #19
  br label %sch_tree_unlock.exit

land.rhs.i.i123:                                  ; preds = %if.else.i121
  %.b41.i.i122 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i122, label %land.rhs.i.i123.sch_tree_unlock.exit_crit_edge, label %if.then.i.i124, !prof !120

land.rhs.i.i123.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i123
  call void @__sanitizer_cov_trace_pc() #19
  br label %sch_tree_unlock.exit

if.then.i.i124:                                   ; preds = %land.rhs.i.i123
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #17
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i124, %land.rhs.i.i123.sch_tree_unlock.exit_crit_edge, %if.else.i121.sch_tree_unlock.exit_crit_edge, %if.end52.sch_tree_unlock.exit_crit_edge
  %.sink.i125 = phi ptr [ %sch, %if.end52.sch_tree_unlock.exit_crit_edge ], [ %86, %if.else.i121.sch_tree_unlock.exit_crit_edge ], [ %86, %land.rhs.i.i123.sch_tree_unlock.exit_crit_edge ], [ %86, %if.then.i.i124 ]
  %lock.i.i.i126 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i125, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i126) #17
  %87 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i128 = icmp eq i32 %88, 0
  br i1 %tobool.not.i128, label %if.then.i131, label %sch_tree_unlock.exit.htb_destroy_class.exit_crit_edge

sch_tree_unlock.exit.htb_destroy_class.exit_crit_edge: ; preds = %sch_tree_unlock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_destroy_class.exit

if.then.i131:                                     ; preds = %sch_tree_unlock.exit
  %q.i129 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %89 = ptrtoint ptr %q.i129 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %q.i129, align 16
  %tobool1.not.i130 = icmp eq ptr %90, null
  br i1 %tobool1.not.i130, label %do.end.i132, label %if.then.i131.if.end.i133_crit_edge, !prof !118

if.then.i131.if.end.i133_crit_edge:               ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i133

do.end.i132:                                      ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1623, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i133

if.end.i133:                                      ; preds = %do.end.i132, %if.then.i131.if.end.i133_crit_edge
  %91 = ptrtoint ptr %q.i129 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %q.i129, align 16
  call void @qdisc_put(ptr noundef %92) #17
  br label %htb_destroy_class.exit

htb_destroy_class.exit:                           ; preds = %if.end.i133, %sch_tree_unlock.exit.htb_destroy_class.exit_crit_edge
  %rate_est.i = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 14
  call void @gen_kill_estimator(ptr noundef %rate_est.i) #17
  %block.i = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 9
  %93 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %block.i, align 4
  call void @tcf_block_put(ptr noundef %94) #17
  call void @kfree(ptr noundef %0) #17
  br label %cleanup

cleanup:                                          ; preds = %htb_destroy_class.exit, %if.then8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %htb_destroy_class.exit ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %entry.cleanup_crit_edge ], [ %call10, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htb_walk(ptr noundef %sch, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %2 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp55.not = icmp eq i32 %3, 0
  br i1 %cmp55.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %for.inc28.for.body_crit_edge ]
  %4 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %privdata.i, align 8
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %i.056
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -4
  %tobool5.not5357 = icmp eq ptr %add.ptr, null
  %tobool5.not53 = or i1 %tobool2.not, %tobool5.not5357
  br i1 %tobool5.not53, label %for.body.for.inc28_crit_edge, label %for.body.for.body6_crit_edge

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body.for.inc28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc28

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %cl.054 = phi ptr [ %add.ptr24, %for.inc.for.body6_crit_edge ], [ %add.ptr, %for.body.for.body6_crit_edge ]
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %10 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp7 = icmp slt i32 %9, %11
  br i1 %cmp7, label %for.body6.for.inc_crit_edge, label %if.end10

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end10:                                         ; preds = %for.body6
  %12 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fn, align 4
  %14 = ptrtoint ptr %cl.054 to i32
  %call11 = tail call i32 %13(ptr noundef %sch, i32 noundef %14, ptr noundef %arg) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %arg, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body6.for.inc_crit_edge
  %storemerge.in = phi i32 [ %17, %if.end15 ], [ %9, %for.body6.for.inc_crit_edge ]
  %storemerge = add i32 %storemerge.in, 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %count, align 4
  %hnode = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.054, i32 0, i32 1
  %19 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hnode, align 4
  %tobool20.not = icmp eq ptr %20, null
  %add.ptr24 = getelementptr i8, ptr %20, i32 -4
  %tobool5.not58 = icmp eq ptr %add.ptr24, null
  %tobool5.not = or i1 %tobool20.not, %tobool5.not58
  br i1 %tobool5.not, label %for.inc.for.inc28_crit_edge, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body6

for.inc.for.inc28_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc28

for.inc28:                                        ; preds = %for.inc.for.inc28_crit_edge, %for.body.for.inc28_crit_edge
  %inc29 = add nuw i32 %i.056, 1
  %21 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hashsize, align 4
  %cmp = icmp ult i32 %inc29, %22
  br i1 %cmp, label %for.inc28.for.body_crit_edge, label %for.inc28.cleanup_crit_edge

for.inc28.cleanup_crit_edge:                      ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup:                                          ; preds = %for.inc28.cleanup_crit_edge, %if.then13, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @htb_tcf_block(ptr nocapture noundef readonly %sch, i32 noundef %arg, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not = icmp eq i32 %arg, 0
  %0 = inttoptr i32 %arg to ptr
  %block = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 9
  %block1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %cond.in = select i1 %tobool.not, ptr %block1, ptr %block
  %1 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %cond = load ptr, ptr %cond.in, align 4
  ret ptr %cond
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htb_bind_filter(ptr nocapture noundef readonly %sch, i32 noundef %parent, i32 noundef %classid) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %classid)
  %tobool.not.i.i = icmp eq i32 %classid, 0
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %if.end.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %hashmask.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %0 = ptrtoint ptr %hashmask.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hashmask.i.i, align 4
  %shr.i.i.i = lshr i32 %classid, 8
  %xor.i.i.i = xor i32 %shr.i.i.i, %classid
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 4
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  %and.i.i.i = and i32 %1, %xor2.i.i.i
  %2 = ptrtoint ptr %privdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %privdata.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %3, i32 %and.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %5, null
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -4
  %tobool4.not3033.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool4.not30.i.i = or i1 %tobool2.not.i.i, %tobool4.not3033.i.i
  br i1 %tobool4.not30.i.i, label %if.end.i.i.if.end_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cl.031.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %cl.031.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cl.031.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %classid)
  %cmp.i.i = icmp eq i32 %7, %classid
  br i1 %cmp.i.i, label %if.then, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hnode.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %hnode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hnode.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %9, null
  %add.ptr13.i.i = getelementptr i8, ptr %9, i32 -4
  %tobool4.not34.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool4.not.i.i = or i1 %tobool9.not.i.i, %tobool4.not34.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.if.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %filter_cnt = getelementptr inbounds %struct.htb_class, ptr %cl.031.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %filter_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %filter_cnt, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %filter_cnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.inc.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.i5 = phi ptr [ %cl.031.i.i, %if.then ], [ null, %entry.if.end_crit_edge ], [ null, %if.end.i.i.if.end_crit_edge ], [ null, %for.inc.i.i.if.end_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i.i5 to i32
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @htb_unbind_filter(ptr nocapture noundef readnone %sch, i32 noundef %arg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not = icmp eq i32 %arg, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %0 = inttoptr i32 %arg to ptr
  %filter_cnt = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 10
  %1 = ptrtoint ptr %filter_cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %filter_cnt, align 8
  %dec = add i32 %2, -1
  store i32 %dec, ptr %filter_cnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htb_dump_class(ptr nocapture noundef readonly %sch, i32 noundef %arg, ptr noundef %skb, ptr nocapture noundef writeonly %tcm) #2 align 64 {
entry:
  %tmp.i94 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  %opt = alloca %struct.tc_htb_opt, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %opt) #17
  %parent = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 13
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 128
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  %tcm_parent = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 5
  %5 = ptrtoint ptr %tcm_parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %tcm_parent, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 128
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %8 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tcm_handle, align 4
  %level = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 11
  %9 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %land.lhs.true, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %q5 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %q5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %q5, align 16
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %handle = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %handle, align 32
  %tcm_info = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 6
  %15 = ptrtoint ptr %tcm_info to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tcm_info, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %cond.end.if.end_crit_edge
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp97 = icmp eq ptr %17, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp97
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %rate11 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 1
  %18 = ptrtoint ptr %opt to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %opt, align 8
  %19 = ptrtoint ptr %rate11 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rate11, align 8
  %21 = tail call i64 @llvm.umin.i64(i64 %20, i64 4294967295) #17
  %22 = trunc i64 %21 to i32
  %rate.i = getelementptr inbounds %struct.tc_ratespec, ptr %opt, i32 0, i32 5
  %23 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rate.i, align 8
  %overhead.i = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %overhead.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %overhead.i, align 4
  %overhead1.i = getelementptr inbounds %struct.tc_ratespec, ptr %opt, i32 0, i32 2
  %26 = ptrtoint ptr %overhead1.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %overhead1.i, align 2
  %mpu.i = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %mpu.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mpu.i, align 2
  %mpu2.i = getelementptr inbounds %struct.tc_ratespec, ptr %opt, i32 0, i32 4
  %29 = ptrtoint ptr %mpu2.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %mpu2.i, align 2
  %linklayer.i = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %linklayer.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %linklayer.i, align 8
  %32 = and i8 %31, 15
  %linklayer5.i = getelementptr inbounds %struct.tc_ratespec, ptr %opt, i32 0, i32 1
  %33 = ptrtoint ptr %linklayer5.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %linklayer5.i, align 1
  %buffer = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 3
  %34 = ptrtoint ptr %buffer to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %buffer, align 64
  %36 = lshr i64 %35, 6
  %conv = trunc i64 %36 to i32
  %buffer12 = getelementptr inbounds %struct.tc_htb_opt, ptr %opt, i32 0, i32 2
  %37 = ptrtoint ptr %buffer12 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv, ptr %buffer12, align 8
  %ceil = getelementptr inbounds %struct.tc_htb_opt, ptr %opt, i32 0, i32 1
  %ceil13 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 2
  %38 = ptrtoint ptr %ceil to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 0, ptr %ceil, align 4
  %39 = ptrtoint ptr %ceil13 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %ceil13, align 8
  %41 = tail call i64 @llvm.umin.i64(i64 %40, i64 4294967295) #17
  %42 = trunc i64 %41 to i32
  %rate.i86 = getelementptr inbounds %struct.tc_htb_opt, ptr %opt, i32 0, i32 1, i32 5
  %43 = ptrtoint ptr %rate.i86 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %rate.i86, align 4
  %overhead.i87 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %overhead.i87 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %overhead.i87, align 4
  %overhead1.i88 = getelementptr inbounds %struct.tc_htb_opt, ptr %opt, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %overhead1.i88 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %overhead1.i88, align 2
  %mpu.i89 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 2, i32 3
  %47 = ptrtoint ptr %mpu.i89 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mpu.i89, align 2
  %mpu2.i90 = getelementptr inbounds %struct.tc_htb_opt, ptr %opt, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %mpu2.i90 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %mpu2.i90, align 2
  %linklayer.i91 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 2, i32 4
  %50 = ptrtoint ptr %linklayer.i91 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %linklayer.i91, align 8
  %52 = and i8 %51, 15
  %linklayer5.i92 = getelementptr inbounds %struct.tc_htb_opt, ptr %opt, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %linklayer5.i92 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %linklayer5.i92, align 1
  %cbuffer = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 4
  %54 = ptrtoint ptr %cbuffer to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %cbuffer, align 8
  %56 = lshr i64 %55, 6
  %conv15 = trunc i64 %56 to i32
  %cbuffer16 = getelementptr inbounds %struct.tc_htb_opt, ptr %opt, i32 0, i32 3
  %57 = ptrtoint ptr %cbuffer16 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv15, ptr %cbuffer16, align 4
  %quantum = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 7
  %58 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %quantum, align 4
  %quantum17 = getelementptr inbounds %struct.tc_htb_opt, ptr %opt, i32 0, i32 4
  %60 = ptrtoint ptr %quantum17 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %quantum17, align 8
  %prio = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 6
  %61 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %prio, align 8
  %prio18 = getelementptr inbounds %struct.tc_htb_opt, ptr %opt, i32 0, i32 6
  %63 = ptrtoint ptr %prio18 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %prio18, align 8
  %64 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %level, align 4
  %level20 = getelementptr inbounds %struct.tc_htb_opt, ptr %opt, i32 0, i32 5
  %66 = ptrtoint ptr %level20 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %level20, align 4
  %call21 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 44, ptr noundef nonnull %opt) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end10.if.then.i.i_crit_edge

if.end10.if.then.i.i_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

if.end24:                                         ; preds = %if.end10
  %offload = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 40
  %67 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool25.not = icmp eq i8 %68, 0
  br i1 %tobool25.not, label %if.end24.if.end31_crit_edge, label %land.lhs.true27

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

land.lhs.true27:                                  ; preds = %if.end24
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 0, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %land.lhs.true27.if.end31_crit_edge, label %land.lhs.true27.if.then.i.i_crit_edge

land.lhs.true27.if.then.i.i_crit_edge:            ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

land.lhs.true27.if.end31_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true27.if.end31_crit_edge, %if.end24.if.end31_crit_edge
  %69 = ptrtoint ptr %rate11 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %rate11, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %70)
  %cmp33 = icmp ugt i64 %70, 4294967295
  br i1 %cmp33, label %land.lhs.true35, label %if.end31.if.end41_crit_edge

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

land.lhs.true35:                                  ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #17
  %71 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %tmp.i, align 8
  %call.i93 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 6, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool39.not = icmp eq i32 %call.i93, 0
  br i1 %tobool39.not, label %land.lhs.true35.if.end41_crit_edge, label %land.lhs.true35.if.then.i.i_crit_edge

land.lhs.true35.if.then.i.i_crit_edge:            ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

land.lhs.true35.if.end41_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true35.if.end41_crit_edge, %if.end31.if.end41_crit_edge
  %72 = ptrtoint ptr %ceil13 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %ceil13, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %73)
  %cmp44 = icmp ugt i64 %73, 4294967295
  br i1 %cmp44, label %land.lhs.true46, label %if.end41.if.end52_crit_edge

if.end41.if.end52_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

land.lhs.true46:                                  ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i94) #17
  %74 = ptrtoint ptr %tmp.i94 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %tmp.i94, align 8
  %call.i95 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 7, i32 noundef 8, ptr noundef nonnull %tmp.i94, i32 noundef 8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i94) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool50.not = icmp eq i32 %call.i95, 0
  br i1 %tobool50.not, label %land.lhs.true46.if.end52_crit_edge, label %land.lhs.true46.if.then.i.i_crit_edge

land.lhs.true46.if.then.i.i_crit_edge:            ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

land.lhs.true46.if.end52_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true46.if.end52_crit_edge, %if.end41.if.end52_crit_edge
  %75 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %77 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv.i, ptr %17, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %78 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %land.lhs.true46.if.then.i.i_crit_edge, %land.lhs.true35.if.then.i.i_crit_edge, %land.lhs.true27.if.then.i.i_crit_edge, %if.end10.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %80 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %81, %17
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !118

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 991, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %82 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %83 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end52, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %79, %if.end52 ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %opt) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htb_dump_class_stats(ptr nocapture noundef readonly %sch, i32 noundef %arg, ptr noundef %d) #2 align 64 {
entry:
  %qstats.i = alloca %struct.gnet_stats_queue, align 4
  %qs = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qs) #17
  %1 = getelementptr inbounds %struct.gnet_stats_queue, ptr %qs, i32 0, i32 1
  %2 = getelementptr inbounds %struct.gnet_stats_queue, ptr %qs, i32 0, i32 2
  %3 = getelementptr inbounds %struct.gnet_stats_queue, ptr %qs, i32 0, i32 3
  %4 = getelementptr inbounds %struct.gnet_stats_queue, ptr %qs, i32 0, i32 4
  %5 = ptrtoint ptr %qs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qs, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %1, align 4
  %drops1 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 28
  %7 = ptrtoint ptr %drops1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %drops1, align 128
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %2, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %3, align 4
  %overlimits2 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 29
  %11 = ptrtoint ptr %overlimits2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %overlimits2, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %4, align 4
  %level = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 11
  %14 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %q4 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %q4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %q4, align 16
  %tobool5.not = icmp eq ptr %17, null
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i) #17
  %18 = call ptr @memset(ptr %qstats.i, i32 0, i32 20)
  %cpu_qstats.i = getelementptr inbounds %struct.Qdisc, ptr %17, i32 0, i32 12
  %19 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cpu_qstats.i, align 4
  %qstats1.i = getelementptr inbounds %struct.Qdisc, ptr %17, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i, ptr noundef %20, ptr noundef %qstats1.i) #17
  %21 = ptrtoint ptr %qstats.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qstats.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %17, i32 0, i32 17, i32 2
  %23 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qlen.i.i, align 8
  %add.i = add i32 %24, %22
  %backlog3.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i, i32 0, i32 1
  %25 = ptrtoint ptr %backlog3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %backlog3.i, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %qlen3.0 = phi i32 [ 0, %land.lhs.true.if.end_crit_edge ], [ %add.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %tokens = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 18
  %28 = ptrtoint ptr %tokens to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tokens, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -137438953409, i64 %29)
  %cmp = icmp sgt i64 %29, -137438953409
  %shr = ashr i64 %29, 6
  %30 = call i64 @llvm.smin.i64(i64 %shr, i64 2147483647)
  %31 = trunc i64 %30 to i32
  %32 = select i1 %cmp, i32 %31, i32 -2147483648
  %xstats = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 17
  %tokens14 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 17, i32 3
  %33 = ptrtoint ptr %tokens14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %tokens14, align 4
  %ctokens = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 19
  %34 = ptrtoint ptr %ctokens to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ctokens, align 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 -137438953409, i64 %35)
  %cmp17 = icmp sgt i64 %35, -137438953409
  %shr15 = ashr i64 %35, 6
  %36 = call i64 @llvm.smin.i64(i64 %shr15, i64 2147483647)
  %37 = trunc i64 %36 to i32
  %38 = select i1 %cmp17, i32 %37, i32 -2147483648
  %ctokens32 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 17, i32 4
  %39 = ptrtoint ptr %ctokens32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %ctokens32, align 16
  %offload = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 40
  %40 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool33.not = icmp eq i8 %41, 0
  br i1 %tobool33.not, label %if.end.if.end52_crit_edge, label %if.then34

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.then34:                                        ; preds = %if.end
  %42 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool36.not = icmp eq i32 %43, 0
  br i1 %tobool36.not, label %if.then37, label %if.else50

if.then37:                                        ; preds = %if.then34
  %q38 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %q38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %q38, align 16
  %tobool39.not = icmp eq ptr %45, null
  %bstats43 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 15
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #19
  %bstats42 = getelementptr inbounds %struct.Qdisc, ptr %45, i32 0, i32 18
  %46 = call ptr @memcpy(ptr %bstats43, ptr %bstats42, i32 48)
  br label %if.end44

if.else:                                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #19
  call void @gnet_stats_basic_sync_init(ptr noundef %bstats43) #17
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then40
  %bstats45 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 15
  %bstats_bias = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 16
  %47 = ptrtoint ptr %bstats_bias to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %bstats_bias, align 8
  %packets = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 16, i32 1
  %49 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %packets, align 8
  %conv49 = trunc i64 %50 to i32
  call fastcc void @_bstats_update(ptr noundef %bstats45, i64 noundef %48, i32 noundef %conv49)
  br label %if.end52

if.else50:                                        ; preds = %if.then34
  %bstats.i = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 15
  call void @gnet_stats_basic_sync_init(ptr noundef %bstats.i) #17
  %hashsize.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %51 = ptrtoint ptr %hashsize.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hashsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp78.not.i = icmp eq i32 %52, 0
  br i1 %cmp78.not.i, label %if.else50.htb_offload_aggregate_stats.exit_crit_edge, label %for.body.lr.ph.i

if.else50.htb_offload_aggregate_stats.exit_crit_edge: ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_offload_aggregate_stats.exit

for.body.lr.ph.i:                                 ; preds = %if.else50
  %53 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %privdata.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc39.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bytes.081.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %bytes.1.lcssa.i, %for.inc39.i.for.body.i_crit_edge ]
  %packets.080.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %packets.1.lcssa.i, %for.inc39.i.for.body.i_crit_edge ]
  %i.079.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc39.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %54, i32 %i.079.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %56, null
  %add.ptr.i = getelementptr i8, ptr %56, i32 -4
  %tobool4.not7184.i = icmp eq ptr %add.ptr.i, null
  %tobool4.not71.i = or i1 %tobool.not.i, %tobool4.not7184.i
  br i1 %tobool4.not71.i, label %for.body.i.for.inc39.i_crit_edge, label %while.cond.preheader.lr.ph.i

for.body.i.for.inc39.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc39.i

while.cond.preheader.lr.ph.i:                     ; preds = %for.body.i
  %57 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %level, align 4
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %cleanup.i.while.cond.preheader.i_crit_edge, %while.cond.preheader.lr.ph.i
  %bytes.175.i = phi i64 [ %bytes.081.i, %while.cond.preheader.lr.ph.i ], [ %bytes.3.i, %cleanup.i.while.cond.preheader.i_crit_edge ]
  %packets.174.i = phi i64 [ %packets.080.i, %while.cond.preheader.lr.ph.i ], [ %packets.3.i, %cleanup.i.while.cond.preheader.i_crit_edge ]
  %c.072.i = phi ptr [ %add.ptr.i, %while.cond.preheader.lr.ph.i ], [ %add.ptr35.i, %cleanup.i.while.cond.preheader.i_crit_edge ]
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %while.cond.preheader.i
  %p.069.i = phi ptr [ %c.072.i, %while.cond.preheader.i ], [ %62, %while.body.i.land.rhs.i_crit_edge ]
  %level.i = getelementptr inbounds %struct.htb_class, ptr %p.069.i, i32 0, i32 11
  %59 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %58)
  %cmp8.i = icmp slt i32 %60, %58
  br i1 %cmp8.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %parent.i = getelementptr inbounds %struct.htb_class, ptr %p.069.i, i32 0, i32 13
  %61 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %parent.i, align 4
  %tobool6.not.i = icmp eq ptr %62, null
  br i1 %tobool6.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge
  %p.0.lcssa.i = phi ptr [ null, %while.body.i.while.end.i_crit_edge ], [ %p.069.i, %land.rhs.i.while.end.i_crit_edge ]
  %cmp9.not.i = icmp eq ptr %p.0.lcssa.i, %0
  br i1 %cmp9.not.i, label %if.end.i, label %while.end.i.cleanup.i_crit_edge

while.end.i.cleanup.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

if.end.i:                                         ; preds = %while.end.i
  %bstats_bias.i = getelementptr inbounds %struct.htb_class, ptr %c.072.i, i32 0, i32 16
  %63 = ptrtoint ptr %bstats_bias.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %bstats_bias.i, align 8
  %add.i105 = add i64 %64, %bytes.175.i
  %packets12.i = getelementptr inbounds %struct.htb_class, ptr %c.072.i, i32 0, i32 16, i32 1
  %65 = ptrtoint ptr %packets12.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %packets12.i, align 8
  %add14.i = add i64 %66, %packets.174.i
  %level15.i = getelementptr inbounds %struct.htb_class, ptr %c.072.i, i32 0, i32 11
  %67 = ptrtoint ptr %level15.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %level15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp16.i = icmp eq i32 %68, 0
  br i1 %cmp16.i, label %if.then17.i, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %q18.i = getelementptr inbounds %struct.htb_class, ptr %c.072.i, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %69 = ptrtoint ptr %q18.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %q18.i, align 16
  %bstats19.i = getelementptr inbounds %struct.Qdisc, ptr %70, i32 0, i32 18
  %71 = ptrtoint ptr %bstats19.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %bstats19.i, align 8
  %add22.i = add i64 %72, %add.i105
  %packets25.i = getelementptr inbounds %struct.Qdisc, ptr %70, i32 0, i32 18, i32 1
  %73 = ptrtoint ptr %packets25.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %packets25.i, align 8
  %add27.i = add i64 %74, %add14.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then17.i, %if.end.i.cleanup.i_crit_edge, %while.end.i.cleanup.i_crit_edge
  %packets.3.i = phi i64 [ %packets.174.i, %while.end.i.cleanup.i_crit_edge ], [ %add27.i, %if.then17.i ], [ %add14.i, %if.end.i.cleanup.i_crit_edge ]
  %bytes.3.i = phi i64 [ %bytes.175.i, %while.end.i.cleanup.i_crit_edge ], [ %add22.i, %if.then17.i ], [ %add.i105, %if.end.i.cleanup.i_crit_edge ]
  %hnode.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %c.072.i, i32 0, i32 1
  %75 = ptrtoint ptr %hnode.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hnode.i, align 4
  %tobool31.not.i = icmp eq ptr %76, null
  %add.ptr35.i = getelementptr i8, ptr %76, i32 -4
  %tobool4.not85.i = icmp eq ptr %add.ptr35.i, null
  %tobool4.not.i = or i1 %tobool31.not.i, %tobool4.not85.i
  br i1 %tobool4.not.i, label %cleanup.i.for.inc39.i_crit_edge, label %cleanup.i.while.cond.preheader.i_crit_edge

cleanup.i.while.cond.preheader.i_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.preheader.i

cleanup.i.for.inc39.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc39.i

for.inc39.i:                                      ; preds = %cleanup.i.for.inc39.i_crit_edge, %for.body.i.for.inc39.i_crit_edge
  %packets.1.lcssa.i = phi i64 [ %packets.080.i, %for.body.i.for.inc39.i_crit_edge ], [ %packets.3.i, %cleanup.i.for.inc39.i_crit_edge ]
  %bytes.1.lcssa.i = phi i64 [ %bytes.081.i, %for.body.i.for.inc39.i_crit_edge ], [ %bytes.3.i, %cleanup.i.for.inc39.i_crit_edge ]
  %inc.i = add nuw i32 %i.079.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %52
  br i1 %exitcond.not.i, label %for.end40.loopexit.i, label %for.inc39.i.for.body.i_crit_edge

for.inc39.i.for.body.i_crit_edge:                 ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end40.loopexit.i:                             ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #19
  %extract.t.i = trunc i64 %packets.1.lcssa.i to i32
  br label %htb_offload_aggregate_stats.exit

htb_offload_aggregate_stats.exit:                 ; preds = %for.end40.loopexit.i, %if.else50.htb_offload_aggregate_stats.exit_crit_edge
  %packets.0.lcssa.off0.i = phi i32 [ 0, %if.else50.htb_offload_aggregate_stats.exit_crit_edge ], [ %extract.t.i, %for.end40.loopexit.i ]
  %bytes.0.lcssa.i = phi i64 [ 0, %if.else50.htb_offload_aggregate_stats.exit_crit_edge ], [ %bytes.1.lcssa.i, %for.end40.loopexit.i ]
  call fastcc void @_bstats_update(ptr noundef %bstats.i, i64 noundef %bytes.0.lcssa.i, i32 noundef %packets.0.lcssa.off0.i) #17
  br label %if.end52

if.end52:                                         ; preds = %htb_offload_aggregate_stats.exit, %if.end44, %if.end.if.end52_crit_edge
  %bstats53 = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 15
  %call54 = call i32 @gnet_stats_copy_basic(ptr noundef %d, ptr noundef null, ptr noundef %bstats53, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end52.cleanup_crit_edge, label %lor.lhs.false

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end52
  %rate_est = getelementptr inbounds %struct.htb_class, ptr %0, i32 0, i32 14
  %call57 = call i32 @gnet_stats_copy_rate_est(ptr noundef %d, ptr noundef %rate_est) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false60

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false60:                                  ; preds = %lor.lhs.false
  %call61 = call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef null, ptr noundef nonnull %qs, i32 noundef %qlen3.0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %lor.lhs.false60.cleanup_crit_edge, label %if.end65

lor.lhs.false60.cleanup_crit_edge:                ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end65:                                         ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #19
  %call67 = call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef %xstats, i32 noundef 20) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %lor.lhs.false60.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end52.cleanup_crit_edge
  %retval.0 = phi i32 [ %call67, %if.end65 ], [ -1, %lor.lhs.false60.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qs) #17
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @htb_offload_get_queue(ptr nocapture noundef readonly %cl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %offload_queue = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 21, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %offload_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %offload_queue, align 4
  %q = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 16
  %flags = getelementptr inbounds %struct.Qdisc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then:                                          ; preds = %entry
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_queue, align 8
  %cmp.not = icmp eq ptr %7, %1
  br i1 %cmp.not, label %if.then.if.end22_crit_edge, label %do.end, !prof !120

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1427, i32 noundef 9, ptr noundef null) #17
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.then.if.end22_crit_edge, %entry.if.end22_crit_edge
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qdisc_refcount_inc(ptr noundef %qdisc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.Qdisc, ptr %qdisc, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.Qdisc, ptr %qdisc, i32 0, i32 14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #17
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #17, !srcloc !122
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !118

if.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.return_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !120

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.return_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #17
  br label %return

return:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @htb_graft_helper(ptr noundef %dev_queue, ptr noundef %new_q) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue, align 128
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dev_deactivate(ptr noundef %1) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call ptr @dev_graft_qdisc(ptr noundef %dev_queue, ptr noundef %new_q) #17
  %tobool2.not = icmp eq ptr %new_q, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %flags4 = getelementptr inbounds %struct.Qdisc, ptr %new_q, i32 0, i32 2
  %4 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags4, align 8
  %or = or i32 %5, 80
  store i32 %or, ptr %flags4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and7 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dev_activate(ptr noundef %1) #17
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_graft_qdisc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_activate(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sch_tree_lock(ptr noundef %q) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
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
  %call1.i = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.rhs.i:                                       ; preds = %if.else
  %.b41.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !120

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #17
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi ptr [ %q, %entry.if.end_crit_edge ], [ %5, %if.else.if.end_crit_edge ], [ %5, %land.rhs.i.if.end_crit_edge ], [ %5, %if.then.i ]
  %lock.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qdisc_purge_queue(ptr noundef %sch) unnamed_addr #3 align 64 {
entry:
  %qstats.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i) #17
  %0 = call ptr @memset(ptr %qstats.i, i32 0, i32 20)
  %cpu_qstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 12
  %1 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpu_qstats.i, align 4
  %qstats1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i, ptr noundef %2, ptr noundef %qstats1.i) #17
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
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i) #17
  call void @qdisc_reset(ptr noundef %sch) #17
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %add.i, i32 noundef %8) #17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sch_tree_unlock(ptr noundef %q) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
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
  %call1.i = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.rhs.i:                                       ; preds = %if.else
  %.b41.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !120

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #17
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi ptr [ %q, %entry.if.end_crit_edge ], [ %5, %if.else.if.end_crit_edge ], [ %5, %land.rhs.i.if.end_crit_edge ], [ %5, %if.then.i ]
  %lock.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_tree_reduce_backlog(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_add_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htb_deactivate(ptr noundef %q, ptr noundef %cl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %prio_activity = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 23
  %0 = ptrtoint ptr %prio_activity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prio_activity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !118

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 606, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @htb_deactivate_prios(ptr noundef %q, ptr noundef %cl)
  %2 = ptrtoint ptr %prio_activity to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %prio_activity, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htb_deactivate_prios(ptr noundef %q, ptr noundef %cl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %prio_activity = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 23
  %0 = ptrtoint ptr %prio_activity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prio_activity, align 8
  %p.0.in72 = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 13
  %2 = ptrtoint ptr %p.0.in72 to i32
  call void @__asan_load4_noabort(i32 %2)
  %p.073 = load ptr, ptr %p.0.in72, align 4
  %cmode74 = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 24
  %3 = ptrtoint ptr %cmode74 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmode74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp75 = icmp ne i32 %4, 1
  %tobool.not76 = icmp eq ptr %p.073, null
  %or.cond77 = select i1 %cmp75, i1 true, i1 %tobool.not76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not78 = icmp eq i32 %1, 0
  %or.cond6679 = select i1 %or.cond77, i1 true, i1 %tobool1.not78
  br i1 %or.cond6679, label %entry.while.end28_crit_edge, label %entry.while.body4.lr.ph_crit_edge

entry.while.body4.lr.ph_crit_edge:                ; preds = %entry
  br label %while.body4.lr.ph

entry.while.end28_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end28

while.body4.lr.ph:                                ; preds = %while.end.while.body4.lr.ph_crit_edge, %entry.while.body4.lr.ph_crit_edge
  %p.082 = phi ptr [ %p.0, %while.end.while.body4.lr.ph_crit_edge ], [ %p.073, %entry.while.body4.lr.ph_crit_edge ]
  %mask.081 = phi i32 [ %spec.select, %while.end.while.body4.lr.ph_crit_edge ], [ %1, %entry.while.body4.lr.ph_crit_edge ]
  %cl.addr.080 = phi ptr [ %p.082, %while.end.while.body4.lr.ph_crit_edge ], [ %cl, %entry.while.body4.lr.ph_crit_edge ]
  %5 = getelementptr inbounds %struct.htb_class, ptr %p.082, i32 0, i32 21
  %node = getelementptr inbounds %struct.htb_class, ptr %cl.addr.080, i32 0, i32 26
  br label %while.body4

while.body4:                                      ; preds = %htb_safe_rb_erase.exit.while.body4_crit_edge, %while.body4.lr.ph
  %mask.171 = phi i32 [ 0, %while.body4.lr.ph ], [ %spec.select, %htb_safe_rb_erase.exit.while.body4_crit_edge ]
  %m.070 = phi i32 [ %mask.081, %while.body4.lr.ph ], [ %and, %htb_safe_rb_erase.exit.while.body4_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %m.070, i1 true) #17, !range !119
  %shl = shl nuw i32 1, %6
  %neg6 = xor i32 %shl, -1
  %and = and i32 %m.070, %neg6
  %arrayidx = getelementptr [8 x %struct.htb_prio], ptr %5, i32 0, i32 %6
  %ptr = getelementptr [8 x %struct.htb_prio], ptr %5, i32 0, i32 %6, i32 1
  %7 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptr, align 4
  %add.ptr = getelementptr %struct.rb_node, ptr %node, i32 %6
  %cmp7 = icmp eq ptr %8, %add.ptr
  br i1 %cmp7, label %if.then, label %while.body4.if.end_crit_edge

while.body4.if.end_crit_edge:                     ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %cl.addr.080 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cl.addr.080, align 128
  %last_ptr_id = getelementptr [8 x %struct.htb_prio], ptr %5, i32 0, i32 %6, i32 2
  %11 = ptrtoint ptr %last_ptr_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %last_ptr_id, align 4
  %12 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body4.if.end_crit_edge
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %15)
  %cmp.i = icmp eq i32 %14, %15
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 375, i32 noundef 9, ptr noundef null) #17
  br label %htb_safe_rb_erase.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rb_erase(ptr noundef %add.ptr, ptr noundef %arrayidx) #17
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %add.ptr, align 4
  br label %htb_safe_rb_erase.exit

htb_safe_rb_erase.exit:                           ; preds = %if.else.i, %do.end.i
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %18, null
  %or = select i1 %tobool20.not, i32 %shl, i32 0
  %spec.select = or i32 %or, %mask.171
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %while.end, label %htb_safe_rb_erase.exit.while.body4_crit_edge

htb_safe_rb_erase.exit.while.body4_crit_edge:     ; preds = %htb_safe_rb_erase.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body4

while.end:                                        ; preds = %htb_safe_rb_erase.exit
  %neg24 = xor i32 %spec.select, -1
  %prio_activity25 = getelementptr inbounds %struct.htb_class, ptr %p.082, i32 0, i32 23
  %19 = ptrtoint ptr %prio_activity25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prio_activity25, align 8
  %and26 = and i32 %20, %neg24
  store i32 %and26, ptr %prio_activity25, align 8
  %p.0.in = getelementptr inbounds %struct.htb_class, ptr %p.082, i32 0, i32 13
  %21 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %cmode = getelementptr inbounds %struct.htb_class, ptr %p.082, i32 0, i32 24
  %22 = ptrtoint ptr %cmode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp = icmp ne i32 %23, 1
  %tobool.not = icmp eq ptr %p.0, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool1.not = icmp eq i32 %spec.select, 0
  %or.cond66 = select i1 %or.cond, i1 true, i1 %tobool1.not
  br i1 %or.cond66, label %while.end.while.end28_crit_edge, label %while.end.while.body4.lr.ph_crit_edge

while.end.while.body4.lr.ph_crit_edge:            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body4.lr.ph

while.end.while.end28_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end28

while.end28:                                      ; preds = %while.end.while.end28_crit_edge, %entry.while.end28_crit_edge
  %cl.addr.0.lcssa = phi ptr [ %cl, %entry.while.end28_crit_edge ], [ %p.082, %while.end.while.end28_crit_edge ]
  %mask.0.lcssa = phi i32 [ %1, %entry.while.end28_crit_edge ], [ %spec.select, %while.end.while.end28_crit_edge ]
  %.lcssa = phi i32 [ %4, %entry.while.end28_crit_edge ], [ %23, %while.end.while.end28_crit_edge ]
  %tobool1.not.lcssa = phi i1 [ %tobool1.not78, %entry.while.end28_crit_edge ], [ %tobool1.not, %while.end.while.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.lcssa)
  %cmp30 = icmp ne i32 %.lcssa, 2
  %or.cond67 = select i1 %cmp30, i1 true, i1 %tobool1.not.lcssa
  br i1 %or.cond67, label %while.end28.if.end34_crit_edge, label %while.body.lr.ph.i

while.end28.if.end34_crit_edge:                   ; preds = %while.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

while.body.lr.ph.i:                               ; preds = %while.end28
  %level.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.0.lcssa, i32 0, i32 11
  %24 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %level.i, align 4
  %node.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.0.lcssa, i32 0, i32 26
  br label %while.body.i

while.body.i:                                     ; preds = %htb_safe_rb_erase.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %m.034.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %spec.select.i, %htb_safe_rb_erase.exit.i.while.body.i_crit_edge ]
  %mask.addr.033.i = phi i32 [ %mask.0.lcssa, %while.body.lr.ph.i ], [ %and.i, %htb_safe_rb_erase.exit.i.while.body.i_crit_edge ]
  %26 = tail call i32 @llvm.cttz.i32(i32 %mask.addr.033.i, i1 true) #17, !range !119
  %arrayidx4.i = getelementptr %struct.htb_sched, ptr %q, i32 0, i32 15, i32 %25, i32 1, i32 %26
  %shl.i = shl nuw i32 1, %26
  %neg5.i = xor i32 %shl.i, -1
  %and.i = and i32 %mask.addr.033.i, %neg5.i
  %ptr.i = getelementptr %struct.htb_sched, ptr %q, i32 0, i32 15, i32 %25, i32 1, i32 %26, i32 1
  %27 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ptr.i, align 4
  %add.ptr.i = getelementptr %struct.rb_node, ptr %node.i, i32 %26
  %cmp.i68 = icmp eq ptr %28, %add.ptr.i
  br i1 %cmp.i68, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = tail call ptr @rb_next(ptr noundef %28) #17
  %29 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i, ptr %ptr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i, align 4
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %32)
  %cmp.i.i = icmp eq i32 %31, %32
  br i1 %cmp.i.i, label %do.end.i.i, label %if.else.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 375, i32 noundef 9, ptr noundef null) #17
  br label %htb_safe_rb_erase.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rb_erase(ptr noundef %add.ptr.i, ptr noundef %arrayidx4.i) #17
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %add.ptr.i, align 4
  br label %htb_safe_rb_erase.exit.i

htb_safe_rb_erase.exit.i:                         ; preds = %if.else.i.i, %do.end.i.i
  %34 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx4.i, align 4
  %tobool10.not.i = icmp eq ptr %35, null
  %or.i = select i1 %tobool10.not.i, i32 %shl.i, i32 0
  %spec.select.i = or i32 %or.i, %m.034.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %htb_remove_class_from_row.exit, label %htb_safe_rb_erase.exit.i.while.body.i_crit_edge

htb_safe_rb_erase.exit.i.while.body.i_crit_edge:  ; preds = %htb_safe_rb_erase.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

htb_remove_class_from_row.exit:                   ; preds = %htb_safe_rb_erase.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %phi.bo.i = xor i32 %spec.select.i, -1
  %36 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %level.i, align 4
  %arrayidx16.i = getelementptr %struct.htb_sched, ptr %q, i32 0, i32 14, i32 %37
  %38 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx16.i, align 4
  %and17.i = and i32 %39, %phi.bo.i
  store i32 %and17.i, ptr %arrayidx16.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %htb_remove_class_from_row.exit, %while.end28.if.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htb_safe_rb_erase(ptr noundef %rb, ptr noundef %root) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rb, align 4
  %2 = ptrtoint ptr %rb to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 375, i32 noundef 9, ptr noundef null) #17
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rb_erase(ptr noundef %rb, ptr noundef %root) #17
  %3 = ptrtoint ptr %rb to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rb, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @htb_find(i32 noundef %handle, ptr nocapture noundef readonly %sch) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool.not.i = icmp eq i32 %handle, 0
  br i1 %tobool.not.i, label %entry.qdisc_class_find.exit_crit_edge, label %if.end.i

entry.qdisc_class_find.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_class_find.exit

if.end.i:                                         ; preds = %entry
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %hashmask.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %0 = ptrtoint ptr %hashmask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hashmask.i, align 4
  %shr.i.i = lshr i32 %handle, 8
  %xor.i.i = xor i32 %shr.i.i, %handle
  %shr1.i.i = lshr i32 %xor.i.i, 4
  %xor2.i.i = xor i32 %shr1.i.i, %xor.i.i
  %and.i.i = and i32 %1, %xor2.i.i
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %privdata.i, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %3, i32 %and.i.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  %add.ptr.i = getelementptr i8, ptr %5, i32 -4
  %tobool4.not3033.i = icmp eq ptr %add.ptr.i, null
  %tobool4.not30.i = or i1 %tobool2.not.i, %tobool4.not3033.i
  br i1 %tobool4.not30.i, label %if.end.i.qdisc_class_find.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.qdisc_class_find.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_class_find.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %cl.031.i = phi ptr [ %add.ptr13.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %cl.031.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cl.031.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %handle)
  %cmp.i = icmp eq i32 %7, %handle
  br i1 %cmp.i, label %for.body.i.qdisc_class_find.exit_crit_edge, label %for.inc.i

for.body.i.qdisc_class_find.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_class_find.exit

for.inc.i:                                        ; preds = %for.body.i
  %hnode.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i, i32 0, i32 1
  %8 = ptrtoint ptr %hnode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hnode.i, align 4
  %tobool9.not.i = icmp eq ptr %9, null
  %add.ptr13.i = getelementptr i8, ptr %9, i32 -4
  %tobool4.not34.i = icmp eq ptr %add.ptr13.i, null
  %tobool4.not.i = or i1 %tobool9.not.i, %tobool4.not34.i
  br i1 %tobool4.not.i, label %for.inc.i.qdisc_class_find.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.qdisc_class_find.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_class_find.exit

qdisc_class_find.exit:                            ; preds = %for.inc.i.qdisc_class_find.exit_crit_edge, %for.body.i.qdisc_class_find.exit_crit_edge, %if.end.i.qdisc_class_find.exit_crit_edge, %entry.qdisc_class_find.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.qdisc_class_find.exit_crit_edge ], [ null, %if.end.i.qdisc_class_find.exit_crit_edge ], [ null, %for.inc.i.qdisc_class_find.exit_crit_edge ], [ %cl.031.i, %for.body.i.qdisc_class_find.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put_rtab(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_get_rtab(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_basic_sync_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_block_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_new_estimator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_bstats_update(ptr noundef %bstats, i64 noundef %bytes, i32 noundef %packets) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %entry.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

entry.u64_stats_update_begin.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !124
  %5 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !125
  %14 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i7.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i9.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %25, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !126
  %26 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !127
  %33 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i12.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %36, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !120

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 271, i32 noundef 9, ptr noundef null) #17
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %entry.u64_stats_update_begin.exit_crit_edge
  %syncp = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !128
  %dep_map.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #17
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #17
  %conv.i = and i64 %bytes, 4294967295
  %41 = ptrtoint ptr %bstats to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %bstats, align 8
  %add.i = add i64 %42, %conv.i
  store i64 %add.i, ptr %bstats, align 8
  %packets2 = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 1
  %conv.i7 = zext i32 %packets to i64
  %43 = ptrtoint ptr %packets2 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %packets2, align 8
  %add.i8 = add i64 %44, %conv.i7
  store i64 %add.i8, ptr %packets2, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %40) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !129
  %45 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_hash_add(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_replace_estimator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @psched_ratecfg_precompute(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_grow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_kill_estimator(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @htb_destroy_class_offload(ptr nocapture noundef readonly %sch, ptr nocapture noundef readonly %cl, i1 noundef zeroext %last_child, i1 noundef zeroext %destroying, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %offload_opt = alloca %struct.tc_htb_qopt_offload, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %offload_opt) #17
  %0 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tc_htb_qopt_offload, ptr %offload_opt, i32 0, i32 4
  %q2 = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %4 = call ptr @memset(ptr %offload_opt, i32 255, i32 32)
  %5 = ptrtoint ptr %q2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q2, align 16
  %level = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 11
  %7 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %do.end, label %if.end.if.end19_crit_edge, !prof !118

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1575, i32 noundef 9, ptr noundef null) #17
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end.if.end19_crit_edge
  %offload_queue.i = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 21, i32 0, i32 0, i32 3
  %9 = ptrtoint ptr %offload_queue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %offload_queue.i, align 4
  %11 = ptrtoint ptr %q2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %q2, align 16
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end19.htb_offload_get_queue.exit_crit_edge

if.end19.htb_offload_get_queue.exit_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_offload_get_queue.exit

if.then.i:                                        ; preds = %if.end19
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 9
  %15 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_queue.i, align 8
  %cmp.not.i = icmp eq ptr %16, %10
  br i1 %cmp.not.i, label %if.then.i.htb_offload_get_queue.exit_crit_edge, label %do.end.i, !prof !120

if.then.i.htb_offload_get_queue.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_offload_get_queue.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1427, i32 noundef 9, ptr noundef null) #17
  br label %htb_offload_get_queue.exit

htb_offload_get_queue.exit:                       ; preds = %do.end.i, %if.then.i.htb_offload_get_queue.exit_crit_edge, %if.end19.htb_offload_get_queue.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 128
  %flags.i168 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %flags.i168 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i168, align 8
  %and.i169 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i169)
  %tobool.not.i170 = icmp eq i32 %and.i169, 0
  br i1 %tobool.not.i170, label %htb_offload_get_queue.exit.if.end.i_crit_edge, label %if.then.i171

htb_offload_get_queue.exit.if.end.i_crit_edge:    ; preds = %htb_offload_get_queue.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i171:                                     ; preds = %htb_offload_get_queue.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dev_deactivate(ptr noundef %18) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i171, %htb_offload_get_queue.exit.if.end.i_crit_edge
  %call.i = tail call ptr @dev_graft_qdisc(ptr noundef %10, ptr noundef null) #17
  %21 = ptrtoint ptr %flags.i168 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i168, align 8
  %and7.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end.i.htb_graft_helper.exit_crit_edge, label %if.then9.i

if.end.i.htb_graft_helper.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_graft_helper.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dev_activate(ptr noundef %18) #17
  br label %htb_graft_helper.exit

htb_graft_helper.exit:                            ; preds = %if.then9.i, %if.end.i.htb_graft_helper.exit_crit_edge
  br i1 %destroying, label %if.then28, label %if.else

if.then28:                                        ; preds = %htb_graft_helper.exit
  %flags = getelementptr inbounds %struct.Qdisc, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 8
  %and = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.then28.if.end92.sink.split_crit_edge, label %if.then28.if.end92_crit_edge, !prof !118

if.then28.if.end92_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end92

if.then28.if.end92.sink.split_crit_edge:          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end92.sink.split

if.else:                                          ; preds = %htb_graft_helper.exit
  %cmp.not = icmp eq ptr %call.i, %6
  br i1 %cmp.not, label %if.else.if.end92_crit_edge, label %if.else.if.end92.sink.split_crit_edge, !prof !120

if.else.if.end92.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end92.sink.split

if.else.if.end92_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end92

if.end92.sink.split:                              ; preds = %if.else.if.end92.sink.split_crit_edge, %if.then28.if.end92.sink.split_crit_edge
  %.sink = phi i32 [ 1582, %if.then28.if.end92.sink.split_crit_edge ], [ 1584, %if.else.if.end92.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #17
  br label %if.end92

if.end92:                                         ; preds = %if.end92.sink.split, %if.else.if.end92_crit_edge, %if.then28.if.end92_crit_edge
  %parent = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 13
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 4
  %tobool93.not = icmp eq ptr %26, null
  br i1 %tobool93.not, label %if.end92.if.end99_crit_edge, label %if.then94

if.end92.if.end99_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end99

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #19
  %bstats_bias = getelementptr inbounds %struct.htb_class, ptr %26, i32 0, i32 16
  %bstats = getelementptr inbounds %struct.Qdisc, ptr %6, i32 0, i32 18
  %27 = ptrtoint ptr %bstats to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bstats, align 8
  %packets = getelementptr inbounds %struct.Qdisc, ptr %6, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %packets, align 8
  %conv = trunc i64 %30 to i32
  tail call fastcc void @_bstats_update(ptr noundef %bstats_bias, i64 noundef %28, i32 noundef %conv)
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %if.end92.if.end99_crit_edge
  %cond = select i1 %destroying, i32 6, i32 5
  %spec.select = select i1 %last_child, i32 %cond, i32 4
  %31 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cl, align 128
  %conv106 = trunc i32 %32 to i16
  %33 = ptrtoint ptr %offload_opt to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %extack, ptr %offload_opt, align 8
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %spec.select, ptr %0, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %1, align 8
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv106, ptr %2, align 4
  %dev_queue.i172 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %37 = call ptr @memset(ptr %3, i32 0, i32 18)
  %38 = ptrtoint ptr %dev_queue.i172 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_queue.i172, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 128
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %43, i32 0, i32 42
  %44 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ndo_setup_tc.i, align 4
  %call.i173 = call i32 %45(ptr noundef %41, i32 noundef 18, ptr noundef nonnull %offload_opt) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %tobool109.not = icmp eq i32 %call.i173, 0
  %brmerge = or i1 %tobool109.not, %destroying
  br i1 %brmerge, label %if.then112, label %if.else113

if.then112:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #19
  call void @qdisc_put(ptr noundef %call.i) #17
  br label %if.end115

if.else113:                                       ; preds = %if.end99
  %46 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %10, align 128
  %flags.i174 = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 14
  %48 = ptrtoint ptr %flags.i174 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i174, align 8
  %and.i175 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i175)
  %tobool.not.i176 = icmp eq i32 %and.i175, 0
  br i1 %tobool.not.i176, label %if.else113.if.end.i179_crit_edge, label %if.then.i177

if.else113.if.end.i179_crit_edge:                 ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i179

if.then.i177:                                     ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #19
  call void @dev_deactivate(ptr noundef %47) #17
  br label %if.end.i179

if.end.i179:                                      ; preds = %if.then.i177, %if.else113.if.end.i179_crit_edge
  %call.i178 = call ptr @dev_graft_qdisc(ptr noundef %10, ptr noundef %call.i) #17
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %if.end.i179.if.end5.i_crit_edge, label %if.then3.i

if.end.i179.if.end5.i_crit_edge:                  ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #19
  %flags4.i = getelementptr inbounds %struct.Qdisc, ptr %call.i, i32 0, i32 2
  %50 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags4.i, align 8
  %or.i = or i32 %51, 80
  store i32 %or.i, ptr %flags4.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i179.if.end5.i_crit_edge
  %52 = ptrtoint ptr %flags.i174 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i174, align 8
  %and7.i180 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i180)
  %tobool8.not.i181 = icmp eq i32 %and7.i180, 0
  br i1 %tobool8.not.i181, label %if.end5.i.if.end115_crit_edge, label %if.then9.i182

if.end5.i.if.end115_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end115

if.then9.i182:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @dev_activate(ptr noundef %47) #17
  br label %if.end115

if.end115:                                        ; preds = %if.then9.i182, %if.end5.i.if.end115_crit_edge, %if.then112
  %tobool109.not.not = xor i1 %tobool109.not, true
  %brmerge167 = select i1 %last_child, i1 true, i1 %tobool109.not.not
  br i1 %brmerge167, label %if.end115.cleanup_crit_edge, label %land.lhs.true

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end115
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %2, align 4
  %conv121 = zext i16 %55 to i32
  %56 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cl, align 128
  %and124 = and i32 %57, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and124, i32 %conv121)
  %cmp125.not = icmp eq i32 %and124, %conv121
  br i1 %cmp125.not, label %land.lhs.true.cleanup_crit_edge, label %if.then127

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then127:                                       ; preds = %land.lhs.true
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %58 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %handle, align 32
  %and129 = and i32 %59, -65536
  %or = or i32 %and129, %conv121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not.i.i = icmp eq i32 %or, 0
  br i1 %tobool.not.i.i, label %if.then127.htb_find.exit_crit_edge, label %if.end.i.i

if.then127.htb_find.exit_crit_edge:               ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_find.exit

if.end.i.i:                                       ; preds = %if.then127
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %hashmask.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %60 = ptrtoint ptr %hashmask.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hashmask.i.i, align 4
  %shr.i.i.i = lshr i32 %or, 8
  %xor.i.i.i = xor i32 %shr.i.i.i, %or
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 4
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  %and.i.i.i = and i32 %61, %xor2.i.i.i
  %62 = ptrtoint ptr %privdata.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %privdata.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %63, i32 %and.i.i.i
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %65, null
  %add.ptr.i.i = getelementptr i8, ptr %65, i32 -4
  %tobool4.not3033.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool4.not30.i.i = or i1 %tobool2.not.i.i, %tobool4.not3033.i.i
  br i1 %tobool4.not30.i.i, label %if.end.i.i.htb_find.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.htb_find.exit_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_find.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cl.031.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %66 = ptrtoint ptr %cl.031.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cl.031.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %or)
  %cmp.i.i = icmp eq i32 %67, %or
  br i1 %cmp.i.i, label %for.body.i.i.htb_find.exit_crit_edge, label %for.inc.i.i

for.body.i.i.htb_find.exit_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_find.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hnode.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %hnode.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hnode.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %69, null
  %add.ptr13.i.i = getelementptr i8, ptr %69, i32 -4
  %tobool4.not34.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool4.not.i.i = or i1 %tobool9.not.i.i, %tobool4.not34.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.htb_find.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.inc.i.i.htb_find.exit_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_find.exit

htb_find.exit:                                    ; preds = %for.inc.i.i.htb_find.exit_crit_edge, %for.body.i.i.htb_find.exit_crit_edge, %if.end.i.i.htb_find.exit_crit_edge, %if.then127.htb_find.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.then127.htb_find.exit_crit_edge ], [ null, %if.end.i.i.htb_find.exit_crit_edge ], [ %cl.031.i.i, %for.body.i.i.htb_find.exit_crit_edge ], [ null, %for.inc.i.i.htb_find.exit_crit_edge ]
  %70 = ptrtoint ptr %dev_queue.i172 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_queue.i172, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 128
  %offload_queue.i.i = getelementptr inbounds %struct.htb_class, ptr %retval.0.i.i, i32 0, i32 21, i32 0, i32 0, i32 3
  %74 = ptrtoint ptr %offload_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %offload_queue.i.i, align 4
  %q.i.i = getelementptr inbounds %struct.htb_class, ptr %retval.0.i.i, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %76 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %q.i.i, align 16
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i184 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i184, label %if.then.i.i, label %htb_find.exit.htb_offload_get_queue.exit.i_crit_edge

htb_find.exit.htb_offload_get_queue.exit.i_crit_edge: ; preds = %htb_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_offload_get_queue.exit.i

if.then.i.i:                                      ; preds = %htb_find.exit
  %dev_queue.i94.i = getelementptr inbounds %struct.Qdisc, ptr %77, i32 0, i32 9
  %80 = ptrtoint ptr %dev_queue.i94.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_queue.i94.i, align 8
  %cmp.not.i.i = icmp eq ptr %81, %75
  br i1 %cmp.not.i.i, label %if.then.i.i.htb_offload_get_queue.exit.i_crit_edge, label %do.end.i.i, !prof !120

if.then.i.i.htb_offload_get_queue.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_offload_get_queue.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1427, i32 noundef 9, ptr noundef null) #17
  br label %htb_offload_get_queue.exit.i

htb_offload_get_queue.exit.i:                     ; preds = %do.end.i.i, %if.then.i.i.htb_offload_get_queue.exit.i_crit_edge, %htb_find.exit.htb_offload_get_queue.exit.i_crit_edge
  %82 = ptrtoint ptr %offload_queue.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %offload_queue.i, align 4
  %84 = ptrtoint ptr %q2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %q2, align 16
  %flags.i97.i = getelementptr inbounds %struct.Qdisc, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %flags.i97.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags.i97.i, align 8
  %and.i98.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98.i)
  %tobool.not.i99.i = icmp eq i32 %and.i98.i, 0
  br i1 %tobool.not.i99.i, label %if.then.i102.i, label %htb_offload_get_queue.exit.i.htb_offload_get_queue.exit104.i_crit_edge

htb_offload_get_queue.exit.i.htb_offload_get_queue.exit104.i_crit_edge: ; preds = %htb_offload_get_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_offload_get_queue.exit104.i

if.then.i102.i:                                   ; preds = %htb_offload_get_queue.exit.i
  %dev_queue.i100.i = getelementptr inbounds %struct.Qdisc, ptr %85, i32 0, i32 9
  %88 = ptrtoint ptr %dev_queue.i100.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_queue.i100.i, align 8
  %cmp.not.i101.i = icmp eq ptr %89, %83
  br i1 %cmp.not.i101.i, label %if.then.i102.i.htb_offload_get_queue.exit104.i_crit_edge, label %do.end.i103.i, !prof !120

if.then.i102.i.htb_offload_get_queue.exit104.i_crit_edge: ; preds = %if.then.i102.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_offload_get_queue.exit104.i

do.end.i103.i:                                    ; preds = %if.then.i102.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1427, i32 noundef 9, ptr noundef null) #17
  br label %htb_offload_get_queue.exit104.i

htb_offload_get_queue.exit104.i:                  ; preds = %do.end.i103.i, %if.then.i102.i.htb_offload_get_queue.exit104.i_crit_edge, %htb_offload_get_queue.exit.i.htb_offload_get_queue.exit104.i_crit_edge
  br i1 %destroying, label %htb_offload_get_queue.exit104.i.if.end27.i_crit_edge, label %if.then.i187

htb_offload_get_queue.exit104.i.if.end27.i_crit_edge: ; preds = %htb_offload_get_queue.exit104.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27.i

if.then.i187:                                     ; preds = %htb_offload_get_queue.exit104.i
  %flags.i185 = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 14
  %90 = ptrtoint ptr %flags.i185 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags.i185, align 8
  %and.i186 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i186)
  %tobool3.not.i = icmp eq i32 %and.i186, 0
  br i1 %tobool3.not.i, label %if.then.i187.if.end.i189_crit_edge, label %if.then4.i

if.then.i187.if.end.i189_crit_edge:               ; preds = %if.then.i187
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i189

if.then4.i:                                       ; preds = %if.then.i187
  call void @__sanitizer_cov_trace_pc() #19
  call void @dev_deactivate(ptr noundef %73) #17
  br label %if.end.i189

if.end.i189:                                      ; preds = %if.then4.i, %if.then.i187.if.end.i189_crit_edge
  %call5.i = call ptr @dev_graft_qdisc(ptr noundef %75, ptr noundef null) #17
  %92 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %q.i.i, align 16
  %cmp.not.i188 = icmp eq ptr %call5.i, %93
  br i1 %cmp.not.i188, label %if.end.i189.if.end27.i_crit_edge, label %do.end.i190, !prof !120

if.end.i189.if.end27.i_crit_edge:                 ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27.i

do.end.i190:                                      ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1447, i32 noundef 9, ptr noundef null) #17
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end.i190, %if.end.i189.if.end27.i_crit_edge, %htb_offload_get_queue.exit104.i.if.end27.i_crit_edge
  %94 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %q.i.i, align 16
  %flags29.i = getelementptr inbounds %struct.Qdisc, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %flags29.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags29.i, align 8
  %and30.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.end27.i.if.end34.i_crit_edge

if.end27.i.if.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev_queue.i191 = getelementptr inbounds %struct.Qdisc, ptr %95, i32 0, i32 9
  %98 = ptrtoint ptr %dev_queue.i191 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %83, ptr %dev_queue.i191, align 8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end27.i.if.end34.i_crit_edge
  %99 = ptrtoint ptr %offload_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %83, ptr %offload_queue.i.i, align 4
  br i1 %destroying, label %if.end34.i.cleanup_crit_edge, label %if.then36.i

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then36.i:                                      ; preds = %if.end34.i
  %100 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %q.i.i, align 16
  %call39.i = call ptr @dev_graft_qdisc(ptr noundef %83, ptr noundef %101) #17
  %flags40.i = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 14
  %102 = ptrtoint ptr %flags40.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags40.i, align 8
  %and41.i = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.then36.i.if.end44.i_crit_edge, label %if.then43.i

if.then36.i.if.end44.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44.i

if.then43.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @dev_activate(ptr noundef %73) #17
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then43.i, %if.then36.i.if.end44.i_crit_edge
  %flags46.i = getelementptr inbounds %struct.Qdisc, ptr %call39.i, i32 0, i32 2
  %104 = ptrtoint ptr %flags46.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags46.i, align 8
  %and47.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %do.end66.i, label %if.end44.i.cleanup_crit_edge, !prof !118

if.end44.i.cleanup_crit_edge:                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end66.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1460, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end66.i, %if.end44.i.cleanup_crit_edge, %if.end34.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end115.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i173, %if.end115.cleanup_crit_edge ], [ %call.i173, %land.lhs.true.cleanup_crit_edge ], [ %call.i173, %if.end34.i.cleanup_crit_edge ], [ %call.i173, %if.end44.i.cleanup_crit_edge ], [ %call.i173, %do.end66.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %offload_opt) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htb_parent_to_leaf(ptr noundef %sch, ptr nocapture noundef readonly %cl, ptr noundef %new_q) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %parent1 = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 13
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %level = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 11
  %2 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %q2 = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %q2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q2, align 16
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.do.end_crit_edge, label %lor.rhs

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %prio_activity = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 23
  %6 = ptrtoint ptr %prio_activity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prio_activity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %lor.rhs.if.end_crit_edge, label %lor.rhs.do.end_crit_edge, !prof !120

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1532, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  %cmode = getelementptr inbounds %struct.htb_class, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %cmode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.not = icmp eq i32 %9, 2
  br i1 %cmp.not, label %if.end.if.end26_crit_edge, label %if.then24

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

if.then24:                                        ; preds = %if.end
  %pq_node = getelementptr inbounds %struct.htb_class, ptr %1, i32 0, i32 25
  %10 = ptrtoint ptr %pq_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pq_node, align 4
  %12 = ptrtoint ptr %pq_node to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %12)
  %cmp.i = icmp eq i32 %11, %12
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 375, i32 noundef 9, ptr noundef null) #17
  br label %if.end26

if.else.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #19
  %level25 = getelementptr inbounds %struct.htb_class, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %level25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %level25, align 4
  %arrayidx = getelementptr %struct.htb_sched, ptr %privdata.i, i32 0, i32 15, i32 %14
  tail call void @rb_erase(ptr noundef %pq_node, ptr noundef %arrayidx) #17
  %15 = ptrtoint ptr %pq_node to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %pq_node, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else.i, %do.end.i, %if.end.if.end26_crit_edge
  %level27 = getelementptr inbounds %struct.htb_class, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %level27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %level27, align 4
  %17 = getelementptr inbounds %struct.htb_class, ptr %1, i32 0, i32 21
  %18 = call ptr @memset(ptr %17, i32 0, i32 96)
  %tobool28.not = icmp eq ptr %new_q, null
  %spec.select = select i1 %tobool28.not, ptr @noop_qdisc, ptr %new_q
  %q29 = getelementptr inbounds %struct.htb_class, ptr %1, i32 0, i32 21, i32 0, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %q29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %spec.select, ptr %q29, align 16
  %buffer = getelementptr inbounds %struct.htb_class, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %buffer, align 64
  %tokens = getelementptr inbounds %struct.htb_class, ptr %1, i32 0, i32 18
  %22 = ptrtoint ptr %tokens to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %tokens, align 8
  %cbuffer = getelementptr inbounds %struct.htb_class, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %cbuffer to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %cbuffer, align 8
  %ctokens = getelementptr inbounds %struct.htb_class, ptr %1, i32 0, i32 19
  %25 = ptrtoint ptr %ctokens to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %ctokens, align 128
  %call.i = tail call i64 @ktime_get() #17
  %t_c = getelementptr inbounds %struct.htb_class, ptr %1, i32 0, i32 20
  %26 = ptrtoint ptr %t_c to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call.i, ptr %t_c, align 8
  %27 = ptrtoint ptr %cmode to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %cmode, align 4
  %offload = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 3, i32 15, i32 40
  %28 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %offload, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool32.not = icmp eq i8 %29, 0
  br i1 %tobool32.not, label %if.end26.if.end35_crit_edge, label %if.then33

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  %offload_queue = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 21, i32 0, i32 0, i32 3
  %30 = ptrtoint ptr %offload_queue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %offload_queue, align 4
  %offload_queue34 = getelementptr inbounds %struct.htb_class, ptr %1, i32 0, i32 21, i32 0, i32 0, i32 3
  %32 = ptrtoint ptr %offload_queue34 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %offload_queue34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end26.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_basic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_rate_est(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_app(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_classify(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qdisc_calculate_pkt_len(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htb_activate_prios(ptr noundef %q, ptr noundef %cl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %prio_activity = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 23
  %0 = ptrtoint ptr %prio_activity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prio_activity, align 8
  %p.0.in56 = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 13
  %2 = ptrtoint ptr %p.0.in56 to i32
  call void @__asan_load4_noabort(i32 %2)
  %p.057 = load ptr, ptr %p.0.in56, align 4
  %cmode58 = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 24
  %3 = ptrtoint ptr %cmode58 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmode58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp59 = icmp ne i32 %4, 1
  %tobool.not60 = icmp eq ptr %p.057, null
  %or.cond61 = select i1 %cmp59, i1 true, i1 %tobool.not60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not62 = icmp eq i32 %1, 0
  %or.cond4463 = select i1 %or.cond61, i1 true, i1 %tobool1.not62
  br i1 %or.cond4463, label %entry.while.end15_crit_edge, label %entry.while.body4.lr.ph_crit_edge

entry.while.body4.lr.ph_crit_edge:                ; preds = %entry
  br label %while.body4.lr.ph

entry.while.end15_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end15

while.body4.lr.ph:                                ; preds = %while.end.while.body4.lr.ph_crit_edge, %entry.while.body4.lr.ph_crit_edge
  %p.066 = phi ptr [ %p.0, %while.end.while.body4.lr.ph_crit_edge ], [ %p.057, %entry.while.body4.lr.ph_crit_edge ]
  %mask.065 = phi i32 [ %spec.select, %while.end.while.body4.lr.ph_crit_edge ], [ %1, %entry.while.body4.lr.ph_crit_edge ]
  %cl.addr.064 = phi ptr [ %p.066, %while.end.while.body4.lr.ph_crit_edge ], [ %cl, %entry.while.body4.lr.ph_crit_edge ]
  %5 = getelementptr inbounds %struct.htb_class, ptr %p.066, i32 0, i32 21
  br label %while.body4

while.body4:                                      ; preds = %htb_add_to_id_tree.exit.while.body4_crit_edge, %while.body4.lr.ph
  %mask.155 = phi i32 [ %mask.065, %while.body4.lr.ph ], [ %spec.select, %htb_add_to_id_tree.exit.while.body4_crit_edge ]
  %m.054 = phi i32 [ %mask.065, %while.body4.lr.ph ], [ %and, %htb_add_to_id_tree.exit.while.body4_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %m.054, i1 true) #17, !range !119
  %shl = shl nuw i32 1, %6
  %neg6 = xor i32 %shl, -1
  %and = and i32 %m.054, %neg6
  %arrayidx = getelementptr [8 x %struct.htb_prio], ptr %5, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %8, null
  %and10 = select i1 %tobool7.not, i32 -1, i32 %neg6
  %spec.select = and i32 %and10, %mask.155
  br i1 %tobool7.not, label %while.body4.htb_add_to_id_tree.exit_crit_edge, label %while.body.lr.ph.i

while.body4.htb_add_to_id_tree.exit_crit_edge:    ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_add_to_id_tree.exit

while.body.lr.ph.i:                               ; preds = %while.body4
  %.neg.i = mul nsw i32 %6, -12
  %idx.neg.i = add nsw i32 %.neg.i, -396
  %9 = ptrtoint ptr %cl.addr.064 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cl.addr.064, align 128
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %11 = phi ptr [ %8, %while.body.lr.ph.i ], [ %15, %while.body.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %11, i32 %idx.neg.i
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %13)
  %cmp.i = icmp ugt i32 %10, %13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  %p.1.i = select i1 %cmp.i, ptr %rb_right.i, ptr %rb_left.i
  %14 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %phi.cast.le.i = ptrtoint ptr %11 to i32
  br label %htb_add_to_id_tree.exit

htb_add_to_id_tree.exit:                          ; preds = %while.cond.while.end_crit_edge.i, %while.body4.htb_add_to_id_tree.exit_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %while.body4.htb_add_to_id_tree.exit_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %arrayidx, %while.body4.htb_add_to_id_tree.exit_crit_edge ]
  %arrayidx.i = getelementptr %struct.htb_class, ptr %cl.addr.064, i32 0, i32 26, i32 %6
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %parent.0.lcssa.i, ptr %arrayidx.i, align 4
  %rb_right.i.i = getelementptr %struct.htb_class, ptr %cl.addr.064, i32 0, i32 26, i32 %6, i32 1
  %17 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr %struct.htb_class, ptr %cl.addr.064, i32 0, i32 26, i32 %6, i32 2
  %18 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rb_left.i.i, align 4
  %19 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %arrayidx.i, ptr noundef %arrayidx) #17
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %while.end, label %htb_add_to_id_tree.exit.while.body4_crit_edge

htb_add_to_id_tree.exit.while.body4_crit_edge:    ; preds = %htb_add_to_id_tree.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body4

while.end:                                        ; preds = %htb_add_to_id_tree.exit
  %prio_activity13 = getelementptr inbounds %struct.htb_class, ptr %p.066, i32 0, i32 23
  %20 = ptrtoint ptr %prio_activity13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prio_activity13, align 8
  %or = or i32 %21, %spec.select
  store i32 %or, ptr %prio_activity13, align 8
  %p.0.in = getelementptr inbounds %struct.htb_class, ptr %p.066, i32 0, i32 13
  %22 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %cmode = getelementptr inbounds %struct.htb_class, ptr %p.066, i32 0, i32 24
  %23 = ptrtoint ptr %cmode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp = icmp ne i32 %24, 1
  %tobool.not = icmp eq ptr %p.0, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool1.not = icmp eq i32 %spec.select, 0
  %or.cond44 = select i1 %or.cond, i1 true, i1 %tobool1.not
  br i1 %or.cond44, label %while.end.while.end15_crit_edge, label %while.end.while.body4.lr.ph_crit_edge

while.end.while.body4.lr.ph_crit_edge:            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body4.lr.ph

while.end.while.end15_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end15

while.end15:                                      ; preds = %while.end.while.end15_crit_edge, %entry.while.end15_crit_edge
  %cl.addr.0.lcssa = phi ptr [ %cl, %entry.while.end15_crit_edge ], [ %p.066, %while.end.while.end15_crit_edge ]
  %mask.0.lcssa = phi i32 [ %1, %entry.while.end15_crit_edge ], [ %spec.select, %while.end.while.end15_crit_edge ]
  %.lcssa52 = phi i32 [ %4, %entry.while.end15_crit_edge ], [ %24, %while.end.while.end15_crit_edge ]
  %tobool1.not.lcssa = phi i1 [ %tobool1.not62, %entry.while.end15_crit_edge ], [ %tobool1.not, %while.end.while.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.lcssa52)
  %cmp17 = icmp ne i32 %.lcssa52, 2
  %or.cond45 = select i1 %cmp17, i1 true, i1 %tobool1.not.lcssa
  br i1 %or.cond45, label %while.end15.if.end21_crit_edge, label %if.then20

while.end15.if.end21_crit_edge:                   ; preds = %while.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.then20:                                        ; preds = %while.end15
  %level.i = getelementptr inbounds %struct.htb_class, ptr %cl.addr.0.lcssa, i32 0, i32 11
  %25 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %level.i, align 4
  %arrayidx.i46 = getelementptr %struct.htb_sched, ptr %q, i32 0, i32 14, i32 %26
  %27 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i46, align 4
  %or.i = or i32 %28, %mask.0.lcssa
  store i32 %or.i, ptr %arrayidx.i46, align 4
  br label %while.body.i47

while.body.i47:                                   ; preds = %htb_add_to_id_tree.exit.i.while.body.i47_crit_edge, %if.then20
  %mask.addr.015.i = phi i32 [ %and.i, %htb_add_to_id_tree.exit.i.while.body.i47_crit_edge ], [ %mask.0.lcssa, %if.then20 ]
  %29 = tail call i32 @llvm.cttz.i32(i32 %mask.addr.015.i, i1 true) #17, !range !119
  %shl.i = shl nuw i32 1, %29
  %neg2.i = xor i32 %shl.i, -1
  %and.i = and i32 %mask.addr.015.i, %neg2.i
  %30 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %level.i, align 4
  %arrayidx5.i = getelementptr %struct.htb_sched, ptr %q, i32 0, i32 15, i32 %31, i32 1, i32 %29
  %32 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx5.i, align 4
  %tobool.not15.i.i = icmp eq ptr %33, null
  br i1 %tobool.not15.i.i, label %while.body.i47.htb_add_to_id_tree.exit.i_crit_edge, label %while.body.lr.ph.i.i

while.body.i47.htb_add_to_id_tree.exit.i_crit_edge: ; preds = %while.body.i47
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_add_to_id_tree.exit.i

while.body.lr.ph.i.i:                             ; preds = %while.body.i47
  %.neg.i.i = mul nsw i32 %29, -12
  %idx.neg.i.i = add nsw i32 %.neg.i.i, -396
  %34 = ptrtoint ptr %cl.addr.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cl.addr.0.lcssa, align 128
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %36 = phi ptr [ %33, %while.body.lr.ph.i.i ], [ %40, %while.body.i.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %idx.neg.i.i
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %38)
  %cmp.i.i = icmp ugt i32 %35, %38
  %rb_right.i.i48 = getelementptr inbounds %struct.rb_node, ptr %36, i32 0, i32 1
  %rb_left.i.i49 = getelementptr inbounds %struct.rb_node, ptr %36, i32 0, i32 2
  %p.1.i.i = select i1 %cmp.i.i, ptr %rb_right.i.i48, ptr %rb_left.i.i49
  %39 = ptrtoint ptr %p.1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %p.1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %phi.cast.le.i.i = ptrtoint ptr %36 to i32
  br label %htb_add_to_id_tree.exit.i

htb_add_to_id_tree.exit.i:                        ; preds = %while.cond.while.end_crit_edge.i.i, %while.body.i47.htb_add_to_id_tree.exit.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %while.body.i47.htb_add_to_id_tree.exit.i_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %p.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %arrayidx5.i, %while.body.i47.htb_add_to_id_tree.exit.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.htb_class, ptr %cl.addr.0.lcssa, i32 0, i32 26, i32 %29
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %parent.0.lcssa.i.i, ptr %arrayidx.i.i, align 4
  %rb_right.i.i.i = getelementptr %struct.htb_class, ptr %cl.addr.0.lcssa, i32 0, i32 26, i32 %29, i32 1
  %42 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr %struct.htb_class, ptr %cl.addr.0.lcssa, i32 0, i32 26, i32 %29, i32 2
  %43 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %44 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx.i.i, ptr %p.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %arrayidx.i.i, ptr noundef %arrayidx5.i) #17
  %tobool.not.i50 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i50, label %htb_add_to_id_tree.exit.i.if.end21_crit_edge, label %htb_add_to_id_tree.exit.i.while.body.i47_crit_edge

htb_add_to_id_tree.exit.i.while.body.i47_crit_edge: ; preds = %htb_add_to_id_tree.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i47

htb_add_to_id_tree.exit.i.if.end21_crit_edge:     ; preds = %htb_add_to_id_tree.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.end21:                                         ; preds = %htb_add_to_id_tree.exit.i.if.end21_crit_edge, %while.end15.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htb_change_class_mode(ptr noundef %q, ptr noundef %cl, ptr nocapture noundef %diff) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ctokens.i = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 19
  %0 = ptrtoint ptr %ctokens.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ctokens.i, align 128
  %2 = ptrtoint ptr %diff to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %diff, align 8
  %add.i = add i64 %3, %1
  %4 = load i32, ptr @htb_hysteresis, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %htb_lowater.exit.thread.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %cmode.i.i = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 24
  %5 = ptrtoint ptr %cmode.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cmode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i.i, label %htb_lowater.exit.i.thread, label %htb_lowater.exit.i

htb_lowater.exit.i:                               ; preds = %if.then.i.i
  %cbuffer.i.i = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 4
  %7 = ptrtoint ptr %cbuffer.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %cbuffer.i.i, align 8
  %sub.i.i = sub i64 0, %8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %sub.i.i)
  %cmp.i = icmp slt i64 %add.i, %sub.i.i
  br i1 %cmp.i, label %htb_lowater.exit.i.htb_class_mode.exit_crit_edge, label %if.then.i16.i

htb_lowater.exit.i.htb_class_mode.exit_crit_edge: ; preds = %htb_lowater.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_class_mode.exit

htb_lowater.exit.i.thread:                        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp.i32 = icmp slt i64 %add.i, 0
  br i1 %cmp.i32, label %htb_lowater.exit.i.thread.htb_class_mode.exit_crit_edge, label %if.then.i16.i.thread

htb_lowater.exit.i.thread.htb_class_mode.exit_crit_edge: ; preds = %htb_lowater.exit.i.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_class_mode.exit

if.then.i16.i.thread:                             ; preds = %htb_lowater.exit.i.thread
  call void @__sanitizer_cov_trace_pc() #19
  %tokens.i33 = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 18
  %9 = ptrtoint ptr %tokens.i33 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tokens.i33, align 8
  br label %htb_hiwater.exit.i

htb_lowater.exit.thread.i:                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp21.i = icmp slt i64 %add.i, 0
  br i1 %cmp21.i, label %htb_lowater.exit.thread.i.htb_class_mode.exit_crit_edge, label %if.end.thread.i

htb_lowater.exit.thread.i.htb_class_mode.exit_crit_edge: ; preds = %htb_lowater.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_class_mode.exit

if.end.thread.i:                                  ; preds = %htb_lowater.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #19
  %tokens22.i = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 18
  %11 = ptrtoint ptr %tokens22.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tokens22.i, align 8
  br label %htb_hiwater.exit.i

if.then.i16.i:                                    ; preds = %htb_lowater.exit.i
  %tokens.i = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 18
  %13 = ptrtoint ptr %tokens.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %tokens.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 2
  br i1 %cmp.i.i, label %cond.true.i18.i, label %if.then.i16.i.htb_hiwater.exit.i_crit_edge

if.then.i16.i.htb_hiwater.exit.i_crit_edge:       ; preds = %if.then.i16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_hiwater.exit.i

cond.true.i18.i:                                  ; preds = %if.then.i16.i
  call void @__sanitizer_cov_trace_pc() #19
  %buffer.i.i = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 3
  %15 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %buffer.i.i, align 64
  %sub.i17.i = sub i64 0, %16
  br label %htb_hiwater.exit.i

htb_hiwater.exit.i:                               ; preds = %cond.true.i18.i, %if.then.i16.i.htb_hiwater.exit.i_crit_edge, %if.end.thread.i, %if.then.i16.i.thread
  %.pn.i = phi i64 [ %14, %cond.true.i18.i ], [ %14, %if.then.i16.i.htb_hiwater.exit.i_crit_edge ], [ %12, %if.end.thread.i ], [ %10, %if.then.i16.i.thread ]
  %retval.0.i19.i = phi i64 [ %sub.i17.i, %cond.true.i18.i ], [ 0, %if.then.i16.i.htb_hiwater.exit.i_crit_edge ], [ 0, %if.end.thread.i ], [ 0, %if.then.i16.i.thread ]
  %add124.i = add i64 %.pn.i, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %add124.i, i64 %retval.0.i19.i)
  %cmp3.not.i = icmp slt i64 %add124.i, %retval.0.i19.i
  br i1 %cmp3.not.i, label %htb_class_mode.exit.thread46, label %htb_class_mode.exit.thread

htb_class_mode.exit:                              ; preds = %htb_lowater.exit.thread.i.htb_class_mode.exit_crit_edge, %htb_lowater.exit.i.thread.htb_class_mode.exit_crit_edge, %htb_lowater.exit.i.htb_class_mode.exit_crit_edge
  %sub6.i = sub i64 0, %add.i
  %17 = ptrtoint ptr %diff to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %sub6.i, ptr %diff, align 8
  %cmode = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 24
  %18 = ptrtoint ptr %cmode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %htb_class_mode.exit.cleanup_crit_edge, label %if.then2

htb_class_mode.exit.cleanup_crit_edge:            ; preds = %htb_class_mode.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

htb_class_mode.exit.thread46:                     ; preds = %htb_hiwater.exit.i
  %sub6.i50 = sub i64 0, %add124.i
  %20 = ptrtoint ptr %diff to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %sub6.i50, ptr %diff, align 8
  %cmode51 = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 24
  %21 = ptrtoint ptr %cmode51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cmode51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp52 = icmp eq i32 %22, 1
  br i1 %cmp52, label %htb_class_mode.exit.thread46.cleanup_crit_edge, label %htb_class_mode.exit.thread46.if.end5_crit_edge

htb_class_mode.exit.thread46.if.end5_crit_edge:   ; preds = %htb_class_mode.exit.thread46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

htb_class_mode.exit.thread46.cleanup_crit_edge:   ; preds = %htb_class_mode.exit.thread46
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

htb_class_mode.exit.thread:                       ; preds = %htb_hiwater.exit.i
  %cmode36 = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 24
  %23 = ptrtoint ptr %cmode36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmode36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp37 = icmp eq i32 %24, 2
  br i1 %cmp37, label %htb_class_mode.exit.thread.cleanup_crit_edge, label %htb_class_mode.exit.thread.if.end5_crit_edge

htb_class_mode.exit.thread.if.end5_crit_edge:     ; preds = %htb_class_mode.exit.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

htb_class_mode.exit.thread.cleanup_crit_edge:     ; preds = %htb_class_mode.exit.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then2:                                         ; preds = %htb_class_mode.exit
  call void @__sanitizer_cov_trace_pc() #19
  %overlimits = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 29
  %25 = ptrtoint ptr %overlimits to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %overlimits, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %overlimits, align 4
  %overlimits3 = getelementptr inbounds %struct.htb_sched, ptr %q, i32 0, i32 10
  %27 = ptrtoint ptr %overlimits3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %overlimits3, align 8
  %inc4 = add i32 %28, 1
  store i32 %inc4, ptr %overlimits3, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %htb_class_mode.exit.thread.if.end5_crit_edge, %htb_class_mode.exit.thread46.if.end5_crit_edge
  %cmp145 = phi i1 [ true, %if.then2 ], [ false, %htb_class_mode.exit.thread.if.end5_crit_edge ], [ false, %htb_class_mode.exit.thread46.if.end5_crit_edge ]
  %retval.0.i3844 = phi i32 [ 0, %if.then2 ], [ 2, %htb_class_mode.exit.thread.if.end5_crit_edge ], [ 1, %htb_class_mode.exit.thread46.if.end5_crit_edge ]
  %cmode3943 = phi ptr [ %cmode, %if.then2 ], [ %cmode36, %htb_class_mode.exit.thread.if.end5_crit_edge ], [ %cmode51, %htb_class_mode.exit.thread46.if.end5_crit_edge ]
  %prio_activity = getelementptr inbounds %struct.htb_class, ptr %cl, i32 0, i32 23
  %29 = ptrtoint ptr %prio_activity to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %prio_activity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end5
  %31 = ptrtoint ptr %cmode3943 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cmode3943, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp8.not = icmp eq i32 %32, 0
  br i1 %cmp8.not, label %if.then6.if.end10_crit_edge, label %if.then9

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @htb_deactivate_prios(ptr noundef %q, ptr noundef %cl)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then6.if.end10_crit_edge
  %33 = ptrtoint ptr %cmode3943 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i3844, ptr %cmode3943, align 4
  br i1 %cmp145, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @htb_activate_prios(ptr noundef %q, ptr noundef %cl)
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %34 = ptrtoint ptr %cmode3943 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i3844, ptr %cmode3943, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then13, %if.end10.cleanup_crit_edge, %htb_class_mode.exit.thread.cleanup_crit_edge, %htb_class_mode.exit.thread46.cleanup_crit_edge, %htb_class_mode.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @htb_lookup_leaf(ptr noundef %hprio, i32 noundef %prio) unnamed_addr #2 align 64 {
entry:
  %stk = alloca [8 x %struct.anon.130], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %stk) #17
  %0 = getelementptr inbounds i8, ptr %stk, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 84)
  %2 = ptrtoint ptr %hprio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hprio, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !118

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sched/sch_htb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #17, !srcloc !130
  unreachable

do.end9:                                          ; preds = %entry
  %4 = ptrtoint ptr %stk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %stk, align 4
  %ptr = getelementptr inbounds %struct.htb_prio, ptr %hprio, i32 0, i32 1
  %pptr = getelementptr inbounds %struct.anon.130, ptr %stk, i32 0, i32 1
  %5 = ptrtoint ptr %pptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ptr, ptr %pptr, align 4
  %last_ptr_id = getelementptr inbounds %struct.htb_prio, ptr %hprio, i32 0, i32 2
  %pid = getelementptr inbounds %struct.anon.130, ptr %stk, i32 0, i32 2
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %last_ptr_id, ptr %pid, align 4
  %.neg.i = mul i32 %prio, -12
  %idx.neg.i = add i32 %.neg.i, -396
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end9
  %i.0148 = phi i32 [ 0, %do.end9 ], [ %inc, %for.inc.for.body_crit_edge ]
  %sp.0147 = phi ptr [ %stk, %do.end9 ], [ %sp.2, %for.inc.for.body_crit_edge ]
  %pptr11 = getelementptr inbounds %struct.anon.130, ptr %sp.0147, i32 0, i32 1
  %7 = ptrtoint ptr %pptr11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pptr11, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %land.lhs.true, label %for.body.if.end19_crit_edge

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

land.lhs.true:                                    ; preds = %for.body
  %pid13 = getelementptr inbounds %struct.anon.130, ptr %sp.0147, i32 0, i32 2
  %11 = ptrtoint ptr %pid13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pid13, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not = icmp eq i32 %14, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end19_crit_edge, label %if.then15

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then15:                                        ; preds = %land.lhs.true
  %15 = ptrtoint ptr %sp.0147 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sp.0147, align 4
  %tobool.not19.i = icmp eq ptr %16, null
  br i1 %tobool.not19.i, label %if.then15.htb_id_find_next_upper.exit_crit_edge, label %if.then15.while.body.i_crit_edge

if.then15.while.body.i_crit_edge:                 ; preds = %if.then15
  br label %while.body.i

if.then15.htb_id_find_next_upper.exit_crit_edge:  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_id_find_next_upper.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.then15.while.body.i_crit_edge
  %n.addr.021.i = phi ptr [ %n.addr.1.i, %cleanup.i.while.body.i_crit_edge ], [ %16, %if.then15.while.body.i_crit_edge ]
  %r.020.i = phi ptr [ %r.1.i, %cleanup.i.while.body.i_crit_edge ], [ null, %if.then15.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %n.addr.021.i, i32 %idx.neg.i
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %14)
  %cmp.i = icmp ult i32 %18, %14
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.021.i, i32 0, i32 1
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %14)
  %cmp3.i = icmp ugt i32 %18, %14
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.htb_id_find_next_upper.exit_crit_edge

if.else.i.htb_id_find_next_upper.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_id_find_next_upper.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.addr.021.i, i32 0, i32 2
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then4.i, %if.then.i
  %r.1.i = phi ptr [ %r.020.i, %if.then.i ], [ %n.addr.021.i, %if.then4.i ]
  %n.addr.1.in.i = phi ptr [ %rb_right.i, %if.then.i ], [ %rb_left.i, %if.then4.i ]
  %19 = ptrtoint ptr %n.addr.1.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %n.addr.1.i = load ptr, ptr %n.addr.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.addr.1.i, null
  br i1 %tobool.not.i, label %cleanup.i.htb_id_find_next_upper.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

cleanup.i.htb_id_find_next_upper.exit_crit_edge:  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %htb_id_find_next_upper.exit

htb_id_find_next_upper.exit:                      ; preds = %cleanup.i.htb_id_find_next_upper.exit_crit_edge, %if.else.i.htb_id_find_next_upper.exit_crit_edge, %if.then15.htb_id_find_next_upper.exit_crit_edge
  %retval.2.i = phi ptr [ null, %if.then15.htb_id_find_next_upper.exit_crit_edge ], [ %r.1.i, %cleanup.i.htb_id_find_next_upper.exit_crit_edge ], [ %n.addr.021.i, %if.else.i.htb_id_find_next_upper.exit_crit_edge ]
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.2.i, ptr %8, align 4
  br label %if.end19

if.end19:                                         ; preds = %htb_id_find_next_upper.exit, %land.lhs.true.if.end19_crit_edge, %for.body.if.end19_crit_edge
  %pid20 = getelementptr inbounds %struct.anon.130, ptr %sp.0147, i32 0, i32 2
  %21 = ptrtoint ptr %pid20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pid20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %22, align 4
  %24 = ptrtoint ptr %pptr11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pptr11, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool22.not = icmp eq ptr %27, null
  br i1 %tobool22.not, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end19
  %28 = ptrtoint ptr %sp.0147 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sp.0147, align 4
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %25, align 4
  %31 = ptrtoint ptr %pptr11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pptr11, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %rb_left145 = getelementptr inbounds %struct.rb_node, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %rb_left145 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rb_left145, align 4
  %tobool27.not146 = icmp eq ptr %36, null
  br i1 %tobool27.not146, label %if.then23.while.end_crit_edge, label %if.then23.while.body_crit_edge

if.then23.while.body_crit_edge:                   ; preds = %if.then23
  br label %while.body

if.then23.while.end_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then23.while.body_crit_edge
  %37 = phi ptr [ %45, %while.body.while.body_crit_edge ], [ %36, %if.then23.while.body_crit_edge ]
  %38 = phi ptr [ %41, %while.body.while.body_crit_edge ], [ %32, %if.then23.while.body_crit_edge ]
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %38, align 4
  %40 = ptrtoint ptr %pptr11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pptr11, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %rb_left to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rb_left, align 4
  %tobool27.not = icmp eq ptr %45, null
  br i1 %tobool27.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then23.while.end_crit_edge
  %cmp32 = icmp ugt ptr %sp.0147, %stk
  br i1 %cmp32, label %if.then33, label %while.end.for.inc_crit_edge

while.end.for.inc_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then33:                                        ; preds = %while.end
  %pptr34 = getelementptr %struct.anon.130, ptr %sp.0147, i32 -1, i32 1
  %46 = ptrtoint ptr %pptr34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pptr34, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %tobool35.not = icmp eq ptr %49, null
  br i1 %tobool35.not, label %if.then33.cleanup104.sink.split_crit_edge, label %if.end61

if.then33.cleanup104.sink.split_crit_edge:        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup104.sink.split

if.end61:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #19
  %incdec.ptr = getelementptr %struct.anon.130, ptr %sp.0147, i32 -1
  %call.i = call ptr @rb_next(ptr noundef nonnull %49) #17
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %47, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end19
  %add.ptr = getelementptr i8, ptr %27, i32 %idx.neg.i
  %level = getelementptr inbounds %struct.htb_class, ptr %add.ptr, i32 0, i32 11
  %51 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool66.not = icmp eq i32 %52, 0
  br i1 %tobool66.not, label %if.else.cleanup104_crit_edge, label %cleanup

if.else.cleanup104_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup104

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %53 = getelementptr inbounds %struct.htb_class, ptr %add.ptr, i32 0, i32 21
  %arrayidx = getelementptr [8 x %struct.htb_prio], ptr %53, i32 0, i32 %prio
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx, align 4
  %incdec.ptr70 = getelementptr %struct.anon.130, ptr %sp.0147, i32 1
  %56 = ptrtoint ptr %incdec.ptr70 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %incdec.ptr70, align 4
  %ptr72 = getelementptr [8 x %struct.htb_prio], ptr %53, i32 0, i32 %prio, i32 1
  %pptr73 = getelementptr %struct.anon.130, ptr %sp.0147, i32 1, i32 1
  %57 = ptrtoint ptr %pptr73 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %ptr72, ptr %pptr73, align 4
  %last_ptr_id74 = getelementptr [8 x %struct.htb_prio], ptr %53, i32 0, i32 %prio, i32 2
  %pid75 = getelementptr %struct.anon.130, ptr %sp.0147, i32 1, i32 2
  %58 = ptrtoint ptr %pid75 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %last_ptr_id74, ptr %pid75, align 4
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %if.end61, %while.end.for.inc_crit_edge
  %sp.2 = phi ptr [ %incdec.ptr70, %cleanup ], [ %incdec.ptr, %if.end61 ], [ %sp.0147, %while.end.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0148, 1
  %exitcond.not = icmp eq i32 %inc, 65535
  br i1 %exitcond.not, label %for.inc.cleanup104.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup104.sink.split_crit_edge:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup104.sink.split

cleanup104.sink.split:                            ; preds = %for.inc.cleanup104.sink.split_crit_edge, %if.then33.cleanup104.sink.split_crit_edge
  %.sink = phi i32 [ 840, %if.then33.cleanup104.sink.split_crit_edge ], [ 858, %for.inc.cleanup104.sink.split_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #17
  br label %cleanup104

cleanup104:                                       ; preds = %cleanup104.sink.split, %if.else.cleanup104_crit_edge
  %retval.3 = phi ptr [ null, %cleanup104.sink.split ], [ %add.ptr, %if.else.cleanup104_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %stk) #17
  ret ptr %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_warn_nonwc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_schedule_range_ns(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htb_work_func(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr i8, ptr %work, i32 168
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !131
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 696, ptr noundef nonnull @.str.31) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_queue.i, align 8
  %qdisc1.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %qdisc1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %qdisc1.i, align 8
  %call.i1 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i1, label %rcu_read_lock.exit.qdisc_root.exit_crit_edge, label %lor.lhs.false.i

rcu_read_lock.exit.qdisc_root.exit_crit_edge:     ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_root.exit

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit
  %call3.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i2 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i2, label %land.lhs.true.i3, label %lor.lhs.false.i.qdisc_root.exit_crit_edge

lor.lhs.false.i.qdisc_root.exit_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_root.exit

land.lhs.true.i3:                                 ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i3.qdisc_root.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i3.qdisc_root.exit_crit_edge:       ; preds = %land.lhs.true.i3
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_root.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i3
  %.b11.i = load i1, ptr @qdisc_root.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true6.i.qdisc_root.exit_crit_edge, label %if.then.i4

land.lhs.true6.i.qdisc_root.exit_crit_edge:       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %qdisc_root.exit

if.then.i4:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @qdisc_root.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 558, ptr noundef nonnull @.str.22) #17
  br label %qdisc_root.exit

qdisc_root.exit:                                  ; preds = %if.then.i4, %land.lhs.true6.i.qdisc_root.exit_crit_edge, %land.lhs.true.i3.qdisc_root.exit_crit_edge, %lor.lhs.false.i.qdisc_root.exit_crit_edge, %rcu_read_lock.exit.qdisc_root.exit_crit_edge
  tail call void @__netif_schedule(ptr noundef %9) #17
  %call.i5 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i5, label %qdisc_root.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i8

qdisc_root.exit.rcu_read_unlock.exit_crit_edge:   ; preds = %qdisc_root.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i8:                                 ; preds = %qdisc_root.exit
  %call1.i6 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i10

land.lhs.true.i8.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i10:                               ; preds = %land.lhs.true.i8
  %.b4.i9 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9, label %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, label %if.then.i11

land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i11:                                      ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 724, ptr noundef nonnull @.str.32) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i11, %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, %qdisc_root.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !132
  %10 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i.i.i12 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i12 to ptr
  %preempt_count.i.i.i.i13 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i13, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i13, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qdisc_class_hash_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_kfree_skbs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind readonly }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !66, !68, !70, !71, !73, !75, !76, !78, !80, !82, !84, !85, !86, !87, !89, !91, !92, !94, !96, !98, !99, !100, !102, !104, !105}
!llvm.named.register.sp = !{!107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__param_htb_hysteresis, !1, !"__param_htb_hysteresis", i1 false, i1 false}
!1 = !{!"../net/sched/sch_htb.c", i32 62, i32 1}
!2 = !{ptr @__UNIQUE_ID_htb_hysteresistype366, !1, !"__UNIQUE_ID_htb_hysteresistype366", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_htb_hysteresis367, !4, !"__UNIQUE_ID_htb_hysteresis367", i1 false, i1 false}
!4 = !{!"../net/sched/sch_htb.c", i32 63, i32 1}
!5 = !{ptr @__param_htb_rate_est, !6, !"__param_htb_rate_est", i1 false, i1 false}
!6 = !{!"../net/sched/sch_htb.c", i32 66, i32 1}
!7 = !{ptr @__UNIQUE_ID_htb_rate_esttype368, !6, !"__UNIQUE_ID_htb_rate_esttype368", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_htb_rate_est369, !9, !"__UNIQUE_ID_htb_rate_est369", i1 false, i1 false}
!9 = !{!"../net/sched/sch_htb.c", i32 67, i32 1}
!10 = !{ptr @__initcall__kmod_sch_htb__402_2197_htb_module_init6, !11, !"__initcall__kmod_sch_htb__402_2197_htb_module_init6", i1 false, i1 false}
!11 = !{!"../net/sched/sch_htb.c", i32 2197, i32 1}
!12 = !{ptr @__exitcall_htb_module_exit, !13, !"__exitcall_htb_module_exit", i1 false, i1 false}
!13 = !{!"../net/sched/sch_htb.c", i32 2198, i32 1}
!14 = !{ptr @__UNIQUE_ID_file403, !15, !"__UNIQUE_ID_file403", i1 false, i1 false}
!15 = !{!"../net/sched/sch_htb.c", i32 2199, i32 1}
!16 = !{ptr @__UNIQUE_ID_license404, !15, !"__UNIQUE_ID_license404", i1 false, i1 false}
!17 = !{ptr @__param_str_htb_hysteresis, !1, !"__param_str_htb_hysteresis", i1 false, i1 false}
!18 = !{ptr @htb_hysteresis, !19, !"htb_hysteresis", i1 false, i1 false}
!19 = !{!"../net/sched/sch_htb.c", i32 54, i32 12}
!20 = !{ptr @__param_str_htb_rate_est, !6, !"__param_str_htb_rate_est", i1 false, i1 false}
!21 = !{ptr @htb_rate_est, !22, !"htb_rate_est", i1 false, i1 false}
!22 = !{!"../net/sched/sch_htb.c", i32 65, i32 12}
!23 = !{ptr @htb_qdisc_ops, !24, !"htb_qdisc_ops", i1 false, i1 false}
!24 = !{!"../net/sched/sch_htb.c", i32 2173, i32 25}
!25 = !{ptr @htb_class_ops, !26, !"htb_class_ops", i1 false, i1 false}
!26 = !{!"../net/sched/sch_htb.c", i32 2157, i32 37}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/sched/sch_htb.c", i32 1495, i32 3}
!29 = !{ptr @htb_set_lockdep_class_child.child_key, !30, !"child_key", i1 false, i1 false}
!30 = !{!"../net/sched/sch_htb.c", i32 1040, i32 31}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/sched/sch_htb.c", i32 1042, i32 2}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!35 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @htb_change_class.__msg, !38, !"__msg", i1 false, i1 false}
!38 = !{!"../net/sched/sch_htb.c", i32 1816, i32 4}
!39 = !{ptr @htb_change_class.__msg.4, !40, !"__msg", i1 false, i1 false}
!40 = !{!"../net/sched/sch_htb.c", i32 1820, i32 4}
!41 = !{ptr @htb_change_class.__msg.5, !42, !"__msg", i1 false, i1 false}
!42 = !{!"../net/sched/sch_htb.c", i32 1824, i32 4}
!43 = !{ptr @htb_change_class.__msg.6, !44, !"__msg", i1 false, i1 false}
!44 = !{!"../net/sched/sch_htb.c", i32 1828, i32 4}
!45 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/sched/sch_htb.c", i32 1871, i32 4}
!47 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @htb_change_class._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @htb_change_class._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../net/sched/sch_htb.c", i32 1908, i32 3}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/sched/sch_htb.c", i32 1930, i32 5}
!54 = !{ptr @htb_change_class._entry.9, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @htb_change_class._entry_ptr.11, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/sched/sch_htb.c", i32 1950, i32 5}
!58 = !{ptr @htb_change_class._entry.12, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @htb_change_class._entry_ptr.14, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/sched/sch_htb.c", i32 2080, i32 3}
!62 = !{ptr @htb_change_class._entry.15, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @htb_change_class._entry_ptr.17, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @htb_policy, !67, !"htb_policy", i1 false, i1 false}
!67 = !{!"../net/sched/sch_htb.c", i32 1017, i32 32}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!70 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/net/netlink.h", i32 991, i32 3}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../net/sched/sch_htb.c", i32 236, i32 9}
!75 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../net/sched/sch_htb.c", i32 238, i32 9}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../net/sched/sch_htb.c", i32 266, i32 9}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../include/net/sch_generic.h", i32 835, i32 34}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/sched/sch_htb.c", i32 771, i32 3}
!84 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @htb_do_events._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @htb_do_events._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/sched/sch_htb.c", i32 906, i32 20}
!89 = !{ptr @htb_init.__key, !90, !"__key", i1 false, i1 false}
!90 = !{!"../net/sched/sch_htb.c", i32 1063, i32 2}
!91 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @htb_init.__msg, !93, !"__msg", i1 false, i1 false}
!93 = !{!"../net/sched/sch_htb.c", i32 1088, i32 4}
!94 = !{ptr @htb_init.__msg.29, !95, !"__msg", i1 false, i1 false}
!95 = !{!"../net/sched/sch_htb.c", i32 1093, i32 4}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!98 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!100 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!101 = !{!"../include/net/sch_generic.h", i32 558, i32 20}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!104 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../include/net/sch_generic.h", i32 1165, i32 2}
!107 = !{!"sp"}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"auto-init"}
!118 = !{!"branch_weights", i32 1, i32 2000}
!119 = !{i32 0, i32 33}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = !{i8 0, i8 2}
!122 = !{i64 2148397550, i64 2148397582, i64 2148397611, i64 2148397645, i64 2148397676, i64 2148397699}
!123 = !{i64 2148242444, i64 2148242724, i64 2148243058, i64 2148243392}
!124 = !{i64 2149920178}
!125 = !{i64 2149925110}
!126 = !{i64 2149946822}
!127 = !{i64 2149951714}
!128 = !{i64 2150028171}
!129 = !{i64 2150028496}
!130 = !{i64 2156481918, i64 2156482402, i64 2156481955, i64 2156482011, i64 2156482045, i64 2156482069, i64 2156482110, i64 2156482131, i64 2156482159, i64 2156482193}
!131 = !{i64 2149412179}
!132 = !{i64 2149412445}
