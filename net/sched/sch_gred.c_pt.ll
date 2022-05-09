; ModuleID = '/llk/IR_all_yes/net/sched/sch_gred.c_pt.bc'
source_filename = "../net/sched/sch_gred.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
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
%struct.gred_sched_data = type { i32, i32, i32, i64, i32, i32, i8, %struct.red_parms, %struct.red_vars, %struct.red_stats }
%struct.red_parms = type { i32, i32, i32, i32, %struct.reciprocal_value, i32, i32, i32, i8, i8, i8, [256 x i8] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.red_vars = type { i32, i32, i32, i64 }
%struct.red_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
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
%struct.tc_gred_qopt_offload = type { i32, i32, i32, %union.anon.151 }
%union.anon.151 = type { %struct.tc_gred_qopt_offload_stats }
%struct.tc_gred_qopt_offload_stats = type { [16 x %struct.gnet_stats_basic_sync], [16 x %struct.gnet_stats_queue], [16 x ptr] }
%struct.tc_gred_sopt = type { i32, i32, i8, i8, i16 }
%struct.tc_gred_qopt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tc_gred_qopt_offload_params = type { i8, i8, i32, i32, ptr, [16 x %struct.tc_gred_vq_qopt_offload_params] }
%struct.tc_gred_vq_qopt_offload_params = type { i8, i32, i32, i32, i32, i8, i8, i32, ptr }
%struct.gred_sched = type { [16 x ptr], i32, i32, i32, i32, %struct.red_vars, ptr }
%struct.nlattr = type { i16, i16 }

@gred_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr null, [16 x i8] c"gred\00\00\00\00\00\00\00\00\00\00\00\00", i32 112, i32 0, ptr @gred_enqueue, ptr @gred_dequeue, ptr @qdisc_peek_head, ptr @gred_init, ptr @gred_reset, ptr @gred_destroy, ptr @gred_change, ptr null, ptr null, ptr null, ptr @gred_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_gred__507_949_gred_module_init6 = internal global ptr @gred_module_init, section ".initcall6.init", align 4
@__exitcall_gred_module_exit = internal global ptr @gred_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file508 = internal constant [33 x i8] c"sch_gred.file=net/sched/sch_gred\00", section ".modinfo", align 1
@__UNIQUE_ID_license509 = internal constant [21 x i8] c"sch_gred.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@gred_dequeue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014GRED: Unable to relocate VQ 0x%x after dequeue, screwing up backlog\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gred_dequeue\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/sched/sch_gred.c\00", [43 x i8] zeroinitializer }, align 32
@gred_dequeue._entry_ptr = internal global ptr @gred_dequeue._entry, section ".printk_index", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@gred_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 52, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 256, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 12, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@gred_init.__msg = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"sch_gred: virtual queue configuration can't be specified at initialization time\00", [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gred_change_table_def.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sch_gred: number of virtual queues too high\00", [52 x i8] zeroinitializer }, align 32
@gred_change_table_def.__msg.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sch_gred: number of virtual queues can't be 0\00", [50 x i8] zeroinitializer }, align 32
@gred_change_table_def.__msg.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"sch_gred: default virtual queue above virtual queue count\00", [38 x i8] zeroinitializer }, align 32
@gred_change_table_def.__msg.7 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"sch_gred: can't set per-Qdisc RED flags when per-virtual queue flags are used\00", [50 x i8] zeroinitializer }, align 32
@gred_change_table_def._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014GRED: Warning: Destroying shadowed VQ 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gred_change_table_def\00", [42 x i8] zeroinitializer }, align 32
@gred_change_table_def._entry_ptr = internal global ptr @gred_change_table_def._entry, section ".printk_index", align 4
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__qdisc_reset_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@gred_change.__msg = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"sch_gred: can't configure Qdisc and virtual queue at the same time\00", [61 x i8] zeroinitializer }, align 32
@gred_change.__msg.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sch_gred: virtual queue index above virtual queue count\00", [40 x i8] zeroinitializer }, align 32
@gred_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017GRED: DP %u does not have a prio setting default to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gred_change\00", [20 x i8] zeroinitializer }, align 32
@gred_change._entry_ptr = internal global ptr @gred_change._entry, section ".printk_index", align 4
@gred_vqe_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@gred_vqs_validate.__msg = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"sch_gred: GRED_VQ_LIST can contain only entry attributes\00", [39 x i8] zeroinitializer }, align 32
@gred_vqs_validate.__msg.15 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"sch_gred: Trailing data after parsing virtual queue list\00", [39 x i8] zeroinitializer }, align 32
@gred_vq_policy = internal constant { [13 x %struct.nla_policy], [56 x i8] } { [13 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@gred_vq_validate.__msg = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"sch_gred: Virtual queue with no index specified\00", [48 x i8] zeroinitializer }, align 32
@gred_vq_validate.__msg.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sch_gred: Virtual queue with index out of bounds\00", [47 x i8] zeroinitializer }, align 32
@gred_vq_validate.__msg.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sch_gred: Virtual queue not yet instantiated\00", [51 x i8] zeroinitializer }, align 32
@gred_vq_validate.__msg.18 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"sch_gred: can't change per-virtual queue RED flags when per-Qdisc flags are used\00", [47 x i8] zeroinitializer }, align 32
@gred_vq_validate.__msg.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sch_gred: invalid RED flags specified\00", [58 x i8] zeroinitializer }, align 32
@gred_change_vq.__msg = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sch_gred: invalid RED parameters\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.24 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 598, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 273, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 271, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"gred_policy\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 527, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 749, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 420, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 424, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 429, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 433, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 468, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 596, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 668, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 678, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 696, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [16 x i8] c"gred_vqe_policy\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 523, i32 32 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 627, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 633, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [15 x i8] c"gred_vq_policy\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 518, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 578, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 583, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 587, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 595, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 599, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.117 = private constant [24 x i8] c"../net/sched/sch_gred.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 489, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 991, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_file508, ptr @__UNIQUE_ID_license509, ptr @__exitcall_gred_module_exit, ptr @__initcall__kmod_sch_gred__507_949_gred_module_init6, ptr @gred_change._entry, ptr @gred_change._entry_ptr, ptr @gred_change_table_def._entry, ptr @gred_change_table_def._entry_ptr, ptr @gred_dequeue._entry, ptr @gred_dequeue._entry_ptr, ptr @gred_module_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gred_policy, ptr @gred_init.__msg, ptr @gred_change_table_def.__msg, ptr @gred_change_table_def.__msg.5, ptr @gred_change_table_def.__msg.6, ptr @gred_change_table_def.__msg.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @gred_change.__msg, ptr @gred_change.__msg.12, ptr @.str.13, ptr @.str.14, ptr @gred_vqe_policy, ptr @gred_vqs_validate.__msg, ptr @gred_vqs_validate.__msg.15, ptr @gred_vq_policy, ptr @gred_vq_validate.__msg, ptr @gred_vq_validate.__msg.16, ptr @gred_vq_validate.__msg.17, ptr @gred_vq_validate.__msg.18, ptr @gred_vq_validate.__msg.19, ptr @gred_change_vq.__msg, ptr @.str.20], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_dequeue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_init.__msg to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_change_table_def.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_change_table_def.__msg.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_change_table_def.__msg.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_change_table_def.__msg.7 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_change_table_def._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_change.__msg to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_change.__msg.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_vqe_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_vqs_validate.__msg to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_vqs_validate.__msg.15 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_vq_policy to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_vq_validate.__msg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_vq_validate.__msg.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_vq_validate.__msg.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_vq_validate.__msg.18 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_vq_validate.__msg.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gred_change_vq.__msg to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gred_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @gred_qdisc_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gred_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @gred_qdisc_ops) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gred_enqueue(ptr noundef %skb, ptr noundef %sch, ptr nocapture noundef %to_free) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tc_index.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 4
  %0 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tc_index.i, align 2
  %2 = and i16 %1, 15
  %conv = zext i16 %2 to i32
  %DPs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %3 = ptrtoint ptr %DPs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %DPs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp.not = icmp ugt i32 %4, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end21_crit_edge

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %def = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %7 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %def, align 4
  %idxprom7 = and i32 %8, 65535
  %arrayidx8 = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %idxprom7
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx8, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %11 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %backlog, align 4
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %13 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cb.i.i, align 4
  %add = add i32 %14, %12
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %15 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp11.not = icmp ugt i32 %add, %16
  br i1 %cmp11.not, label %if.then9.drop_crit_edge, label %if.then15, !prof !84

if.then9.drop_crit_edge:                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.then15:                                        ; preds = %if.then9
  %tail.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %17 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %skb, align 8
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %skb, ptr %18, align 8
  br label %qdisc_enqueue_tail.exit

if.else.i.i:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %q.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %21 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %skb, ptr %tail.i.i, align 4
  br label %qdisc_enqueue_tail.exit

qdisc_enqueue_tail.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %qh.sink.i.i = phi ptr [ %q.i, %if.else.i.i ], [ %tail.i.i, %if.then.i.i ]
  %22 = ptrtoint ptr %qh.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %skb, ptr %qh.sink.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %23 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qlen.i.i, align 4
  %inc.i.i = add i32 %24, 1
  store i32 %inc.i.i, ptr %qlen.i.i, align 4
  %25 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cb.i.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %27 = and i16 %1, -16
  %28 = trunc i32 %8 to i16
  %conv19 = or i16 %27, %28
  %29 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv19, ptr %tc_index.i, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.end, %lor.lhs.false.if.end21_crit_edge
  %q.0 = phi ptr [ %10, %if.end ], [ %6, %lor.lhs.false.if.end21_crit_edge ]
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags.i, align 4
  %32 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool23.not = icmp eq i32 %32, 0
  br i1 %tobool23.not, label %land.lhs.true, label %if.end21.if.end53_crit_edge

if.end21.if.end53_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end21
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags.i, align 4
  %35 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool25.not = icmp eq i32 %35, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end53_crit_edge, label %for.cond.preheader

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

for.cond.preheader:                               ; preds = %land.lhs.true
  %36 = ptrtoint ptr %DPs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %DPs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp28270.not = icmp eq i32 %37, 0
  br i1 %cmp28270.not, label %for.cond.preheader.if.end53_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end53_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %prio37 = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0272 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %qavg.0271 = phi i32 [ 0, %for.body.lr.ph ], [ %qavg.1, %for.inc.for.body_crit_edge ]
  %arrayidx31 = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %i.0272
  %38 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %39, null
  br i1 %tobool32.not, label %for.body.for.inc_crit_edge, label %land.lhs.true33

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true33:                                  ; preds = %for.body
  %prio = getelementptr inbounds %struct.gred_sched_data, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %prio to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %prio, align 8
  %42 = ptrtoint ptr %prio37 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %prio37, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp39 = icmp ult i8 %41, %43
  br i1 %cmp39, label %land.lhs.true41, label %land.lhs.true33.for.inc_crit_edge

land.lhs.true33.for.inc_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true41:                                  ; preds = %land.lhs.true33
  %qidlestart.i = getelementptr inbounds %struct.gred_sched_data, ptr %39, i32 0, i32 8, i32 3
  %44 = ptrtoint ptr %qidlestart.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %qidlestart.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %cmp.i.not = icmp eq i64 %45, 0
  br i1 %cmp.i.not, label %if.then46, label %land.lhs.true41.for.inc_crit_edge

land.lhs.true41.for.inc_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then46:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  %qavg50 = getelementptr inbounds %struct.gred_sched_data, ptr %39, i32 0, i32 8, i32 2
  %46 = ptrtoint ptr %qavg50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qavg50, align 8
  %add51 = add i32 %47, %qavg.0271
  br label %for.inc

for.inc:                                          ; preds = %if.then46, %land.lhs.true41.for.inc_crit_edge, %land.lhs.true33.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %qavg.1 = phi i32 [ %qavg.0271, %land.lhs.true41.for.inc_crit_edge ], [ %add51, %if.then46 ], [ %qavg.0271, %land.lhs.true33.for.inc_crit_edge ], [ %qavg.0271, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0272, 1
  %exitcond.not = icmp eq i32 %inc, %37
  br i1 %exitcond.not, label %for.inc.if.end53_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end53_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.end53:                                         ; preds = %for.inc.if.end53_crit_edge, %for.cond.preheader.if.end53_crit_edge, %land.lhs.true.if.end53_crit_edge, %if.end21.if.end53_crit_edge
  %qavg.2 = phi i32 [ 0, %if.end21.if.end53_crit_edge ], [ 0, %land.lhs.true.if.end53_crit_edge ], [ 0, %for.cond.preheader.if.end53_crit_edge ], [ %qavg.1, %for.inc.if.end53_crit_edge ]
  %packetsin = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 4
  %48 = ptrtoint ptr %packetsin to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %packetsin, align 8
  %inc54 = add i32 %49, 1
  store i32 %inc54, ptr %packetsin, align 8
  %cb.i.i205 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %50 = ptrtoint ptr %cb.i.i205 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cb.i.i205, align 4
  %conv56 = zext i32 %51 to i64
  %bytesin = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 3
  %52 = ptrtoint ptr %bytesin to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %bytesin, align 8
  %add57 = add i64 %53, %conv56
  store i64 %add57, ptr %bytesin, align 8
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %flags.i, align 4
  %56 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool59.not = icmp eq i32 %56, 0
  br i1 %tobool59.not, label %if.end53.if.end61_crit_edge, label %if.then60

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %qavg.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %57 = ptrtoint ptr %qavg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %qavg.i, align 8
  %qavg1.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 8, i32 2
  %59 = ptrtoint ptr %qavg1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %qavg1.i, align 8
  %qidlestart.i209 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %60 = ptrtoint ptr %qidlestart.i209 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %qidlestart.i209, align 8
  %qidlestart4.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 8, i32 3
  %62 = ptrtoint ptr %qidlestart4.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %qidlestart4.i, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end53.if.end61_crit_edge
  %parms = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7
  %vars62 = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 8
  %63 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %flags.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %backlog1.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 5
  %qidlestart.i.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 8, i32 3
  %65 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %qidlestart.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %cmp.i.not.i = icmp eq i64 %66, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %67 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i = icmp eq i32 %67, 0
  %retval.0.in.i = select i1 %tobool.not.i, ptr %backlog1.i, ptr %backlog.i
  %68 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %qavg.i.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 8, i32 2
  %69 = ptrtoint ptr %qavg.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qavg.i.i, align 8
  %Wlog.i.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 9
  %71 = ptrtoint ptr %Wlog.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %Wlog.i.i, align 1
  %conv.i6.i = zext i8 %72 to i32
  %shr.i.i210 = lshr i32 %70, %conv.i6.i
  %sub.i.i = add i32 %70, %retval.0.i
  %add.i.i211 = sub i32 %sub.i.i, %shr.i.i210
  br label %red_calc_qavg.exit

if.else.i:                                        ; preds = %if.end61
  %call.i.i = tail call i64 @ktime_get() #12
  %73 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %qidlestart.i.i, align 8
  %sub.i.i.i = sub i64 %call.i.i, %74
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i.i)
  %cmp8.i.i.i.i.i = icmp slt i64 %sub.i.i.i, 0
  %75 = tail call i64 @llvm.abs.i64(i64 %sub.i.i.i, i1 false) #12
  %76 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %75, i32 0) #15, !srcloc !85
  %asmresult.i.i.i.i.i.i = extractvalue { i64, i32 } %76, 0
  %asmresult4.i.i.i.i.i.i = extractvalue { i64, i32 } %76, 1
  %77 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %75, i64 %asmresult.i.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i.i) #15, !srcloc !86
  %asmresult10.i.i.i.i.i.i = extractvalue { i64, i32 } %77, 0
  %div1811.i.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i.i, 9
  %sub210.i.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i.i
  %cond213.i.i.i.i.i = select i1 %cmp8.i.i.i.i.i, i64 %sub210.i.i.i.i.i, i64 %div1811.i.i.i.i.i
  %Scell_max.i.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 2
  %78 = ptrtoint ptr %Scell_max.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %Scell_max.i.i, align 4
  %conv.i8.i = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i.i.i, i64 %conv.i8.i)
  %cmp.i9.i = icmp slt i64 %cond213.i.i.i.i.i, %conv.i8.i
  %extract.t.i.i = trunc i64 %cond213.i.i.i.i.i to i32
  %cond.off0.i.i = select i1 %cmp.i9.i, i32 %extract.t.i.i, i32 %79
  %Scell_log.i.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 8
  %80 = ptrtoint ptr %Scell_log.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %Scell_log.i.i, align 4
  %conv4.i.i = zext i8 %81 to i32
  %shr.i10.i = ashr i32 %cond.off0.i.i, %conv4.i.i
  %and.i.i = and i32 %shr.i10.i, 255
  %arrayidx.i.i = getelementptr %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 11, i32 %and.i.i
  %82 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i.i212 = icmp eq i8 %83, 0
  br i1 %tobool.not.i.i212, label %if.else.i.i214, label %if.then.i.i213

if.then.i.i213:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv5.i.i = zext i8 %83 to i32
  %qavg.i11.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 8, i32 2
  %84 = ptrtoint ptr %qavg.i11.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %qavg.i11.i, align 8
  %shr6.i.i = lshr i32 %85, %conv5.i.i
  br label %red_calc_qavg.exit

if.else.i.i214:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %qavg7.i.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 8, i32 2
  %86 = ptrtoint ptr %qavg7.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %qavg7.i.i, align 8
  %conv8.i.i = zext i32 %87 to i64
  %conv9.i.i = sext i32 %cond.off0.i.i to i64
  %mul.i.i = mul nsw i64 %conv8.i.i, %conv9.i.i
  %sh_prom.i.i = zext i8 %81 to i64
  %shr12.i.i = lshr i64 %mul.i.i, %sh_prom.i.i
  %conv13.i.i = trunc i64 %shr12.i.i to i32
  %shr15.i.i = lshr i32 %87, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr15.i.i, i32 %conv13.i.i)
  %cmp16.i.i = icmp ugt i32 %shr15.i.i, %conv13.i.i
  %sub.i12.i = sub i32 %87, %conv13.i.i
  %spec.select.i.i = select i1 %cmp16.i.i, i32 %sub.i12.i, i32 %shr15.i.i
  br label %red_calc_qavg.exit

red_calc_qavg.exit:                               ; preds = %if.else.i.i214, %if.then.i.i213, %if.then.i
  %retval.0.i215 = phi i32 [ %add.i.i211, %if.then.i ], [ %shr6.i.i, %if.then.i.i213 ], [ %spec.select.i.i, %if.else.i.i214 ]
  %qavg66 = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 8, i32 2
  %88 = ptrtoint ptr %qavg66 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i215, ptr %qavg66, align 8
  %89 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %qidlestart.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %90)
  %cmp.i217.not = icmp eq i64 %90, 0
  br i1 %cmp.i217.not, label %red_calc_qavg.exit.if.end72_crit_edge, label %if.then70

red_calc_qavg.exit.if.end72_crit_edge:            ; preds = %red_calc_qavg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then70:                                        ; preds = %red_calc_qavg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 0, ptr %qidlestart.i.i, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %red_calc_qavg.exit.if.end72_crit_edge
  %92 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %flags.i, align 4
  %94 = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool74.not = icmp eq i32 %94, 0
  br i1 %tobool74.not, label %if.end72.if.end76_crit_edge, label %if.then75

if.end72.if.end76_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %qavg66 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %qavg66, align 8
  %qavg1.i224 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %97 = ptrtoint ptr %qavg1.i224 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %qavg1.i224, align 8
  %98 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %qidlestart.i.i, align 8
  %qidlestart4.i226 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %100 = ptrtoint ptr %qidlestart4.i226 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %qidlestart4.i226, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end72.if.end76_crit_edge
  %101 = ptrtoint ptr %qavg66 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %qavg66, align 8
  %add81 = add i32 %102, %qavg.2
  %103 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %parms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add81, i32 %104)
  %cmp.i.i = icmp ult i32 %add81, %104
  br i1 %cmp.i.i, label %sw.bb.i, label %if.else.i.i227

if.else.i.i227:                                   ; preds = %if.end76
  %qth_max.i.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 1
  %105 = ptrtoint ptr %qth_max.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %qth_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %add81)
  %cmp1.not.i.i = icmp ugt i32 %106, %add81
  br i1 %cmp1.not.i.i, label %sw.bb1.i, label %sw.bb93

sw.bb.i:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %vars62 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %vars62, align 8
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %if.else.i.i227
  %108 = ptrtoint ptr %vars62 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %vars62, align 8
  %inc.i = add i32 %109, 1
  store i32 %inc.i, ptr %vars62, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not.i228 = icmp eq i32 %inc.i, 0
  br i1 %tobool.not.i228, label %if.else.i236, label %if.then.i233

