; ModuleID = '/llk/IR_all_yes/net/sched/sch_cbs.c_pt.bc'
source_filename = "../net/sched/sch_cbs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff_list = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.122, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.122 = type { ptr }
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
%struct.tc_cbs_qopt_offload = type { i8, i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tc_cbs_qopt = type { i8, [3 x i8], i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.117, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.117 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.cbs_sched_data = type { i8, i32, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.qdisc_watchdog, ptr, ptr, ptr, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.qdisc_watchdog = type { i64, %struct.hrtimer, ptr }

@cbs_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @cbs_class_ops, [16 x i8] c"cbs\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 144, i32 0, ptr @cbs_enqueue, ptr @cbs_dequeue, ptr @qdisc_peek_dequeued, ptr @cbs_init, ptr @qdisc_reset_queue, ptr @cbs_destroy, ptr @cbs_change, ptr null, ptr null, ptr null, ptr @cbs_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@cbs_device_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @cbs_dev_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_sch_cbs__369_580_cbs_module_init6 = internal global ptr @cbs_module_init, section ".initcall6.init", align 4
@__exitcall_cbs_module_exit = internal global ptr @cbs_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file370 = internal constant [31 x i8] c"sch_cbs.file=net/sched/sch_cbs\00", section ".modinfo", align 1
@__UNIQUE_ID_license371 = internal constant [20 x i8] c"sch_cbs.license=GPL\00", section ".modinfo", align 1
@cbs_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr @cbs_graft, ptr @cbs_leaf, ptr null, ptr @cbs_find, ptr null, ptr null, ptr @cbs_walk, ptr null, ptr null, ptr null, ptr @cbs_dump_class, ptr null }, [40 x i8] zeroinitializer }, align 32
@pfifo_qdisc_ops = external dso_local global %struct.Qdisc_ops, align 4
@noop_qdisc = external dso_local global %struct.Qdisc, align 128
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@cbs_init.__msg = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Missing CBS qdisc options  which are mandatory\00", [49 x i8] zeroinitializer }, align 32
@cbs_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.25 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@cbs_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @cbs_list, ptr @cbs_list }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cbs_list_lock\00", [18 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__qdisc_reset_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cbs_disable_offload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014Couldn't disable CBS offload for queue %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cbs_disable_offload\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sched/sch_cbs.c\00", [44 x i8] zeroinitializer }, align 32
@cbs_disable_offload._entry_ptr = internal global ptr @cbs_disable_offload._entry, section ".printk_index", align 4
@cbs_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 20, %union.anon.22 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@cbs_change.__msg = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Missing CBS parameter which are mandatory\00", [54 x i8] zeroinitializer }, align 32
@cbs_set_port_rate.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.6, ptr @.str.9, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sch_cbs\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cbs_set_port_rate\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"cbs: set %s's port_rate to: %lld, linkspeed: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@cbs_enable_offload.__msg = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Specified device does not support cbs offload\00", [50 x i8] zeroinitializer }, align 32
@cbs_enable_offload.__msg.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Specified device failed to setup cbs hardware offload\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@cbs_dev_notifier.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"cbs_device_notifier\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 556, i32 30 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"cbs_class_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 533, i32 37 }
@___asan_gen_.23 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 596, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 408, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"cbs_list_lock\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [9 x i8] c"cbs_list\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 65, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 66, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 271, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 272, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"cbs_policy\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 246, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 376, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 327, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 285, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.71 = private constant [23 x i8] c"../net/sched/sch_cbs.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 299, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 991, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_file370, ptr @__UNIQUE_ID_license371, ptr @__exitcall_cbs_module_exit, ptr @__initcall__kmod_sch_cbs__369_580_cbs_module_init6, ptr @cbs_disable_offload._entry, ptr @cbs_disable_offload._entry_ptr, ptr @cbs_module_exit, ptr @cbs_device_notifier, ptr @cbs_class_ops, ptr @.str, ptr @.str.1, ptr @cbs_init.__msg, ptr @cbs_list_lock, ptr @cbs_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cbs_policy, ptr @cbs_change.__msg, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @cbs_enable_offload.__msg, ptr @cbs_enable_offload.__msg.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbs_device_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbs_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbs_init.__msg to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbs_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbs_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbs_disable_offload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbs_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbs_change.__msg to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbs_enable_offload.__msg to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbs_enable_offload.__msg.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cbs_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @cbs_qdisc_ops) #12
  %call1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @cbs_device_notifier) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cbs_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @cbs_device_notifier) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_qdisc(ptr noundef nonnull @cbs_qdisc_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @cbs_device_notifier) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbs_enqueue(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %enqueue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %0 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enqueue, align 8
  %call1 = tail call i32 %1(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cbs_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 60
  %0 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %1(ptr noundef %sch) #12
  ret ptr %call1
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
define internal i32 @cbs_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cbs_init.__msg) #12
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cbs_init.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handle, align 32
  %call5 = tail call ptr @qdisc_create_dflt(ptr noundef %1, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %6, ptr noundef %extack) #12
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %7 = ptrtoint ptr %qdisc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %qdisc, align 8
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  tail call void @_raw_spin_lock(ptr noundef nonnull @cbs_list_lock) #12
  %cbs_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 0, i32 0, i32 1
  %8 = load ptr, ptr @cbs_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cbs_list, ptr noundef nonnull @cbs_list, ptr noundef %8) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.list_add.exit_crit_edge

if.end9.list_add.exit_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cbs_list, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %cbs_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %cbs_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cbs_list, ptr %prev3.i.i, align 4
  store volatile ptr %cbs_list, ptr @cbs_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end9.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cbs_list_lock) #12
  %12 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qdisc, align 8
  tail call void @qdisc_hash_add(ptr noundef %13, i1 noundef zeroext false) #12
  %14 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_queue.i, align 8
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i, align 128
  %sub.ptr.lhs.cast = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 640
  %queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %18 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.ptr.div, ptr %queue, align 4
  %enqueue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %19 = ptrtoint ptr %enqueue to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @cbs_enqueue_soft, ptr %enqueue, align 8
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 60
  %20 = ptrtoint ptr %dequeue to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @cbs_dequeue_soft, ptr %dequeue, align 4
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  tail call void @qdisc_watchdog_init(ptr noundef %watchdog, ptr noundef %sch) #12
  %call13 = tail call i32 @cbs_change(ptr noundef %sch, ptr noundef nonnull %opt, ptr noundef %extack)
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.end4.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %list_add.exit ], [ -22, %if.then3 ], [ -22, %do.body.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qdisc_reset_queue(ptr nocapture noundef %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %q = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %call.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.if.end29.i_crit_edge

entry.if.end29.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

land.rhs.i:                                       ; preds = %entry
  %.b50.i = load i1, ptr @__qdisc_reset_queue.__already_done, align 1
  br i1 %.b50.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !62

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__qdisc_reset_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1165, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1165) #12
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %entry.if.end29.i_crit_edge
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool37.not.i = icmp eq i32 %1, 0
  br i1 %tobool37.not.i, label %if.end29.i.__qdisc_reset_queue.exit_crit_edge, label %if.then38.i

if.end29.i.__qdisc_reset_queue.exit_crit_edge:    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__qdisc_reset_queue.exit

if.then38.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  %tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 4
  tail call void @rtnl_kfree_skbs(ptr noundef %3, ptr noundef %5) #12
  %6 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %q, align 4
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i, align 4
  %8 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i, align 4
  br label %__qdisc_reset_queue.exit

__qdisc_reset_queue.exit:                         ; preds = %if.then38.i, %if.end29.i.__qdisc_reset_queue.exit_crit_edge
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %9 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %backlog, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cbs_destroy(ptr noundef %sch) #2 align 64 {
entry:
  %cbs.i = alloca %struct.tc_cbs_qopt_offload, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %4 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  tail call void @qdisc_watchdog_cancel(ptr noundef %watchdog) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cbs.i) #12
  %6 = call ptr @memset(ptr %cbs.i, i32 0, i32 24)
  %7 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %privdata.i, align 8, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.cbs_disable_offload.exit_crit_edge, label %if.end.i

if.end.cbs_disable_offload.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cbs_disable_offload.exit

if.end.i:                                         ; preds = %if.end
  %enqueue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %9 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @cbs_enqueue_soft, ptr %enqueue.i, align 8
  %dequeue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 60
  %10 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cbs_dequeue_soft, ptr %dequeue.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %11 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %12, i32 0, i32 42
  %13 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %if.end.i.cbs_disable_offload.exit_crit_edge, label %if.end3.i

if.end.i.cbs_disable_offload.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cbs_disable_offload.exit

if.end3.i:                                        ; preds = %if.end.i
  %queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %15 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %queue.i, align 4
  %queue4.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %cbs.i, i32 0, i32 1
  %17 = ptrtoint ptr %queue4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %queue4.i, align 4
  %call.i = call i32 %14(ptr noundef %3, i32 noundef 6, ptr noundef nonnull %cbs.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end3.i.cbs_disable_offload.exit_crit_edge

if.end3.i.cbs_disable_offload.exit_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cbs_disable_offload.exit

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %queue4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %queue4.i, align 4
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %19) #15
  br label %cbs_disable_offload.exit

cbs_disable_offload.exit:                         ; preds = %do.end.i, %if.end3.i.cbs_disable_offload.exit_crit_edge, %if.end.i.cbs_disable_offload.exit_crit_edge, %if.end.cbs_disable_offload.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cbs.i) #12
  call void @_raw_spin_lock(ptr noundef nonnull @cbs_list_lock) #12
  %cbs_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 0, i32 0, i32 1
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %cbs_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %cbs_disable_offload.exit.list_del.exit_crit_edge

cbs_disable_offload.exit.list_del.exit_crit_edge: ; preds = %cbs_disable_offload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %cbs_disable_offload.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %cbs_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cbs_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %cbs_disable_offload.exit.list_del.exit_crit_edge
  %26 = ptrtoint ptr %cbs_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %cbs_list, align 4
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @cbs_list_lock) #12
  %28 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %qdisc, align 8
  call void @qdisc_put(ptr noundef %29) #12
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbs_change(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  %cbs.i52 = alloca %struct.tc_cbs_qopt_offload, align 4
  %cbs.i = alloca %struct.tc_cbs_qopt_offload, align 4
  %tb = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb) #12
  %4 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !64
  %5 = getelementptr inbounds [2 x ptr], ptr %tb, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !64
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %7 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %8 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 1, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @cbs_policy, i32 noundef 0, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %if.end
  call void @do_trace_netlink_extack(ptr noundef nonnull @cbs_change.__msg) #12
  %tobool4.not = icmp eq ptr %extack, null
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cbs_change.__msg, ptr %extack, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp eq i8 %13, 0
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  call fastcc void @cbs_set_port_rate(ptr noundef %3, ptr noundef %privdata.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cbs.i) #12
  %14 = call ptr @memset(ptr %cbs.i, i32 0, i32 24)
  %15 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %privdata.i, align 8, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.then11.cbs_disable_offload.exit_crit_edge, label %if.end.i