if.then.i233:                                     ; preds = %sw.bb1.i
  %sub.i.i229 = sub i32 %add81, %104
  %Wlog.i.i230 = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 9
  %110 = ptrtoint ptr %Wlog.i.i230 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %Wlog.i.i230, align 1
  %conv.i.i = zext i8 %111 to i32
  %shr.i.i231 = lshr i32 %sub.i.i229, %conv.i.i
  %mul.i.i232 = mul i32 %shr.i.i231, %inc.i
  %qR.i.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 8, i32 1
  %112 = ptrtoint ptr %qR.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %qR.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i232, i32 %113)
  %cmp.i25.not.i = icmp ult i32 %mul.i.i232, %113
  br i1 %cmp.i25.not.i, label %if.then.i233.sw.epilog_crit_edge, label %sw.bb

if.then.i233.sw.epilog_crit_edge:                 ; preds = %if.then.i233
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.else.i236:                                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i26.i = tail call i32 @prandom_u32() #12
  %max_P_reciprocal.i27.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 4
  %114 = ptrtoint ptr %max_P_reciprocal.i27.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %.unpack.i28.i = load i32, ptr %max_P_reciprocal.i27.i, align 4
  %.elt2.i29.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 4, i32 1
  %115 = ptrtoint ptr %.elt2.i29.i to i32
  call void @__asan_load4_noabort(i32 %115)
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
  %qR9.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 8, i32 1
  %116 = ptrtoint ptr %qR9.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %shr6.i.i42.i, ptr %qR9.i, align 4
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then.i233
  %117 = ptrtoint ptr %vars62 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %vars62, align 8
  %call.i.i234 = tail call i32 @prandom_u32() #12
  %max_P_reciprocal.i.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 4
  %118 = ptrtoint ptr %max_P_reciprocal.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %.unpack.i.i = load i32, ptr %max_P_reciprocal.i.i, align 4
  %.elt2.i.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 4, i32 1
  %119 = ptrtoint ptr %.elt2.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %.unpack3.i.i = load i32, ptr %.elt2.i.i, align 4
  %R.sroa.2.4.extract.shift.i.i.i = lshr i32 %.unpack3.i.i, 24
  %R.sroa.4.4.extract.shift.i.i.i = lshr i32 %.unpack3.i.i, 16
  %conv.i.i.i = zext i32 %call.i.i234 to i64
  %conv1.i.i.i = zext i32 %.unpack.i.i to i64
  %mul.i.i.i = mul nuw i64 %conv1.i.i.i, %conv.i.i.i
  %shr.i.i.i = lshr i64 %mul.i.i.i, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %sub.i.i.i235 = sub i32 %call.i.i234, %conv2.i.i.i
  %shr4.i.i.i = lshr i32 %sub.i.i.i235, %R.sroa.2.4.extract.shift.i.i.i
  %add.i.i.i = add i32 %shr4.i.i.i, %conv2.i.i.i
  %conv5.i.i.i = and i32 %R.sroa.4.4.extract.shift.i.i.i, 255
  %shr6.i.i.i = lshr i32 %add.i.i.i, %conv5.i.i.i
  %120 = ptrtoint ptr %qR.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %shr6.i.i.i, ptr %qR.i.i, align 4
  %overlimits.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %121 = ptrtoint ptr %overlimits.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %overlimits.i, align 16
  %inc.i238 = add i32 %122, 1
  store i32 %inc.i238, ptr %overlimits.i, align 16
  %red_flags.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 2
  %123 = ptrtoint ptr %red_flags.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %red_flags.i, align 8
  %and.i = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool84.not = icmp eq i32 %and.i, 0
  br i1 %tobool84.not, label %sw.bb.if.then88_crit_edge, label %lor.lhs.false85

sw.bb.if.then88_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then88

lor.lhs.false85:                                  ; preds = %sw.bb
  %call86 = tail call fastcc i32 @INET_ECN_set_ce(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %lor.lhs.false85.if.then88_crit_edge, label %if.end90

lor.lhs.false85.if.then88_crit_edge:              ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then88

if.then88:                                        ; preds = %lor.lhs.false85.if.then88_crit_edge, %sw.bb.if.then88_crit_edge
  %stats = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 9
  br label %congestion_drop

if.end90:                                         ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #14
  %prob_mark = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 9, i32 1
  %125 = ptrtoint ptr %prob_mark to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %prob_mark, align 4
  %inc92 = add i32 %126, 1
  store i32 %inc92, ptr %prob_mark, align 4
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.else.i.i227
  %127 = ptrtoint ptr %vars62 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1, ptr %vars62, align 8
  %overlimits.i239 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %128 = ptrtoint ptr %overlimits.i239 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %overlimits.i239, align 16
  %inc.i240 = add i32 %129, 1
  store i32 %inc.i240, ptr %overlimits.i239, align 16
  %red_flags.i241 = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 2
  %130 = ptrtoint ptr %red_flags.i241 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %red_flags.i241, align 8
  %132 = and i32 %131, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %.not = icmp eq i32 %132, 1
  br i1 %.not, label %lor.lhs.false99, label %sw.bb93.if.then102_crit_edge

sw.bb93.if.then102_crit_edge:                     ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then102

lor.lhs.false99:                                  ; preds = %sw.bb93
  %call100 = tail call fastcc i32 @INET_ECN_set_ce(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %lor.lhs.false99.if.then102_crit_edge, label %if.end105

lor.lhs.false99.if.then102_crit_edge:             ; preds = %lor.lhs.false99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then102

if.then102:                                       ; preds = %lor.lhs.false99.if.then102_crit_edge, %sw.bb93.if.then102_crit_edge
  %forced_drop = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 9, i32 2
  br label %congestion_drop

if.end105:                                        ; preds = %lor.lhs.false99
  call void @__sanitizer_cov_trace_pc() #14
  %forced_mark = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 9, i32 3
  %133 = ptrtoint ptr %forced_mark to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %forced_mark, align 4
  %inc107 = add i32 %134, 1
  store i32 %inc107, ptr %forced_mark, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end105, %if.end90, %if.else.i236, %if.then.i233.sw.epilog_crit_edge, %sw.bb.i
  %135 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %flags.i, align 4
  %137 = and i32 %136, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool.not.i246 = icmp eq i32 %137, 0
  %retval.0.in.i249 = select i1 %tobool.not.i246, ptr %backlog1.i, ptr %backlog.i
  %138 = ptrtoint ptr %retval.0.in.i249 to i32
  call void @__asan_load4_noabort(i32 %138)
  %retval.0.i250 = load i32, ptr %retval.0.in.i249, align 4
  %139 = ptrtoint ptr %cb.i.i205 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cb.i.i205, align 4
  %add110 = add i32 %140, %retval.0.i250
  %141 = ptrtoint ptr %q.0 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %q.0, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add110, i32 %142)
  %cmp112.not = icmp ugt i32 %add110, %142
  br i1 %cmp112.not, label %if.end119, label %if.then114

if.then114:                                       ; preds = %sw.epilog
  %143 = ptrtoint ptr %backlog1.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %backlog1.i, align 4
  %add117 = add i32 %144, %140
  store i32 %add117, ptr %backlog1.i, align 4
  %tail.i.i253 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %145 = ptrtoint ptr %tail.i.i253 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %tail.i.i253, align 4
  %tobool.not.i.i254 = icmp eq ptr %146, null
  br i1 %tobool.not.i.i254, label %if.else.i.i257, label %if.then.i.i255

if.then.i.i255:                                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  %147 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %skb, align 8
  %148 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %skb, ptr %146, align 8
  br label %qdisc_enqueue_tail.exit264

if.else.i.i257:                                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  %q.i256 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %149 = ptrtoint ptr %tail.i.i253 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %skb, ptr %tail.i.i253, align 4
  br label %qdisc_enqueue_tail.exit264

qdisc_enqueue_tail.exit264:                       ; preds = %if.else.i.i257, %if.then.i.i255
  %qh.sink.i.i258 = phi ptr [ %q.i256, %if.else.i.i257 ], [ %tail.i.i253, %if.then.i.i255 ]
  %150 = ptrtoint ptr %qh.sink.i.i258 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %skb, ptr %qh.sink.i.i258, align 4
  %qlen.i.i259 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %151 = ptrtoint ptr %qlen.i.i259 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %qlen.i.i259, align 4
  %inc.i.i260 = add i32 %152, 1
  store i32 %inc.i.i260, ptr %qlen.i.i259, align 4
  %153 = ptrtoint ptr %cb.i.i205 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %cb.i.i205, align 4
  br label %cleanup

if.end119:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %pdrop = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 9, i32 4
  %155 = ptrtoint ptr %pdrop to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %pdrop, align 8
  %inc121 = add i32 %156, 1
  store i32 %inc121, ptr %pdrop, align 8
  br label %drop

drop:                                             ; preds = %if.end119, %if.then9.drop_crit_edge
  %157 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %to_free, align 4
  %159 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %158, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %cleanup

congestion_drop:                                  ; preds = %if.then102, %if.then88
  %forced_drop.sink273 = phi ptr [ %forced_drop, %if.then102 ], [ %stats, %if.then88 ]
  %160 = ptrtoint ptr %forced_drop.sink273 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %forced_drop.sink273, align 8
  %inc104 = add i32 %161, 1
  store i32 %inc104, ptr %forced_drop.sink273, align 8
  %162 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %to_free, align 4
  %164 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %163, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i265 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %cleanup

cleanup:                                          ; preds = %congestion_drop, %drop, %qdisc_enqueue_tail.exit264, %qdisc_enqueue_tail.exit
  %drops.i.i.i265.sink275 = phi ptr [ %drops.i.i.i265, %congestion_drop ], [ %drops.i.i.i, %drop ], [ %backlog.i, %qdisc_enqueue_tail.exit264 ], [ %backlog, %qdisc_enqueue_tail.exit ]
  %.sink274 = phi i32 [ 1, %congestion_drop ], [ 1, %drop ], [ %154, %qdisc_enqueue_tail.exit264 ], [ %26, %qdisc_enqueue_tail.exit ]
  %retval.0 = phi i32 [ 2, %congestion_drop ], [ 1, %drop ], [ 0, %qdisc_enqueue_tail.exit264 ], [ 0, %qdisc_enqueue_tail.exit ]
  %165 = ptrtoint ptr %drops.i.i.i265.sink275 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %drops.i.i.i265.sink275, align 4
  %inc.i.i.i266 = add i32 %166, %.sink274
  store i32 %inc.i.i.i266, ptr %drops.i.i.i265.sink275, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gred_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %q.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %0 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q.i, align 4
  %cmp.not.i.i = icmp eq ptr %1, null
  br i1 %cmp.not.i.i, label %entry.cleanup_crit_edge, label %if.then.i.i, !prof !84

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i:                                      ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %q.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %q.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i.i, align 4
  %dec.i.i = add i32 %6, -1
  store i32 %dec.i.i, ptr %qlen.i.i, align 4
  %cmp4.i.i = icmp eq ptr %3, null
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.then.i.i.if.then.i_crit_edge

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tail.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then5.i.i, %if.then.i.i.if.then.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %1, align 8
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb.i.i.i.i, align 4
  %backlog.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %11 = ptrtoint ptr %backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %backlog.i.i, align 4
  %sub.i.i = sub i32 %12, %10
  store i32 %sub.i.i, ptr %backlog.i.i, align 4
  %13 = load i32, ptr %cb.i.i.i.i, align 4
  %end.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i.i.i, align 4
  %gso_size.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %gso_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %gso_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.i.not.i.i.i = icmp eq i16 %17, 0
  br i1 %tobool.i.not.i.i.i, label %if.then.i.if.then_crit_edge, label %cond.true.i.i.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

cond.true.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %gso_segs.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %gso_segs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gso_segs.i.i.i, align 2
  %conv4.i.i.i = zext i16 %19 to i32
  br label %if.then

if.then:                                          ; preds = %cond.true.i.i.i, %if.then.i.if.then_crit_edge
  %cond.i.i.i = phi i32 [ %conv4.i.i.i, %cond.true.i.i.i ], [ 1, %if.then.i.if.then_crit_edge ]
  %bstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i.i = zext i32 %13 to i64
  tail call fastcc void @_bstats_update(ptr noundef %bstats.i.i, i64 noundef %conv.i.i.i, i32 noundef %cond.i.i.i) #12
  %tc_index.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 4
  %20 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tc_index.i, align 2
  %22 = and i16 %21, 15
  %conv = zext i16 %22 to i32
  %DPs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %23 = ptrtoint ptr %DPs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %DPs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv)
  %cmp.not = icmp ugt i32 %24, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then
  %arrayidx = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %conv
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %cmp4 = icmp eq ptr %26, null
  br i1 %cmp4, label %lor.lhs.false.do.body_crit_edge, label %if.else

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.then.do.body_crit_edge
  %call7 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tc_index.i, align 2
  %29 = and i16 %28, 15
  %conv12 = zext i16 %29 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv12) #16
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %30 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cb.i.i.i.i, align 4
  %backlog = getelementptr inbounds %struct.gred_sched_data, ptr %26, i32 0, i32 5
  %32 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %backlog, align 4
  %sub = sub i32 %33, %31
  store i32 %sub, ptr %backlog, align 4
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i, align 4
  %36 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool18.not = icmp eq i32 %36, 0
  br i1 %tobool18.not, label %if.else24, label %if.then19

if.then19:                                        ; preds = %if.else
  %37 = ptrtoint ptr %backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %backlog.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool21.not = icmp eq i32 %38, 0
  br i1 %tobool21.not, label %if.then22, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i64 @ktime_get() #12
  %qidlestart.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %39 = ptrtoint ptr %qidlestart.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %call.i, ptr %qidlestart.i, align 8
  br label %cleanup

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %tobool26.not = icmp eq i32 %33, %31
  br i1 %tobool26.not, label %if.then27, label %if.else24.cleanup_crit_edge

if.else24.cleanup_crit_edge:                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  %call.i46 = tail call i64 @ktime_get() #12
  %qidlestart.i47 = getelementptr inbounds %struct.gred_sched_data, ptr %26, i32 0, i32 8, i32 3
  %40 = ptrtoint ptr %qidlestart.i47 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %call.i46, ptr %qidlestart.i47, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.else24.cleanup_crit_edge, %if.then22, %if.then19.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %1
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @qdisc_peek_head(ptr nocapture noundef readonly %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %q = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gred_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tb) #12
  %0 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 3
  %3 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 5
  %tobool.not = icmp eq ptr %opt, null
  %4 = call ptr @memset(ptr %tb, i32 255, i32 28)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %5 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %6 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @gred_policy, i32 noundef 0, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end3.do.body_crit_edge

if.end3.do.body_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end3
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.end11, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end3.do.body_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @gred_init.__msg) #12
  %tobool8.not = icmp eq ptr %extack, null
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %if.then9

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @gred_init.__msg, ptr %extack, align 4
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i48 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i48 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i48, align 4
  br label %if.end21

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %16 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_queue.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 128
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 107
  %20 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_queue_len, align 16
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 20
  %22 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 19
  %24 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %25 to i32
  %add.i = add i32 %23, %conv.i
  %mul = mul i32 %add.i, %21
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then14
  %.sink = phi i32 [ %mul, %if.else ], [ %15, %if.then14 ]
  %26 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %26, align 4
  %dev_queue.i50 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %28 = ptrtoint ptr %dev_queue.i50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_queue.i50, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 128
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev_ops, align 8
  %ndo_setup_tc = getelementptr inbounds %struct.net_device_ops, ptr %33, i32 0, i32 42
  %34 = ptrtoint ptr %ndo_setup_tc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndo_setup_tc, align 4
  %tobool23.not = icmp eq ptr %35, null
  br i1 %tobool23.not, label %if.end21.if.end31_crit_edge, label %if.then24

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then24:                                        ; preds = %if.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 1168) #17
  %opt26 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %37 = ptrtoint ptr %opt26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %opt26, align 8
  %tobool28.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool28.not, label %if.then24.cleanup_crit_edge, label %if.then24.if.end31_crit_edge

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.then24.if.end31_crit_edge, %if.end21.if.end31_crit_edge
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %2, align 4
  %call33 = call fastcc i32 @gred_change_table_def(ptr noundef %sch, ptr noundef %39, ptr noundef %extack)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then24.cleanup_crit_edge, %if.then9, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end31 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.then9 ], [ -22, %do.body.cleanup_crit_edge ], [ -12, %if.then24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tb) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gred_reset(ptr nocapture noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %q.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %call.i.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %entry.if.end29.i.i_crit_edge

entry.if.end29.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %entry
  %.b50.i.i = load i1, ptr @__qdisc_reset_queue.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i.i, !prof !87

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__qdisc_reset_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1165, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 1165) #12
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %entry.if.end29.i.i_crit_edge
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool37.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool37.not.i.i, label %if.end29.i.i.qdisc_reset_queue.exit_crit_edge, label %if.then38.i.i

if.end29.i.i.qdisc_reset_queue.exit_crit_edge:    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdisc_reset_queue.exit

if.then38.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q.i, align 4
  %tail.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 4
  tail call void @rtnl_kfree_skbs(ptr noundef %3, ptr noundef %5) #12
  %6 = ptrtoint ptr %q.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %q.i, align 4
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i.i, align 4
  %8 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i.i, align 4
  br label %qdisc_reset_queue.exit

qdisc_reset_queue.exit:                           ; preds = %if.then38.i.i, %if.end29.i.i.qdisc_reset_queue.exit_crit_edge
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %9 = ptrtoint ptr %backlog.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %backlog.i, align 4
  %DPs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %10 = ptrtoint ptr %DPs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DPs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7.not = icmp eq i32 %11, 0
  br i1 %cmp7.not, label %qdisc_reset_queue.exit.for.end_crit_edge, label %qdisc_reset_queue.exit.for.body_crit_edge

qdisc_reset_queue.exit.for.body_crit_edge:        ; preds = %qdisc_reset_queue.exit
  br label %for.body

qdisc_reset_queue.exit.for.end_crit_edge:         ; preds = %qdisc_reset_queue.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %qdisc_reset_queue.exit.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %qdisc_reset_queue.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %i.08
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %vars = getelementptr inbounds %struct.gred_sched_data, ptr %13, i32 0, i32 8
  %qidlestart.i.i = getelementptr inbounds %struct.gred_sched_data, ptr %13, i32 0, i32 8, i32 3
  %14 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %qidlestart.i.i, align 8
  %qavg.i = getelementptr inbounds %struct.gred_sched_data, ptr %13, i32 0, i32 8, i32 2
  %15 = ptrtoint ptr %qavg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qavg.i, align 8
  %16 = ptrtoint ptr %vars to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %vars, align 8
  %backlog = getelementptr inbounds %struct.gred_sched_data, ptr %13, i32 0, i32 5
  %17 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %backlog, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.08, 1
  %18 = ptrtoint ptr %DPs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %DPs, align 8
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %qdisc_reset_queue.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gred_destroy(ptr nocapture noundef readonly %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %DPs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %0 = ptrtoint ptr %DPs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %DPs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %i.011
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %3) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.011, 1
  %4 = ptrtoint ptr %DPs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DPs, align 8
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %6 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_queue.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %opt2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %10 = ptrtoint ptr %opt2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opt2.i, align 8
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 23
  %12 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %13, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.end.gred_offload.exit_crit_edge, label %lor.lhs.false.i

for.end.gred_offload.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %gred_offload.exit

lor.lhs.false.i:                                  ; preds = %for.end
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 16
  %14 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %15, i32 0, i32 42
  %16 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.gred_offload.exit_crit_edge, label %if.end.i

lor.lhs.false.i.gred_offload.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gred_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = call ptr @memset(ptr %11, i32 0, i32 1168)
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %11, align 16
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %20 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %handle.i, align 32
  %handle5.i = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %handle5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %handle5.i, align 4
  %parent.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %23 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %parent.i, align 4
  %parent6.i = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %11, i32 0, i32 2
  %25 = ptrtoint ptr %parent6.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %parent6.i, align 8
  %26 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc56.i = getelementptr inbounds %struct.net_device_ops, ptr %27, i32 0, i32 42
  %28 = ptrtoint ptr %ndo_setup_tc56.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndo_setup_tc56.i, align 4
  %call57.i = tail call i32 %29(ptr noundef %9, i32 noundef 12, ptr noundef %11) #12
  br label %gred_offload.exit