if.then11.cbs_disable_offload.exit_crit_edge:     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cbs_disable_offload.exit

if.end.i:                                         ; preds = %if.then11
  %enqueue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %17 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @cbs_enqueue_soft, ptr %enqueue.i, align 8
  %dequeue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 60
  %18 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @cbs_dequeue_soft, ptr %dequeue.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %19 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %20, i32 0, i32 42
  %21 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool1.not.i = icmp eq ptr %22, null
  br i1 %tobool1.not.i, label %if.end.i.cbs_disable_offload.exit_crit_edge, label %if.end3.i

if.end.i.cbs_disable_offload.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cbs_disable_offload.exit

if.end3.i:                                        ; preds = %if.end.i
  %queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %23 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %queue.i, align 4
  %queue4.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %cbs.i, i32 0, i32 1
  %25 = ptrtoint ptr %queue4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %queue4.i, align 4
  %call.i = call i32 %22(ptr noundef %3, i32 noundef 6, ptr noundef nonnull %cbs.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end3.i.cbs_disable_offload.exit_crit_edge

if.end3.i.cbs_disable_offload.exit_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cbs_disable_offload.exit

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %queue4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %queue4.i, align 4
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %27) #15
  br label %cbs_disable_offload.exit

cbs_disable_offload.exit:                         ; preds = %do.end.i, %if.end3.i.cbs_disable_offload.exit_crit_edge, %if.end.i.cbs_disable_offload.exit_crit_edge, %if.then11.cbs_disable_offload.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cbs.i) #12
  br label %if.end16

if.else:                                          ; preds = %if.end7
  %netdev_ops.i53 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %28 = ptrtoint ptr %netdev_ops.i53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev_ops.i53, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cbs.i52) #12
  %30 = ptrtoint ptr %cbs.i52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16777216, ptr %cbs.i52, align 4
  %ndo_setup_tc.i54 = getelementptr inbounds %struct.net_device_ops, ptr %29, i32 0, i32 42
  %31 = ptrtoint ptr %ndo_setup_tc.i54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ndo_setup_tc.i54, align 4
  %tobool.not.i55 = icmp eq ptr %32, null
  br i1 %tobool.not.i55, label %do.body.i, label %if.end3.i61

do.body.i:                                        ; preds = %if.else
  call void @do_trace_netlink_extack(ptr noundef nonnull @cbs_enable_offload.__msg) #12
  %tobool1.not.i56 = icmp eq ptr %extack, null
  br i1 %tobool1.not.i56, label %do.body.i.cbs_enable_offload.exit.thread_crit_edge, label %do.body.i.cbs_enable_offload.exit.thread.sink.split_crit_edge

do.body.i.cbs_enable_offload.exit.thread.sink.split_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cbs_enable_offload.exit.thread.sink.split

do.body.i.cbs_enable_offload.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cbs_enable_offload.exit.thread

if.end3.i61:                                      ; preds = %if.else
  %queue.i57 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %33 = ptrtoint ptr %queue.i57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %queue.i57, align 4
  %queue4.i58 = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %cbs.i52, i32 0, i32 1
  %35 = ptrtoint ptr %queue4.i58 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %queue4.i58, align 4
  %hicredit.i = getelementptr i8, ptr %10, i32 8
  %36 = ptrtoint ptr %hicredit.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hicredit.i, align 4
  %hicredit5.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %cbs.i52, i32 0, i32 2
  %38 = ptrtoint ptr %hicredit5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %hicredit5.i, align 4
  %locredit.i = getelementptr i8, ptr %10, i32 12
  %39 = ptrtoint ptr %locredit.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %locredit.i, align 4
  %locredit6.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %cbs.i52, i32 0, i32 3
  %41 = ptrtoint ptr %locredit6.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %locredit6.i, align 4
  %idleslope.i = getelementptr i8, ptr %10, i32 16
  %42 = ptrtoint ptr %idleslope.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %idleslope.i, align 4
  %idleslope7.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %cbs.i52, i32 0, i32 4
  %44 = ptrtoint ptr %idleslope7.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %idleslope7.i, align 4
  %sendslope.i = getelementptr i8, ptr %10, i32 20
  %45 = ptrtoint ptr %sendslope.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sendslope.i, align 4
  %sendslope8.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %cbs.i52, i32 0, i32 5
  %47 = ptrtoint ptr %sendslope8.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %sendslope8.i, align 4
  %call.i59 = call i32 %32(ptr noundef %3, i32 noundef 6, ptr noundef nonnull %cbs.i52) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp.i60 = icmp slt i32 %call.i59, 0
  br i1 %cmp.i60, label %do.body11.i, label %cbs_enable_offload.exit

do.body11.i:                                      ; preds = %if.end3.i61
  call void @do_trace_netlink_extack(ptr noundef nonnull @cbs_enable_offload.__msg.10) #12
  %tobool13.not.i = icmp eq ptr %extack, null
  br i1 %tobool13.not.i, label %do.body11.i.cbs_enable_offload.exit.thread_crit_edge, label %do.body11.i.cbs_enable_offload.exit.thread.sink.split_crit_edge

do.body11.i.cbs_enable_offload.exit.thread.sink.split_crit_edge: ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cbs_enable_offload.exit.thread.sink.split

do.body11.i.cbs_enable_offload.exit.thread_crit_edge: ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cbs_enable_offload.exit.thread

cbs_enable_offload.exit.thread.sink.split:        ; preds = %do.body11.i.cbs_enable_offload.exit.thread.sink.split_crit_edge, %do.body.i.cbs_enable_offload.exit.thread.sink.split_crit_edge
  %cbs_enable_offload.__msg.sink = phi ptr [ @cbs_enable_offload.__msg, %do.body.i.cbs_enable_offload.exit.thread.sink.split_crit_edge ], [ @cbs_enable_offload.__msg.10, %do.body11.i.cbs_enable_offload.exit.thread.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ -95, %do.body.i.cbs_enable_offload.exit.thread.sink.split_crit_edge ], [ %call.i59, %do.body11.i.cbs_enable_offload.exit.thread.sink.split_crit_edge ]
  %48 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %cbs_enable_offload.__msg.sink, ptr %extack, align 4
  br label %cbs_enable_offload.exit.thread

cbs_enable_offload.exit.thread:                   ; preds = %cbs_enable_offload.exit.thread.sink.split, %do.body11.i.cbs_enable_offload.exit.thread_crit_edge, %do.body.i.cbs_enable_offload.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i59, %do.body11.i.cbs_enable_offload.exit.thread_crit_edge ], [ -95, %do.body.i.cbs_enable_offload.exit.thread_crit_edge ], [ %retval.0.i.ph.ph, %cbs_enable_offload.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cbs.i52) #12
  br label %cleanup

cbs_enable_offload.exit:                          ; preds = %if.end3.i61
  call void @__sanitizer_cov_trace_pc() #14
  %enqueue.i62 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %49 = ptrtoint ptr %enqueue.i62 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @cbs_enqueue_offload, ptr %enqueue.i62, align 8
  %dequeue.i63 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 60
  %50 = ptrtoint ptr %dequeue.i63 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @cbs_dequeue_offload, ptr %dequeue.i63, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cbs.i52) #12
  br label %if.end16

if.end16:                                         ; preds = %cbs_enable_offload.exit, %cbs_disable_offload.exit
  %hicredit = getelementptr i8, ptr %10, i32 8
  %51 = ptrtoint ptr %hicredit to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hicredit, align 4
  %hicredit17 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %53 = ptrtoint ptr %hicredit17 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %hicredit17, align 4
  %locredit = getelementptr i8, ptr %10, i32 12
  %54 = ptrtoint ptr %locredit to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %locredit, align 4
  %locredit18 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %56 = ptrtoint ptr %locredit18 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %locredit18, align 8
  %idleslope = getelementptr i8, ptr %10, i32 16
  %57 = ptrtoint ptr %idleslope to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %idleslope, align 4
  %conv = sext i32 %58 to i64
  %mul = mul nsw i64 %conv, 125
  %idleslope19 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %59 = ptrtoint ptr %idleslope19 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %mul, ptr %idleslope19, align 8
  %sendslope = getelementptr i8, ptr %10, i32 20
  %60 = ptrtoint ptr %sendslope to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sendslope, align 4
  %conv20 = sext i32 %61 to i64
  %mul21 = mul nsw i64 %conv20, 125
  %sendslope22 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %62 = ptrtoint ptr %sendslope22 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %mul21, ptr %sendslope22, align 8
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool24 = icmp ne i8 %64, 0
  %frombool = zext i1 %tobool24 to i8
  %65 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %frombool, ptr %privdata.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %cbs_enable_offload.exit.thread, %if.then5, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call2.i, %entry.cleanup_crit_edge ], [ -22, %if.then5 ], [ -22, %do.body.cleanup_crit_edge ], [ %retval.0.i.ph, %cbs_enable_offload.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbs_dump(ptr nocapture noundef readonly %sch, ptr noundef %skb) #2 align 64 {
entry:
  %opt = alloca %struct.tc_cbs_qopt, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %opt) #12
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %opt, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %1 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not29 = icmp eq ptr %2, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not29
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %hicredit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %3 = ptrtoint ptr %hicredit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hicredit, align 4
  %hicredit2 = getelementptr inbounds %struct.tc_cbs_qopt, ptr %opt, i32 0, i32 2
  %5 = ptrtoint ptr %hicredit2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %hicredit2, align 4
  %locredit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %6 = ptrtoint ptr %locredit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %locredit, align 8
  %locredit3 = getelementptr inbounds %struct.tc_cbs_qopt, ptr %opt, i32 0, i32 3
  %8 = ptrtoint ptr %locredit3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %locredit3, align 4
  %sendslope = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %9 = ptrtoint ptr %sendslope to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sendslope, align 8
  %call4 = tail call i64 @div64_s64(i64 noundef %10, i64 noundef 125) #12
  %conv = trunc i64 %call4 to i32
  %sendslope5 = getelementptr inbounds %struct.tc_cbs_qopt, ptr %opt, i32 0, i32 5
  %11 = ptrtoint ptr %sendslope5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %sendslope5, align 4
  %idleslope = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %12 = ptrtoint ptr %idleslope to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %idleslope, align 8
  %call6 = tail call i64 @div64_s64(i64 noundef %13, i64 noundef 125) #12
  %conv7 = trunc i64 %call6 to i32
  %idleslope8 = getelementptr inbounds %struct.tc_cbs_qopt, ptr %opt, i32 0, i32 4
  %14 = ptrtoint ptr %idleslope8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv7, ptr %idleslope8, align 4
  %15 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %privdata.i, align 8, !range !63
  %17 = ptrtoint ptr %opt to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %opt, align 4
  %call12 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %opt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then.i.i

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %2, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %24, %2
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !65

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.end15 ], [ -1, %if.end.i.i ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %opt) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbs_graft(ptr noundef %sch, i32 noundef %arg, ptr noundef %new, ptr nocapture noundef writeonly %old, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %qstats.i.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %new, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue, align 8
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle, align 32
  %call1 = tail call ptr @qdisc_create_dflt(ptr noundef %1, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %3, ptr noundef null) #12
  %tobool2.not = icmp eq ptr %call1, null
  %spec.store.select = select i1 %tobool2.not, ptr @noop_qdisc, ptr %call1
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %new.addr.0 = phi ptr [ %new, %entry.if.end4_crit_edge ], [ %spec.store.select, %if.then ]
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end4.sch_tree_lock.exit.i_crit_edge

if.end4.sch_tree_lock.exit.i_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit.i

if.else.i.i:                                      ; preds = %if.end4
  %dev_queue.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %6 = ptrtoint ptr %dev_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_queue.i.i.i.i, align 8
  %qdisc_sleeping.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %qdisc_sleeping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qdisc_sleeping.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !62

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %if.end4.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %sch, %if.end4.sch_tree_lock.exit.i_crit_edge ], [ %9, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %9, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %9, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #12
  %10 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qdisc, align 4
  store ptr %new.addr.0, ptr %qdisc, align 4
  %cmp.not.i = icmp eq ptr %11, null
  br i1 %cmp.not.i, label %sch_tree_lock.exit.i.if.end.i_crit_edge, label %if.then.i

sch_tree_lock.exit.i.if.end.i_crit_edge:          ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i.i) #12
  %12 = call ptr @memset(ptr %qstats.i.i.i, i32 0, i32 20)
  %cpu_qstats.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 12
  %13 = ptrtoint ptr %cpu_qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpu_qstats.i.i.i, align 4
  %qstats1.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i.i, ptr noundef %14, ptr noundef %qstats1.i.i.i) #12
  %15 = ptrtoint ptr %qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qstats.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 17, i32 2
  %17 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i.i.i.i, align 8
  %add.i.i.i = add i32 %18, %16
  %backlog3.i.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %backlog3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %backlog3.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i.i) #12
  call void @qdisc_reset(ptr noundef nonnull %11) #12
  call void @qdisc_tree_reduce_backlog(ptr noundef nonnull %11, i32 noundef %add.i.i.i, i32 noundef %20) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sch_tree_lock.exit.i.if.end.i_crit_edge
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 8
  %and.i6.i = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool.not.i7.i = icmp eq i32 %and.i6.i, 0
  br i1 %tobool.not.i7.i, label %if.else.i12.i, label %if.end.i.qdisc_replace.exit_crit_edge