gred_offload.exit:                                ; preds = %if.end.i, %lor.lhs.false.i.gred_offload.exit_crit_edge, %for.end.gred_offload.exit_crit_edge
  %30 = ptrtoint ptr %opt2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %opt2.i, align 8
  tail call void @kfree(ptr noundef %31) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gred_change(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [7 x ptr], align 4
  %prealloc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tb) #12
  %0 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 3
  %3 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 4
  %4 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 5
  %5 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 6
  %6 = call ptr @memset(ptr %tb, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prealloc) #12
  %cmp = icmp eq ptr %opt, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %7 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %8 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @gred_policy, i32 noundef 0, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp2 = icmp slt i32 %call2.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  %cmp5 = icmp eq ptr %10, null
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %cmp7 = icmp eq ptr %12, null
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end4
  br i1 %cmp7, label %if.then8, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then8:                                         ; preds = %land.lhs.true
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  %cmp10.not = icmp eq ptr %14, null
  br i1 %cmp10.not, label %if.then8.if.end14_crit_edge, label %if.then11

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i153 = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i153 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i153, align 4
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %17 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %limit, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then8.if.end14_crit_edge
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  %call16 = call fastcc i32 @gred_change_table_def(ptr noundef %sch, ptr noundef %19, ptr noundef %extack)
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  br i1 %cmp7, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false22

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %4, align 4
  %cmp24.not = icmp eq ptr %21, null
  br i1 %cmp24.not, label %if.end28, label %lor.lhs.false22.do.body_crit_edge

lor.lhs.false22.do.body_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false22.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @gred_change.__msg) #12
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then26

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @gred_change.__msg, ptr %extack, align 4
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false22
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %tobool30.not = icmp eq ptr %24, null
  br i1 %tobool30.not, label %if.end28.cond.end_crit_edge, label %cond.true

if.end28.cond.end_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i154 = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i154 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i154, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end28.cond.end_crit_edge
  %cond = phi i32 [ %26, %cond.true ], [ 0, %if.end28.cond.end_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  %add.ptr.i155 = getelementptr i8, ptr %12, i32 4
  %DP = getelementptr i8, ptr %10, i32 16
  %27 = ptrtoint ptr %DP to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %DP, align 4
  %DPs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %29 = ptrtoint ptr %DPs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %DPs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp37.not = icmp ult i32 %28, %30
  br i1 %cmp37.not, label %if.end47, label %do.body39

do.body39:                                        ; preds = %cond.end
  call void @do_trace_netlink_extack(ptr noundef nonnull @gred_change.__msg.12) #12
  %tobool41.not = icmp eq ptr %extack, null
  br i1 %tobool41.not, label %do.body39.cleanup_crit_edge, label %if.then42

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then42:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @gred_change.__msg.12, ptr %extack, align 4
  br label %cleanup

if.end47:                                         ; preds = %cond.end
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %tobool49.not = icmp eq ptr %33, null
  br i1 %tobool49.not, label %if.end47.if.end57_crit_edge, label %if.then50

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then50:                                        ; preds = %if.end47
  %call53 = call fastcc i32 @gred_vqs_validate(ptr noundef %privdata.i, i32 noundef %28, ptr noundef nonnull %33, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then50.if.end57_crit_edge, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then50.if.end57_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.end57:                                         ; preds = %if.then50.if.end57_crit_edge, %if.end47.if.end57_crit_edge
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i, align 4
  %36 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool59.not = icmp eq i32 %36, 0
  br i1 %tobool59.not, label %if.end57.if.end82_crit_edge, label %if.then60

if.end57.if.end82_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then60:                                        ; preds = %if.end57
  %prio61 = getelementptr i8, ptr %10, i32 47
  %37 = ptrtoint ptr %prio61 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %prio61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp62 = icmp eq i8 %38, 0
  br i1 %cmp62, label %if.then64, label %if.else

if.then64:                                        ; preds = %if.then60
  %def = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %39 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %def, align 4
  %arrayidx65 = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx65, align 4
  %tobool66.not = icmp eq ptr %42, null
  br i1 %tobool66.not, label %if.then64.do.end76_crit_edge, label %if.then67

if.then64.do.end76_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  %prio71 = getelementptr inbounds %struct.gred_sched_data, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %prio71 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %prio71, align 8
  %conv72 = zext i8 %44 to i32
  br label %do.end76

do.end76:                                         ; preds = %if.then67, %if.then64.do.end76_crit_edge
  %def_prio.0 = phi i32 [ %conv72, %if.then67 ], [ 8, %if.then64.do.end76_crit_edge ]
  %45 = ptrtoint ptr %DP to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %DP, align 4
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %46, i32 noundef %def_prio.0) #16
  br label %if.end82

if.else:                                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %38 to i32
  br label %if.end82

if.end82:                                         ; preds = %if.else, %do.end76, %if.end57.if.end82_crit_edge
  %prio.0 = phi i32 [ %def_prio.0, %do.end76 ], [ %conv, %if.else ], [ 8, %if.end57.if.end82_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 384) #17
  %48 = ptrtoint ptr %prealloc to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %prealloc, align 4
  call fastcc void @sch_tree_lock(ptr noundef %sch)
  %49 = ptrtoint ptr %DP to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %DP, align 4
  %call85 = call fastcc i32 @gred_change_vq(ptr noundef %sch, i32 noundef %50, ptr noundef %add.ptr.i, i32 noundef %prio.0, ptr noundef %add.ptr.i155, i32 noundef %cond, ptr noundef nonnull %prealloc, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %err_unlock_free, label %if.end89

if.end89:                                         ; preds = %if.end82
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %5, align 4
  %tobool91.not = icmp eq ptr %52, null
  br i1 %tobool91.not, label %if.end89.if.end94_crit_edge, label %if.then92

if.end89.if.end94_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @gred_vqs_apply(ptr noundef %privdata.i, ptr noundef nonnull %52)
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end89.if.end94_crit_edge
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags.i, align 4
  %55 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool96.not = icmp eq i32 %55, 0
  br i1 %tobool96.not, label %if.end94.if.end102_crit_edge, label %if.then97

if.end94.if.end102_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

if.then97:                                        ; preds = %if.end94
  %and.i.i = and i32 %54, -3
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and.i.i, ptr %flags.i, align 4
  %call98 = call fastcc i32 @gred_wred_mode_check(ptr noundef %sch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then97.if.end102_crit_edge, label %if.then100

if.then97.if.end102_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

if.then100:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  %or.i.i = or i32 %54, 2
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or.i.i, ptr %flags.i, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %if.then97.if.end102_crit_edge, %if.end94.if.end102_crit_edge
  call fastcc void @sch_tree_unlock(ptr noundef %sch)
  %58 = ptrtoint ptr %prealloc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prealloc, align 4
  call void @kfree(ptr noundef %59) #12
  call fastcc void @gred_offload(ptr noundef %sch, i32 noundef 0)
  br label %cleanup

err_unlock_free:                                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @sch_tree_unlock(ptr noundef %sch)
  %60 = ptrtoint ptr %prealloc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prealloc, align 4
  call void @kfree(ptr noundef %61) #12
  br label %cleanup

cleanup:                                          ; preds = %err_unlock_free, %if.end102, %if.then50.cleanup_crit_edge, %if.then42, %do.body39.cleanup_crit_edge, %if.then26, %do.body.cleanup_crit_edge, %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end14 ], [ %call85, %err_unlock_free ], [ 0, %if.end102 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.then26 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then42 ], [ -22, %do.body39.cleanup_crit_edge ], [ %call53, %if.then50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prealloc) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tb) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gred_dump(ptr noundef %sch, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i329 = alloca i32, align 4
  %tmp.i327 = alloca i32, align 4
  %tmp.i325 = alloca i32, align 4
  %tmp.i323 = alloca i32, align 4
  %tmp.i321 = alloca i32, align 4
  %tmp.i319 = alloca i32, align 4
  %tmp.i317 = alloca i32, align 4
  %tmp.i309 = alloca i32, align 4
  %tmp.i307 = alloca i64, align 8
  %tmp.i305 = alloca i32, align 4
  %tmp.i303 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %max_p = alloca [16 x i32], align 4
  %sopt = alloca %struct.tc_gred_sopt, align 4
  %opt = alloca %struct.tc_gred_qopt, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %max_p) #12
  %0 = call ptr @memset(ptr %max_p, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sopt) #12
  %1 = getelementptr inbounds %struct.tc_gred_sopt, ptr %sopt, i32 0, i32 1
  %2 = getelementptr inbounds %struct.tc_gred_sopt, ptr %sopt, i32 0, i32 2
  %3 = getelementptr inbounds %struct.tc_gred_sopt, ptr %sopt, i32 0, i32 3
  %4 = getelementptr inbounds %struct.tc_gred_sopt, ptr %sopt, i32 0, i32 4
  %DPs1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %5 = ptrtoint ptr %DPs1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %DPs1, align 8
  %7 = ptrtoint ptr %sopt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %sopt, align 4
  %def = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %8 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %def, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i, align 4
  %13 = trunc i32 %12 to i8
  %14 = lshr i8 %13, 2
  %conv = and i8 %14, 1
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %2, align 4
  %red_flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %16 = ptrtoint ptr %red_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %red_flags, align 4
  %conv3 = trunc i32 %17 to i8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3, ptr %3, align 1
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %4, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 1168) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup185_crit_edge, label %if.end.i

entry.cleanup185_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup185

if.end.i:                                         ; preds = %entry
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %call7.i.i.i, align 16
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %22 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %handle.i, align 32
  %handle2.i = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %call7.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %handle2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %handle2.i, align 4
  %parent.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %parent.i, align 4
  %parent3.i = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %call7.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %parent3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %parent3.i, align 8
  %28 = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %call7.i.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %i.0139.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x %struct.gnet_stats_basic_sync], ptr %28, i32 0, i32 %i.0139.i
  tail call void @gnet_stats_basic_sync_init(ptr noundef %arrayidx.i) #12
  %arrayidx4.i = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %i.0139.i
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %30, null
  br i1 %tobool5.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %stats.i = getelementptr inbounds %struct.gred_sched_data, ptr %30, i32 0, i32 9
  %arrayidx9.i = getelementptr %struct.tc_gred_qopt_offload, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 2, i32 %i.0139.i
  %31 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %stats.i, ptr %arrayidx9.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0139.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %call11.i = tail call i32 @qdisc_offload_dump_helper(ptr noundef %sch, i32 noundef 12, ptr noundef nonnull %call7.i.i.i) #12
  %qstats51.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  %backlog58.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %drops63.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %requeues68.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 3
  %overlimits73.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.inc75.i.for.body14.i_crit_edge, %for.end.i
  %i.1143.i = phi i32 [ 0, %for.end.i ], [ %inc76.i, %for.inc75.i.for.body14.i_crit_edge ]
  %packets.0142.i = phi i64 [ 0, %for.end.i ], [ %packets.1.i, %for.inc75.i.for.body14.i_crit_edge ]
  %bytes.0141.i = phi i64 [ 0, %for.end.i ], [ %bytes.1.i, %for.inc75.i.for.body14.i_crit_edge ]
  %arrayidx16.i = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %i.1143.i
  %32 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx16.i, align 4
  %tobool17.not.i = icmp eq ptr %33, null
  br i1 %tobool17.not.i, label %for.body14.i.for.inc75.i_crit_edge, label %if.end19.i

for.body14.i.for.inc75.i_crit_edge:               ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc75.i

if.end19.i:                                       ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx21.i = getelementptr [16 x %struct.gnet_stats_basic_sync], ptr %28, i32 0, i32 %i.1143.i
  %packets22.i = getelementptr [16 x %struct.gnet_stats_basic_sync], ptr %28, i32 0, i32 %i.1143.i, i32 1
  %34 = ptrtoint ptr %packets22.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %packets22.i, align 8
  %packetsin.i = getelementptr inbounds %struct.gred_sched_data, ptr %33, i32 0, i32 4
  %36 = ptrtoint ptr %packetsin.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %packetsin.i, align 8
  %38 = trunc i64 %35 to i32
  %conv26.i = add i32 %37, %38
  store i32 %conv26.i, ptr %packetsin.i, align 8
  %39 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx21.i, align 8
  %41 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx16.i, align 4
  %bytesin.i = getelementptr inbounds %struct.gred_sched_data, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %bytesin.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %bytesin.i, align 8
  %add33.i = add i64 %44, %40
  store i64 %add33.i, ptr %bytesin.i, align 8
  %arrayidx34.i = getelementptr %struct.tc_gred_qopt_offload, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 1, i32 %i.1143.i
  %backlog.i = getelementptr %struct.tc_gred_qopt_offload, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 1, i32 %i.1143.i, i32 1
  %45 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %backlog.i, align 4
  %47 = load ptr, ptr %arrayidx16.i, align 4
  %backlog37.i = getelementptr inbounds %struct.gred_sched_data, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %backlog37.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %backlog37.i, align 4
  %add38.i = add i32 %49, %46
  store i32 %add38.i, ptr %backlog37.i, align 4
  %50 = load i64, ptr %arrayidx21.i, align 8
  %add43.i = add i64 %50, %bytes.0141.i
  %51 = load i64, ptr %packets22.i, align 8
  %add48.i = add i64 %51, %packets.0142.i
  %52 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx34.i, align 4
  %54 = ptrtoint ptr %qstats51.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qstats51.i, align 32
  %add53.i = add i32 %55, %53
  store i32 %add53.i, ptr %qstats51.i, align 32
  %56 = load i32, ptr %backlog.i, align 4
  %57 = ptrtoint ptr %backlog58.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %backlog58.i, align 4
  %add59.i = add i32 %58, %56
  store i32 %add59.i, ptr %backlog58.i, align 4
  %drops.i = getelementptr %struct.tc_gred_qopt_offload, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 1, i32 %i.1143.i, i32 2
  %59 = ptrtoint ptr %drops.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %drops.i, align 4
  %61 = ptrtoint ptr %drops63.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %drops63.i, align 8
  %add64.i = add i32 %62, %60
  store i32 %add64.i, ptr %drops63.i, align 8
  %requeues.i = getelementptr %struct.tc_gred_qopt_offload, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 1, i32 %i.1143.i, i32 3
  %63 = ptrtoint ptr %requeues.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %requeues.i, align 4
  %65 = ptrtoint ptr %requeues68.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %requeues68.i, align 4
  %add69.i = add i32 %66, %64
  store i32 %add69.i, ptr %requeues68.i, align 4
  %overlimits.i = getelementptr %struct.tc_gred_qopt_offload, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 1, i32 %i.1143.i, i32 4
  %67 = ptrtoint ptr %overlimits.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %overlimits.i, align 4
  %69 = ptrtoint ptr %overlimits73.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %overlimits73.i, align 16
  %add74.i = add i32 %70, %68
  store i32 %add74.i, ptr %overlimits73.i, align 16
  br label %for.inc75.i

for.inc75.i:                                      ; preds = %if.end19.i, %for.body14.i.for.inc75.i_crit_edge
  %bytes.1.i = phi i64 [ %add43.i, %if.end19.i ], [ %bytes.0141.i, %for.body14.i.for.inc75.i_crit_edge ]
  %packets.1.i = phi i64 [ %add48.i, %if.end19.i ], [ %packets.0142.i, %for.body14.i.for.inc75.i_crit_edge ]
  %inc76.i = add nuw nsw i32 %i.1143.i, 1
  %exitcond145.not.i = icmp eq i32 %inc76.i, 16
  br i1 %exitcond145.not.i, label %gred_offload_dump_stats.exit, label %for.inc75.i.for.body14.i_crit_edge

for.inc75.i.for.body14.i_crit_edge:               ; preds = %for.inc75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body14.i

gred_offload_dump_stats.exit:                     ; preds = %for.inc75.i
  %bstats78.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv79.i = trunc i64 %packets.1.i to i32
  tail call fastcc void @_bstats_update(ptr noundef %bstats78.i, i64 noundef %bytes.1.i, i32 noundef %conv79.i) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not = icmp eq i32 %call11.i, 0
  br i1 %tobool.not, label %if.end, label %gred_offload_dump_stats.exit.cleanup185_crit_edge

gred_offload_dump_stats.exit.cleanup185_crit_edge: ; preds = %gred_offload_dump_stats.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup185

if.end:                                           ; preds = %gred_offload_dump_stats.exit
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %71 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp360 = icmp eq ptr %72, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp360
  br i1 %cmp, label %if.end.cleanup185_crit_edge, label %if.end8

if.end.cleanup185_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup185

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 12, ptr noundef nonnull %sopt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.body.preheader, label %if.end8.if.then.i.i350_crit_edge

if.end8.if.then.i.i350_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

for.body.preheader:                               ; preds = %if.end8
  %73 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %privdata.i, align 4
  %tobool15.not = icmp eq ptr %74, null
  br i1 %tobool15.not, label %for.body.preheader.cond.end_crit_edge, label %cond.true

for.body.preheader.cond.end_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %max_P = getelementptr inbounds %struct.gred_sched_data, ptr %74, i32 0, i32 7, i32 3
  %75 = ptrtoint ptr %max_P to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max_P, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.preheader.cond.end_crit_edge
  %cond = phi i32 [ %76, %cond.true ], [ 0, %for.body.preheader.cond.end_crit_edge ]
  %77 = ptrtoint ptr %max_p to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %cond, ptr %max_p, align 4
  %arrayidx.1 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 1
  %78 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.1, align 4
  %tobool15.not.1 = icmp eq ptr %79, null
  br i1 %tobool15.not.1, label %cond.end.cond.end.1_crit_edge, label %cond.true.1

cond.end.cond.end.1_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.1

cond.true.1:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %max_P.1 = getelementptr inbounds %struct.gred_sched_data, ptr %79, i32 0, i32 7, i32 3
  %80 = ptrtoint ptr %max_P.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_P.1, align 4
  br label %cond.end.1

cond.end.1:                                       ; preds = %cond.true.1, %cond.end.cond.end.1_crit_edge
  %cond.1 = phi i32 [ %81, %cond.true.1 ], [ 0, %cond.end.cond.end.1_crit_edge ]
  %arrayidx17.1 = getelementptr inbounds [16 x i32], ptr %max_p, i32 0, i32 1
  %82 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %cond.1, ptr %arrayidx17.1, align 4
  %arrayidx.2 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 2
  %83 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.2, align 4
  %tobool15.not.2 = icmp eq ptr %84, null
  br i1 %tobool15.not.2, label %cond.end.1.cond.end.2_crit_edge, label %cond.true.2

cond.end.1.cond.end.2_crit_edge:                  ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.2

cond.true.2:                                      ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #14
  %max_P.2 = getelementptr inbounds %struct.gred_sched_data, ptr %84, i32 0, i32 7, i32 3
  %85 = ptrtoint ptr %max_P.2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_P.2, align 4
  br label %cond.end.2

cond.end.2:                                       ; preds = %cond.true.2, %cond.end.1.cond.end.2_crit_edge
  %cond.2 = phi i32 [ %86, %cond.true.2 ], [ 0, %cond.end.1.cond.end.2_crit_edge ]
  %arrayidx17.2 = getelementptr inbounds [16 x i32], ptr %max_p, i32 0, i32 2
  %87 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %cond.2, ptr %arrayidx17.2, align 4
  %arrayidx.3 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 3
  %88 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.3, align 4
  %tobool15.not.3 = icmp eq ptr %89, null
  br i1 %tobool15.not.3, label %cond.end.2.cond.end.3_crit_edge, label %cond.true.3

cond.end.2.cond.end.3_crit_edge:                  ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.3

cond.true.3:                                      ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #14
  %max_P.3 = getelementptr inbounds %struct.gred_sched_data, ptr %89, i32 0, i32 7, i32 3
  %90 = ptrtoint ptr %max_P.3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_P.3, align 4
  br label %cond.end.3

cond.end.3:                                       ; preds = %cond.true.3, %cond.end.2.cond.end.3_crit_edge
  %cond.3 = phi i32 [ %91, %cond.true.3 ], [ 0, %cond.end.2.cond.end.3_crit_edge ]
  %arrayidx17.3 = getelementptr inbounds [16 x i32], ptr %max_p, i32 0, i32 3
  %92 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %cond.3, ptr %arrayidx17.3, align 4
  %arrayidx.4 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 4
  %93 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.4, align 4
  %tobool15.not.4 = icmp eq ptr %94, null
  br i1 %tobool15.not.4, label %cond.end.3.cond.end.4_crit_edge, label %cond.true.4

cond.end.3.cond.end.4_crit_edge:                  ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.4

cond.true.4:                                      ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #14
  %max_P.4 = getelementptr inbounds %struct.gred_sched_data, ptr %94, i32 0, i32 7, i32 3
  %95 = ptrtoint ptr %max_P.4 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %max_P.4, align 4
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.true.4, %cond.end.3.cond.end.4_crit_edge
  %cond.4 = phi i32 [ %96, %cond.true.4 ], [ 0, %cond.end.3.cond.end.4_crit_edge ]
  %arrayidx17.4 = getelementptr inbounds [16 x i32], ptr %max_p, i32 0, i32 4
  %97 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %cond.4, ptr %arrayidx17.4, align 4
  %arrayidx.5 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 5
  %98 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.5, align 4
  %tobool15.not.5 = icmp eq ptr %99, null
  br i1 %tobool15.not.5, label %cond.end.4.cond.end.5_crit_edge, label %cond.true.5

cond.end.4.cond.end.5_crit_edge:                  ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.5