if.end.i.qdisc_replace.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_replace.exit

if.else.i12.i:                                    ; preds = %if.end.i
  %dev_queue.i.i.i8.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %23 = ptrtoint ptr %dev_queue.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_queue.i.i.i8.i, align 8
  %qdisc_sleeping.i.i.i9.i = getelementptr inbounds %struct.netdev_queue, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %qdisc_sleeping.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qdisc_sleeping.i.i.i9.i, align 4
  %call1.i.i10.i = call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i10.i)
  %tobool.not.i.i11.i = icmp eq i32 %call1.i.i10.i, 0
  br i1 %tobool.not.i.i11.i, label %land.rhs.i.i14.i, label %if.else.i12.i.qdisc_replace.exit_crit_edge

if.else.i12.i.qdisc_replace.exit_crit_edge:       ; preds = %if.else.i12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_replace.exit

land.rhs.i.i14.i:                                 ; preds = %if.else.i12.i
  %.b41.i.i13.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i13.i, label %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, label %if.then.i.i15.i, !prof !62

land.rhs.i.i14.i.qdisc_replace.exit_crit_edge:    ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_replace.exit

if.then.i.i15.i:                                  ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #12
  br label %qdisc_replace.exit

qdisc_replace.exit:                               ; preds = %if.then.i.i15.i, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, %if.else.i12.i.qdisc_replace.exit_crit_edge, %if.end.i.qdisc_replace.exit_crit_edge
  %.sink.i16.i = phi ptr [ %sch, %if.end.i.qdisc_replace.exit_crit_edge ], [ %26, %if.else.i12.i.qdisc_replace.exit_crit_edge ], [ %26, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge ], [ %26, %if.then.i.i15.i ]
  %lock.i.i.i17.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i16.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i17.i) #12
  %27 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %11, ptr %old, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @cbs_leaf(ptr nocapture noundef readonly %sch, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cbs_find(ptr nocapture noundef readnone %sch, i32 noundef %classid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cbs_walk(ptr noundef %sch, ptr noundef %walker) #2 align 64 {
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
define internal i32 @cbs_dump_class(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %skb, ptr nocapture noundef %tcm) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cl)
  %cmp.not = icmp eq i32 %cl, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %2 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tcm_handle, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %tcm_handle, align 4
  %4 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc, align 8
  %handle = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 32
  %tcm_info = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 6
  %8 = ptrtoint ptr %tcm_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tcm_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_hash_add(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbs_enqueue_soft(ptr noundef %skb, ptr nocapture noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %0 = ptrtoint ptr %qdisc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc1, align 8
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %credits = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %4 = ptrtoint ptr %credits to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %credits, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp3 = icmp sgt i64 %5, 0
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %credits to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %credits, align 8
  %call.i = tail call i64 @ktime_get() #12
  %last = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %7 = ptrtoint ptr %last to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call.i, ptr %last, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %8 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cb.i.i.i, align 4
  %ops.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 16
  %enqueue.i = getelementptr inbounds %struct.Qdisc_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enqueue.i, align 4
  %call1.i = tail call i32 %13(ptr noundef %skb, ptr noundef %1, ptr noundef %to_free) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end.cbs_child_enqueue.exit_crit_edge

if.end.cbs_child_enqueue.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cbs_child_enqueue.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %14 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %backlog.i, align 4
  %add.i = add i32 %15, %9
  store i32 %add.i, ptr %backlog.i, align 4
  %16 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen, align 8
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %qlen, align 8
  br label %cbs_child_enqueue.exit

cbs_child_enqueue.exit:                           ; preds = %if.end.i, %if.end.cbs_child_enqueue.exit_crit_edge
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cbs_dequeue_soft(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %0 = ptrtoint ptr %qdisc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc1, align 8
  %call.i105 = tail call i64 @ktime_get() #12
  %last = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %2 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %last, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i105, i64 %3)
  %cmp = icmp slt i64 %call.i105, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  tail call void @qdisc_watchdog_schedule_range_ns(ptr noundef %watchdog, i64 noundef %3, i64 noundef 0) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %credits4 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %4 = ptrtoint ptr %credits4 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %credits4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp5 = icmp slt i64 %5, 0
  br i1 %cmp5, label %if.then6, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then6:                                         ; preds = %if.end
  %sub = sub i64 %call.i105, %3
  %idleslope = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %6 = ptrtoint ptr %idleslope to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %idleslope, align 8
  %mul.i = mul i64 %7, %sub
  %call.i106 = tail call i64 @div64_s64(i64 noundef %mul.i, i64 noundef 1000000000) #12
  %8 = ptrtoint ptr %credits4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %credits4, align 8
  %add = add i64 %9, %call.i106
  %hicredit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %10 = ptrtoint ptr %hicredit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hicredit, align 4
  %conv = sext i32 %11 to i64
  %12 = tail call i64 @llvm.smin.i64(i64 %add, i64 %conv)
  %13 = ptrtoint ptr %credits4 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %credits4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp14 = icmp slt i64 %12, 0
  br i1 %cmp14, label %if.then16, label %if.then6.if.end24_crit_edge

if.then6.if.end24_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then16:                                        ; preds = %if.then6
  %14 = ptrtoint ptr %idleslope to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %idleslope, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp.i = icmp eq i64 %15, 0
  br i1 %cmp.i, label %if.then16.delay_from_credits.exit_crit_edge, label %if.end.i, !prof !65

if.then16.delay_from_credits.exit_crit_edge:      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %delay_from_credits.exit

if.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i107 = mul i64 %12, -1000000000
  %call.i108 = tail call i64 @div64_s64(i64 noundef %mul.i107, i64 noundef %15) #12
  br label %delay_from_credits.exit

delay_from_credits.exit:                          ; preds = %if.end.i, %if.then16.delay_from_credits.exit_crit_edge
  %retval.0.i = phi i64 [ %call.i108, %if.end.i ], [ 9223372036854775807, %if.then16.delay_from_credits.exit_crit_edge ]
  %watchdog20 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %add21 = add i64 %retval.0.i, %call.i105
  tail call void @qdisc_watchdog_schedule_range_ns(ptr noundef %watchdog20, i64 noundef %add21, i64 noundef 0) #12
  %16 = ptrtoint ptr %last to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %call.i105, ptr %last, align 8
  br label %cleanup

if.end24:                                         ; preds = %if.then6.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %call25 = tail call fastcc ptr @cbs_child_dequeue(ptr noundef %sch, ptr noundef %1)
  %tobool.not = icmp eq ptr %call25, null
  br i1 %tobool.not, label %if.end24.cleanup_crit_edge, label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call25, i32 0, i32 3
  %17 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cb.i.i, align 4
  %sendslope = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %19 = ptrtoint ptr %sendslope to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %sendslope, align 8
  %port_rate = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %port_rate, i32 noundef 8) #12
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %port_rate) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp.i109 = icmp eq i64 %call.i, 0
  br i1 %cmp.i109, label %if.end27.credits_from_len.exit_crit_edge, label %if.end.i112, !prof !65

if.end27.credits_from_len.exit_crit_edge:         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %credits_from_len.exit

if.end.i112:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i32 %18 to i64
  %mul.i110 = mul i64 %20, %conv.i
  %call.i111 = tail call i64 @div64_s64(i64 noundef %mul.i110, i64 noundef %call.i) #12
  br label %credits_from_len.exit

credits_from_len.exit:                            ; preds = %if.end.i112, %if.end27.credits_from_len.exit_crit_edge
  %retval.0.i113 = phi i64 [ %call.i111, %if.end.i112 ], [ 9223372036854775807, %if.end27.credits_from_len.exit_crit_edge ]
  %21 = ptrtoint ptr %credits4 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %credits4, align 8
  %add32 = add i64 %22, %retval.0.i113
  %locredit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %23 = ptrtoint ptr %locredit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %locredit, align 8
  %conv33 = sext i32 %24 to i64
  %25 = tail call i64 @llvm.smax.i64(i64 %add32, i64 %conv33)
  %26 = ptrtoint ptr %credits4 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %credits4, align 8
  %call.i.i101 = tail call zeroext i1 @__kasan_check_read(ptr noundef %port_rate, i32 noundef 8) #12
  %call.i102 = tail call i64 @generic_atomic64_read(ptr noundef %port_rate) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i102)
  %cmp44 = icmp eq i64 %call.i102, 0
  br i1 %cmp44, label %credits_from_len.exit.if.end56_crit_edge, label %if.else, !prof !65

credits_from_len.exit.if.end56_crit_edge:         ; preds = %credits_from_len.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.else:                                          ; preds = %credits_from_len.exit
  call void @__sanitizer_cov_trace_pc() #14
  %mul = mul i32 %18, 1000000000
  %conv50 = sext i32 %mul to i64
  %call.i.i103 = tail call zeroext i1 @__kasan_check_read(ptr noundef %port_rate, i32 noundef 8) #12
  %call.i104 = tail call i64 @generic_atomic64_read(ptr noundef %port_rate) #12
  %call53 = tail call i64 @div64_s64(i64 noundef %conv50, i64 noundef %call.i104) #12
  %add54 = add i64 %call53, %call.i105
  br label %if.end56

if.end56:                                         ; preds = %if.else, %credits_from_len.exit.if.end56_crit_edge
  %storemerge = phi i64 [ %add54, %if.else ], [ %call.i105, %credits_from_len.exit.if.end56_crit_edge ]
  %27 = ptrtoint ptr %last to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %storemerge, ptr %last, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end24.cleanup_crit_edge, %delay_from_credits.exit, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %delay_from_credits.exit ], [ %call25, %if.end56 ], [ null, %if.end24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cbs_child_dequeue(ptr noundef %sch, ptr noundef %child) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.Qdisc, ptr %child, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 16
  %dequeue = getelementptr inbounds %struct.Qdisc_ops, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call = tail call ptr %3(ptr noundef %child) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %7, %5
  store i32 %sub.i, ptr %backlog.i, align 4
  %8 = load i32, ptr %cb.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 17
  %9 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.i.not.i.i = icmp eq i16 %12, 0
  br i1 %tobool.i.not.i.i, label %if.end.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end.cond.end.i.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %14 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %if.end.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %16 = tail call i32 @llvm.read_register.i32(metadata !52) #12
  %and.i.i.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !66
  %20 = tail call i32 @llvm.read_register.i32(metadata !52) #12
  %and.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %25, ptrtoint (ptr @lockdep_recursion to i32)
  %26 = inttoptr i32 %add.i.i.i.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !67
  %29 = tail call i32 @llvm.read_register.i32(metadata !52) #12
  %and.i.i.i7.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %33 = tail call i32 @llvm.read_register.i32(metadata !52) #12
  %and.i.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i.i.i.i = icmp eq i32 %36, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %37 = tail call i32 @llvm.read_register.i32(metadata !52) #12
  %and.i.i.i9.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !68
  %41 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %44, ptrtoint (ptr @hardirqs_enabled to i32)
  %45 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !69
  %48 = tail call i32 @llvm.read_register.i32(metadata !52) #12
  %and.i.i.i12.i.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !62

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
  %conv.i.i = zext i32 %8 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %52 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !70
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %54 = tail call ptr @llvm.returnaddress(i32 0) #12
  %55 = ptrtoint ptr %54 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %55) #12
  %56 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %57, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %58 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %59, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %55) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !71
  %60 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %61, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %62 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %qlen, align 8
  %dec = add i32 %63, -1
  store i32 %dec, ptr %qlen, align 8
  br label %cleanup