cond.true.5:                                      ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #14
  %max_P.5 = getelementptr inbounds %struct.gred_sched_data, ptr %99, i32 0, i32 7, i32 3
  %100 = ptrtoint ptr %max_P.5 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %max_P.5, align 4
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.true.5, %cond.end.4.cond.end.5_crit_edge
  %cond.5 = phi i32 [ %101, %cond.true.5 ], [ 0, %cond.end.4.cond.end.5_crit_edge ]
  %arrayidx17.5 = getelementptr inbounds [16 x i32], ptr %max_p, i32 0, i32 5
  %102 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %cond.5, ptr %arrayidx17.5, align 4
  %arrayidx.6 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 6
  %103 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.6, align 4
  %tobool15.not.6 = icmp eq ptr %104, null
  br i1 %tobool15.not.6, label %cond.end.5.cond.end.6_crit_edge, label %cond.true.6

cond.end.5.cond.end.6_crit_edge:                  ; preds = %cond.end.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.6

cond.true.6:                                      ; preds = %cond.end.5
  call void @__sanitizer_cov_trace_pc() #14
  %max_P.6 = getelementptr inbounds %struct.gred_sched_data, ptr %104, i32 0, i32 7, i32 3
  %105 = ptrtoint ptr %max_P.6 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %max_P.6, align 4
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.true.6, %cond.end.5.cond.end.6_crit_edge
  %cond.6 = phi i32 [ %106, %cond.true.6 ], [ 0, %cond.end.5.cond.end.6_crit_edge ]
  %arrayidx17.6 = getelementptr inbounds [16 x i32], ptr %max_p, i32 0, i32 6
  %107 = ptrtoint ptr %arrayidx17.6 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %cond.6, ptr %arrayidx17.6, align 4
  %arrayidx.7 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %108 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.7, align 4
  %tobool15.not.7 = icmp eq ptr %109, null
  br i1 %tobool15.not.7, label %cond.end.6.cond.end.7_crit_edge, label %cond.true.7

cond.end.6.cond.end.7_crit_edge:                  ; preds = %cond.end.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.7

cond.true.7:                                      ; preds = %cond.end.6
  call void @__sanitizer_cov_trace_pc() #14
  %max_P.7 = getelementptr inbounds %struct.gred_sched_data, ptr %109, i32 0, i32 7, i32 3
  %110 = ptrtoint ptr %max_P.7 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %max_P.7, align 4
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.true.7, %cond.end.6.cond.end.7_crit_edge
  %cond.7 = phi i32 [ %111, %cond.true.7 ], [ 0, %cond.end.6.cond.end.7_crit_edge ]
  %arrayidx17.7 = getelementptr inbounds [16 x i32], ptr %max_p, i32 0, i32 7
  %112 = ptrtoint ptr %arrayidx17.7 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %cond.7, ptr %arrayidx17.7, align 4
  %arrayidx.8 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 7
  %113 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.8, align 4
  %tobool15.not.8 = icmp eq ptr %114, null
  br i1 %tobool15.not.8, label %cond.end.7.cond.end.8_crit_edge, label %cond.true.8

cond.end.7.cond.end.8_crit_edge:                  ; preds = %cond.end.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.8

cond.true.8:                                      ; preds = %cond.end.7
  call void @__sanitizer_cov_trace_pc() #14
  %max_P.8 = getelementptr inbounds %struct.gred_sched_data, ptr %114, i32 0, i32 7, i32 3
  %115 = ptrtoint ptr %max_P.8 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %max_P.8, align 4
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.true.8, %cond.end.7.cond.end.8_crit_edge
  %cond.8 = phi i32 [ %116, %cond.true.8 ], [ 0, %cond.end.7.cond.end.8_crit_edge ]
  %arrayidx17.8 = getelementptr inbounds [16 x i32], ptr %max_p, i32 0, i32 8
  %117 = ptrtoint ptr %arrayidx17.8 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %cond.8, ptr %arrayidx17.8, align 4
  %arrayidx.9 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 8
  %118 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.9, align 4
  %tobool15.not.9 = icmp eq ptr %119, null
  br i1 %tobool15.not.9, label %cond.end.8.cond.end.9_crit_edge, label %cond.true.9

cond.end.8.cond.end.9_crit_edge:                  ; preds = %cond.end.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.9

cond.true.9:                                      ; preds = %cond.end.8
  call void @__sanitizer_cov_trace_pc() #14
  %max_P.9 = getelementptr inbounds %struct.gred_sched_data, ptr %119, i32 0, i32 7, i32 3
  %120 = ptrtoint ptr %max_P.9 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %max_P.9, align 4
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.true.9, %cond.end.8.cond.end.9_crit_edge
  %cond.9 = phi i32 [ %121, %cond.true.9 ], [ 0, %cond.end.8.cond.end.9_crit_edge ]
  %arrayidx17.9 = getelementptr inbounds [16 x i32], ptr %max_p, i32 0, i32 9
  %122 = ptrtoint ptr %arrayidx17.9 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %cond.9, ptr %arrayidx17.9, align 4
  %arrayidx.10 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 9
  %123 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.10, align 4
  %tobool15.not.10 = icmp eq ptr %124, null
  br i1 %tobool15.not.10, label %cond.end.9.cond.end.10_crit_edge, label %cond.true.10

cond.end.9.cond.end.10_crit_edge:                 ; preds = %cond.end.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.10

cond.true.10:                                     ; preds = %cond.end.9
  call void @__sanitizer_cov_trace_pc() #14
  %max_P.10 = getelementptr inbounds %struct.gred_sched_data, ptr %124, i32 0, i32 7, i32 3
  %125 = ptrtoint ptr %max_P.10 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %max_P.10, align 4
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.true.10, %cond.end.9.cond.end.10_crit_edge
  %cond.10 = phi i32 [ %126, %cond.true.10 ], [ 0, %cond.end.9.cond.end.10_crit_edge ]
  %arrayidx17.10 = getelementptr inbounds [16 x i32], ptr %max_p, i32 0, i32 10
  %127 = ptrtoint ptr %arrayidx17.10 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %cond.10, ptr %arrayidx17.10, align 4
  %arrayidx.11 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 10
  %128 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.11, align 4
  %tobool15.not.11 = icmp eq ptr %129, null
  br i1 %tobool15.not.11, label %cond.end.10.cond.end.11_crit_edge, label %cond.true.11

cond.end.10.cond.end.11_crit_edge:                ; preds = %cond.end.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.11

cond.true.11:                                     ; preds = %cond.end.10
  call void @__sanitizer_cov_trace_pc() #14
  %max_P.11 = getelementptr inbounds %struct.gred_sched_data, ptr %129, i32 0, i32 7, i32 3
  %130 = ptrtoint ptr %max_P.11 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %max_P.11, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.true.11, %cond.end.10.cond.end.11_crit_edge
  %cond.11 = phi i32 [ %131, %cond.true.11 ], [ 0, %cond.end.10.cond.end.11_crit_edge ]
  %arrayidx17.11 = getelementptr inbounds [16 x i32], ptr %max_p, i32 0, i32 11
  %132 = ptrtoint ptr %arrayidx17.11 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %cond.11, ptr %arrayidx17.11, align 4
  %arrayidx.12 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 11
  %133 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.12, align 4
  %tobool15.not.12 = icmp eq ptr %134, null
  br i1 %tobool15.not.12, label %cond.end.11.cond.end.12_crit_edge, label %cond.true.12

cond.end.11.cond.end.12_crit_edge:                ; preds = %cond.end.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.12

cond.true.12:                                     ; preds = %cond.end.11
  call void @__sanitizer_cov_trace_pc() #14
  %max_P.12 = getelementptr inbounds %struct.gred_sched_data, ptr %134, i32 0, i32 7, i32 3
  %135 = ptrtoint ptr %max_P.12 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %max_P.12, align 4
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.true.12, %cond.end.11.cond.end.12_crit_edge
  %cond.12 = phi i32 [ %136, %cond.true.12 ], [ 0, %cond.end.11.cond.end.12_crit_edge ]
  %arrayidx17.12 = getelementptr inbounds [16 x i32], ptr %max_p, i32 0, i32 12
  %137 = ptrtoint ptr %arrayidx17.12 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %cond.12, ptr %arrayidx17.12, align 4
  %arrayidx.13 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 12
  %138 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.13, align 4
  %tobool15.not.13 = icmp eq ptr %139, null
  br i1 %tobool15.not.13, label %cond.end.12.cond.end.13_crit_edge, label %cond.true.13

cond.end.12.cond.end.13_crit_edge:                ; preds = %cond.end.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.13

cond.true.13:                                     ; preds = %cond.end.12
  call void @__sanitizer_cov_trace_pc() #14
  %max_P.13 = getelementptr inbounds %struct.gred_sched_data, ptr %139, i32 0, i32 7, i32 3
  %140 = ptrtoint ptr %max_P.13 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %max_P.13, align 4
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.true.13, %cond.end.12.cond.end.13_crit_edge
  %cond.13 = phi i32 [ %141, %cond.true.13 ], [ 0, %cond.end.12.cond.end.13_crit_edge ]
  %arrayidx17.13 = getelementptr inbounds [16 x i32], ptr %max_p, i32 0, i32 13
  %142 = ptrtoint ptr %arrayidx17.13 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %cond.13, ptr %arrayidx17.13, align 4
  %arrayidx.14 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 13
  %143 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.14, align 4
  %tobool15.not.14 = icmp eq ptr %144, null
  br i1 %tobool15.not.14, label %cond.end.13.cond.end.14_crit_edge, label %cond.true.14

cond.end.13.cond.end.14_crit_edge:                ; preds = %cond.end.13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.14

cond.true.14:                                     ; preds = %cond.end.13
  call void @__sanitizer_cov_trace_pc() #14
  %max_P.14 = getelementptr inbounds %struct.gred_sched_data, ptr %144, i32 0, i32 7, i32 3
  %145 = ptrtoint ptr %max_P.14 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %max_P.14, align 4
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.true.14, %cond.end.13.cond.end.14_crit_edge
  %cond.14 = phi i32 [ %146, %cond.true.14 ], [ 0, %cond.end.13.cond.end.14_crit_edge ]
  %arrayidx17.14 = getelementptr inbounds [16 x i32], ptr %max_p, i32 0, i32 14
  %147 = ptrtoint ptr %arrayidx17.14 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %cond.14, ptr %arrayidx17.14, align 4
  %arrayidx.15 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 14
  %148 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.15, align 4
  %tobool15.not.15 = icmp eq ptr %149, null
  br i1 %tobool15.not.15, label %cond.end.14.cond.end.15_crit_edge, label %cond.true.15

cond.end.14.cond.end.15_crit_edge:                ; preds = %cond.end.14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.15

cond.true.15:                                     ; preds = %cond.end.14
  call void @__sanitizer_cov_trace_pc() #14
  %max_P.15 = getelementptr inbounds %struct.gred_sched_data, ptr %149, i32 0, i32 7, i32 3
  %150 = ptrtoint ptr %max_P.15 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %max_P.15, align 4
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.true.15, %cond.end.14.cond.end.15_crit_edge
  %cond.15 = phi i32 [ %151, %cond.true.15 ], [ 0, %cond.end.14.cond.end.15_crit_edge ]
  %arrayidx17.15 = getelementptr inbounds [16 x i32], ptr %max_p, i32 0, i32 15
  %152 = ptrtoint ptr %arrayidx17.15 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %cond.15, ptr %arrayidx17.15, align 4
  %call18 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 64, ptr noundef nonnull %max_p) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %cond.end.15.if.then.i.i350_crit_edge

cond.end.15.if.then.i.i350_crit_edge:             ; preds = %cond.end.15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

if.end21:                                         ; preds = %cond.end.15
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %153 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %limit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %155 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.if.then.i.i350_crit_edge

if.end21.if.then.i.i350_crit_edge:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

if.end25:                                         ; preds = %if.end21
  %156 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %tail.i.i, align 8
  %call1.i283 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i283)
  %cmp.i284 = icmp slt i32 %call1.i283, 0
  %cmp27366 = icmp eq ptr %157, null
  %cmp27 = select i1 %cmp.i284, i1 true, i1 %cmp27366
  br i1 %cmp27, label %if.end25.if.then.i.i350_crit_edge, label %for.cond31.preheader

if.end25.if.then.i.i350_crit_edge:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

for.cond31.preheader:                             ; preds = %if.end25
  %DP44 = getelementptr inbounds %struct.tc_gred_qopt, ptr %opt, i32 0, i32 3
  %backlog = getelementptr inbounds %struct.tc_gred_qopt, ptr %opt, i32 0, i32 4
  %prio46 = getelementptr inbounds %struct.tc_gred_qopt, ptr %opt, i32 0, i32 13
  %qth_min50 = getelementptr inbounds %struct.tc_gred_qopt, ptr %opt, i32 0, i32 1
  %qth_max56 = getelementptr inbounds %struct.tc_gred_qopt, ptr %opt, i32 0, i32 2
  %Wlog59 = getelementptr inbounds %struct.tc_gred_qopt, ptr %opt, i32 0, i32 10
  %Plog61 = getelementptr inbounds %struct.tc_gred_qopt, ptr %opt, i32 0, i32 11
  %Scell_log63 = getelementptr inbounds %struct.tc_gred_qopt, ptr %opt, i32 0, i32 12
  %other64 = getelementptr inbounds %struct.tc_gred_qopt, ptr %opt, i32 0, i32 8
  %early = getelementptr inbounds %struct.tc_gred_qopt, ptr %opt, i32 0, i32 7
  %forced = getelementptr inbounds %struct.tc_gred_qopt, ptr %opt, i32 0, i32 6
  %pdrop68 = getelementptr inbounds %struct.tc_gred_qopt, ptr %opt, i32 0, i32 9
  %packets = getelementptr inbounds %struct.tc_gred_qopt, ptr %opt, i32 0, i32 14
  %bytesin70 = getelementptr inbounds %struct.tc_gred_qopt, ptr %opt, i32 0, i32 15
  %qavg.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %qidlestart.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %qave = getelementptr inbounds %struct.tc_gred_qopt, ptr %opt, i32 0, i32 5
  br label %for.body34

for.cond31:                                       ; preds = %append_opt
  %inc95 = add nuw nsw i32 %i.1364, 1
  %exitcond.not = icmp eq i32 %inc95, 16
  br i1 %exitcond.not, label %for.end96, label %for.cond31.for.body34_crit_edge

for.cond31.for.body34_crit_edge:                  ; preds = %for.cond31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34

for.body34:                                       ; preds = %for.cond31.for.body34_crit_edge, %for.cond31.preheader
  %i.1364 = phi i32 [ 0, %for.cond31.preheader ], [ %inc95, %for.cond31.for.body34_crit_edge ]
  %arrayidx37 = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %i.1364
  %158 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx37, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %opt) #12
  %160 = call ptr @memset(ptr %opt, i32 0, i32 52)
  %tobool38.not = icmp eq ptr %159, null
  br i1 %tobool38.not, label %if.then39, label %if.end40

if.then39:                                        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #14
  %add = add nuw nsw i32 %i.1364, 16
  %161 = ptrtoint ptr %DP44 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %add, ptr %DP44, align 4
  br label %append_opt

if.end40:                                         ; preds = %for.body34
  %162 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %159, align 8
  %164 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %opt, align 4
  %DP43 = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 1
  %165 = ptrtoint ptr %DP43 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %DP43, align 4
  %167 = ptrtoint ptr %DP44 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %DP44, align 4
  %168 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %flags.i, align 4
  %170 = and i32 %169, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.i286 = icmp eq i32 %170, 0
  %backlog1.i = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 5
  %retval.0.in.i = select i1 %tobool.not.i286, ptr %backlog1.i, ptr %backlog58.i
  %171 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %retval.0.i288 = load i32, ptr %retval.0.in.i, align 4
  %172 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %retval.0.i288, ptr %backlog, align 4
  %prio = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 6
  %173 = ptrtoint ptr %prio to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %prio, align 8
  %175 = ptrtoint ptr %prio46 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %prio46, align 1
  %parms47 = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 7
  %176 = ptrtoint ptr %parms47 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %parms47, align 4
  %Wlog = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 7, i32 9
  %178 = ptrtoint ptr %Wlog to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %Wlog, align 1
  %conv49 = zext i8 %179 to i32
  %shr = lshr i32 %177, %conv49
  %180 = ptrtoint ptr %qth_min50 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %shr, ptr %qth_min50, align 4
  %qth_max = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 7, i32 1
  %181 = ptrtoint ptr %qth_max to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %qth_max, align 4
  %shr55 = lshr i32 %182, %conv49
  %183 = ptrtoint ptr %qth_max56 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %shr55, ptr %qth_max56, align 4
  %184 = ptrtoint ptr %Wlog59 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %179, ptr %Wlog59, align 4
  %Plog = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 7, i32 10
  %185 = ptrtoint ptr %Plog to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %Plog, align 2
  %187 = ptrtoint ptr %Plog61 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %186, ptr %Plog61, align 1
  %Scell_log = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 7, i32 8
  %188 = ptrtoint ptr %Scell_log to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %Scell_log, align 4
  %190 = ptrtoint ptr %Scell_log63 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %189, ptr %Scell_log63, align 2
  %stats = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 9
  %other = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 9, i32 5
  %191 = ptrtoint ptr %other to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %other, align 4
  %193 = ptrtoint ptr %other64 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %other64, align 4
  %194 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %stats, align 8
  %196 = ptrtoint ptr %early to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %early, align 4
  %forced_drop = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 9, i32 2
  %197 = ptrtoint ptr %forced_drop to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %forced_drop, align 8
  %199 = ptrtoint ptr %forced to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %forced, align 4
  %pdrop = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 9, i32 4
  %200 = ptrtoint ptr %pdrop to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %pdrop, align 8
  %202 = ptrtoint ptr %pdrop68 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %pdrop68, align 4
  %packetsin = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 4
  %203 = ptrtoint ptr %packetsin to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %packetsin, align 8
  %205 = ptrtoint ptr %packets to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %packets, align 4
  %bytesin = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 3
  %206 = ptrtoint ptr %bytesin to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %bytesin, align 8
  %conv69 = trunc i64 %207 to i32
  %208 = ptrtoint ptr %bytesin70 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %conv69, ptr %bytesin70, align 4
  %209 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %flags.i, align 4
  %211 = and i32 %210, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool72.not = icmp eq i32 %211, 0
  br i1 %tobool72.not, label %if.end40.if.end74_crit_edge, label %if.then73

if.end40.if.end74_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then73:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %212 = ptrtoint ptr %qavg.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %qavg.i, align 8
  %qavg1.i = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 8, i32 2
  %214 = ptrtoint ptr %qavg1.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %qavg1.i, align 8
  %215 = ptrtoint ptr %qidlestart.i to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %qidlestart.i, align 8
  %qidlestart4.i = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 8, i32 3
  %217 = ptrtoint ptr %qidlestart4.i to i32
  call void @__asan_store8_noabort(i32 %217)
  store i64 %216, ptr %qidlestart4.i, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end40.if.end74_crit_edge
  %qidlestart.i.i = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 8, i32 3
  %218 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %qidlestart.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %219)
  %cmp.i.not.i = icmp eq i64 %219, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  %qavg77 = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 8, i32 2
  %220 = ptrtoint ptr %qavg77 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %qavg77, align 8
  br label %red_calc_qavg.exit

if.else.i:                                        ; preds = %if.end74
  %call.i.i = call i64 @ktime_get() #12
  %222 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %qidlestart.i.i, align 8
  %sub.i.i.i = sub i64 %call.i.i, %223
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i.i)
  %cmp8.i.i.i.i.i = icmp slt i64 %sub.i.i.i, 0
  %224 = call i64 @llvm.abs.i64(i64 %sub.i.i.i, i1 false) #12
  %225 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %224, i32 0) #15, !srcloc !85
  %asmresult.i.i.i.i.i.i = extractvalue { i64, i32 } %225, 0
  %asmresult4.i.i.i.i.i.i = extractvalue { i64, i32 } %225, 1
  %226 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %224, i64 %asmresult.i.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i.i) #15, !srcloc !86
  %asmresult10.i.i.i.i.i.i = extractvalue { i64, i32 } %226, 0
  %div1811.i.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i.i, 9
  %sub210.i.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i.i
  %cond213.i.i.i.i.i = select i1 %cmp8.i.i.i.i.i, i64 %sub210.i.i.i.i.i, i64 %div1811.i.i.i.i.i
  %Scell_max.i.i = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 7, i32 2
  %227 = ptrtoint ptr %Scell_max.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %Scell_max.i.i, align 4
  %conv.i8.i = zext i32 %228 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i.i.i, i64 %conv.i8.i)
  %cmp.i9.i = icmp slt i64 %cond213.i.i.i.i.i, %conv.i8.i
  %extract.t.i.i = trunc i64 %cond213.i.i.i.i.i to i32
  %cond.off0.i.i = select i1 %cmp.i9.i, i32 %extract.t.i.i, i32 %228
  %229 = ptrtoint ptr %Scell_log to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %Scell_log, align 4
  %conv4.i.i = zext i8 %230 to i32
  %shr.i10.i = ashr i32 %cond.off0.i.i, %conv4.i.i
  %and.i.i = and i32 %shr.i10.i, 255
  %arrayidx.i.i = getelementptr %struct.gred_sched_data, ptr %159, i32 0, i32 7, i32 11, i32 %and.i.i
  %231 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool.not.i.i = icmp eq i8 %232, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv5.i.i = zext i8 %232 to i32
  %qavg.i11.i = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 8, i32 2
  %233 = ptrtoint ptr %qavg.i11.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %qavg.i11.i, align 8
  %shr6.i.i = lshr i32 %234, %conv5.i.i
  br label %red_calc_qavg.exit

if.else.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %qavg7.i.i = getelementptr inbounds %struct.gred_sched_data, ptr %159, i32 0, i32 8, i32 2
  %235 = ptrtoint ptr %qavg7.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %qavg7.i.i, align 8
  %conv8.i.i = zext i32 %236 to i64
  %conv9.i.i = sext i32 %cond.off0.i.i to i64
  %mul.i.i = mul nsw i64 %conv8.i.i, %conv9.i.i
  %sh_prom.i.i = zext i8 %230 to i64
  %shr12.i.i = lshr i64 %mul.i.i, %sh_prom.i.i
  %conv13.i.i = trunc i64 %shr12.i.i to i32
  %shr15.i.i = lshr i32 %236, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr15.i.i, i32 %conv13.i.i)
  %cmp16.i.i = icmp ugt i32 %shr15.i.i, %conv13.i.i
  %sub.i12.i = sub i32 %236, %conv13.i.i
  %spec.select.i.i = select i1 %cmp16.i.i, i32 %sub.i12.i, i32 %shr15.i.i
  br label %red_calc_qavg.exit

red_calc_qavg.exit:                               ; preds = %if.else.i.i, %if.then.i.i, %if.then.i
  %retval.0.i293 = phi i32 [ %221, %if.then.i ], [ %shr6.i.i, %if.then.i.i ], [ %spec.select.i.i, %if.else.i.i ]
  %237 = ptrtoint ptr %Wlog to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %Wlog, align 1
  %conv85 = zext i8 %238 to i32
  %shr86 = lshr i32 %retval.0.i293, %conv85
  %239 = ptrtoint ptr %qave to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %shr86, ptr %qave, align 4
  br label %append_opt

append_opt:                                       ; preds = %red_calc_qavg.exit, %if.then39
  %call87 = call i32 @nla_append(ptr noundef %skb, i32 noundef 52, ptr noundef nonnull %opt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %opt) #12
  br i1 %cmp88, label %append_opt.if.then.i.i350_crit_edge, label %for.cond31

append_opt.if.then.i.i350_crit_edge:              ; preds = %append_opt
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

for.end96:                                        ; preds = %for.cond31
  %240 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %241 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %157 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %242 = ptrtoint ptr %157 to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %conv.i, ptr %157, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %243 = load ptr, ptr %tail.i.i, align 8
  %call1.i296 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i296)
  %cmp.i297 = icmp slt i32 %call1.i296, 0
  %tobool99.not367 = icmp eq ptr %243, null
  %tobool99.not = select i1 %cmp.i297, i1 true, i1 %tobool99.not367
  br i1 %tobool99.not, label %for.end96.if.then.i.i350_crit_edge, label %for.end96.for.body105_crit_edge

for.end96.for.body105_crit_edge:                  ; preds = %for.end96
  br label %for.body105

for.end96.if.then.i.i350_crit_edge:               ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

for.body105:                                      ; preds = %for.inc180.for.body105_crit_edge, %for.end96.for.body105_crit_edge
  %i.2365 = phi i32 [ %inc181, %for.inc180.for.body105_crit_edge ], [ 0, %for.end96.for.body105_crit_edge ]
  %arrayidx108 = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %i.2365
  %244 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %arrayidx108, align 4
  %tobool109.not = icmp eq ptr %245, null
  br i1 %tobool109.not, label %for.body105.for.inc180_crit_edge, label %if.end111

for.body105.for.inc180_crit_edge:                 ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc180

if.end111:                                        ; preds = %for.body105
  %246 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %tail.i.i, align 8
  %call1.i300 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i300)
  %cmp.i301 = icmp slt i32 %call1.i300, 0
  %tobool113.not361 = icmp eq ptr %247, null
  %tobool113.not = select i1 %cmp.i301, i1 true, i1 %tobool113.not361
  br i1 %tobool113.not, label %if.end111.if.then.i.i350_crit_edge, label %if.end115

if.end111.if.then.i.i350_crit_edge:               ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

if.end115:                                        ; preds = %if.end111
  %DP116 = getelementptr inbounds %struct.gred_sched_data, ptr %245, i32 0, i32 1
  %248 = ptrtoint ptr %DP116 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %DP116, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i303) #12
  %250 = ptrtoint ptr %tmp.i303 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %249, ptr %tmp.i303, align 4
  %call.i304 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i303) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i303) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i304)
  %tobool118.not = icmp eq i32 %call.i304, 0
  br i1 %tobool118.not, label %if.end120, label %if.end115.if.then.i.i350_crit_edge

if.end115.if.then.i.i350_crit_edge:               ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

if.end120:                                        ; preds = %if.end115
  %red_flags121 = getelementptr inbounds %struct.gred_sched_data, ptr %245, i32 0, i32 2
  %251 = ptrtoint ptr %red_flags121 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %red_flags121, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i305) #12
  %253 = ptrtoint ptr %tmp.i305 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %252, ptr %tmp.i305, align 4
  %call.i306 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i305) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i305) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i306)
  %tobool123.not = icmp eq i32 %call.i306, 0
  br i1 %tobool123.not, label %if.end125, label %if.end120.if.then.i.i350_crit_edge

if.end120.if.then.i.i350_crit_edge:               ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

if.end125:                                        ; preds = %if.end120
  %bytesin126 = getelementptr inbounds %struct.gred_sched_data, ptr %245, i32 0, i32 3
  %254 = ptrtoint ptr %bytesin126 to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %bytesin126, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i307) #12
  %256 = ptrtoint ptr %tmp.i307 to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 %255, ptr %tmp.i307, align 8
  %call.i308 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i307, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i307) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i308)
  %tobool128.not = icmp eq i32 %call.i308, 0
  br i1 %tobool128.not, label %if.end130, label %if.end125.if.then.i.i350_crit_edge

if.end125.if.then.i.i350_crit_edge:               ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

if.end130:                                        ; preds = %if.end125
  %packetsin131 = getelementptr inbounds %struct.gred_sched_data, ptr %245, i32 0, i32 4
  %257 = ptrtoint ptr %packetsin131 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %packetsin131, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i309) #12
  %259 = ptrtoint ptr %tmp.i309 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %258, ptr %tmp.i309, align 4
  %call.i310 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i309) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i309) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i310)
  %tobool133.not = icmp eq i32 %call.i310, 0
  br i1 %tobool133.not, label %if.end135, label %if.end130.if.then.i.i350_crit_edge

if.end130.if.then.i.i350_crit_edge:               ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

if.end135:                                        ; preds = %if.end130
  %260 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load volatile i32, ptr %flags.i, align 4
  %262 = and i32 %261, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %tobool.not.i312 = icmp eq i32 %262, 0
  %backlog1.i314 = getelementptr inbounds %struct.gred_sched_data, ptr %245, i32 0, i32 5
  %retval.0.in.i315 = select i1 %tobool.not.i312, ptr %backlog1.i314, ptr %backlog58.i
  %263 = ptrtoint ptr %retval.0.in.i315 to i32
  call void @__asan_load4_noabort(i32 %263)
  %retval.0.i316 = load i32, ptr %retval.0.in.i315, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i317) #12
  %264 = ptrtoint ptr %tmp.i317 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %retval.0.i316, ptr %tmp.i317, align 4
  %call.i318 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i317) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i317) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i318)
  %tobool138.not = icmp eq i32 %call.i318, 0
  br i1 %tobool138.not, label %if.end140, label %if.end135.if.then.i.i350_crit_edge

if.end135.if.then.i.i350_crit_edge:               ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

if.end140:                                        ; preds = %if.end135
  %stats141 = getelementptr inbounds %struct.gred_sched_data, ptr %245, i32 0, i32 9
  %265 = ptrtoint ptr %stats141 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %stats141, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i319) #12
  %267 = ptrtoint ptr %tmp.i319 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %tmp.i319, align 4
  %call.i320 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i319) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i319) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i320)
  %tobool144.not = icmp eq i32 %call.i320, 0
  br i1 %tobool144.not, label %if.end146, label %if.end140.if.then.i.i350_crit_edge

if.end140.if.then.i.i350_crit_edge:               ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

if.end146:                                        ; preds = %if.end140
  %prob_mark = getelementptr inbounds %struct.gred_sched_data, ptr %245, i32 0, i32 9, i32 1
  %268 = ptrtoint ptr %prob_mark to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %prob_mark, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i321) #12
  %270 = ptrtoint ptr %tmp.i321 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %269, ptr %tmp.i321, align 4
  %call.i322 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i321) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i321) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i322)
  %tobool149.not = icmp eq i32 %call.i322, 0
  br i1 %tobool149.not, label %if.end151, label %if.end146.if.then.i.i350_crit_edge

if.end146.if.then.i.i350_crit_edge:               ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

if.end151:                                        ; preds = %if.end146
  %forced_drop153 = getelementptr inbounds %struct.gred_sched_data, ptr %245, i32 0, i32 9, i32 2
  %271 = ptrtoint ptr %forced_drop153 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %forced_drop153, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i323) #12
  %273 = ptrtoint ptr %tmp.i323 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %272, ptr %tmp.i323, align 4
  %call.i324 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i323) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i323) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i324)
  %tobool155.not = icmp eq i32 %call.i324, 0
  br i1 %tobool155.not, label %if.end157, label %if.end151.if.then.i.i350_crit_edge

if.end151.if.then.i.i350_crit_edge:               ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

if.end157:                                        ; preds = %if.end151
  %forced_mark = getelementptr inbounds %struct.gred_sched_data, ptr %245, i32 0, i32 9, i32 3
  %274 = ptrtoint ptr %forced_mark to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %forced_mark, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i325) #12
  %276 = ptrtoint ptr %tmp.i325 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %275, ptr %tmp.i325, align 4
  %call.i326 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i325) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i325) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i326)
  %tobool160.not = icmp eq i32 %call.i326, 0
  br i1 %tobool160.not, label %if.end162, label %if.end157.if.then.i.i350_crit_edge

if.end157.if.then.i.i350_crit_edge:               ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

if.end162:                                        ; preds = %if.end157
  %pdrop164 = getelementptr inbounds %struct.gred_sched_data, ptr %245, i32 0, i32 9, i32 4
  %277 = ptrtoint ptr %pdrop164 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %pdrop164, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i327) #12
  %279 = ptrtoint ptr %tmp.i327 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %278, ptr %tmp.i327, align 4
  %call.i328 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i327) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i327) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i328)
  %tobool166.not = icmp eq i32 %call.i328, 0
  br i1 %tobool166.not, label %if.end168, label %if.end162.if.then.i.i350_crit_edge

if.end162.if.then.i.i350_crit_edge:               ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

if.end168:                                        ; preds = %if.end162
  %other170 = getelementptr inbounds %struct.gred_sched_data, ptr %245, i32 0, i32 9, i32 5
  %280 = ptrtoint ptr %other170 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %other170, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i329) #12
  %282 = ptrtoint ptr %tmp.i329 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %tmp.i329, align 4
  %call.i330 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i329) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i329) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i330)
  %tobool172.not = icmp eq i32 %call.i330, 0
  br i1 %tobool172.not, label %if.end174, label %if.end168.if.then.i.i350_crit_edge

if.end168.if.then.i.i350_crit_edge:               ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i350

if.end174:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  %283 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i332 = ptrtoint ptr %284 to i32
  %sub.ptr.rhs.cast.i333 = ptrtoint ptr %247 to i32
  %sub.ptr.sub.i334 = sub i32 %sub.ptr.lhs.cast.i332, %sub.ptr.rhs.cast.i333
  %conv.i335 = trunc i32 %sub.ptr.sub.i334 to i16
  %285 = ptrtoint ptr %247 to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 %conv.i335, ptr %247, align 2
  br label %for.inc180

for.inc180:                                       ; preds = %if.end174, %for.body105.for.inc180_crit_edge
  %inc181 = add nuw nsw i32 %i.2365, 1
  %exitcond369.not = icmp eq i32 %inc181, 16
  br i1 %exitcond369.not, label %for.end182, label %for.inc180.for.body105_crit_edge

for.inc180.for.body105_crit_edge:                 ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body105

for.end182:                                       ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #14
  %286 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i338 = ptrtoint ptr %287 to i32
  %sub.ptr.rhs.cast.i339 = ptrtoint ptr %243 to i32
  %sub.ptr.sub.i340 = sub i32 %sub.ptr.lhs.cast.i338, %sub.ptr.rhs.cast.i339
  %conv.i341 = trunc i32 %sub.ptr.sub.i340 to i16
  %288 = ptrtoint ptr %243 to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 %conv.i341, ptr %243, align 2
  %289 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i344 = ptrtoint ptr %289 to i32
  %sub.ptr.rhs.cast.i345 = ptrtoint ptr %72 to i32
  %sub.ptr.sub.i346 = sub i32 %sub.ptr.lhs.cast.i344, %sub.ptr.rhs.cast.i345
  %conv.i347 = trunc i32 %sub.ptr.sub.i346 to i16
  %290 = ptrtoint ptr %72 to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 %conv.i347, ptr %72, align 2
  %291 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %len.i, align 4
  br label %cleanup185

if.then.i.i350:                                   ; preds = %if.end168.if.then.i.i350_crit_edge, %if.end162.if.then.i.i350_crit_edge, %if.end157.if.then.i.i350_crit_edge, %if.end151.if.then.i.i350_crit_edge, %if.end146.if.then.i.i350_crit_edge, %if.end140.if.then.i.i350_crit_edge, %if.end135.if.then.i.i350_crit_edge, %if.end130.if.then.i.i350_crit_edge, %if.end125.if.then.i.i350_crit_edge, %if.end120.if.then.i.i350_crit_edge, %if.end115.if.then.i.i350_crit_edge, %if.end111.if.then.i.i350_crit_edge, %for.end96.if.then.i.i350_crit_edge, %append_opt.if.then.i.i350_crit_edge, %if.end25.if.then.i.i350_crit_edge, %if.end21.if.then.i.i350_crit_edge, %cond.end.15.if.then.i.i350_crit_edge, %if.end8.if.then.i.i350_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %293 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %294, %72
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i350.if.end.i.i_crit_edge, !prof !84

if.then.i.i350.if.end.i.i_crit_edge:              ; preds = %if.then.i.i350
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i350
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i350.if.end.i.i_crit_edge
  %295 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %296 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #12
  br label %cleanup185

cleanup185:                                       ; preds = %if.end.i.i, %for.end182, %if.end.cleanup185_crit_edge, %gred_offload_dump_stats.exit.cleanup185_crit_edge, %entry.cleanup185_crit_edge
  %retval.0 = phi i32 [ %292, %for.end182 ], [ -90, %if.end.i.i ], [ -90, %gred_offload_dump_stats.exit.cleanup185_crit_edge ], [ -90, %if.end.cleanup185_crit_edge ], [ -90, %entry.cleanup185_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sopt) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %max_p) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @INET_ECN_set_ce(ptr noundef %skb) unnamed_addr #5 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

entry.skb_protocol.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %entry.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge42
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i.i.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp.i.i.i = icmp ult i16 %3, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !84

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef null) #12
  br label %return

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #12
  %6 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !88
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %5, align 2, !annotation !88
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
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !87

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %14, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !84
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %15 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !84
  br i1 %15, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !84

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #12
  br label %return

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #12
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %17, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %entry.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ %1, %entry.skb_protocol.exit_crit_edge ], [ %17, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %19 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %retval.2.i.i.i, label %skb_protocol.exit.return_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb6
  ]

skb_protocol.exit.return_crit_edge:               ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool2.not.i = icmp eq i8 %29, 0
  %lnot.ext.i = zext i1 %tobool2.not.i to i32
  br label %return

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then3.i:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #14
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
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_bstats_update(ptr noundef %bstats, i64 noundef %bytes, i32 noundef %packets) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %entry.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

entry.u64_stats_update_begin.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !74) #12
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !89
  %5 = tail call i32 @llvm.read_register.i32(metadata !74) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !90
  %14 = tail call i32 @llvm.read_register.i32(metadata !74) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !74) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !74) #12
  %and.i.i.i9.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %25, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !91
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !92
  %33 = tail call i32 @llvm.read_register.i32(metadata !74) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !87

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %entry.u64_stats_update_begin.exit_crit_edge
  %syncp = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !93
  %dep_map.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #12
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #12
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
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %40) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  %45 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gred_change_table_def(ptr noundef %sch, ptr noundef readonly %dps, ptr noundef writeonly %extack) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tobool.not = icmp eq ptr %dps, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dps, i32 4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp ugt i32 %1, 16
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @gred_change_table_def.__msg) #12
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @gred_change_table_def.__msg, ptr %extack, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8 = icmp eq i32 %1, 0
  br i1 %cmp8, label %do.body10, label %if.end18

do.body10:                                        ; preds = %if.end6
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @gred_change_table_def.__msg.5) #12
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %if.then13

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @gred_change_table_def.__msg.5, ptr %extack, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %def_DP = getelementptr i8, ptr %dps, i32 8
  %4 = ptrtoint ptr %def_DP to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %def_DP, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp20.not = icmp ult i32 %5, %1
  br i1 %cmp20.not, label %if.end30, label %do.body22

do.body22:                                        ; preds = %if.end18
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @gred_change_table_def.__msg.6) #12
  %tobool24.not = icmp eq ptr %extack, null
  br i1 %tobool24.not, label %do.body22.cleanup_crit_edge, label %if.then25

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then25:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @gred_change_table_def.__msg.6, ptr %extack, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end18
  %flags = getelementptr i8, ptr %dps, i32 13
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool31.not = icmp eq i8 %8, 0
  br i1 %tobool31.not, label %if.end30.if.end43_crit_edge, label %land.lhs.true

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end30
  %red_flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %9 = ptrtoint ptr %red_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %red_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %for.body.preheader.i, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

for.body.preheader.i:                             ; preds = %land.lhs.true
  %11 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %privdata.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.preheader.i
  %red_flags4.i = getelementptr inbounds %struct.gred_sched_data, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %red_flags4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %red_flags4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not.i = icmp eq i32 %14, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.do.body35_crit_edge

land.lhs.true.i.do.body35_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.preheader.i.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool1.not.1.i = icmp eq ptr %16, null
  br i1 %tobool1.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %red_flags4.1.i = getelementptr inbounds %struct.gred_sched_data, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %red_flags4.1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %red_flags4.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not.1.i = icmp eq i32 %18, 0
  br i1 %tobool5.not.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.do.body35_crit_edge

land.lhs.true.1.i.do.body35_crit_edge:            ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool1.not.2.i = icmp eq ptr %20, null
  br i1 %tobool1.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %red_flags4.2.i = getelementptr inbounds %struct.gred_sched_data, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %red_flags4.2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %red_flags4.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool5.not.2.i = icmp eq i32 %22, 0
  br i1 %tobool5.not.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i.do.body35_crit_edge

land.lhs.true.2.i.do.body35_crit_edge:            ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 3
  %23 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool1.not.3.i = icmp eq ptr %24, null
  br i1 %tobool1.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %red_flags4.3.i = getelementptr inbounds %struct.gred_sched_data, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %red_flags4.3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %red_flags4.3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool5.not.3.i = icmp eq i32 %26, 0
  br i1 %tobool5.not.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i.do.body35_crit_edge

land.lhs.true.3.i.do.body35_crit_edge:            ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 4
  %27 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.4.i, align 4
  %tobool1.not.4.i = icmp eq ptr %28, null
  br i1 %tobool1.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %red_flags4.4.i = getelementptr inbounds %struct.gred_sched_data, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %red_flags4.4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %red_flags4.4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool5.not.4.i = icmp eq i32 %30, 0
  br i1 %tobool5.not.4.i, label %land.lhs.true.4.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i.do.body35_crit_edge

land.lhs.true.4.i.do.body35_crit_edge:            ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %arrayidx.5.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 5
  %31 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.5.i, align 4
  %tobool1.not.5.i = icmp eq ptr %32, null
  br i1 %tobool1.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %land.lhs.true.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5.i

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %red_flags4.5.i = getelementptr inbounds %struct.gred_sched_data, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %red_flags4.5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %red_flags4.5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool5.not.5.i = icmp eq i32 %34, 0
  br i1 %tobool5.not.5.i, label %land.lhs.true.5.i.for.inc.5.i_crit_edge, label %land.lhs.true.5.i.do.body35_crit_edge