cleanup:                                          ; preds = %qdisc_bstats_update.exit, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_schedule_range_ns(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_kfree_skbs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cbs_set_port_rate(ptr noundef %dev, ptr noundef %q) unnamed_addr #2 align 64 {
entry:
  %ecmd = alloca %struct.ethtool_link_ksettings, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ecmd) #12
  %0 = call ptr @memset(ptr %ecmd, i32 255, i32 88)
  %call = call i32 @__ethtool_get_link_ksettings(ptr noundef %dev, ptr noundef nonnull %ecmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.skip_crit_edge, label %if.end

entry.skip_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip

if.end:                                           ; preds = %entry
  %speed1 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %1 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %speed1, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.then5 [
    i32 0, label %if.end.skip_crit_edge
    i32 -1, label %if.end.skip_crit_edge32
  ]

if.end.skip_crit_edge32:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip

if.end.skip_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo29 = mul i32 %2, 125000
  br label %skip

skip:                                             ; preds = %if.then5, %if.end.skip_crit_edge, %if.end.skip_crit_edge32, %entry.skip_crit_edge
  %speed.0 = phi i32 [ 1250000, %entry.skip_crit_edge ], [ %phi.bo29, %if.then5 ], [ 1250000, %if.end.skip_crit_edge ], [ 1250000, %if.end.skip_crit_edge32 ]
  %port_rate11 = getelementptr inbounds %struct.cbs_sched_data, ptr %q, i32 0, i32 2
  %conv12 = sext i32 %speed.0 to i64
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %port_rate11, i32 noundef 8) #12
  call void @generic_atomic64_set(ptr noundef %port_rate11, i64 noundef %conv12) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cbs_set_port_rate.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cbs_set_port_rate, %if.then18)) #12
          to label %do.end25 [label %if.then18], !srcloc !72

if.then18:                                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i30 = call zeroext i1 @__kasan_check_read(ptr noundef %port_rate11, i32 noundef 8) #12
  %call.i = call i64 @generic_atomic64_read(ptr noundef %port_rate11) #12
  %speed22 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %4 = ptrtoint ptr %speed22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed22, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cbs_set_port_rate.__UNIQUE_ID_ddebug368, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %dev, i64 noundef %call.i, i32 noundef %5) #12
  br label %do.end25