land.lhs.true.5.i.do.body35_crit_edge:            ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true.5.i.for.inc.5.i_crit_edge:          ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %land.lhs.true.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %arrayidx.6.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 6
  %35 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.6.i, align 4
  %tobool1.not.6.i = icmp eq ptr %36, null
  br i1 %tobool1.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %land.lhs.true.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6.i

land.lhs.true.6.i:                                ; preds = %for.inc.5.i
  %red_flags4.6.i = getelementptr inbounds %struct.gred_sched_data, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %red_flags4.6.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %red_flags4.6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool5.not.6.i = icmp eq i32 %38, 0
  br i1 %tobool5.not.6.i, label %land.lhs.true.6.i.for.inc.6.i_crit_edge, label %land.lhs.true.6.i.do.body35_crit_edge

land.lhs.true.6.i.do.body35_crit_edge:            ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true.6.i.for.inc.6.i_crit_edge:          ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %land.lhs.true.6.i.for.inc.6.i_crit_edge, %for.inc.5.i.for.inc.6.i_crit_edge
  %arrayidx.7.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %39 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.7.i, align 4
  %tobool1.not.7.i = icmp eq ptr %40, null
  br i1 %tobool1.not.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %land.lhs.true.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.7.i

land.lhs.true.7.i:                                ; preds = %for.inc.6.i
  %red_flags4.7.i = getelementptr inbounds %struct.gred_sched_data, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %red_flags4.7.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %red_flags4.7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool5.not.7.i = icmp eq i32 %42, 0
  br i1 %tobool5.not.7.i, label %land.lhs.true.7.i.for.inc.7.i_crit_edge, label %land.lhs.true.7.i.do.body35_crit_edge

land.lhs.true.7.i.do.body35_crit_edge:            ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true.7.i.for.inc.7.i_crit_edge:          ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %land.lhs.true.7.i.for.inc.7.i_crit_edge, %for.inc.6.i.for.inc.7.i_crit_edge
  %arrayidx.8.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 7
  %43 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.8.i, align 4
  %tobool1.not.8.i = icmp eq ptr %44, null
  br i1 %tobool1.not.8.i, label %for.inc.7.i.for.inc.8.i_crit_edge, label %land.lhs.true.8.i

for.inc.7.i.for.inc.8.i_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.8.i

land.lhs.true.8.i:                                ; preds = %for.inc.7.i
  %red_flags4.8.i = getelementptr inbounds %struct.gred_sched_data, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %red_flags4.8.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %red_flags4.8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool5.not.8.i = icmp eq i32 %46, 0
  br i1 %tobool5.not.8.i, label %land.lhs.true.8.i.for.inc.8.i_crit_edge, label %land.lhs.true.8.i.do.body35_crit_edge

land.lhs.true.8.i.do.body35_crit_edge:            ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true.8.i.for.inc.8.i_crit_edge:          ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.8.i

for.inc.8.i:                                      ; preds = %land.lhs.true.8.i.for.inc.8.i_crit_edge, %for.inc.7.i.for.inc.8.i_crit_edge
  %arrayidx.9.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 8
  %47 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.9.i, align 4
  %tobool1.not.9.i = icmp eq ptr %48, null
  br i1 %tobool1.not.9.i, label %for.inc.8.i.for.inc.9.i_crit_edge, label %land.lhs.true.9.i

for.inc.8.i.for.inc.9.i_crit_edge:                ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.9.i

land.lhs.true.9.i:                                ; preds = %for.inc.8.i
  %red_flags4.9.i = getelementptr inbounds %struct.gred_sched_data, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %red_flags4.9.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %red_flags4.9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool5.not.9.i = icmp eq i32 %50, 0
  br i1 %tobool5.not.9.i, label %land.lhs.true.9.i.for.inc.9.i_crit_edge, label %land.lhs.true.9.i.do.body35_crit_edge

land.lhs.true.9.i.do.body35_crit_edge:            ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true.9.i.for.inc.9.i_crit_edge:          ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.9.i

for.inc.9.i:                                      ; preds = %land.lhs.true.9.i.for.inc.9.i_crit_edge, %for.inc.8.i.for.inc.9.i_crit_edge
  %arrayidx.10.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 9
  %51 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.10.i, align 4
  %tobool1.not.10.i = icmp eq ptr %52, null
  br i1 %tobool1.not.10.i, label %for.inc.9.i.for.inc.10.i_crit_edge, label %land.lhs.true.10.i

for.inc.9.i.for.inc.10.i_crit_edge:               ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.10.i

land.lhs.true.10.i:                               ; preds = %for.inc.9.i
  %red_flags4.10.i = getelementptr inbounds %struct.gred_sched_data, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %red_flags4.10.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %red_flags4.10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool5.not.10.i = icmp eq i32 %54, 0
  br i1 %tobool5.not.10.i, label %land.lhs.true.10.i.for.inc.10.i_crit_edge, label %land.lhs.true.10.i.do.body35_crit_edge

land.lhs.true.10.i.do.body35_crit_edge:           ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true.10.i.for.inc.10.i_crit_edge:        ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.10.i

for.inc.10.i:                                     ; preds = %land.lhs.true.10.i.for.inc.10.i_crit_edge, %for.inc.9.i.for.inc.10.i_crit_edge
  %arrayidx.11.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 10
  %55 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.11.i, align 4
  %tobool1.not.11.i = icmp eq ptr %56, null
  br i1 %tobool1.not.11.i, label %for.inc.10.i.for.inc.11.i_crit_edge, label %land.lhs.true.11.i

for.inc.10.i.for.inc.11.i_crit_edge:              ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.11.i

land.lhs.true.11.i:                               ; preds = %for.inc.10.i
  %red_flags4.11.i = getelementptr inbounds %struct.gred_sched_data, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %red_flags4.11.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %red_flags4.11.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool5.not.11.i = icmp eq i32 %58, 0
  br i1 %tobool5.not.11.i, label %land.lhs.true.11.i.for.inc.11.i_crit_edge, label %land.lhs.true.11.i.do.body35_crit_edge

land.lhs.true.11.i.do.body35_crit_edge:           ; preds = %land.lhs.true.11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true.11.i.for.inc.11.i_crit_edge:        ; preds = %land.lhs.true.11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.11.i

for.inc.11.i:                                     ; preds = %land.lhs.true.11.i.for.inc.11.i_crit_edge, %for.inc.10.i.for.inc.11.i_crit_edge
  %arrayidx.12.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 11
  %59 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.12.i, align 4
  %tobool1.not.12.i = icmp eq ptr %60, null
  br i1 %tobool1.not.12.i, label %for.inc.11.i.for.inc.12.i_crit_edge, label %land.lhs.true.12.i

for.inc.11.i.for.inc.12.i_crit_edge:              ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.12.i

land.lhs.true.12.i:                               ; preds = %for.inc.11.i
  %red_flags4.12.i = getelementptr inbounds %struct.gred_sched_data, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %red_flags4.12.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %red_flags4.12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool5.not.12.i = icmp eq i32 %62, 0
  br i1 %tobool5.not.12.i, label %land.lhs.true.12.i.for.inc.12.i_crit_edge, label %land.lhs.true.12.i.do.body35_crit_edge

land.lhs.true.12.i.do.body35_crit_edge:           ; preds = %land.lhs.true.12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true.12.i.for.inc.12.i_crit_edge:        ; preds = %land.lhs.true.12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.12.i

for.inc.12.i:                                     ; preds = %land.lhs.true.12.i.for.inc.12.i_crit_edge, %for.inc.11.i.for.inc.12.i_crit_edge
  %arrayidx.13.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 12
  %63 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.13.i, align 4
  %tobool1.not.13.i = icmp eq ptr %64, null
  br i1 %tobool1.not.13.i, label %for.inc.12.i.for.inc.13.i_crit_edge, label %land.lhs.true.13.i

for.inc.12.i.for.inc.13.i_crit_edge:              ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.13.i

land.lhs.true.13.i:                               ; preds = %for.inc.12.i
  %red_flags4.13.i = getelementptr inbounds %struct.gred_sched_data, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %red_flags4.13.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %red_flags4.13.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool5.not.13.i = icmp eq i32 %66, 0
  br i1 %tobool5.not.13.i, label %land.lhs.true.13.i.for.inc.13.i_crit_edge, label %land.lhs.true.13.i.do.body35_crit_edge

land.lhs.true.13.i.do.body35_crit_edge:           ; preds = %land.lhs.true.13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true.13.i.for.inc.13.i_crit_edge:        ; preds = %land.lhs.true.13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.13.i

for.inc.13.i:                                     ; preds = %land.lhs.true.13.i.for.inc.13.i_crit_edge, %for.inc.12.i.for.inc.13.i_crit_edge
  %arrayidx.14.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 13
  %67 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.14.i, align 4
  %tobool1.not.14.i = icmp eq ptr %68, null
  br i1 %tobool1.not.14.i, label %for.inc.13.i.for.inc.14.i_crit_edge, label %land.lhs.true.14.i

for.inc.13.i.for.inc.14.i_crit_edge:              ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.14.i

land.lhs.true.14.i:                               ; preds = %for.inc.13.i
  %red_flags4.14.i = getelementptr inbounds %struct.gred_sched_data, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %red_flags4.14.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %red_flags4.14.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool5.not.14.i = icmp eq i32 %70, 0
  br i1 %tobool5.not.14.i, label %land.lhs.true.14.i.for.inc.14.i_crit_edge, label %land.lhs.true.14.i.do.body35_crit_edge

land.lhs.true.14.i.do.body35_crit_edge:           ; preds = %land.lhs.true.14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true.14.i.for.inc.14.i_crit_edge:        ; preds = %land.lhs.true.14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.14.i

for.inc.14.i:                                     ; preds = %land.lhs.true.14.i.for.inc.14.i_crit_edge, %for.inc.13.i.for.inc.14.i_crit_edge
  %arrayidx.15.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 14
  %71 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.15.i, align 4
  %tobool1.not.15.i = icmp eq ptr %72, null
  br i1 %tobool1.not.15.i, label %for.inc.14.i.if.end43_crit_edge, label %land.lhs.true.15.i

for.inc.14.i.if.end43_crit_edge:                  ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

land.lhs.true.15.i:                               ; preds = %for.inc.14.i
  %red_flags4.15.i = getelementptr inbounds %struct.gred_sched_data, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %red_flags4.15.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %red_flags4.15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool5.not.15.i = icmp eq i32 %74, 0
  br i1 %tobool5.not.15.i, label %land.lhs.true.15.i.if.end43_crit_edge, label %land.lhs.true.15.i.do.body35_crit_edge

land.lhs.true.15.i.do.body35_crit_edge:           ; preds = %land.lhs.true.15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true.15.i.if.end43_crit_edge:            ; preds = %land.lhs.true.15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

do.body35:                                        ; preds = %land.lhs.true.15.i.do.body35_crit_edge, %land.lhs.true.14.i.do.body35_crit_edge, %land.lhs.true.13.i.do.body35_crit_edge, %land.lhs.true.12.i.do.body35_crit_edge, %land.lhs.true.11.i.do.body35_crit_edge, %land.lhs.true.10.i.do.body35_crit_edge, %land.lhs.true.9.i.do.body35_crit_edge, %land.lhs.true.8.i.do.body35_crit_edge, %land.lhs.true.7.i.do.body35_crit_edge, %land.lhs.true.6.i.do.body35_crit_edge, %land.lhs.true.5.i.do.body35_crit_edge, %land.lhs.true.4.i.do.body35_crit_edge, %land.lhs.true.3.i.do.body35_crit_edge, %land.lhs.true.2.i.do.body35_crit_edge, %land.lhs.true.1.i.do.body35_crit_edge, %land.lhs.true.i.do.body35_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @gred_change_table_def.__msg.7) #12
  %tobool37.not = icmp eq ptr %extack, null
  br i1 %tobool37.not, label %do.body35.cleanup_crit_edge, label %if.then38

do.body35.cleanup_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then38:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @gred_change_table_def.__msg.7, ptr %extack, align 4
  br label %cleanup

if.end43:                                         ; preds = %land.lhs.true.15.i.if.end43_crit_edge, %for.inc.14.i.if.end43_crit_edge, %land.lhs.true.if.end43_crit_edge, %if.end30.if.end43_crit_edge
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %76 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %77, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i146 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i146, label %if.else.i, label %if.end43.sch_tree_lock.exit_crit_edge

if.end43.sch_tree_lock.exit_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.end43
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %78 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !87

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 596) #12
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end43.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end43.sch_tree_lock.exit_crit_edge ], [ %81, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %81, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %81, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #12
  %82 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i, align 4
  %DPs45 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %84 = ptrtoint ptr %DPs45 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %DPs45, align 8
  %85 = ptrtoint ptr %def_DP to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %def_DP, align 4
  %def = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %87 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %def, align 4
  %red_flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %88 = ptrtoint ptr %red_flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %red_flags, align 4
  %90 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %flags, align 1
  %conv48 = zext i8 %91 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %conv48)
  %cmp49.not = icmp eq i32 %89, %conv48
  %92 = ptrtoint ptr %red_flags to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv48, ptr %red_flags, align 4
  %93 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.i, align 8
  %and.i148 = and i32 %94, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i148)
  %tobool.not.i149 = icmp eq i32 %and.i148, 0
  br i1 %tobool.not.i149, label %if.else.i154, label %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge

sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge: ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

if.else.i154:                                     ; preds = %sch_tree_lock.exit
  %dev_queue.i.i.i150 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %95 = ptrtoint ptr %dev_queue.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev_queue.i.i.i150, align 8
  %qdisc_sleeping.i.i.i151 = getelementptr inbounds %struct.netdev_queue, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %qdisc_sleeping.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %qdisc_sleeping.i.i.i151, align 4
  %call1.i.i152 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i152)
  %tobool.not.i.i153 = icmp eq i32 %call1.i.i152, 0
  br i1 %tobool.not.i.i153, label %land.rhs.i.i156, label %if.else.i154.sch_tree_unlock.exit_crit_edge

if.else.i154.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i154
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

land.rhs.i.i156:                                  ; preds = %if.else.i154
  %.b41.i.i155 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i155, label %land.rhs.i.i156.sch_tree_unlock.exit_crit_edge, label %if.then.i.i157, !prof !87

land.rhs.i.i156.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i156
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

if.then.i.i157:                                   ; preds = %land.rhs.i.i156
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 596) #12
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i157, %land.rhs.i.i156.sch_tree_unlock.exit_crit_edge, %if.else.i154.sch_tree_unlock.exit_crit_edge, %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge
  %.sink.i158 = phi ptr [ %sch, %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge ], [ %98, %if.else.i154.sch_tree_unlock.exit_crit_edge ], [ %98, %land.rhs.i.i156.sch_tree_unlock.exit_crit_edge ], [ %98, %if.then.i.i157 ]
  %lock.i.i.i159 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i158, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i159) #12
  %grio = getelementptr i8, ptr %dps, i32 12
  %99 = ptrtoint ptr %grio to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %grio, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool54.not = icmp eq i8 %100, 0
  %flags.i167 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %101 = ptrtoint ptr %flags.i167 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags.i167, align 4
  %and.i.i170 = and i32 %102, -7
  br i1 %tobool54.not, label %sch_tree_unlock.exit.if.end60.sink.split_crit_edge, label %if.then55

sch_tree_unlock.exit.if.end60.sink.split_crit_edge: ; preds = %sch_tree_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.sink.split

if.then55:                                        ; preds = %sch_tree_unlock.exit
  %and.i.i = or i32 %and.i.i170, 4
  %103 = ptrtoint ptr %flags.i167 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %and.i.i, ptr %flags.i167, align 4
  %104 = ptrtoint ptr %DPs45 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %DPs45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp39.not.i = icmp eq i32 %105, 0
  br i1 %cmp39.not.i, label %if.then55.if.end60_crit_edge, label %if.then55.for.body.i_crit_edge

if.then55.for.body.i_crit_edge:                   ; preds = %if.then55
  br label %for.body.i

if.then55.if.end60_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

for.body.i:                                       ; preds = %for.inc17.i.for.body.i_crit_edge, %if.then55.for.body.i_crit_edge
  %i.040.i = phi i32 [ %.pre.i, %for.inc17.i.for.body.i_crit_edge ], [ 0, %if.then55.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %i.040.i
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp ne ptr %107, null
  %.pre.i = add nuw i32 %i.040.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre.i, i32 %105)
  %cmp437.i = icmp ult i32 %.pre.i, %105
  %or.cond.i = select i1 %cmp1.i, i1 %cmp437.i, i1 false
  br i1 %or.cond.i, label %for.body5.lr.ph.i, label %for.body.i.for.inc17.i_crit_edge

for.body.i.for.inc17.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc17.i

for.body5.lr.ph.i:                                ; preds = %for.body.i
  %prio10.i = getelementptr inbounds %struct.gred_sched_data, ptr %107, i32 0, i32 6
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc.i164.for.body5.i_crit_edge, %for.body5.lr.ph.i
  %n.038.i = phi i32 [ %.pre.i, %for.body5.lr.ph.i ], [ %n.0.i, %for.inc.i164.for.body5.i_crit_edge ]
  %arrayidx7.i = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %n.038.i
  %108 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx7.i, align 4
  %tobool.not.i162 = icmp eq ptr %109, null
  br i1 %tobool.not.i162, label %for.body5.i.for.inc.i164_crit_edge, label %land.lhs.true.i163

for.body5.i.for.inc.i164_crit_edge:               ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i164

land.lhs.true.i163:                               ; preds = %for.body5.i
  %prio.i = getelementptr inbounds %struct.gred_sched_data, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %prio.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %prio.i, align 8
  %112 = ptrtoint ptr %prio10.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %prio10.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %111, i8 %113)
  %cmp12.i = icmp eq i8 %111, %113
  br i1 %cmp12.i, label %if.then58, label %land.lhs.true.i163.for.inc.i164_crit_edge

land.lhs.true.i163.for.inc.i164_crit_edge:        ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i164

for.inc.i164:                                     ; preds = %land.lhs.true.i163.for.inc.i164_crit_edge, %for.body5.i.for.inc.i164_crit_edge
  %n.0.i = add i32 %n.038.i, 1
  %exitcond.not.i = icmp eq i32 %n.0.i, %105
  br i1 %exitcond.not.i, label %for.inc.i164.for.inc17.i_crit_edge, label %for.inc.i164.for.body5.i_crit_edge

for.inc.i164.for.body5.i_crit_edge:               ; preds = %for.inc.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5.i

for.inc.i164.for.inc17.i_crit_edge:               ; preds = %for.inc.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc17.i

for.inc17.i:                                      ; preds = %for.inc.i164.for.inc17.i_crit_edge, %for.body.i.for.inc17.i_crit_edge
  %exitcond43.not.i = icmp eq i32 %.pre.i, %105
  br i1 %exitcond43.not.i, label %for.inc17.i.if.end60_crit_edge, label %for.inc17.i.for.body.i_crit_edge

for.inc17.i.for.body.i_crit_edge:                 ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc17.i.if.end60_crit_edge:                   ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then58:                                        ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #14
  %or.i.i166 = or i32 %102, 6
  br label %if.end60.sink.split

if.end60.sink.split:                              ; preds = %if.then58, %sch_tree_unlock.exit.if.end60.sink.split_crit_edge
  %or.i.i166.sink = phi i32 [ %or.i.i166, %if.then58 ], [ %and.i.i170, %sch_tree_unlock.exit.if.end60.sink.split_crit_edge ]
  %114 = ptrtoint ptr %flags.i167 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or.i.i166.sink, ptr %flags.i167, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end60.sink.split, %for.inc17.i.if.end60_crit_edge, %if.then55.if.end60_crit_edge
  %115 = ptrtoint ptr %DPs45 to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pr = load i32, ptr %DPs45, align 8
  br i1 %cmp49.not, label %if.end60.if.end73_crit_edge, label %for.cond.preheader

if.end60.if.end73_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

for.cond.preheader:                               ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp64174.not = icmp eq i32 %.pr, 0
  br i1 %cmp64174.not, label %for.cond.preheader.for.body78.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.body78.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body78.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0175 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %i.0175
  %116 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx, align 4
  %tobool66.not = icmp eq ptr %117, null
  br i1 %tobool66.not, label %for.body.for.inc_crit_edge, label %if.then67

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then67:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %red_flags to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %red_flags, align 4
  %and = and i32 %119, 3
  %red_flags71 = getelementptr inbounds %struct.gred_sched_data, ptr %117, i32 0, i32 2
  %120 = ptrtoint ptr %red_flags71 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %and, ptr %red_flags71, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then67, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0175, 1
  %121 = ptrtoint ptr %DPs45 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %DPs45, align 8
  %cmp64 = icmp ult i32 %inc, %122
  br i1 %cmp64, label %for.inc.for.body_crit_edge, label %for.inc.if.end73_crit_edge