do.end25:                                         ; preds = %if.then18, %skip
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ecmd) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbs_enqueue_offload(ptr noundef %skb, ptr nocapture noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %0 = ptrtoint ptr %qdisc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc1, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cb.i.i.i, align 4
  %ops.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 16
  %enqueue.i = getelementptr inbounds %struct.Qdisc_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enqueue.i, align 4
  %call1.i = tail call i32 %7(ptr noundef %skb, ptr noundef %1, ptr noundef %to_free) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.cbs_child_enqueue.exit_crit_edge

entry.cbs_child_enqueue.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cbs_child_enqueue.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %backlog.i, align 4
  %add.i = add i32 %9, %3
  store i32 %add.i, ptr %backlog.i, align 4
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i, align 8
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %qlen.i, align 8
  br label %cbs_child_enqueue.exit

cbs_child_enqueue.exit:                           ; preds = %if.end.i, %entry.cbs_child_enqueue.exit_crit_edge
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cbs_dequeue_offload(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %0 = ptrtoint ptr %qdisc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc1, align 8
  %call2 = tail call fastcc ptr @cbs_child_dequeue(ptr noundef %sch, ptr noundef %1)
  ret ptr %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbs_dev_notifier(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %call1 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b66 = load i1, ptr @cbs_dev_notifier.__already_done, align 1
  br i1 %.b66, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !62

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cbs_dev_notifier.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 340, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6, i32 noundef 340) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %event, label %if.end30.cleanup_crit_edge [
    i32 1, label %if.end30.if.end40_crit_edge
    i32 4, label %if.end30.if.end40_crit_edge73
  ]

if.end30.if.end40_crit_edge73:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %if.end30.if.end40_crit_edge, %if.end30.if.end40_crit_edge73
  tail call void @_raw_spin_lock(ptr noundef nonnull @cbs_list_lock) #12
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end40
  %.pn.in = phi ptr [ @cbs_list, %if.end40 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp42.not = icmp eq ptr %.pn, @cbs_list
  br i1 %cmp42.not, label %if.end55.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %qdisc = getelementptr i8, ptr %.pn, i32 -4
  %4 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc, align 8
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_queue.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %cmp46 = icmp eq ptr %9, %1
  br i1 %cmp46, label %if.then54.critedge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then54.critedge:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %q.0.le = getelementptr i8, ptr %.pn, i32 -132
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cbs_list_lock) #12
  tail call fastcc void @cbs_set_port_rate(ptr noundef %1, ptr noundef %q.0.le)
  br label %cleanup

if.end55.critedge:                                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cbs_list_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end55.critedge, %if.then54.critedge, %if.end30.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
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
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !46, !48, !50}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_sch_cbs__369_580_cbs_module_init6, !1, !"__initcall__kmod_sch_cbs__369_580_cbs_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_cbs.c", i32 580, i32 1}
!2 = !{ptr @__exitcall_cbs_module_exit, !3, !"__exitcall_cbs_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_cbs.c", i32 581, i32 1}
!4 = !{ptr @__UNIQUE_ID_file370, !5, !"__UNIQUE_ID_file370", i1 false, i1 false}
!5 = !{!"../net/sched/sch_cbs.c", i32 582, i32 1}
!6 = !{ptr @__UNIQUE_ID_license371, !5, !"__UNIQUE_ID_license371", i1 false, i1 false}
!7 = !{ptr @cbs_qdisc_ops, !8, !"cbs_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_cbs.c", i32 541, i32 25}
!9 = !{ptr @cbs_class_ops, !10, !"cbs_class_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_cbs.c", i32 533, i32 37}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cbs_init.__msg, !16, !"__msg", i1 false, i1 false}
!16 = !{!"../net/sched/sch_cbs.c", i32 408, i32 3}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/sched/sch_cbs.c", i32 66, i32 8}
!19 = !{ptr @cbs_list_lock, !18, !"cbs_list_lock", i1 false, i1 false}
!20 = !{ptr @cbs_list, !21, !"cbs_list", i1 false, i1 false}
!21 = !{!"../net/sched/sch_cbs.c", i32 65, i32 8}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/net/sch_generic.h", i32 1165, i32 2}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/sched/sch_cbs.c", i32 272, i32 3}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cbs_disable_offload._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @cbs_disable_offload._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @cbs_change.__msg, !34, !"__msg", i1 false, i1 false}
!34 = !{!"../net/sched/sch_cbs.c", i32 376, i32 3}
!35 = !{ptr @cbs_policy, !36, !"cbs_policy", i1 false, i1 false}
!36 = !{!"../net/sched/sch_cbs.c", i32 246, i32 32}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/sched/sch_cbs.c", i32 327, i32 2}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cbs_set_port_rate.__UNIQUE_ID_ddebug368, !38, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!42 = !{ptr @cbs_enable_offload.__msg, !43, !"__msg", i1 false, i1 false}
!43 = !{!"../net/sched/sch_cbs.c", i32 285, i32 3}
!44 = !{ptr @cbs_enable_offload.__msg.10, !45, !"__msg", i1 false, i1 false}
!45 = !{!"../net/sched/sch_cbs.c", i32 299, i32 3}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/net/netlink.h", i32 991, i32 3}
!48 = !{ptr @cbs_device_notifier, !49, !"cbs_device_notifier", i1 false, i1 false}
!49 = !{!"../net/sched/sch_cbs.c", i32 556, i32 30}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../net/sched/sch_cbs.c", i32 340, i32 2}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i8 0, i8 2}
!64 = !{!"auto-init"}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i64 2149966366}
!67 = !{i64 2149971298}
!68 = !{i64 2149993010}
!69 = !{i64 2149997902}
!70 = !{i64 2150074359}
!71 = !{i64 2150074684}
!72 = !{i64 2149037609, i64 2149037614, i64 2149037627, i64 2149037671, i64 2149037705, i64 2149037726}