for.inc.if.end73_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end73:                                         ; preds = %for.inc.if.end73_crit_edge, %if.end60.if.end73_crit_edge
  %123 = phi i32 [ %.pr, %if.end60.if.end73_crit_edge ], [ %122, %for.inc.if.end73_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %123)
  %cmp76176 = icmp slt i32 %123, 16
  br i1 %cmp76176, label %if.end73.for.body78.preheader_crit_edge, label %if.end73.for.end94_crit_edge

if.end73.for.end94_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end94

if.end73.for.body78.preheader_crit_edge:          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body78.preheader

for.body78.preheader:                             ; preds = %if.end73.for.body78.preheader_crit_edge, %for.cond.preheader.for.body78.preheader_crit_edge
  %i.1177.ph = phi i32 [ 0, %for.cond.preheader.for.body78.preheader_crit_edge ], [ %123, %if.end73.for.body78.preheader_crit_edge ]
  br label %for.body78

for.body78:                                       ; preds = %for.inc92.for.body78_crit_edge, %for.body78.preheader
  %i.1177 = phi i32 [ %inc93, %for.inc92.for.body78_crit_edge ], [ %i.1177.ph, %for.body78.preheader ]
  %arrayidx80 = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %i.1177
  %124 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx80, align 4
  %tobool81.not = icmp eq ptr %125, null
  br i1 %tobool81.not, label %for.body78.for.inc92_crit_edge, label %do.end85

for.body78.for.inc92_crit_edge:                   ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc92

do.end85:                                         ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #14
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %i.1177) #16
  %126 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx80, align 4
  tail call void @kfree(ptr noundef %127) #12
  %128 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %arrayidx80, align 4
  br label %for.inc92

for.inc92:                                        ; preds = %do.end85, %for.body78.for.inc92_crit_edge
  %inc93 = add i32 %i.1177, 1
  %exitcond.not = icmp eq i32 %inc93, 16
  br i1 %exitcond.not, label %for.inc92.for.end94_crit_edge, label %for.inc92.for.body78_crit_edge

for.inc92.for.body78_crit_edge:                   ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body78

for.inc92.for.end94_crit_edge:                    ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end94

for.end94:                                        ; preds = %for.inc92.for.end94_crit_edge, %if.end73.for.end94_crit_edge
  tail call fastcc void @gred_offload(ptr noundef %sch, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %for.end94, %if.then38, %do.body35.cleanup_crit_edge, %if.then25, %do.body22.cleanup_crit_edge, %if.then13, %do.body10.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end94 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then4 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then13 ], [ -22, %do.body10.cleanup_crit_edge ], [ -22, %if.then25 ], [ -22, %do.body22.cleanup_crit_edge ], [ -22, %if.then38 ], [ -22, %do.body35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sch_tree_lock(ptr noundef %q) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  %call1.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.i:                                       ; preds = %if.else
  %.b41.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !87

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 596) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi ptr [ %q, %entry.if.end_crit_edge ], [ %5, %if.else.if.end_crit_edge ], [ %5, %land.rhs.i.if.end_crit_edge ], [ %5, %if.then.i ]
  %lock.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sch_tree_unlock(ptr noundef %q) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  %call1.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.i:                                       ; preds = %if.else
  %.b41.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !87

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 596) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi ptr [ %q, %entry.if.end_crit_edge ], [ %5, %if.else.if.end_crit_edge ], [ %5, %land.rhs.i.if.end_crit_edge ], [ %5, %if.then.i ]
  %lock.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #12
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gred_wred_mode_check(ptr nocapture noundef readonly %sch) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %DPs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %0 = ptrtoint ptr %DPs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %DPs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp39.not = icmp eq i32 %1, 0
  br i1 %cmp39.not, label %entry.cleanup20_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup20

for.body:                                         ; preds = %for.inc17.for.body_crit_edge, %entry.for.body_crit_edge
  %i.040 = phi i32 [ %.pre, %for.inc17.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %i.040
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp ne ptr %3, null
  %.pre = add nuw i32 %i.040, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre, i32 %1)
  %cmp437 = icmp ult i32 %.pre, %1
  %or.cond = select i1 %cmp1, i1 %cmp437, i1 false
  br i1 %or.cond, label %for.body5.lr.ph, label %for.body.for.inc17_crit_edge

for.body.for.inc17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc17

for.body5.lr.ph:                                  ; preds = %for.body
  %prio10 = getelementptr inbounds %struct.gred_sched_data, ptr %3, i32 0, i32 6
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body5.lr.ph
  %n.038 = phi i32 [ %.pre, %for.body5.lr.ph ], [ %n.0, %for.inc.for.body5_crit_edge ]
  %arrayidx7 = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %n.038
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx7, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body5.for.inc_crit_edge, label %land.lhs.true

for.body5.for.inc_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body5
  %prio = getelementptr inbounds %struct.gred_sched_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %prio to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %prio, align 8
  %8 = ptrtoint ptr %prio10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %prio10, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp12 = icmp eq i8 %7, %9
  br i1 %cmp12, label %land.lhs.true.cleanup20_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.cleanup20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup20

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body5.for.inc_crit_edge
  %n.0 = add i32 %n.038, 1
  %exitcond.not = icmp eq i32 %n.0, %1
  br i1 %exitcond.not, label %for.inc.for.inc17_crit_edge, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5

for.inc.for.inc17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc17

for.inc17:                                        ; preds = %for.inc.for.inc17_crit_edge, %for.body.for.inc17_crit_edge
  %exitcond43.not = icmp eq i32 %.pre, %1
  br i1 %exitcond43.not, label %for.inc17.cleanup20_crit_edge, label %for.inc17.for.body_crit_edge

for.inc17.for.body_crit_edge:                     ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc17.cleanup20_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup20

cleanup20:                                        ; preds = %for.inc17.cleanup20_crit_edge, %land.lhs.true.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup20_crit_edge ], [ 1, %land.lhs.true.cleanup20_crit_edge ], [ 0, %for.inc17.cleanup20_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gred_offload(ptr noundef %sch, i32 noundef %command) unnamed_addr #2 align 64 {
entry:
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
  %opt2 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %4 = ptrtoint ptr %opt2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %opt2, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features.i, align 16
  %and.i = and i64 %7, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup58_crit_edge, label %lor.lhs.false

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup58

lor.lhs.false:                                    ; preds = %entry
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev_ops, align 8
  %ndo_setup_tc = getelementptr inbounds %struct.net_device_ops, ptr %9, i32 0, i32 42
  %10 = ptrtoint ptr %ndo_setup_tc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndo_setup_tc, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup58_crit_edge, label %if.end

lor.lhs.false.cleanup58_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup58

if.end:                                           ; preds = %lor.lhs.false
  %12 = call ptr @memset(ptr %5, i32 0, i32 1168)
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %command, ptr %5, align 16
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle, align 32
  %handle5 = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %handle5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %handle5, align 4
  %parent = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %parent, align 4
  %parent6 = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %parent6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %parent6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cmp = icmp eq i32 %command, 0
  br i1 %cmp, label %if.then7, label %if.end.if.end54_crit_edge

if.end.if.end54_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then7:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i, align 4
  %22 = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %5, i32 0, i32 3
  %23 = trunc i32 %21 to i8
  %24 = lshr i8 %23, 2
  %25 = and i8 %24, 1
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %22, align 16
  %27 = load volatile i32, ptr %flags.i, align 4
  %wred_on = getelementptr inbounds %struct.tc_gred_qopt_offload_params, ptr %22, i32 0, i32 1
  %28 = trunc i32 %27 to i8
  %29 = lshr i8 %28, 1
  %30 = and i8 %29, 1
  %31 = ptrtoint ptr %wred_on to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %wred_on, align 1
  %DPs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %32 = ptrtoint ptr %DPs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %DPs, align 8
  %dp_cnt = getelementptr inbounds %struct.tc_gred_qopt_offload_params, ptr %22, i32 0, i32 2
  %34 = ptrtoint ptr %dp_cnt to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dp_cnt, align 4
  %def = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %35 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %def, align 4
  %dp_def = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %5, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %dp_def to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %dp_def, align 8
  %38 = load i32, ptr %DPs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp14122.not = icmp eq i32 %38, 0
  br i1 %cmp14122.not, label %if.then7.for.end_crit_edge, label %for.body.lr.ph

if.then7.for.end_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then7
  %tab18 = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %5, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0123 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %i.0123
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %40, null
  br i1 %tobool15.not, label %for.body.cleanup_crit_edge, label %if.end17

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx19 = getelementptr [16 x %struct.tc_gred_vq_qopt_offload_params], ptr %tab18, i32 0, i32 %i.0123
  %41 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %arrayidx19, align 16
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %40, align 8
  %limit22 = getelementptr [16 x %struct.tc_gred_vq_qopt_offload_params], ptr %tab18, i32 0, i32 %i.0123, i32 1
  %44 = ptrtoint ptr %limit22 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %limit22, align 4
  %prio = getelementptr inbounds %struct.gred_sched_data, ptr %40, i32 0, i32 6
  %45 = ptrtoint ptr %prio to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %prio, align 8
  %conv = zext i8 %46 to i32
  %prio25 = getelementptr [16 x %struct.tc_gred_vq_qopt_offload_params], ptr %tab18, i32 0, i32 %i.0123, i32 2
  %47 = ptrtoint ptr %prio25 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv, ptr %prio25, align 8
  %parms = getelementptr inbounds %struct.gred_sched_data, ptr %40, i32 0, i32 7
  %48 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %parms, align 4
  %Wlog = getelementptr inbounds %struct.gred_sched_data, ptr %40, i32 0, i32 7, i32 9
  %50 = ptrtoint ptr %Wlog to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %Wlog, align 1
  %conv27 = zext i8 %51 to i32
  %shr = lshr i32 %49, %conv27
  %min = getelementptr [16 x %struct.tc_gred_vq_qopt_offload_params], ptr %tab18, i32 0, i32 %i.0123, i32 3
  %52 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %shr, ptr %min, align 4
  %qth_max = getelementptr inbounds %struct.gred_sched_data, ptr %40, i32 0, i32 7, i32 1
  %53 = ptrtoint ptr %qth_max to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %qth_max, align 4
  %55 = load i8, ptr %Wlog, align 1
  %conv33 = zext i8 %55 to i32
  %shr34 = lshr i32 %54, %conv33
  %max = getelementptr [16 x %struct.tc_gred_vq_qopt_offload_params], ptr %tab18, i32 0, i32 %i.0123, i32 4
  %56 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shr34, ptr %max, align 16
  %red_flags.i = getelementptr inbounds %struct.gred_sched_data, ptr %40, i32 0, i32 2
  %57 = ptrtoint ptr %red_flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %red_flags.i, align 8
  %is_ecn = getelementptr [16 x %struct.tc_gred_vq_qopt_offload_params], ptr %tab18, i32 0, i32 %i.0123, i32 5
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = ptrtoint ptr %is_ecn to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %is_ecn, align 4
  %62 = load i32, ptr %red_flags.i, align 8
  %is_harddrop = getelementptr [16 x %struct.tc_gred_vq_qopt_offload_params], ptr %tab18, i32 0, i32 %i.0123, i32 6
  %63 = trunc i32 %62 to i8
  %64 = lshr i8 %63, 1
  %65 = and i8 %64, 1
  %66 = ptrtoint ptr %is_harddrop to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %is_harddrop, align 1
  %max_P = getelementptr inbounds %struct.gred_sched_data, ptr %40, i32 0, i32 7, i32 3
  %67 = ptrtoint ptr %max_P to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_P, align 4
  %probability = getelementptr [16 x %struct.tc_gred_vq_qopt_offload_params], ptr %tab18, i32 0, i32 %i.0123, i32 7
  %69 = ptrtoint ptr %probability to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %probability, align 8
  %backlog = getelementptr inbounds %struct.gred_sched_data, ptr %40, i32 0, i32 5
  %backlog52 = getelementptr [16 x %struct.tc_gred_vq_qopt_offload_params], ptr %tab18, i32 0, i32 %i.0123, i32 8
  %70 = ptrtoint ptr %backlog52 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %backlog, ptr %backlog52, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.0123, 1
  %71 = ptrtoint ptr %DPs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %DPs, align 8
  %cmp14 = icmp ult i32 %inc, %72
  br i1 %cmp14, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then7.for.end_crit_edge
  %qstats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  %qstats53 = getelementptr inbounds %struct.tc_gred_qopt_offload_params, ptr %22, i32 0, i32 4
  %73 = ptrtoint ptr %qstats53 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %qstats, ptr %qstats53, align 4
  br label %if.end54

if.end54:                                         ; preds = %for.end, %if.end.if.end54_crit_edge
  %74 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %netdev_ops, align 8
  %ndo_setup_tc56 = getelementptr inbounds %struct.net_device_ops, ptr %75, i32 0, i32 42
  %76 = ptrtoint ptr %ndo_setup_tc56 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ndo_setup_tc56, align 4
  %call57 = tail call i32 %77(ptr noundef %3, i32 noundef 12, ptr noundef %5) #12
  br label %cleanup58

cleanup58:                                        ; preds = %if.end54, %lor.lhs.false.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_kfree_skbs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gred_vqs_validate(ptr nocapture noundef readonly %table, i32 noundef %cdp, ptr noundef %vqs, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %tb.i = alloca [13 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %vqs, i32 4
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vqs, align 2
  %conv.i.i.i = zext i16 %1 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = tail call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, i32 noundef 1, ptr noundef nonnull @gred_vqe_policy, i32 noundef 0, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp = icmp slt i32 %call2.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vqs, align 2
  %conv.i = zext i16 %3 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %3)
  %cmp.i71 = icmp ugt i16 %3, 7
  br i1 %cmp.i71, label %land.lhs.true.i.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true.i.lr.ph:                            ; preds = %if.end
  %arrayidx.i = getelementptr inbounds [13 x ptr], ptr %tb.i, i32 0, i32 2
  %DPs.i = getelementptr inbounds %struct.gred_sched, ptr %table, i32 0, i32 3
  %arrayidx33.i = getelementptr inbounds [13 x ptr], ptr %tb.i, i32 0, i32 12
  %red_flags38.i = getelementptr inbounds %struct.gred_sched, ptr %table, i32 0, i32 2
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %attr.073 = phi ptr [ %add.ptr.i.i.i, %land.lhs.true.i.lr.ph ], [ %add.ptr.i49, %for.inc.land.lhs.true.i_crit_edge ]
  %rem.072 = phi i32 [ %sub.i, %land.lhs.true.i.lr.ph ], [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ]
  %4 = ptrtoint ptr %attr.073 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %attr.073, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp1.i = icmp ult i16 %5, 4
  %conv.i39 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.072, i32 %conv.i39)
  %cmp5.i.not = icmp ult i32 %rem.072, %conv.i39
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.do.body15_crit_edge, label %for.body

land.lhs.true.i.do.body15_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15

for.body:                                         ; preds = %land.lhs.true.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr.073, i32 0, i32 1
  %6 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nla_type.i, align 2
  %8 = and i16 %7, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cond = icmp eq i16 %8, 1
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %tb.i) #12
  %9 = call ptr @memset(ptr %tb.i, i32 255, i32 52)
  %add.ptr.i.i.i40 = getelementptr i8, ptr %attr.073, i32 4
  %10 = ptrtoint ptr %attr.073 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %attr.073, align 2
  %conv.i.i.i41 = zext i16 %11 to i32
  %sub.i.i.i42 = add nsw i32 %conv.i.i.i41, -4
  %call2.i.i43 = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 12, ptr noundef %add.ptr.i.i.i40, i32 noundef %sub.i.i.i42, ptr noundef nonnull @gred_vq_policy, i32 noundef 0, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i43)
  %cmp.i44 = icmp slt i32 %call2.i.i43, 0
  br i1 %cmp.i44, label %sw.bb.gred_vq_validate.exit.thread_crit_edge, label %if.end.i

sw.bb.gred_vq_validate.exit.thread_crit_edge:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %gred_vq_validate.exit.thread

if.end.i:                                         ; preds = %sw.bb
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.end.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @gred_vq_validate.__msg) #12
  %tobool3.not.i = icmp eq ptr %extack, null
  br i1 %tobool3.not.i, label %do.body.i.gred_vq_validate.exit.thread_crit_edge, label %do.body.i.cleanup65.sink.split.i_crit_edge

do.body.i.cleanup65.sink.split.i_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup65.sink.split.i

do.body.i.gred_vq_validate.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gred_vq_validate.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %add.ptr.i.i90.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i90.i, align 4
  %16 = ptrtoint ptr %DPs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DPs.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp9.not.i = icmp ult i32 %15, %17
  br i1 %cmp9.not.i, label %if.end19.i, label %do.body11.i

do.body11.i:                                      ; preds = %if.end6.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @gred_vq_validate.__msg.16) #12
  %tobool13.not.i = icmp eq ptr %extack, null
  br i1 %tobool13.not.i, label %do.body11.i.gred_vq_validate.exit.thread_crit_edge, label %do.body11.i.cleanup65.sink.split.i_crit_edge

do.body11.i.cleanup65.sink.split.i_crit_edge:     ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup65.sink.split.i

do.body11.i.gred_vq_validate.exit.thread_crit_edge: ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gred_vq_validate.exit.thread

if.end19.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %cdp)
  %cmp20.not.i = icmp eq i32 %15, %cdp
  br i1 %cmp20.not.i, label %if.end19.i.if.end32.i_crit_edge, label %land.lhs.true.i45

if.end19.i.if.end32.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i

land.lhs.true.i45:                                ; preds = %if.end19.i
  %arrayidx21.i = getelementptr [16 x ptr], ptr %table, i32 0, i32 %15
  %18 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx21.i, align 4
  %tobool22.not.i = icmp eq ptr %19, null
  br i1 %tobool22.not.i, label %do.body24.i, label %land.lhs.true.i45.if.end32.i_crit_edge

land.lhs.true.i45.if.end32.i_crit_edge:           ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i

do.body24.i:                                      ; preds = %land.lhs.true.i45
  call void @do_trace_netlink_extack(ptr noundef nonnull @gred_vq_validate.__msg.17) #12
  %tobool26.not.i = icmp eq ptr %extack, null
  br i1 %tobool26.not.i, label %do.body24.i.gred_vq_validate.exit.thread_crit_edge, label %do.body24.i.cleanup65.sink.split.i_crit_edge

do.body24.i.cleanup65.sink.split.i_crit_edge:     ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup65.sink.split.i

do.body24.i.gred_vq_validate.exit.thread_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gred_vq_validate.exit.thread

if.end32.i:                                       ; preds = %land.lhs.true.i45.if.end32.i_crit_edge, %if.end19.i.if.end32.i_crit_edge
  %20 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx33.i, align 4
  %tobool34.not.i = icmp eq ptr %21, null
  br i1 %tobool34.not.i, label %if.end32.i.for.inc_crit_edge, label %if.then35.i

if.end32.i.for.inc_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then35.i:                                      ; preds = %if.end32.i
  %add.ptr.i.i91.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i91.i, align 4
  %24 = ptrtoint ptr %red_flags38.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %red_flags38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool39.not.i = icmp eq i32 %25, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp42.not.i = icmp eq i32 %25, %23
  %or.cond.i = select i1 %tobool39.not.i, i1 true, i1 %cmp42.not.i
  br i1 %or.cond.i, label %if.end52.i, label %do.body44.i

do.body44.i:                                      ; preds = %if.then35.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @gred_vq_validate.__msg.18) #12
  %tobool46.not.i = icmp eq ptr %extack, null
  br i1 %tobool46.not.i, label %do.body44.i.gred_vq_validate.exit.thread_crit_edge, label %do.body44.i.cleanup65.sink.split.i_crit_edge

do.body44.i.cleanup65.sink.split.i_crit_edge:     ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup65.sink.split.i

do.body44.i.gred_vq_validate.exit.thread_crit_edge: ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gred_vq_validate.exit.thread

if.end52.i:                                       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %tobool53.not.i = icmp ult i32 %23, 4
  br i1 %tobool53.not.i, label %if.end52.i.for.inc_crit_edge, label %do.body55.i

if.end52.i.for.inc_crit_edge:                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body55.i:                                      ; preds = %if.end52.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @gred_vq_validate.__msg.19) #12
  %tobool57.not.i = icmp eq ptr %extack, null
  br i1 %tobool57.not.i, label %do.body55.i.gred_vq_validate.exit.thread_crit_edge, label %do.body55.i.cleanup65.sink.split.i_crit_edge

do.body55.i.cleanup65.sink.split.i_crit_edge:     ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup65.sink.split.i

do.body55.i.gred_vq_validate.exit.thread_crit_edge: ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gred_vq_validate.exit.thread

cleanup65.sink.split.i:                           ; preds = %do.body55.i.cleanup65.sink.split.i_crit_edge, %do.body44.i.cleanup65.sink.split.i_crit_edge, %do.body24.i.cleanup65.sink.split.i_crit_edge, %do.body11.i.cleanup65.sink.split.i_crit_edge, %do.body.i.cleanup65.sink.split.i_crit_edge
  %gred_vq_validate.__msg.19.sink.i = phi ptr [ @gred_vq_validate.__msg, %do.body.i.cleanup65.sink.split.i_crit_edge ], [ @gred_vq_validate.__msg.16, %do.body11.i.cleanup65.sink.split.i_crit_edge ], [ @gred_vq_validate.__msg.17, %do.body24.i.cleanup65.sink.split.i_crit_edge ], [ @gred_vq_validate.__msg.18, %do.body44.i.cleanup65.sink.split.i_crit_edge ], [ @gred_vq_validate.__msg.19, %do.body55.i.cleanup65.sink.split.i_crit_edge ]
  %26 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %gred_vq_validate.__msg.19.sink.i, ptr %extack, align 4
  br label %gred_vq_validate.exit.thread

gred_vq_validate.exit.thread:                     ; preds = %cleanup65.sink.split.i, %do.body55.i.gred_vq_validate.exit.thread_crit_edge, %do.body44.i.gred_vq_validate.exit.thread_crit_edge, %do.body24.i.gred_vq_validate.exit.thread_crit_edge, %do.body11.i.gred_vq_validate.exit.thread_crit_edge, %do.body.i.gred_vq_validate.exit.thread_crit_edge, %sw.bb.gred_vq_validate.exit.thread_crit_edge
  %retval.1.i.ph = phi i32 [ -22, %cleanup65.sink.split.i ], [ -22, %do.body55.i.gred_vq_validate.exit.thread_crit_edge ], [ -22, %do.body44.i.gred_vq_validate.exit.thread_crit_edge ], [ -22, %do.body24.i.gred_vq_validate.exit.thread_crit_edge ], [ -22, %do.body11.i.gred_vq_validate.exit.thread_crit_edge ], [ -22, %do.body.i.gred_vq_validate.exit.thread_crit_edge ], [ %call2.i.i43, %sw.bb.gred_vq_validate.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %tb.i) #12
  br label %cleanup

do.body:                                          ; preds = %for.body
  call void @do_trace_netlink_extack(ptr noundef nonnull @gred_vqs_validate.__msg) #12
  %tobool9.not = icmp eq ptr %extack, null
  br i1 %tobool9.not, label %do.body.cleanup_crit_edge, label %if.then10

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @gred_vqs_validate.__msg, ptr %extack, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end52.i.for.inc_crit_edge, %if.end32.i.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %tb.i) #12
  %28 = ptrtoint ptr %attr.073 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %attr.073, align 2
  %conv.i46 = zext i16 %29 to i32
  %sub.i47 = add nuw nsw i32 %conv.i46, 3
  %and.i48 = and i32 %sub.i47, 131068
  %sub1.i = sub nsw i32 %rem.072, %and.i48
  %add.ptr.i49 = getelementptr i8, ptr %attr.073, i32 %and.i48
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %rem.0.lcssa = phi i32 [ %sub.i, %if.end.for.end_crit_edge ], [ %sub1.i, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.0.lcssa)
  %cmp13 = icmp sgt i32 %rem.0.lcssa, 0
  br i1 %cmp13, label %for.end.do.body15_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end.do.body15_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15

do.body15:                                        ; preds = %for.end.do.body15_crit_edge, %land.lhs.true.i.do.body15_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @gred_vqs_validate.__msg.15) #12
  %tobool17.not = icmp eq ptr %extack, null
  br i1 %tobool17.not, label %do.body15.cleanup_crit_edge, label %if.then18

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @gred_vqs_validate.__msg.15, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %do.body15.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then10, %do.body.cleanup_crit_edge, %gred_vq_validate.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i.i, %entry.cleanup_crit_edge ], [ -22, %if.then10 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then18 ], [ -22, %do.body15.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %retval.1.i.ph, %gred_vq_validate.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gred_change_vq(ptr nocapture noundef %sch, i32 noundef %dp, ptr nocapture noundef readonly %ctl, i32 noundef %prio, ptr noundef readonly %stab, i32 noundef %max_P, ptr nocapture noundef %prealloc, ptr noundef writeonly %extack) unnamed_addr #5 align 64 {
entry:
  %tmp13.i = alloca %struct.reciprocal_value, align 8
  call void @__sanitizer_cov_trace_pc() #14
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %arrayidx = getelementptr [16 x ptr], ptr %privdata.i, i32 0, i32 %dp
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %qth_min = getelementptr inbounds %struct.tc_gred_qopt, ptr %ctl, i32 0, i32 1
  %2 = ptrtoint ptr %qth_min to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qth_min, align 4
  %qth_max = getelementptr inbounds %struct.tc_gred_qopt, ptr %ctl, i32 0, i32 2
  %Wlog = getelementptr inbounds %struct.tc_gred_qopt, ptr %ctl, i32 0, i32 10
  %4 = ptrtoint ptr %Wlog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %Wlog, align 4
  %Scell_log = getelementptr inbounds %struct.tc_gred_qopt, ptr %ctl, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 true) #12, !range !95
  %sub.i.i = sub nuw nsw i32 32, %6
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %conv.i = zext i8 %5 to i32
  %add.i = add nuw nsw i32 %cond.i.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 31
  br i1 %cmp.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %Scell_log to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %Scell_log, align 2
  %9 = ptrtoint ptr %qth_max to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qth_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i34.i = icmp eq i32 %10, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 true) #12, !range !95
  %sub.i35.i = sub nuw nsw i32 32, %11
  %cond.i36.i = select i1 %tobool.not.i34.i, i32 0, i32 %sub.i35.i
  %add4.i = add nuw nsw i32 %cond.i36.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add4.i)
  %cmp5.i = icmp ugt i32 %add4.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %8)
  %cmp10.i = icmp ugt i8 %8, 31
  %or.cond.i = or i1 %cmp10.i, %cmp5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp14.i = icmp ult i32 %10, %3
  %or.cond33.i = or i1 %cmp14.i, %or.cond.i
  br i1 %or.cond33.i, label %if.end.i.do.body_crit_edge, label %if.end17.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end17.i:                                       ; preds = %if.end.i
  %tobool.not.i = icmp eq ptr %stab, null
  br i1 %tobool.not.i, label %if.end17.i.if.end3_crit_edge, label %if.end17.i.for.body.i_crit_edge

if.end17.i.for.body.i_crit_edge:                  ; preds = %if.end17.i
  br label %for.body.i

if.end17.i.if.end3_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end17.i.for.body.i_crit_edge
  %i.038.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end17.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %stab, i32 %i.038.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %13)
  %cmp22.i = icmp ugt i8 %13, 31
  %inc.i = add nuw nsw i32 %i.038.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  %or.cond39.i = select i1 %cmp22.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond39.i, label %red_check_params.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

red_check_params.exit:                            ; preds = %for.body.i
  br i1 %cmp22.i, label %red_check_params.exit.do.body_crit_edge, label %red_check_params.exit.if.end3_crit_edge

red_check_params.exit.if.end3_crit_edge:          ; preds = %red_check_params.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

red_check_params.exit.do.body_crit_edge:          ; preds = %red_check_params.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %red_check_params.exit.do.body_crit_edge, %if.end.i.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @gred_change_vq.__msg) #12
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @gred_change_vq.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %red_check_params.exit.if.end3_crit_edge, %if.end17.i.if.end3_crit_edge
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.then5, label %if.end3.if.end12_crit_edge

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then5:                                         ; preds = %if.end3
  %15 = ptrtoint ptr %prealloc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prealloc, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %arrayidx, align 4
  store ptr null, ptr %prealloc, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %if.then5.cleanup_crit_edge, label %if.end10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %red_flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %18 = ptrtoint ptr %red_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %red_flags, align 4
  %and = and i32 %19, 3
  %red_flags11 = getelementptr inbounds %struct.gred_sched_data, ptr %16, i32 0, i32 2
  %20 = ptrtoint ptr %red_flags11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %red_flags11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end3.if.end12_crit_edge
  %q.0 = phi ptr [ %1, %if.end3.if.end12_crit_edge ], [ %16, %if.end10 ]
  %DP = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 1
  %21 = ptrtoint ptr %DP to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %dp, ptr %DP, align 4
  %conv = trunc i32 %prio to i8
  %prio13 = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 6
  %22 = ptrtoint ptr %prio13 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %prio13, align 8
  %23 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctl, align 4
  %limit14 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %25 = ptrtoint ptr %limit14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %limit14, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %24, i32 %26)
  %28 = ptrtoint ptr %q.0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %q.0, align 8
  %backlog = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 5
  %29 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %backlog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp22 = icmp eq i32 %30, 0
  br i1 %cmp22, label %if.then24, label %if.end12.if.end25_crit_edge

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then24:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %qidlestart.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 8, i32 3
  %31 = ptrtoint ptr %qidlestart.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %qidlestart.i, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end12.if.end25_crit_edge
  %parms = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7
  %32 = ptrtoint ptr %qth_min to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qth_min, align 4
  %34 = ptrtoint ptr %qth_max to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qth_max, align 4
  %36 = ptrtoint ptr %Wlog to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %Wlog, align 4
  %Plog = getelementptr inbounds %struct.tc_gred_qopt, ptr %ctl, i32 0, i32 11
  %38 = ptrtoint ptr %Plog to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %Plog, align 1
  %40 = ptrtoint ptr %Scell_log to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %Scell_log, align 2
  %sub.i = sub i32 %35, %33
  %conv.i64 = zext i8 %37 to i32
  %shl.i = shl i32 %33, %conv.i64
  %42 = ptrtoint ptr %parms to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shl.i, ptr %parms, align 4
  %shl3.i = shl i32 %35, %conv.i64
  %qth_max4.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %qth_max4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shl3.i, ptr %qth_max4.i, align 4
  %Wlog5.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 9
  %44 = ptrtoint ptr %Wlog5.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %37, ptr %Wlog5.i, align 1
  %Plog6.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 10
  %45 = ptrtoint ptr %Plog6.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %39, ptr %Plog6.i, align 2
  %46 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 1) #12
  %qth_delta.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 5
  %47 = ptrtoint ptr %qth_delta.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %qth_delta.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_P)
  %tobool.not.i65 = icmp eq i32 %max_P, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %39)
  %cmp.i.i = icmp ult i8 %39, 32
  %conv.i.i = zext i8 %39 to i32
  %shr.i.i = lshr i32 -1, %conv.i.i
  %cond.i.i66 = select i1 %cmp.i.i, i32 %shr.i.i, i32 -1
  %mul.i = mul i32 %cond.i.i66, %46
  %max_P.addr.0.i = select i1 %tobool.not.i65, i32 %mul.i, i32 %max_P
  %max_P10.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 3
  %48 = ptrtoint ptr %max_P10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %max_P.addr.0.i, ptr %max_P10.i, align 4
  %div.i = udiv i32 %max_P.addr.0.i, %46
  %49 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 1) #12
  %max_P_reciprocal.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp13.i) #12
  call void @reciprocal_value(ptr nonnull sret(%struct.reciprocal_value) align 4 %tmp13.i, i32 noundef %49) #12
  %50 = ptrtoint ptr %tmp13.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %tmp13.i, align 8
  %52 = ptrtoint ptr %max_P_reciprocal.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %51, ptr %max_P_reciprocal.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp13.i) #12
  %div14.i = udiv i32 %46, 5
  %mul15.i = shl nuw nsw i32 %div14.i, 1
  %add.i67 = add i32 %mul15.i, %33
  %target_min.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 6
  %53 = ptrtoint ptr %target_min.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add.i67, ptr %target_min.i, align 4
  %mul16.i = mul nuw nsw i32 %div14.i, 3
  %add17.i = add i32 %mul16.i, %33
  %target_max.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 7
  %54 = ptrtoint ptr %target_max.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add17.i, ptr %target_max.i, align 4
  %Scell_log18.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 8
  %55 = ptrtoint ptr %Scell_log18.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %41, ptr %Scell_log18.i, align 4
  %conv19.i = zext i8 %41 to i32
  %shl20.i = shl i32 255, %conv19.i
  %Scell_max.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 2
  %56 = ptrtoint ptr %Scell_max.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shl20.i, ptr %Scell_max.i, align 4
  br i1 %tobool.not.i, label %if.end25.red_set_parms.exit_crit_edge, label %if.then22.i

if.end25.red_set_parms.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %red_set_parms.exit

if.then22.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %Stab.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 7, i32 11
  %57 = call ptr @memcpy(ptr %Stab.i, ptr %stab, i32 256)
  br label %red_set_parms.exit

red_set_parms.exit:                               ; preds = %if.then22.i, %if.end25.red_set_parms.exit_crit_edge
  %vars30 = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 8
  %qavg.i = getelementptr inbounds %struct.gred_sched_data, ptr %q.0, i32 0, i32 8, i32 2
  %58 = ptrtoint ptr %qavg.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %qavg.i, align 8
  %59 = ptrtoint ptr %vars30 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %vars30, align 8
  br label %cleanup

cleanup:                                          ; preds = %red_set_parms.exit, %if.then5.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %red_set_parms.exit ], [ -22, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ], [ -12, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gred_vqs_apply(ptr nocapture noundef readonly %table, ptr noundef %vqs) unnamed_addr #2 align 64 {
entry:
  %tb.i = alloca [13 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vqs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %1)
  %cmp.i16 = icmp ugt i16 %1, 7
  br i1 %cmp.i16, label %land.lhs.true.i.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true.i.lr.ph:                            ; preds = %entry
  %conv.i = zext i16 %1 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %add.ptr.i = getelementptr i8, ptr %vqs, i32 4
  %arrayidx3.i = getelementptr inbounds [13 x ptr], ptr %tb.i, i32 0, i32 12
  %arrayidx.i = getelementptr inbounds [13 x ptr], ptr %tb.i, i32 0, i32 2
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %attr.018 = phi ptr [ %add.ptr.i, %land.lhs.true.i.lr.ph ], [ %add.ptr.i13, %for.inc.land.lhs.true.i_crit_edge ]
  %rem.017 = phi i32 [ %sub.i, %land.lhs.true.i.lr.ph ], [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ]
  %2 = ptrtoint ptr %attr.018 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %attr.018, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp1.i = icmp ult i16 %3, 4
  %conv.i9 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.017, i32 %conv.i9)
  %cmp5.i.not = icmp ult i32 %rem.017, %conv.i9
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.for.end_crit_edge, label %for.body

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %land.lhs.true.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr.018, i32 0, i32 1
  %4 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla_type.i, align 2
  %6 = and i16 %5, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cond = icmp eq i16 %6, 1
  br i1 %cond, label %sw.bb, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %tb.i) #12
  %7 = call ptr @memset(ptr %tb.i, i32 255, i32 52)
  %add.ptr.i.i.i = getelementptr i8, ptr %attr.018, i32 4
  %8 = ptrtoint ptr %attr.018 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %attr.018, align 2
  %conv.i.i.i = zext i16 %9 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 12, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @gred_vq_policy, i32 noundef 0, ptr noundef null) #12
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %sw.bb.gred_vq_apply.exit_crit_edge, label %if.then.i

sw.bb.gred_vq_apply.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %gred_vq_apply.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i7.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i7.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %11, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i8.i, align 4
  %arrayidx6.i = getelementptr [16 x ptr], ptr %table, i32 0, i32 %15
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx6.i, align 4
  %red_flags.i = getelementptr inbounds %struct.gred_sched_data, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %red_flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %red_flags.i, align 8
  br label %gred_vq_apply.exit

gred_vq_apply.exit:                               ; preds = %if.then.i, %sw.bb.gred_vq_apply.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %tb.i) #12
  br label %for.inc

for.inc:                                          ; preds = %gred_vq_apply.exit, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %attr.018 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %attr.018, align 2
  %conv.i10 = zext i16 %22 to i32
  %sub.i11 = add nuw nsw i32 %conv.i10, 3
  %and.i12 = and i32 %sub.i11, 131068
  %sub1.i = sub nsw i32 %rem.017, %and.i12
  %add.ptr.i13 = getelementptr i8, ptr %attr.018, i32 %and.i12
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.i.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reciprocal_value(ptr sret(%struct.reciprocal_value) align 4, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_append(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_basic_sync_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qdisc_offload_dump_helper(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_sch_gred__507_949_gred_module_init6, !1, !"__initcall__kmod_sch_gred__507_949_gred_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_gred.c", i32 949, i32 1}
!2 = !{ptr @__exitcall_gred_module_exit, !3, !"__exitcall_gred_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_gred.c", i32 950, i32 1}
!4 = !{ptr @__UNIQUE_ID_file508, !5, !"__UNIQUE_ID_file508", i1 false, i1 false}
!5 = !{!"../net/sched/sch_gred.c", i32 952, i32 1}
!6 = !{ptr @__UNIQUE_ID_license509, !5, !"__UNIQUE_ID_license509", i1 false, i1 false}
!7 = !{ptr @gred_qdisc_ops, !8, !"gred_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_gred.c", i32 925, i32 25}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/sched/sch_gred.c", i32 273, i32 4}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @gred_dequeue._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @gred_dequeue._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gred_init.__msg, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../net/sched/sch_gred.c", i32 749, i32 3}
!22 = !{ptr @gred_policy, !23, !"gred_policy", i1 false, i1 false}
!23 = !{!"../net/sched/sch_gred.c", i32 527, i32 32}
!24 = !{ptr @gred_change_table_def.__msg, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../net/sched/sch_gred.c", i32 420, i32 3}
!26 = !{ptr @gred_change_table_def.__msg.5, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../net/sched/sch_gred.c", i32 424, i32 3}
!28 = !{ptr @gred_change_table_def.__msg.6, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../net/sched/sch_gred.c", i32 429, i32 3}
!30 = !{ptr @gred_change_table_def.__msg.7, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../net/sched/sch_gred.c", i32 433, i32 3}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/sched/sch_gred.c", i32 468, i32 4}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @gred_change_table_def._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @gred_change_table_def._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/net/sch_generic.h", i32 1165, i32 2}
!43 = !{ptr @gred_change.__msg, !44, !"__msg", i1 false, i1 false}
!44 = !{!"../net/sched/sch_gred.c", i32 668, i32 3}
!45 = !{ptr @gred_change.__msg.12, !46, !"__msg", i1 false, i1 false}
!46 = !{!"../net/sched/sch_gred.c", i32 678, i32 3}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/sched/sch_gred.c", i32 696, i32 4}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @gred_change._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @gred_change._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @gred_vqs_validate.__msg, !53, !"__msg", i1 false, i1 false}
!53 = !{!"../net/sched/sch_gred.c", i32 627, i32 4}
!54 = !{ptr @gred_vqs_validate.__msg.15, !55, !"__msg", i1 false, i1 false}
!55 = !{!"../net/sched/sch_gred.c", i32 633, i32 3}
!56 = !{ptr @gred_vqe_policy, !57, !"gred_vqe_policy", i1 false, i1 false}
!57 = !{!"../net/sched/sch_gred.c", i32 523, i32 32}
!58 = !{ptr @gred_vq_validate.__msg, !59, !"__msg", i1 false, i1 false}
!59 = !{!"../net/sched/sch_gred.c", i32 578, i32 3}
!60 = !{ptr @gred_vq_validate.__msg.16, !61, !"__msg", i1 false, i1 false}
!61 = !{!"../net/sched/sch_gred.c", i32 583, i32 3}
!62 = !{ptr @gred_vq_validate.__msg.17, !63, !"__msg", i1 false, i1 false}
!63 = !{!"../net/sched/sch_gred.c", i32 587, i32 3}
!64 = !{ptr @gred_vq_validate.__msg.18, !65, !"__msg", i1 false, i1 false}
!65 = !{!"../net/sched/sch_gred.c", i32 595, i32 4}
!66 = !{ptr @gred_vq_validate.__msg.19, !67, !"__msg", i1 false, i1 false}
!67 = !{!"../net/sched/sch_gred.c", i32 599, i32 4}
!68 = !{ptr @gred_vq_policy, !69, !"gred_vq_policy", i1 false, i1 false}
!69 = !{!"../net/sched/sch_gred.c", i32 518, i32 32}
!70 = !{ptr @gred_change_vq.__msg, !71, !"__msg", i1 false, i1 false}
!71 = !{!"../net/sched/sch_gred.c", i32 489, i32 3}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/net/netlink.h", i32 991, i32 3}
!74 = !{!"sp"}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{i64 966192, i64 966219, i64 966241, i64 966269}
!86 = !{i64 966600, i64 966627, i64 966660, i64 966681, i64 966708, i64 966734}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{!"auto-init"}
!89 = !{i64 2149673682}
!90 = !{i64 2149678614}
!91 = !{i64 2149700326}
!92 = !{i64 2149705218}
!93 = !{i64 2149781675}
!94 = !{i64 2149782000}
!95 = !{i32 0, i32 33}
