; ModuleID = '/llk/IR_all_yes/net/sched/sch_cake.c_pt.bc'
source_filename = "../net/sched/sch_cake.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.nla_policy = type { i8, i8, i16, %union.anon.50 }
%union.anon.50 = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.vlan_hdr = type { i16, i16 }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.70 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.70 = type { %union.nf_inet_addr, %union.anon.71, i8, i8 }
%union.anon.71 = type { i16 }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.216, i16 }
%union.anon.216 = type { %struct.anon.217 }
%struct.anon.217 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.218 }
%union.anon.218 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.220, i16 }
%struct.anon.220 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.221 }
%union.anon.221 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.tcf_result = type { %union.anon.205 }
%union.anon.205 = type { %struct.anon.206 }
%struct.anon.206 = type { i32, i32 }
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
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.176, [48 x i8], %union.anon.177, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.179, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.176 = type { i64 }
%union.anon.177 = type { %struct.anon.178 }
%struct.anon.178 = type { i32, ptr }
%union.anon.179 = type { %struct.anon.180 }
%struct.anon.180 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.181, i32, i32, i32, i16, i16, %union.anon.183, i32, %union.anon.184, %union.anon.185, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.181 = type { i32 }
%union.anon.183 = type { i32 }
%union.anon.184 = type { i32 }
%union.anon.185 = type { i16 }
%struct.cake_sched_data = type { ptr, ptr, ptr, [8192 x %struct.cake_heap_entry], i16, i16, i8, i8, i8, i8, i32, i16, i16, i64, i64, i64, i64, i16, i16, i16, i64, i64, i32, i32, i32, i32, i16, i16, %struct.qdisc_watchdog, ptr, ptr, i64, i64, i64, i64, i64, i64, i32, i16, i16, i16, i16 }
%struct.cake_heap_entry = type { i16 }
%struct.qdisc_watchdog = type { i64, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cake_tin_data = type { [1024 x %struct.cake_flow], [1024 x i32], [1024 x i32], [1024 x i16], [1024 x %struct.cake_host], i16, %struct.cobalt_params, i32, i16, i16, i16, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i64, i16, i16, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i32, i32, i32, i32 }
%struct.cake_flow = type { ptr, ptr, %struct.list_head, i32, i32, %struct.cobalt_vars, i16, i16, i8 }
%struct.cobalt_vars = type { i32, i32, i64, i64, i32, i8, i8 }
%struct.cake_host = type { i32, i32, i16, i16 }
%struct.cobalt_params = type { i64, i64, i64, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.219 = type { i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.gnet_dump = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, %struct.tc_stats }
%struct.tc_stats = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.209, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.209 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.tcp_sack_block_wire = type { i32, i32 }

@cake_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @cake_class_ops, [16 x i8] c"cake\00\00\00\00\00\00\00\00\00\00\00\00", i32 16632, i32 0, ptr @cake_enqueue, ptr @cake_dequeue, ptr @qdisc_peek_dequeued, ptr @cake_init, ptr @cake_reset, ptr @cake_destroy, ptr @cake_change, ptr null, ptr null, ptr null, ptr @cake_dump, ptr @cake_dump_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_cake__735_3118_cake_module_init6 = internal global ptr @cake_module_init, section ".initcall6.init", align 4
@__exitcall_cake_module_exit = internal global ptr @cake_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author736 = internal constant [32 x i8] c"sch_cake.author=Jonathan Morton\00", section ".modinfo", align 1
@__UNIQUE_ID_file737 = internal constant [33 x i8] c"sch_cake.file=net/sched/sch_cake\00", section ".modinfo", align 1
@__UNIQUE_ID_license738 = internal constant [30 x i8] c"sch_cake.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description739 = internal constant [38 x i8] c"sch_cake.description=The CAKE shaper.\00", section ".modinfo", align 1
@cake_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr null, ptr @cake_leaf, ptr null, ptr @cake_find, ptr null, ptr null, ptr @cake_walk, ptr @cake_tcf_block, ptr @cake_bind, ptr @cake_unbind, ptr @cake_dump_class, ptr @cake_dump_class_stats }, [40 x i8] zeroinitializer }, align 32
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@quantum_div = internal global { [1025 x i16], [542 x i8] } zeroinitializer, align 32
@cake_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/sched/sch_cake.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@flow_keys_dissector = external dso_local global %struct.flow_dissector, align 4
@besteffort = internal constant { [64 x i8], [32 x i8] } zeroinitializer, align 32
@normal_order = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\02\03\04\05\06\07", [24 x i8] zeroinitializer }, align 32
@precedence = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07", [32 x i8] zeroinitializer }, align 32
@diffserv8 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\02\00\01\02\04\02\02\02\01\02\01\02\01\02\01\02\05\02\04\02\04\02\04\02\03\02\03\02\03\02\03\02\06\02\03\02\03\02\03\02\06\02\02\02\06\02\06\02\07\02\02\02\02\02\02\02\07\02\02\02\02\02\02\02", [32 x i8] zeroinitializer }, align 32
@diffserv4 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\00\01\00\00\02\00\00\00\01\00\00\00\00\00\00\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\03\00\02\00\02\00\02\00\03\00\00\00\03\00\03\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@bulk_order = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01\00\02\03", [28 x i8] zeroinitializer }, align 32
@diffserv3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\00\01\00\00\02\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\02\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@cobalt_rec_inv_sqrt_cache = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@cake_policy = internal constant { [19 x %struct.nla_policy], [40 x i8] } { [19 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 4, i64 4, i64 6]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 8, i64 19]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 2054, i64 34525]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 4, i64 4, i64 6]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 41]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 4, i64 4, i64 6]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"cake_class_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 3081, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 596, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 991, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"quantum_div\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 299, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1663, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 598, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant [11 x i8] c"besteffort\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 347, i32 17 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"normal_order\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 360, i32 17 }
@___asan_gen_.62 = private unnamed_addr constant [11 x i8] c"precedence\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 303, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"diffserv8\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 314, i32 17 }
@___asan_gen_.68 = private unnamed_addr constant [10 x i8] c"diffserv4\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 325, i32 17 }
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"bulk_order\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 361, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant [10 x i8] c"diffserv3\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 336, i32 17 }
@___asan_gen_.77 = private unnamed_addr constant [26 x i8] c"cobalt_rec_inv_sqrt_cache\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 364, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 271, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"cake_policy\00", align 1
@___asan_gen_.84 = private constant [24 x i8] c"../net/sched/sch_cake.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 2233, i32 32 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author736, ptr @__UNIQUE_ID_description739, ptr @__UNIQUE_ID_file737, ptr @__UNIQUE_ID_license738, ptr @__exitcall_cake_module_exit, ptr @__initcall__kmod_sch_cake__735_3118_cake_module_init6, ptr @cake_module_exit, ptr @cake_class_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @quantum_div, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @besteffort, ptr @normal_order, ptr @precedence, ptr @diffserv8, ptr @diffserv4, ptr @bulk_order, ptr @diffserv3, ptr @cobalt_rec_inv_sqrt_cache, ptr @.str.6, ptr @cake_policy], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cake_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quantum_div to i32), i32 2050, i32 2592, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @besteffort to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_order to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @precedence to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diffserv8 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diffserv4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bulk_order to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diffserv3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_rec_inv_sqrt_cache to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cake_policy to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cake_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @cake_qdisc_ops) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cake_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @cake_qdisc_ops) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cake_enqueue(ptr noundef %skb, ptr noundef %sch, ptr nocapture noundef %to_free) #2 align 64 {
entry:
  %_tcph.i = alloca [64 x i8], align 1
  %_tcph_check.i = alloca [64 x i8], align 1
  %_iph.i = alloca %struct.ipv6hdr, align 4
  %_iph_check.i = alloca %struct.ipv6hdr, align 4
  %vhdr.i.i.i.i.i.i = alloca %struct.vlan_hdr, align 2
  %tuple.i.i.i = alloca %struct.nf_conntrack_tuple, align 4
  %keys.i.i = alloca %struct.flow_keys, align 8
  %host_keys.i.i = alloca %struct.flow_keys, align 8
  %res.i = alloca %struct.tcf_result, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i, align 4
  %call2 = tail call i64 @ktime_get() #15
  %flow_mode = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 7
  %2 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flow_mode, align 1
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.i) #15
  %4 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %res.i, align 4, !annotation !64
  %5 = getelementptr inbounds %struct.anon.206, ptr %res.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !64
  %7 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %privdata.i, align 8
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end8.i_crit_edge

entry.do.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %entry
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b45.i = load i1, ptr @cake_classify.__warned, align 1
  br i1 %.b45.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cake_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1663, ptr noundef nonnull @.str.4) #15
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %entry.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %8, null
  br i1 %tobool10.not.i, label %do.end8.i.hash.i_crit_edge, label %if.end12.i

do.end8.i.hash.i_crit_edge:                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash.i

if.end12.i:                                       ; preds = %do.end8.i
  %call13.i = call i32 @tcf_classify(ptr noundef %skb, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %res.i, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13.i)
  %cmp.i = icmp sgt i32 %call13.i, -1
  br i1 %cmp.i, label %if.then14.i, label %if.end12.i.hash.i_crit_edge

if.end12.i.hash.i_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash.i

if.then14.i:                                      ; preds = %if.end12.i
  %9 = zext i32 %call13.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call13.i, label %sw.epilog.i [
    i32 4, label %if.then14.i.if.then.thread_crit_edge
    i32 5, label %if.then14.i.if.then.thread_crit_edge660
    i32 8, label %if.then14.i.if.then.thread_crit_edge661
    i32 2, label %if.then5
  ]

if.then14.i.if.then.thread_crit_edge661:          ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.thread

if.then14.i.if.then.thread_crit_edge660:          ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.thread

if.then14.i.if.then.thread_crit_edge:             ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.thread

if.then.thread:                                   ; preds = %if.then14.i.if.then.thread_crit_edge, %if.then14.i.if.then.thread_crit_edge660, %if.then14.i.if.then.thread_crit_edge661
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #15
  br label %if.end

sw.epilog.i:                                      ; preds = %if.then14.i
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  %and.i = and i32 %11, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %and.i)
  %cmp16.i = icmp ult i32 %and.i, 1025
  %conv.i = trunc i32 %11 to i16
  %spec.select.i = select i1 %cmp16.i, i16 %conv.i, i16 0
  %and22.i = and i32 %11, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108865, i32 %and22.i)
  %cmp23.i = icmp ult i32 %and22.i, 67108865
  br i1 %cmp23.i, label %if.then25.i, label %sw.epilog.i.hash.i_crit_edge

sw.epilog.i.hash.i_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash.i

if.then25.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  %shr.i = lshr i32 %11, 16
  %conv28.i = trunc i32 %shr.i to i16
  br label %hash.i

hash.i:                                           ; preds = %if.then25.i, %sw.epilog.i.hash.i_crit_edge, %if.end12.i.hash.i_crit_edge, %do.end8.i.hash.i_crit_edge
  %flow.1.i = phi i16 [ %spec.select.i, %if.then25.i ], [ %spec.select.i, %sw.epilog.i.hash.i_crit_edge ], [ 0, %if.end12.i.hash.i_crit_edge ], [ 0, %do.end8.i.hash.i_crit_edge ]
  %host.0.i = phi i16 [ %conv28.i, %if.then25.i ], [ 0, %sw.epilog.i.hash.i_crit_edge ], [ 0, %if.end12.i.hash.i_crit_edge ], [ 0, %do.end8.i.hash.i_crit_edge ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %fwmark_mask.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 5
  %15 = ptrtoint ptr %fwmark_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fwmark_mask.i.i, align 4
  %and.i.i = and i32 %16, %14
  %fwmark_shft.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 6
  %17 = ptrtoint ptr %fwmark_shft.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %fwmark_shft.i.i, align 8
  %conv.i.i = zext i16 %18 to i32
  %shr.i.i = lshr i32 %and.i.i, %conv.i.i
  %rate_flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15
  %19 = ptrtoint ptr %rate_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rate_flags.i.i, align 8
  %21 = and i16 %20, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i.i, label %hash.i.if.end.i.i_crit_edge, label %if.then.i.i

hash.i.if.end.i.i_crit_edge:                      ; preds = %hash.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %hash.i
  call void @__sanitizer_cov_trace_pc() #17
  %call6.i.i = call fastcc zeroext i8 @cake_handle_diffserv(ptr noundef %skb, i1 noundef zeroext true) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %hash.i.if.end.i.i_crit_edge
  %dscp.0.i.i = phi i8 [ %call6.i.i, %if.then.i.i ], [ -1, %hash.i.if.end.i.i_crit_edge ]
  %tin_mode.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 4
  %22 = ptrtoint ptr %tin_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tin_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp.i.i = icmp eq i8 %23, 3
  br i1 %cmp.i.i, label %if.end.i.i.cake_select_tin.exit.i_crit_edge, label %if.else.i.i

if.end.i.i.cake_select_tin.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_select_tin.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %tobool10.not.i.i = icmp eq i32 %shr.i.i, 0
  br i1 %tobool10.not.i.i, label %if.else.i.i.if.else16.i.i_crit_edge, label %land.lhs.true.i.i

if.else.i.i.if.else16.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else16.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %tin_cnt.i.i = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 5
  %24 = ptrtoint ptr %tin_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tin_cnt.i.i, align 2
  %conv11.i.i = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %conv11.i.i)
  %cmp12.not.i.i = icmp ugt i32 %shr.i.i, %conv11.i.i
  br i1 %cmp12.not.i.i, label %land.lhs.true.i.i.if.else16.i.i_crit_edge, label %if.then14.i.i

land.lhs.true.i.i.if.else16.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else16.i.i

if.then14.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %tin_order.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 16, i32 2, i32 0, i32 0, i32 4, i32 7
  %26 = ptrtoint ptr %tin_order.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tin_order.i.i, align 4
  %sub.i.i = add i32 %shr.i.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %27, i32 %sub.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i, align 1
  br label %cake_select_tin.exit.i

if.else16.i.i:                                    ; preds = %land.lhs.true.i.i.if.else16.i.i_crit_edge, %if.else.i.i.if.else16.i.i_crit_edge
  %priority.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %30 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %priority.i.i, align 4
  %and17.i.i = and i32 %31, -65536
  %handle.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %32 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %handle.i.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %and17.i.i, i32 %33)
  %cmp18.i.i = icmp eq i32 %and17.i.i, %33
  br i1 %cmp18.i.i, label %land.lhs.true20.i.i, label %if.else16.i.i.if.else39.i.i_crit_edge

if.else16.i.i.if.else39.i.i_crit_edge:            ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else39.i.i

land.lhs.true20.i.i:                              ; preds = %if.else16.i.i
  %and22.i.i = and i32 %31, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %cmp23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %cmp23.not.i.i, label %land.lhs.true20.i.i.if.else39.i.i_crit_edge, label %land.lhs.true25.i.i

land.lhs.true20.i.i.if.else39.i.i_crit_edge:      ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else39.i.i

land.lhs.true25.i.i:                              ; preds = %land.lhs.true20.i.i
  %tin_cnt28.i.i = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 5
  %34 = ptrtoint ptr %tin_cnt28.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %tin_cnt28.i.i, align 2
  %conv29.i.i = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.i.i, i32 %conv29.i.i)
  %cmp30.not.i.i = icmp ugt i32 %and22.i.i, %conv29.i.i
  br i1 %cmp30.not.i.i, label %land.lhs.true25.i.i.if.else39.i.i_crit_edge, label %if.then32.i.i

land.lhs.true25.i.i.if.else39.i.i_crit_edge:      ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else39.i.i

if.then32.i.i:                                    ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %tin_order33.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 16, i32 2, i32 0, i32 0, i32 4, i32 7
  %36 = ptrtoint ptr %tin_order33.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tin_order33.i.i, align 4
  %sub36.i.i = add nsw i32 %and22.i.i, -1
  %arrayidx37.i.i = getelementptr i8, ptr %37, i32 %sub36.i.i
  %38 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx37.i.i, align 1
  br label %cake_select_tin.exit.i

if.else39.i.i:                                    ; preds = %land.lhs.true25.i.i.if.else39.i.i_crit_edge, %land.lhs.true20.i.i.if.else39.i.i_crit_edge, %if.else16.i.i.if.else39.i.i_crit_edge
  br i1 %tobool.not.i.i, label %if.then41.i.i, label %if.else39.i.i.if.end44.i.i_crit_edge

if.else39.i.i.if.end44.i.i_crit_edge:             ; preds = %if.else39.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44.i.i

if.then41.i.i:                                    ; preds = %if.else39.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call43.i.i = call fastcc zeroext i8 @cake_handle_diffserv(ptr noundef %skb, i1 noundef zeroext false) #15
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then41.i.i, %if.else39.i.i.if.end44.i.i_crit_edge
  %dscp.1.i.i = phi i8 [ %dscp.0.i.i, %if.else39.i.i.if.end44.i.i_crit_edge ], [ %call43.i.i, %if.then41.i.i ]
  %tin_index.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 16, i32 2, i32 0, i32 0, i32 4, i32 6
  %40 = ptrtoint ptr %tin_index.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tin_index.i.i, align 8
  %idxprom.i.i = zext i8 %dscp.1.i.i to i32
  %arrayidx45.i.i = getelementptr i8, ptr %41, i32 %idxprom.i.i
  %42 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx45.i.i, align 1
  %tin_cnt47.i.i = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 5
  %44 = ptrtoint ptr %tin_cnt47.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %tin_cnt47.i.i, align 2
  %46 = zext i8 %43 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %46)
  %cmp49.not.i.i = icmp ugt i16 %45, %46
  br i1 %cmp49.not.i.i, label %if.end44.i.i.cake_select_tin.exit.i_crit_edge, label %if.then54.i.i, !prof !65

if.end44.i.i.cake_select_tin.exit.i_crit_edge:    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_select_tin.exit.i

if.then54.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_select_tin.exit.i

cake_select_tin.exit.i:                           ; preds = %if.then54.i.i, %if.end44.i.i.cake_select_tin.exit.i_crit_edge, %if.then32.i.i, %if.then14.i.i, %if.end.i.i.cake_select_tin.exit.i_crit_edge
  %tin.0.shrunk.i.i = phi i8 [ %29, %if.then14.i.i ], [ %39, %if.then32.i.i ], [ 0, %if.then54.i.i ], [ %43, %if.end44.i.i.cake_select_tin.exit.i_crit_edge ], [ 0, %if.end.i.i.cake_select_tin.exit.i_crit_edge ]
  %tin.0.i.i = zext i8 %tin.0.shrunk.i.i to i32
  %tins.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %47 = ptrtoint ptr %tins.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tins.i.i, align 8
  %arrayidx59.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %flow.1.i)
  %tobool.not.i46.i = icmp eq i16 %flow.1.i, 0
  %and.i47.i = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47.i)
  %tobool1.i.i = icmp ne i32 %and.i47.i, 0
  %49 = and i1 %tobool1.i.i, %tobool.not.i46.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %host.0.i)
  %tobool3.not.i.i = icmp eq i16 %host.0.i, 0
  %and5.i.i = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.i.i = icmp ne i32 %and5.i.i, 0
  %50 = and i1 %tobool6.i.i, %tobool3.not.i.i
  %and11.i.i = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %keys.i.i) #15
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %host_keys.i.i) #15
  %51 = call ptr @memset(ptr %host_keys.i.i, i32 255, i32 72)
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %52 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %53 = and i16 %bf.load.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i48.i = icmp eq i8 %3, 0
  br i1 %cmp.i48.i, label %cake_select_tin.exit.i.if.end6_crit_edge, label %if.end.i49.i, !prof !66

cake_select_tin.exit.i.if.end6_crit_edge:         ; preds = %cake_select_tin.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end.i49.i:                                     ; preds = %cake_select_tin.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool16.not.i.i = icmp eq i16 %53, 0
  %tobool12.not.not.i.i = xor i1 %tobool12.not.i.i, true
  %brmerge.i.i = or i1 %tobool16.not.i.i, %tobool12.not.not.i.i
  %or.cond471.i.i = select i1 %49, i1 %brmerge.i.i, i1 false
  br i1 %or.cond471.i.i, label %if.end.i49.i.if.end27.i.i_crit_edge, label %land.lhs.true24.i.i

if.end.i49.i.if.end27.i.i_crit_edge:              ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27.i.i

land.lhs.true24.i.i:                              ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %extract.t469.i.i = icmp ne i16 %53, 0
  br i1 %50, label %land.lhs.true24.i.i.if.end27.i.i_crit_edge, label %land.lhs.true24.i.i.skip_hash.i.i_crit_edge

land.lhs.true24.i.i.skip_hash.i.i_crit_edge:      ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip_hash.i.i

land.lhs.true24.i.i.if.end27.i.i_crit_edge:       ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %land.lhs.true24.i.i.if.end27.i.i_crit_edge, %if.end.i49.i.if.end27.i.i_crit_edge
  %54 = call ptr @memset(ptr %keys.i.i, i32 0, i32 72)
  %call.i.i.i = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %skb, ptr noundef nonnull @flow_keys_dissector, ptr noundef nonnull %keys.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 2) #15
  br i1 %tobool12.not.i.i, label %if.end27.i.i.if.end32.i.i_crit_edge, label %land.lhs.true29.i.i

if.end27.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i.i

land.lhs.true29.i.i:                              ; preds = %if.end27.i.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple.i.i.i) #15
  %55 = call ptr @memset(ptr %tuple.i.i.i, i32 0, i32 40)
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %56 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %_nfct.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i.i = icmp eq i32 %57, 0
  %protocol.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %58 = ptrtoint ptr %protocol.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %protocol.i.i.i.i.i, align 8
  %mac_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %60 = ptrtoint ptr %mac_len.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %mac_len.i.i.i.i.i.i, align 4
  %conv.i.i.i.i.i.i = zext i16 %61 to i32
  %62 = zext i16 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %59, label %land.lhs.true29.i.i.skb_protocol.exit.i.i.i_crit_edge [
    i16 -30552, label %land.lhs.true29.i.i.if.then.i.i.i.i.i.i_crit_edge
    i16 -32512, label %land.lhs.true29.i.i.if.then.i.i.i.i.i.i_crit_edge662
  ]

land.lhs.true29.i.i.if.then.i.i.i.i.i.i_crit_edge662: ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i.i.i.i

land.lhs.true29.i.i.if.then.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i.i.i.i

land.lhs.true29.i.i.skb_protocol.exit.i.i.i_crit_edge: ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_protocol.exit.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %land.lhs.true29.i.i.if.then.i.i.i.i.i.i_crit_edge, %land.lhs.true29.i.i.if.then.i.i.i.i.i.i_crit_edge662
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool.not.i.i.i.i.i.i = icmp eq i16 %61, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.if.end26.i.i.i.i.i.i_crit_edge, label %if.then1.i.i.i.i.i.i

if.then.i.i.i.i.i.i.if.end26.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i.i.i.i.i.i

if.then1.i.i.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %61)
  %cmp.i.i.i.i.i.i = icmp ult i16 %61, 4
  br i1 %cmp.i.i.i.i.i.i, label %do.end.i.i.i.i.i.i, label %if.end25.i.i.i.i.i.i, !prof !66

do.end.i.i.i.i.i.i:                               ; preds = %if.then1.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 598, i32 noundef 9, ptr noundef null) #15
  br label %cake_update_flowkeys.exit.thread.i.i

if.end25.i.i.i.i.i.i:                             ; preds = %if.then1.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i.i, -4
  br label %if.end26.i.i.i.i.i.i

if.end26.i.i.i.i.i.i:                             ; preds = %if.end25.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.if.end26.i.i.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i.i, %if.end25.i.i.i.i.i.i ], [ 14, %if.then.i.i.i.i.i.i.if.end26.i.i.i.i.i.i_crit_edge ]
  %63 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %data.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %tobool2.not.i.i.i.i.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i.i.i.i.i

do.body27.i.i.i.i.i.i:                            ; preds = %do.body27.backedge.i.i.i.i.i.i, %if.end26.i.i.i.i.i.i
  %vlan_depth.1.i.i.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i.i.i, %if.end26.i.i.i.i.i.i ], [ %add.i.i.i.i.i.i, %do.body27.backedge.i.i.i.i.i.i ]
  %parse_depth.0.i.i.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i.i.i ], [ %dec.i.i.i.i.i.i, %do.body27.backedge.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i.i) #15
  %64 = ptrtoint ptr %vhdr.i.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -1, ptr %vhdr.i.i.i.i.i.i, align 2, !annotation !64
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -1, ptr %63, align 2, !annotation !64
  %66 = ptrtoint ptr %len.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.i.i.i.i.i.i.i.i, align 4
  %68 = ptrtoint ptr %data_len.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data_len.i.i.i.i.i.i.i.i, align 8
  %70 = add i32 %vlan_depth.1.i.i.i.i.i.i, %69
  %sub.i4.i.i.i.i.i.i.i = sub i32 %67, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i.i = icmp slt i32 %sub.i4.i.i.i.i.i.i.i, 4
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i.i, !prof !66

if.then.i.i.i.i.i.i.i.i:                          ; preds = %do.body27.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %data.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i.i.i = getelementptr i8, ptr %72, i32 %vlan_depth.1.i.i.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %do.body27.i.i.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.cleanup.thread.i.i.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i.i.i

if.end.i.i.i.i.i.i.i.i.cleanup.thread.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread.i.i.i.i.i.i

lor.lhs.false.i.i.i.i.i.i.i.i:                    ; preds = %if.end.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i.i.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i.i.i, !prof !66
  br label %skb_header_pointer.exit.i.i.i.i.i.i

skb_header_pointer.exit.i.i.i.i.i.i:              ; preds = %lor.lhs.false.i.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i.i.i, null
  %dec.i.i.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i.i.i)
  %tobool30.not.i.i.i.i.i.i = icmp eq i32 %dec.i.i.i.i.i.i, 0
  %73 = select i1 %tobool29.not.i.i.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i.i.i, !prof !66
  br i1 %73, label %skb_header_pointer.exit.i.i.i.i.i.i.cleanup.thread.i.i.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i.i.i, !prof !66

skb_header_pointer.exit.i.i.i.i.i.i.cleanup.thread.i.i.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread.i.i.i.i.i.i

cleanup.thread.i.i.i.i.i.i:                       ; preds = %skb_header_pointer.exit.i.i.i.i.i.i.cleanup.thread.i.i.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.i.i.cleanup.thread.i.i.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i.i) #15
  br label %cake_update_flowkeys.exit.thread.i.i

do.cond42.i.i.i.i.i.i:                            ; preds = %skb_header_pointer.exit.i.i.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i.i) #15
  %76 = zext i16 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %75, label %do.cond42.i.i.i.i.i.i.skb_protocol.exit.i.i.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.i.i.do.body27.backedge.i.i.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.i.i.do.body27.backedge.i.i.i.i.i.i_crit_edge663
  ]

do.cond42.i.i.i.i.i.i.do.body27.backedge.i.i.i.i.i.i_crit_edge663: ; preds = %do.cond42.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body27.backedge.i.i.i.i.i.i

do.cond42.i.i.i.i.i.i.do.body27.backedge.i.i.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body27.backedge.i.i.i.i.i.i

do.cond42.i.i.i.i.i.i.skb_protocol.exit.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_protocol.exit.i.i.i

do.body27.backedge.i.i.i.i.i.i:                   ; preds = %do.cond42.i.i.i.i.i.i.do.body27.backedge.i.i.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.i.i.do.body27.backedge.i.i.i.i.i.i_crit_edge663
  %add.i.i.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i.i.i, 4
  br label %do.body27.i.i.i.i.i.i

skb_protocol.exit.i.i.i:                          ; preds = %do.cond42.i.i.i.i.i.i.skb_protocol.exit.i.i.i_crit_edge, %land.lhs.true29.i.i.skb_protocol.exit.i.i.i_crit_edge
  %retval.2.i.i.i.i.i.i = phi i16 [ %59, %land.lhs.true29.i.i.skb_protocol.exit.i.i.i_crit_edge ], [ %75, %do.cond42.i.i.i.i.i.i.skb_protocol.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %retval.2.i.i.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i16 %retval.2.i.i.i.i.i.i, 2048
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_protocol.exit.i.i.i.cake_update_flowkeys.exit.thread.i.i_crit_edge

skb_protocol.exit.i.i.i.cake_update_flowkeys.exit.thread.i.i_crit_edge: ; preds = %skb_protocol.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_update_flowkeys.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %skb_protocol.exit.i.i.i
  %call2.i.i.i = call zeroext i1 @nf_ct_get_tuple_skb(ptr noundef nonnull %tuple.i.i.i, ptr noundef %skb) #15
  br i1 %call2.i.i.i, label %if.end4.i.i.i, label %if.end.i.i.i.cake_update_flowkeys.exit.thread.i.i_crit_edge

if.end.i.i.i.cake_update_flowkeys.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_update_flowkeys.exit.thread.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  br i1 %tobool.not.i.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dst.i.i.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dst.i.i.i, align 4
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %79 = ptrtoint ptr %tuple.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tuple.i.i.i, align 4
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi i32 [ %78, %cond.true.i.i.i ], [ %80, %cond.false.i.i.i ]
  %addrs.i.i.i = getelementptr inbounds %struct.flow_keys, ptr %keys.i.i, i32 0, i32 8
  %81 = ptrtoint ptr %addrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %addrs.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %82)
  %cmp9.not.i.i.i = icmp eq i32 %cond.i.i.i, %82
  br i1 %cmp9.not.i.i.i, label %cond.end.i.i.i.if.end14.i.i.i_crit_edge, label %if.then11.i.i.i

cond.end.i.i.i.if.end14.i.i.i_crit_edge:          ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i.i.i

if.then11.i.i.i:                                  ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %addrs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %cond.i.i.i, ptr %addrs.i.i.i, align 4
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.then11.i.i.i, %cond.end.i.i.i.if.end14.i.i.i_crit_edge
  %84 = xor i1 %cmp9.not.i.i.i, true
  br i1 %tobool.not.i.i.i, label %cond.true17.i.i.i, label %cond.false20.i.i.i

cond.true17.i.i.i:                                ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %85 = ptrtoint ptr %tuple.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tuple.i.i.i, align 4
  br label %cond.end23.i.i.i

cond.false20.i.i.i:                               ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dst21.i.i.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple.i.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %dst21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dst21.i.i.i, align 4
  br label %cond.end23.i.i.i

cond.end23.i.i.i:                                 ; preds = %cond.false20.i.i.i, %cond.true17.i.i.i
  %cond24.i.i.i = phi i32 [ %86, %cond.true17.i.i.i ], [ %88, %cond.false20.i.i.i ]
  %dst26.i.i.i = getelementptr inbounds %struct.flow_keys, ptr %keys.i.i, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %89 = ptrtoint ptr %dst26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dst26.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond24.i.i.i, i32 %90)
  %cmp27.not.i.i.i = icmp eq i32 %cond24.i.i.i, %90
  br i1 %cmp27.not.i.i.i, label %if.end32.i.i.i, label %if.end32.i.thread.i.i

if.end32.i.i.i:                                   ; preds = %cond.end23.i.i.i
  %ports.i.i.i = getelementptr inbounds %struct.flow_keys, ptr %keys.i.i, i32 0, i32 6
  %91 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ports.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool33.not.i.i.i = icmp eq i32 %92, 0
  br i1 %tobool33.not.i.i.i, label %cake_update_flowkeys.exit.i.i, label %if.end32.i.i.i.if.then34.i.i.i_crit_edge

if.end32.i.i.i.if.then34.i.i.i_crit_edge:         ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34.i.i.i

if.end32.i.thread.i.i:                            ; preds = %cond.end23.i.i.i
  %93 = ptrtoint ptr %dst26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %cond24.i.i.i, ptr %dst26.i.i.i, align 8
  %ports.i557.i.i = getelementptr inbounds %struct.flow_keys, ptr %keys.i.i, i32 0, i32 6
  %94 = ptrtoint ptr %ports.i557.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ports.i557.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool33.not.i558.i.i = icmp eq i32 %95, 0
  br i1 %tobool33.not.i558.i.i, label %cake_update_flowkeys.exit.thread562.i.i, label %if.end32.i.thread.i.i.if.then34.i.i.i_crit_edge

if.end32.i.thread.i.i.if.then34.i.i.i_crit_edge:  ; preds = %if.end32.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34.i.i.i

cake_update_flowkeys.exit.thread562.i.i:          ; preds = %if.end32.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple.i.i.i) #15
  br label %if.end37.i.i

if.then34.i.i.i:                                  ; preds = %if.end32.i.thread.i.i.if.then34.i.i.i_crit_edge, %if.end32.i.i.i.if.then34.i.i.i_crit_edge
  %ports.i561.i.i = phi ptr [ %ports.i557.i.i, %if.end32.i.thread.i.i.if.then34.i.i.i_crit_edge ], [ %ports.i.i.i, %if.end32.i.i.i.if.then34.i.i.i_crit_edge ]
  %upd.1.off0.i560.i.i = phi i1 [ true, %if.end32.i.thread.i.i.if.then34.i.i.i_crit_edge ], [ %84, %if.end32.i.i.i.if.then34.i.i.i_crit_edge ]
  %u42.i.i.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple.i.i.i, i32 0, i32 1
  %u.i.i.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple.i.i.i, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %u.val.i.i.i = load i16, ptr %u.i.i.i, align 4
  %97 = ptrtoint ptr %u42.i.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %u42.val.i.i.i = load i16, ptr %u42.i.i.i, align 4
  %98 = select i1 %tobool.not.i.i.i, i16 %u.val.i.i.i, i16 %u42.val.i.i.i
  %99 = ptrtoint ptr %ports.i561.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %ports.i561.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %98, i16 %100)
  %cmp51.not.i.i.i = icmp eq i16 %98, %100
  br i1 %cmp51.not.i.i.i, label %if.end56.i.i.i, label %if.end56.i.thread.i.i

if.end56.i.thread.i.i:                            ; preds = %if.then34.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %101 = ptrtoint ptr %ports.i561.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %98, ptr %ports.i561.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple.i.i.i) #15
  br label %if.end37.i.i

if.end56.i.i.i:                                   ; preds = %if.then34.i.i.i
  %102 = getelementptr inbounds %struct.flow_keys, ptr %keys.i.i, i32 0, i32 6
  %103 = select i1 %tobool.not.i.i.i, i16 %u42.val.i.i.i, i16 %u.val.i.i.i
  %dst72.i.i.i = getelementptr inbounds %struct.anon.219, ptr %102, i32 0, i32 1
  %104 = ptrtoint ptr %dst72.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %dst72.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %103, i16 %105)
  %cmp74.not.i.i.i = icmp ne i16 %103, %105
  %spec.select.i.i.i = select i1 %cmp74.not.i.i.i, i1 true, i1 %upd.1.off0.i560.i.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple.i.i.i) #15
  br i1 %spec.select.i.i.i, label %if.end56.i.i.i.if.end37.i.i_crit_edge, label %if.end56.i.i.i.if.end32.i.i_crit_edge

if.end56.i.i.i.if.end32.i.i_crit_edge:            ; preds = %if.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i.i

if.end56.i.i.i.if.end37.i.i_crit_edge:            ; preds = %if.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i.i

cake_update_flowkeys.exit.thread.i.i:             ; preds = %if.end.i.i.i.cake_update_flowkeys.exit.thread.i.i_crit_edge, %skb_protocol.exit.i.i.i.cake_update_flowkeys.exit.thread.i.i_crit_edge, %cleanup.thread.i.i.i.i.i.i, %do.end.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple.i.i.i) #15
  br label %if.end32.i.i

cake_update_flowkeys.exit.i.i:                    ; preds = %if.end32.i.i.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple.i.i.i) #15
  br i1 %cmp9.not.i.i.i, label %cake_update_flowkeys.exit.i.i.if.end32.i.i_crit_edge, label %cake_update_flowkeys.exit.i.i.if.end37.i.i_crit_edge

cake_update_flowkeys.exit.i.i.if.end37.i.i_crit_edge: ; preds = %cake_update_flowkeys.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i.i

cake_update_flowkeys.exit.i.i.if.end32.i.i_crit_edge: ; preds = %cake_update_flowkeys.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %cake_update_flowkeys.exit.i.i.if.end32.i.i_crit_edge, %cake_update_flowkeys.exit.thread.i.i, %if.end56.i.i.i.if.end32.i.i_crit_edge, %if.end27.i.i.if.end32.i.i_crit_edge
  %brmerge525.i.i = or i1 %50, %tobool16.not.i.i
  %not.tobool33.not.i.i = xor i1 %tobool16.not.i.i, true
  %.mux526.i.i = zext i1 %not.tobool33.not.i.i to i8
  br i1 %brmerge525.i.i, label %if.end32.i.i.if.end37.i.i_crit_edge, label %if.end32.i.i.skip_hash.i.i_crit_edge

if.end32.i.i.skip_hash.i.i_crit_edge:             ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip_hash.i.i

if.end32.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.end32.i.i.if.end37.i.i_crit_edge, %cake_update_flowkeys.exit.i.i.if.end37.i.i_crit_edge, %if.end56.i.i.i.if.end37.i.i_crit_edge, %if.end56.i.thread.i.i, %cake_update_flowkeys.exit.thread562.i.i
  %tobool33.not486.i.i = phi i1 [ %tobool16.not.i.i, %if.end32.i.i.if.end37.i.i_crit_edge ], [ true, %cake_update_flowkeys.exit.i.i.if.end37.i.i_crit_edge ], [ true, %if.end56.i.i.i.if.end37.i.i_crit_edge ], [ true, %if.end56.i.thread.i.i ], [ true, %cake_update_flowkeys.exit.thread562.i.i ]
  %106 = phi i8 [ %.mux526.i.i, %if.end32.i.i.if.end37.i.i_crit_edge ], [ 0, %cake_update_flowkeys.exit.i.i.if.end37.i.i_crit_edge ], [ 0, %if.end56.i.i.i.if.end37.i.i_crit_edge ], [ 0, %if.end56.i.thread.i.i ], [ 0, %cake_update_flowkeys.exit.thread562.i.i ]
  %107 = call ptr @memcpy(ptr %host_keys.i.i, ptr %keys.i.i, i32 72)
  %ports.i.i = getelementptr inbounds %struct.flow_keys, ptr %host_keys.i.i, i32 0, i32 6
  %108 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %ports.i.i, align 4
  %ip_proto.i.i = getelementptr inbounds %struct.flow_keys, ptr %host_keys.i.i, i32 0, i32 1, i32 1
  %109 = ptrtoint ptr %ip_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %ip_proto.i.i, align 2
  %keyid.i.i = getelementptr inbounds %struct.flow_keys, ptr %host_keys.i.i, i32 0, i32 5
  %110 = ptrtoint ptr %keyid.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %keyid.i.i, align 8
  %tags.i.i = getelementptr inbounds %struct.flow_keys, ptr %host_keys.i.i, i32 0, i32 2
  %111 = ptrtoint ptr %tags.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %tags.i.i, align 4
  %addr_type.i.i = getelementptr inbounds %struct.flow_dissector_key_control, ptr %host_keys.i.i, i32 0, i32 1
  %112 = ptrtoint ptr %addr_type.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %addr_type.i.i, align 2
  %114 = zext i16 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %113, label %if.end37.i.i.sw.epilog.i.i_crit_edge [
    i16 2, label %sw.bb.i.i
    i16 3, label %sw.bb46.i.i
  ]

if.end37.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %addrs.i.i = getelementptr inbounds %struct.flow_keys, ptr %host_keys.i.i, i32 0, i32 8
  %115 = ptrtoint ptr %addrs.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %addrs.i.i, align 4
  %call39.i.i = call i32 @flow_hash_from_keys(ptr noundef nonnull %host_keys.i.i) #15
  %addrs40.i.i = getelementptr inbounds %struct.flow_keys, ptr %keys.i.i, i32 0, i32 8
  %116 = ptrtoint ptr %addrs40.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %addrs40.i.i, align 4
  %118 = ptrtoint ptr %addrs.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %addrs.i.i, align 4
  %dst.i.i = getelementptr inbounds %struct.flow_keys, ptr %host_keys.i.i, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %119 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %dst.i.i, align 8
  br label %sw.epilog.sink.split.i.i

sw.bb46.i.i:                                      ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %addrs47.i.i = getelementptr inbounds %struct.flow_keys, ptr %host_keys.i.i, i32 0, i32 8
  %120 = call ptr @memset(ptr %addrs47.i.i, i32 0, i32 16)
  %call49.i.i = call i32 @flow_hash_from_keys(ptr noundef nonnull %host_keys.i.i) #15
  %addrs52.i.i = getelementptr inbounds %struct.flow_keys, ptr %keys.i.i, i32 0, i32 8
  %121 = call ptr @memcpy(ptr %addrs47.i.i, ptr %addrs52.i.i, i32 16)
  %dst55.i.i = getelementptr inbounds %struct.flow_keys, ptr %host_keys.i.i, i32 0, i32 8, i32 0, i32 0, i32 1
  %122 = call ptr @memset(ptr %dst55.i.i, i32 0, i32 16)
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb46.i.i, %sw.bb.i.i
  %dsthost_hash.0.ph.i.i = phi i32 [ %call39.i.i, %sw.bb.i.i ], [ %call49.i.i, %sw.bb46.i.i ]
  %call56.i.i = call i32 @flow_hash_from_keys(ptr noundef nonnull %host_keys.i.i) #15
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %if.end37.i.i.sw.epilog.i.i_crit_edge
  %srchost_hash.0.i.i = phi i32 [ 0, %if.end37.i.i.sw.epilog.i.i_crit_edge ], [ %call56.i.i, %sw.epilog.sink.split.i.i ]
  %dsthost_hash.0.i.i = phi i32 [ 0, %if.end37.i.i.sw.epilog.i.i_crit_edge ], [ %dsthost_hash.0.ph.i.i, %sw.epilog.sink.split.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %extract.t467.i.i = icmp ne i8 %106, 0
  br i1 %49, label %land.lhs.true59.i.i, label %sw.epilog.i.i.skip_hash.i.i_crit_edge

sw.epilog.i.i.skip_hash.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip_hash.i.i

land.lhs.true59.i.i:                              ; preds = %sw.epilog.i.i
  br i1 %tobool33.not486.i.i, label %if.then61.i.i, label %land.lhs.true59.i.i.skip_hash.i.i_crit_edge

land.lhs.true59.i.i.skip_hash.i.i_crit_edge:      ; preds = %land.lhs.true59.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip_hash.i.i

if.then61.i.i:                                    ; preds = %land.lhs.true59.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call62.i.i = call i32 @flow_hash_from_keys(ptr noundef nonnull %keys.i.i) #15
  br label %skip_hash.i.i

skip_hash.i.i:                                    ; preds = %if.then61.i.i, %land.lhs.true59.i.i.skip_hash.i.i_crit_edge, %sw.epilog.i.i.skip_hash.i.i_crit_edge, %if.end32.i.i.skip_hash.i.i_crit_edge, %land.lhs.true24.i.i.skip_hash.i.i_crit_edge
  %flow_hash.0.i.i = phi i32 [ 0, %land.lhs.true59.i.i.skip_hash.i.i_crit_edge ], [ %call62.i.i, %if.then61.i.i ], [ 0, %sw.epilog.i.i.skip_hash.i.i_crit_edge ], [ 0, %land.lhs.true24.i.i.skip_hash.i.i_crit_edge ], [ 0, %if.end32.i.i.skip_hash.i.i_crit_edge ]
  %srchost_hash.1.i.i = phi i32 [ %srchost_hash.0.i.i, %land.lhs.true59.i.i.skip_hash.i.i_crit_edge ], [ %srchost_hash.0.i.i, %if.then61.i.i ], [ %srchost_hash.0.i.i, %sw.epilog.i.i.skip_hash.i.i_crit_edge ], [ 0, %land.lhs.true24.i.i.skip_hash.i.i_crit_edge ], [ 0, %if.end32.i.i.skip_hash.i.i_crit_edge ]
  %dsthost_hash.1.i.i = phi i32 [ %dsthost_hash.0.i.i, %land.lhs.true59.i.i.skip_hash.i.i_crit_edge ], [ %dsthost_hash.0.i.i, %if.then61.i.i ], [ %dsthost_hash.0.i.i, %sw.epilog.i.i.skip_hash.i.i_crit_edge ], [ 0, %land.lhs.true24.i.i.skip_hash.i.i_crit_edge ], [ 0, %if.end32.i.i.skip_hash.i.i_crit_edge ]
  %use_skbhash.1.off0.i.i = phi i1 [ %extract.t467.i.i, %land.lhs.true59.i.i.skip_hash.i.i_crit_edge ], [ %extract.t467.i.i, %if.then61.i.i ], [ %extract.t467.i.i, %sw.epilog.i.i.skip_hash.i.i_crit_edge ], [ %extract.t469.i.i, %land.lhs.true24.i.i.skip_hash.i.i_crit_edge ], [ true, %if.end32.i.i.skip_hash.i.i_crit_edge ]
  br i1 %tobool.not.i46.i, label %if.else.i51.i, label %if.then65.i.i

if.then65.i.i:                                    ; preds = %skip_hash.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv66.i.i = zext i16 %flow.1.i to i32
  %sub.i50.i = add nsw i32 %conv66.i.i, -1
  br label %if.end74.i.i

if.else.i51.i:                                    ; preds = %skip_hash.i.i
  %123 = and i1 %tobool1.i.i, %use_skbhash.1.off0.i.i
  br i1 %123, label %if.end74.thread.i.i, label %if.else.i51.i.if.end74.i.i_crit_edge

if.else.i51.i.if.end74.i.i_crit_edge:             ; preds = %if.else.i51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74.i.i

if.end74.thread.i.i:                              ; preds = %if.else.i51.i
  call void @__sanitizer_cov_trace_pc() #17
  %hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %124 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %hash.i.i, align 4
  %conv77488.i.i = zext i16 %host.0.i to i32
  %sub78489.i.i = add nsw i32 %conv77488.i.i, -1
  %srchost_hash.2490.i.i = select i1 %tobool3.not.i.i, i32 %srchost_hash.1.i.i, i32 %sub78489.i.i
  %dsthost_hash.2491.i.i = select i1 %tobool3.not.i.i, i32 %dsthost_hash.1.i.i, i32 %sub78489.i.i
  br label %if.end94.i.i

if.end74.i.i:                                     ; preds = %if.else.i51.i.if.end74.i.i_crit_edge, %if.then65.i.i
  %flow_hash.1.i.i = phi i32 [ %sub.i50.i, %if.then65.i.i ], [ %flow_hash.0.i.i, %if.else.i51.i.if.end74.i.i_crit_edge ]
  %conv77.i.i = zext i16 %host.0.i to i32
  %sub78.i.i = add nsw i32 %conv77.i.i, -1
  %srchost_hash.2.i.i = select i1 %tobool3.not.i.i, i32 %srchost_hash.1.i.i, i32 %sub78.i.i
  %dsthost_hash.2.i.i = select i1 %tobool3.not.i.i, i32 %dsthost_hash.1.i.i, i32 %sub78.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47.i)
  %tobool83.not.i.i = icmp eq i32 %and.i47.i, 0
  br i1 %tobool83.not.i.i, label %if.then84.i.i, label %if.end74.i.i.if.end94.i.i_crit_edge

if.end74.i.i.if.end94.i.i_crit_edge:              ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94.i.i

if.then84.i.i:                                    ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %and85.i.i = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i.i)
  %tobool86.not.i.i = icmp eq i32 %and85.i.i, 0
  %xor.i.i = select i1 %tobool86.not.i.i, i32 0, i32 %srchost_hash.2.i.i
  %and89.i.i = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i.i)
  %tobool90.not.i.i = icmp eq i32 %and89.i.i, 0
  %xor92.i.i = select i1 %tobool90.not.i.i, i32 0, i32 %dsthost_hash.2.i.i
  %spec.select470.i.i = xor i32 %xor92.i.i, %xor.i.i
  %spec.select472.i.i = xor i32 %spec.select470.i.i, %flow_hash.1.i.i
  br label %if.end94.i.i

if.end94.i.i:                                     ; preds = %if.then84.i.i, %if.end74.i.i.if.end94.i.i_crit_edge, %if.end74.thread.i.i
  %dsthost_hash.2494.i.i = phi i32 [ %dsthost_hash.2.i.i, %if.end74.i.i.if.end94.i.i_crit_edge ], [ %dsthost_hash.2.i.i, %if.then84.i.i ], [ %dsthost_hash.2491.i.i, %if.end74.thread.i.i ]
  %srchost_hash.2493.i.i = phi i32 [ %srchost_hash.2.i.i, %if.end74.i.i.if.end94.i.i_crit_edge ], [ %srchost_hash.2.i.i, %if.then84.i.i ], [ %srchost_hash.2490.i.i, %if.end74.thread.i.i ]
  %flow_hash.3.i.i = phi i32 [ %flow_hash.1.i.i, %if.end74.i.i.if.end94.i.i_crit_edge ], [ %spec.select472.i.i, %if.then84.i.i ], [ %125, %if.end74.thread.i.i ]
  %126 = trunc i32 %flow_hash.3.i.i to i16
  %conv95.i.i = and i16 %126, 1023
  %idxprom.i52.i = zext i16 %conv95.i.i to i32
  %arrayidx.i53.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 2, i32 %idxprom.i52.i
  %127 = ptrtoint ptr %arrayidx.i53.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.i53.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %flow_hash.3.i.i)
  %cmp97.i.i = icmp eq i32 %128, %flow_hash.3.i.i
  br i1 %cmp97.i.i, label %land.rhs99.i.i, label %for.inc.i.i, !prof !65

land.rhs99.i.i:                                   ; preds = %if.end94.i.i
  %set.i.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %idxprom.i52.i, i32 8
  %129 = ptrtoint ptr %set.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %set.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool103.not.i.i = icmp eq i8 %130, 0
  br i1 %tobool103.not.i.i, label %if.else112.i.thread.i, label %if.then111.i.i, !prof !66

if.else112.i.thread.i:                            ; preds = %land.rhs99.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub116.i54.i = and i32 %idxprom.i52.i, 1016
  %k.0533.i55.i = and i32 %idxprom.i52.i, 7
  br label %if.end127.i.i

if.then111.i.i:                                   ; preds = %land.rhs99.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %way_directs.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 31
  %131 = ptrtoint ptr %way_directs.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %way_directs.i.i, align 8
  %inc.i.i = add i32 %132, 1
  store i32 %inc.i.i, ptr %way_directs.i.i, align 8
  br label %if.end325.i.i

if.then125.i.i:                                   ; preds = %for.inc.6.i.i.if.then125.i.i_crit_edge, %for.inc.5.i.i.if.then125.i.i_crit_edge, %for.inc.4.i.i.if.then125.i.i_crit_edge, %for.inc.3.i.i.if.then125.i.i_crit_edge, %for.inc.2.i.i.if.then125.i.i_crit_edge, %for.inc.1.i.i.if.then125.i.i_crit_edge, %for.inc.i.i.if.then125.i.i_crit_edge
  %k.0535.lcssa.ph.i.i = phi i32 [ %k.0.6.i.i, %for.inc.6.i.i.if.then125.i.i_crit_edge ], [ %k.0.5.i.i, %for.inc.5.i.i.if.then125.i.i_crit_edge ], [ %k.0.4.i.i, %for.inc.4.i.i.if.then125.i.i_crit_edge ], [ %k.0.3.i.i, %for.inc.3.i.i.if.then125.i.i_crit_edge ], [ %k.0.2.i.i, %for.inc.2.i.i.if.then125.i.i_crit_edge ], [ %k.0.1.i.i, %for.inc.1.i.i.if.then125.i.i_crit_edge ], [ %k.0.i.i, %for.inc.i.i.if.then125.i.i_crit_edge ]
  %add.lcssa.ph.i.i = phi i32 [ %add.7.i.i, %for.inc.6.i.i.if.then125.i.i_crit_edge ], [ %add.6.i.i, %for.inc.5.i.i.if.then125.i.i_crit_edge ], [ %add.5.i.i, %for.inc.4.i.i.if.then125.i.i_crit_edge ], [ %add.4.i.i, %for.inc.3.i.i.if.then125.i.i_crit_edge ], [ %add.3.i.i, %for.inc.2.i.i.if.then125.i.i_crit_edge ], [ %add.2.i.i, %for.inc.1.i.i.if.then125.i.i_crit_edge ], [ %add.1.i.i, %for.inc.i.i.if.then125.i.i_crit_edge ]
  %way_hits.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 32
  %133 = ptrtoint ptr %way_hits.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %way_hits.i.i, align 4
  %inc126.i.i = add i32 %134, 1
  store i32 %inc126.i.i, ptr %way_hits.i.i, align 4
  br label %if.end127.i.i

if.end127.i.i:                                    ; preds = %if.then125.i.i, %if.else112.i.thread.i
  %sub116.i56.i = phi i32 [ %sub116.i.i, %if.then125.i.i ], [ %sub116.i54.i, %if.else112.i.thread.i ]
  %add.lcssa569.i.i = phi i32 [ %add.lcssa.ph.i.i, %if.then125.i.i ], [ %idxprom.i52.i, %if.else112.i.thread.i ]
  %k.0535.lcssa567.i.i = phi i32 [ %k.0535.lcssa.ph.i.i, %if.then125.i.i ], [ %k.0533.i55.i, %if.else112.i.thread.i ]
  %set131.i.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %add.lcssa569.i.i, i32 8
  %135 = ptrtoint ptr %set131.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %set131.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool132.not.i.i = icmp eq i8 %136, 0
  br i1 %tobool132.not.i.i, label %if.then133.i.i, label %if.end259.thread.i.i

if.end259.thread.i.i:                             ; preds = %if.end127.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add190498.i.i = or i32 %k.0535.lcssa567.i.i, %sub116.i56.i
  %conv191499.i.i = trunc i32 %add190498.i.i to i16
  %arrayidx194501.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 2, i32 %add190498.i.i
  %137 = ptrtoint ptr %arrayidx194501.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %flow_hash.3.i.i, ptr %arrayidx194501.i.i, align 4
  br label %if.end325.i.i

if.then133.i.i:                                   ; preds = %if.end127.i.i
  %and.i.i.i = and i32 %conv, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 5
  %and.i473.i.i = and i32 %conv, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i473.i.i)
  %cmp.i474.i.i = icmp eq i32 %and.i473.i.i, 6
  %add190505.i.i = or i32 %k.0535.lcssa567.i.i, %sub116.i56.i
  %conv191506.i.i = trunc i32 %add190505.i.i to i16
  %arrayidx194508.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 2, i32 %add190505.i.i
  %138 = ptrtoint ptr %arrayidx194508.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %flow_hash.3.i.i, ptr %arrayidx194508.i.i, align 4
  br i1 %cmp.i.i.i, label %if.then133.i.i.if.then196.i.i_crit_edge, label %if.then133.i.i.if.end259.i.i_crit_edge

if.then133.i.i.if.end259.i.i_crit_edge:           ; preds = %if.then133.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end259.i.i

if.then133.i.i.if.then196.i.i_crit_edge:          ; preds = %if.then133.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then196.i.i

for.inc.i.i:                                      ; preds = %if.end94.i.i
  %sub116.i.i = and i32 %idxprom.i52.i, 1016
  %add141.i.i = add nuw nsw i32 %idxprom.i52.i, 1
  %k.0.i.i = and i32 %add141.i.i, 7
  %add.1.i.i = or i32 %k.0.i.i, %sub116.i.i
  %arrayidx120.1.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 2, i32 %add.1.i.i
  %139 = ptrtoint ptr %arrayidx120.1.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx120.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %flow_hash.3.i.i)
  %cmp121.1.i.i = icmp eq i32 %140, %flow_hash.3.i.i
  br i1 %cmp121.1.i.i, label %for.inc.i.i.if.then125.i.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.if.then125.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then125.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %add141.1.i.i = add nuw nsw i32 %idxprom.i52.i, 2
  %k.0.1.i.i = and i32 %add141.1.i.i, 7
  %add.2.i.i = or i32 %k.0.1.i.i, %sub116.i.i
  %arrayidx120.2.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 2, i32 %add.2.i.i
  %141 = ptrtoint ptr %arrayidx120.2.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx120.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %flow_hash.3.i.i)
  %cmp121.2.i.i = icmp eq i32 %142, %flow_hash.3.i.i
  br i1 %cmp121.2.i.i, label %for.inc.1.i.i.if.then125.i.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.if.then125.i.i_crit_edge:           ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then125.i.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %add141.2.i.i = add nuw nsw i32 %idxprom.i52.i, 3
  %k.0.2.i.i = and i32 %add141.2.i.i, 7
  %add.3.i.i = or i32 %k.0.2.i.i, %sub116.i.i
  %arrayidx120.3.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 2, i32 %add.3.i.i
  %143 = ptrtoint ptr %arrayidx120.3.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx120.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %flow_hash.3.i.i)
  %cmp121.3.i.i = icmp eq i32 %144, %flow_hash.3.i.i
  br i1 %cmp121.3.i.i, label %for.inc.2.i.i.if.then125.i.i_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.if.then125.i.i_crit_edge:           ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then125.i.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %add141.3.i.i = add nuw nsw i32 %idxprom.i52.i, 4
  %k.0.3.i.i = and i32 %add141.3.i.i, 7
  %add.4.i.i = or i32 %k.0.3.i.i, %sub116.i.i
  %arrayidx120.4.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 2, i32 %add.4.i.i
  %145 = ptrtoint ptr %arrayidx120.4.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx120.4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %flow_hash.3.i.i)
  %cmp121.4.i.i = icmp eq i32 %146, %flow_hash.3.i.i
  br i1 %cmp121.4.i.i, label %for.inc.3.i.i.if.then125.i.i_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.if.then125.i.i_crit_edge:           ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then125.i.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %add141.4.i.i = add nuw nsw i32 %idxprom.i52.i, 5
  %k.0.4.i.i = and i32 %add141.4.i.i, 7
  %add.5.i.i = or i32 %k.0.4.i.i, %sub116.i.i
  %arrayidx120.5.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 2, i32 %add.5.i.i
  %147 = ptrtoint ptr %arrayidx120.5.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx120.5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %flow_hash.3.i.i)
  %cmp121.5.i.i = icmp eq i32 %148, %flow_hash.3.i.i
  br i1 %cmp121.5.i.i, label %for.inc.4.i.i.if.then125.i.i_crit_edge, label %for.inc.5.i.i

for.inc.4.i.i.if.then125.i.i_crit_edge:           ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then125.i.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %add141.5.i.i = add nuw nsw i32 %idxprom.i52.i, 6
  %k.0.5.i.i = and i32 %add141.5.i.i, 7
  %add.6.i.i = or i32 %k.0.5.i.i, %sub116.i.i
  %arrayidx120.6.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 2, i32 %add.6.i.i
  %149 = ptrtoint ptr %arrayidx120.6.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx120.6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %flow_hash.3.i.i)
  %cmp121.6.i.i = icmp eq i32 %150, %flow_hash.3.i.i
  br i1 %cmp121.6.i.i, label %for.inc.5.i.i.if.then125.i.i_crit_edge, label %for.inc.6.i.i

for.inc.5.i.i.if.then125.i.i_crit_edge:           ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then125.i.i

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %add141.6.i.i = add nuw nsw i32 %idxprom.i52.i, 7
  %k.0.6.i.i = and i32 %add141.6.i.i, 7
  %add.7.i.i = or i32 %k.0.6.i.i, %sub116.i.i
  %arrayidx120.7.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 2, i32 %add.7.i.i
  %151 = ptrtoint ptr %arrayidx120.7.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx120.7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %flow_hash.3.i.i)
  %cmp121.7.i.i = icmp eq i32 %152, %flow_hash.3.i.i
  br i1 %cmp121.7.i.i, label %for.inc.6.i.i.if.then125.i.i_crit_edge, label %for.inc.7.i.i

for.inc.6.i.i.if.then125.i.i_crit_edge:           ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then125.i.i

for.inc.7.i.i:                                    ; preds = %for.inc.6.i.i
  %set150.i.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %idxprom.i52.i, i32 8
  %153 = ptrtoint ptr %set150.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %set150.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool151.not.i.i = icmp eq i8 %154, 0
  br i1 %tobool151.not.i.i, label %for.inc.7.i.i.if.then152.i.i_crit_edge, label %for.inc159.i.i

for.inc.7.i.i.if.then152.i.i_crit_edge:           ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then152.i.i

if.then152.i.i:                                   ; preds = %for.inc159.6.i.i.if.then152.i.i_crit_edge, %for.inc159.5.i.i.if.then152.i.i_crit_edge, %for.inc159.4.i.i.if.then152.i.i_crit_edge, %for.inc159.3.i.i.if.then152.i.i_crit_edge, %for.inc159.2.i.i.if.then152.i.i_crit_edge, %for.inc159.1.i.i.if.then152.i.i_crit_edge, %for.inc159.i.i.if.then152.i.i_crit_edge, %for.inc.7.i.i.if.then152.i.i_crit_edge
  %add190512.pre-phi.i.i = phi i32 [ %add.7.i.i, %for.inc159.6.i.i.if.then152.i.i_crit_edge ], [ %add.6.i.i, %for.inc159.5.i.i.if.then152.i.i_crit_edge ], [ %add.5.i.i, %for.inc159.4.i.i.if.then152.i.i_crit_edge ], [ %add.4.i.i, %for.inc159.3.i.i.if.then152.i.i_crit_edge ], [ %add.3.i.i, %for.inc159.2.i.i.if.then152.i.i_crit_edge ], [ %add.2.i.i, %for.inc159.1.i.i.if.then152.i.i_crit_edge ], [ %add.1.i.i, %for.inc159.i.i.if.then152.i.i_crit_edge ], [ %idxprom.i52.i, %for.inc.7.i.i.if.then152.i.i_crit_edge ]
  %way_misses.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 33
  %155 = ptrtoint ptr %way_misses.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %way_misses.i.i, align 8
  %inc153.i.i = add i32 %156, 1
  store i32 %inc153.i.i, ptr %way_misses.i.i, align 8
  %and.i475.i.i = and i32 %conv, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i475.i.i)
  %cmp.i476.i.i = icmp eq i32 %and.i475.i.i, 5
  %and.i477.i.i = and i32 %conv, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i477.i.i)
  %cmp.i478.i.i = icmp eq i32 %and.i477.i.i, 6
  %conv191513.i.i = trunc i32 %add190512.pre-phi.i.i to i16
  %arrayidx194515.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 2, i32 %add190512.pre-phi.i.i
  %157 = ptrtoint ptr %arrayidx194515.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %flow_hash.3.i.i, ptr %arrayidx194515.i.i, align 4
  br i1 %cmp.i476.i.i, label %if.then152.i.i.if.then196.i.i_crit_edge, label %if.then152.i.i.if.end259.i.i_crit_edge

if.then152.i.i.if.end259.i.i_crit_edge:           ; preds = %if.then152.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end259.i.i

if.then152.i.i.if.then196.i.i_crit_edge:          ; preds = %if.then152.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then196.i.i

for.inc159.i.i:                                   ; preds = %for.inc.7.i.i
  %set150.1.i.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %add.1.i.i, i32 8
  %158 = ptrtoint ptr %set150.1.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %set150.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool151.not.1.i.i = icmp eq i8 %159, 0
  br i1 %tobool151.not.1.i.i, label %for.inc159.i.i.if.then152.i.i_crit_edge, label %for.inc159.1.i.i

for.inc159.i.i.if.then152.i.i_crit_edge:          ; preds = %for.inc159.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then152.i.i

for.inc159.1.i.i:                                 ; preds = %for.inc159.i.i
  %set150.2.i.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %add.2.i.i, i32 8
  %160 = ptrtoint ptr %set150.2.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %set150.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool151.not.2.i.i = icmp eq i8 %161, 0
  br i1 %tobool151.not.2.i.i, label %for.inc159.1.i.i.if.then152.i.i_crit_edge, label %for.inc159.2.i.i

for.inc159.1.i.i.if.then152.i.i_crit_edge:        ; preds = %for.inc159.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then152.i.i

for.inc159.2.i.i:                                 ; preds = %for.inc159.1.i.i
  %set150.3.i.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %add.3.i.i, i32 8
  %162 = ptrtoint ptr %set150.3.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %set150.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool151.not.3.i.i = icmp eq i8 %163, 0
  br i1 %tobool151.not.3.i.i, label %for.inc159.2.i.i.if.then152.i.i_crit_edge, label %for.inc159.3.i.i

for.inc159.2.i.i.if.then152.i.i_crit_edge:        ; preds = %for.inc159.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then152.i.i

for.inc159.3.i.i:                                 ; preds = %for.inc159.2.i.i
  %set150.4.i.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %add.4.i.i, i32 8
  %164 = ptrtoint ptr %set150.4.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %set150.4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool151.not.4.i.i = icmp eq i8 %165, 0
  br i1 %tobool151.not.4.i.i, label %for.inc159.3.i.i.if.then152.i.i_crit_edge, label %for.inc159.4.i.i

for.inc159.3.i.i.if.then152.i.i_crit_edge:        ; preds = %for.inc159.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then152.i.i

for.inc159.4.i.i:                                 ; preds = %for.inc159.3.i.i
  %set150.5.i.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %add.5.i.i, i32 8
  %166 = ptrtoint ptr %set150.5.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %set150.5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool151.not.5.i.i = icmp eq i8 %167, 0
  br i1 %tobool151.not.5.i.i, label %for.inc159.4.i.i.if.then152.i.i_crit_edge, label %for.inc159.5.i.i

for.inc159.4.i.i.if.then152.i.i_crit_edge:        ; preds = %for.inc159.4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then152.i.i

for.inc159.5.i.i:                                 ; preds = %for.inc159.4.i.i
  %set150.6.i.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %add.6.i.i, i32 8
  %168 = ptrtoint ptr %set150.6.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %set150.6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool151.not.6.i.i = icmp eq i8 %169, 0
  br i1 %tobool151.not.6.i.i, label %for.inc159.5.i.i.if.then152.i.i_crit_edge, label %for.inc159.6.i.i

for.inc159.5.i.i.if.then152.i.i_crit_edge:        ; preds = %for.inc159.5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then152.i.i

for.inc159.6.i.i:                                 ; preds = %for.inc159.5.i.i
  %set150.7.i.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %add.7.i.i, i32 8
  %170 = ptrtoint ptr %set150.7.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %set150.7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool151.not.7.i.i = icmp eq i8 %171, 0
  br i1 %tobool151.not.7.i.i, label %for.inc159.6.i.i.if.then152.i.i_crit_edge, label %for.inc159.7.i.i

for.inc159.6.i.i.if.then152.i.i_crit_edge:        ; preds = %for.inc159.6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then152.i.i

for.inc159.7.i.i:                                 ; preds = %for.inc159.6.i.i
  %way_collisions.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 34
  %172 = ptrtoint ptr %way_collisions.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %way_collisions.i.i, align 4
  %inc164.i.i = add i32 %173, 1
  store i32 %inc164.i.i, ptr %way_collisions.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %154)
  %cmp170.i.i = icmp eq i8 %154, 3
  br i1 %cmp170.i.i, label %if.then172.i.i, label %for.inc159.7.i.i.found.i.i_crit_edge

for.inc159.7.i.i.found.i.i_crit_edge:             ; preds = %for.inc159.7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found.i.i

if.then172.i.i:                                   ; preds = %for.inc159.7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %srchost.i.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %idxprom.i52.i, i32 6
  %174 = ptrtoint ptr %srchost.i.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %srchost.i.i, align 8
  %idxprom176.i.i = zext i16 %175 to i32
  %srchost_bulk_flow_count.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %idxprom176.i.i, i32 2
  %176 = ptrtoint ptr %srchost_bulk_flow_count.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %srchost_bulk_flow_count.i.i, align 4
  %dec.i.i = add i16 %177, -1
  store i16 %dec.i.i, ptr %srchost_bulk_flow_count.i.i, align 4
  %dsthost.i.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %idxprom.i52.i, i32 7
  %178 = ptrtoint ptr %dsthost.i.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %dsthost.i.i, align 2
  %idxprom182.i.i = zext i16 %179 to i32
  %dsthost_bulk_flow_count.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %idxprom182.i.i, i32 3
  %180 = ptrtoint ptr %dsthost_bulk_flow_count.i.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %dsthost_bulk_flow_count.i.i, align 2
  %dec184.i.i = add i16 %181, -1
  store i16 %dec184.i.i, ptr %dsthost_bulk_flow_count.i.i, align 2
  br label %found.i.i

found.i.i:                                        ; preds = %if.then172.i.i, %for.inc159.7.i.i.found.i.i_crit_edge
  %and.i479.i.i = and i32 %conv, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i479.i.i)
  %cmp.i480.i.i = icmp eq i32 %and.i479.i.i, 5
  %and.i481.i.i = and i32 %conv, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i481.i.i)
  %cmp.i482.i.i = icmp eq i32 %and.i481.i.i, 6
  %182 = ptrtoint ptr %arrayidx.i53.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %flow_hash.3.i.i, ptr %arrayidx.i53.i, align 4
  br i1 %cmp.i480.i.i, label %found.i.i.if.then196.i.i_crit_edge, label %found.i.i.if.end259.i.i_crit_edge

found.i.i.if.end259.i.i_crit_edge:                ; preds = %found.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end259.i.i

found.i.i.if.then196.i.i_crit_edge:               ; preds = %found.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then196.i.i

if.then196.i.i:                                   ; preds = %found.i.i.if.then196.i.i_crit_edge, %if.then152.i.i.if.then196.i.i_crit_edge, %if.then133.i.i.if.then196.i.i_crit_edge
  %idxprom193511.i.i = phi i32 [ %add190505.i.i, %if.then133.i.i.if.then196.i.i_crit_edge ], [ %idxprom.i52.i, %found.i.i.if.then196.i.i_crit_edge ], [ %add190512.pre-phi.i.i, %if.then152.i.i.if.then196.i.i_crit_edge ]
  %conv191510.i.i = phi i16 [ %conv191506.i.i, %if.then133.i.i.if.then196.i.i_crit_edge ], [ %conv95.i.i, %found.i.i.if.then196.i.i_crit_edge ], [ %conv191513.i.i, %if.then152.i.i.if.then196.i.i_crit_edge ]
  %allocate_dst.0.shrunk509.i.i = phi i1 [ %cmp.i474.i.i, %if.then133.i.i.if.then196.i.i_crit_edge ], [ %cmp.i482.i.i, %found.i.i.if.then196.i.i_crit_edge ], [ %cmp.i478.i.i, %if.then152.i.i.if.then196.i.i_crit_edge ]
  %conv198.i.i = and i32 %srchost_hash.2493.i.i, 1023
  %rem200.i.i = and i32 %srchost_hash.2493.i.i, 7
  %sub202.i.i = sub nsw i32 %conv198.i.i, %rem200.i.i
  %arrayidx209.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %conv198.i.i
  %183 = ptrtoint ptr %arrayidx209.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx209.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %srchost_hash.2493.i.i)
  %cmp210.i.i = icmp eq i32 %184, %srchost_hash.2493.i.i
  br i1 %cmp210.i.i, label %if.then196.i.i.found_src.i.i_crit_edge, label %for.inc214.i.i

if.then196.i.i.found_src.i.i_crit_edge:           ; preds = %if.then196.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found_src.i.i

for.inc214.i.i:                                   ; preds = %if.then196.i.i
  %add216.i.i = add i32 %srchost_hash.2493.i.i, 1
  %rem217.i.i = and i32 %add216.i.i, 7
  %add208.1.i.i = add nsw i32 %rem217.i.i, %sub202.i.i
  %arrayidx209.1.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add208.1.i.i
  %185 = ptrtoint ptr %arrayidx209.1.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx209.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %186, i32 %srchost_hash.2493.i.i)
  %cmp210.1.i.i = icmp eq i32 %186, %srchost_hash.2493.i.i
  br i1 %cmp210.1.i.i, label %for.inc214.i.i.found_src.i.i_crit_edge, label %for.inc214.1.i.i

for.inc214.i.i.found_src.i.i_crit_edge:           ; preds = %for.inc214.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found_src.i.i

for.inc214.1.i.i:                                 ; preds = %for.inc214.i.i
  %add216.1.i.i = add i32 %srchost_hash.2493.i.i, 2
  %rem217.1.i.i = and i32 %add216.1.i.i, 7
  %add208.2.i.i = add nsw i32 %rem217.1.i.i, %sub202.i.i
  %arrayidx209.2.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add208.2.i.i
  %187 = ptrtoint ptr %arrayidx209.2.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx209.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %188, i32 %srchost_hash.2493.i.i)
  %cmp210.2.i.i = icmp eq i32 %188, %srchost_hash.2493.i.i
  br i1 %cmp210.2.i.i, label %for.inc214.1.i.i.found_src.i.i_crit_edge, label %for.inc214.2.i.i

for.inc214.1.i.i.found_src.i.i_crit_edge:         ; preds = %for.inc214.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found_src.i.i

for.inc214.2.i.i:                                 ; preds = %for.inc214.1.i.i
  %add216.2.i.i = add i32 %srchost_hash.2493.i.i, 3
  %rem217.2.i.i = and i32 %add216.2.i.i, 7
  %add208.3.i.i = add nsw i32 %rem217.2.i.i, %sub202.i.i
  %arrayidx209.3.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add208.3.i.i
  %189 = ptrtoint ptr %arrayidx209.3.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx209.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %srchost_hash.2493.i.i)
  %cmp210.3.i.i = icmp eq i32 %190, %srchost_hash.2493.i.i
  br i1 %cmp210.3.i.i, label %for.inc214.2.i.i.found_src.i.i_crit_edge, label %for.inc214.3.i.i

for.inc214.2.i.i.found_src.i.i_crit_edge:         ; preds = %for.inc214.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found_src.i.i

for.inc214.3.i.i:                                 ; preds = %for.inc214.2.i.i
  %add216.3.i.i = add i32 %srchost_hash.2493.i.i, 4
  %rem217.3.i.i = and i32 %add216.3.i.i, 7
  %add208.4.i.i = add nsw i32 %rem217.3.i.i, %sub202.i.i
  %arrayidx209.4.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add208.4.i.i
  %191 = ptrtoint ptr %arrayidx209.4.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx209.4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %192, i32 %srchost_hash.2493.i.i)
  %cmp210.4.i.i = icmp eq i32 %192, %srchost_hash.2493.i.i
  br i1 %cmp210.4.i.i, label %for.inc214.3.i.i.found_src.i.i_crit_edge, label %for.inc214.4.i.i

for.inc214.3.i.i.found_src.i.i_crit_edge:         ; preds = %for.inc214.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found_src.i.i

for.inc214.4.i.i:                                 ; preds = %for.inc214.3.i.i
  %add216.4.i.i = add i32 %srchost_hash.2493.i.i, 5
  %rem217.4.i.i = and i32 %add216.4.i.i, 7
  %add208.5.i.i = add nsw i32 %rem217.4.i.i, %sub202.i.i
  %arrayidx209.5.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add208.5.i.i
  %193 = ptrtoint ptr %arrayidx209.5.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx209.5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %srchost_hash.2493.i.i)
  %cmp210.5.i.i = icmp eq i32 %194, %srchost_hash.2493.i.i
  br i1 %cmp210.5.i.i, label %for.inc214.4.i.i.found_src.i.i_crit_edge, label %for.inc214.5.i.i

for.inc214.4.i.i.found_src.i.i_crit_edge:         ; preds = %for.inc214.4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found_src.i.i

for.inc214.5.i.i:                                 ; preds = %for.inc214.4.i.i
  %add216.5.i.i = add i32 %srchost_hash.2493.i.i, 6
  %rem217.5.i.i = and i32 %add216.5.i.i, 7
  %add208.6.i.i = add nsw i32 %rem217.5.i.i, %sub202.i.i
  %arrayidx209.6.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add208.6.i.i
  %195 = ptrtoint ptr %arrayidx209.6.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx209.6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %196, i32 %srchost_hash.2493.i.i)
  %cmp210.6.i.i = icmp eq i32 %196, %srchost_hash.2493.i.i
  br i1 %cmp210.6.i.i, label %for.inc214.5.i.i.found_src.i.i_crit_edge, label %for.inc214.6.i.i

for.inc214.5.i.i.found_src.i.i_crit_edge:         ; preds = %for.inc214.5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found_src.i.i

for.inc214.6.i.i:                                 ; preds = %for.inc214.5.i.i
  %add216.6.i.i = add i32 %srchost_hash.2493.i.i, 7
  %rem217.6.i.i = and i32 %add216.6.i.i, 7
  %add208.7.i.i = add nsw i32 %rem217.6.i.i, %sub202.i.i
  %arrayidx209.7.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add208.7.i.i
  %197 = ptrtoint ptr %arrayidx209.7.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx209.7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %198, i32 %srchost_hash.2493.i.i)
  %cmp210.7.i.i = icmp eq i32 %198, %srchost_hash.2493.i.i
  br i1 %cmp210.7.i.i, label %for.inc214.6.i.i.found_src.i.i_crit_edge, label %for.inc214.7.i.i

for.inc214.6.i.i.found_src.i.i_crit_edge:         ; preds = %for.inc214.6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found_src.i.i

for.inc214.7.i.i:                                 ; preds = %for.inc214.6.i.i
  %srchost_bulk_flow_count226.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %conv198.i.i, i32 2
  %199 = ptrtoint ptr %srchost_bulk_flow_count226.i.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %srchost_bulk_flow_count226.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %200)
  %tobool227.not.i.i = icmp eq i16 %200, 0
  br i1 %tobool227.not.i.i, label %for.inc214.7.i.i.for.end234.i.i_crit_edge, label %for.inc230.i.i

for.inc214.7.i.i.for.end234.i.i_crit_edge:        ; preds = %for.inc214.7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end234.i.i

for.inc230.i.i:                                   ; preds = %for.inc214.7.i.i
  %srchost_bulk_flow_count226.1.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add208.1.i.i, i32 2
  %201 = ptrtoint ptr %srchost_bulk_flow_count226.1.i.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %srchost_bulk_flow_count226.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %202)
  %tobool227.not.1.i.i = icmp eq i16 %202, 0
  br i1 %tobool227.not.1.i.i, label %for.inc230.i.i.for.end234.i.i_crit_edge, label %for.inc230.1.i.i

for.inc230.i.i.for.end234.i.i_crit_edge:          ; preds = %for.inc230.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end234.i.i

for.inc230.1.i.i:                                 ; preds = %for.inc230.i.i
  %srchost_bulk_flow_count226.2.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add208.2.i.i, i32 2
  %203 = ptrtoint ptr %srchost_bulk_flow_count226.2.i.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %srchost_bulk_flow_count226.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %204)
  %tobool227.not.2.i.i = icmp eq i16 %204, 0
  br i1 %tobool227.not.2.i.i, label %for.inc230.1.i.i.for.end234.i.i_crit_edge, label %for.inc230.2.i.i

for.inc230.1.i.i.for.end234.i.i_crit_edge:        ; preds = %for.inc230.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end234.i.i

for.inc230.2.i.i:                                 ; preds = %for.inc230.1.i.i
  %srchost_bulk_flow_count226.3.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add208.3.i.i, i32 2
  %205 = ptrtoint ptr %srchost_bulk_flow_count226.3.i.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %srchost_bulk_flow_count226.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %206)
  %tobool227.not.3.i.i = icmp eq i16 %206, 0
  br i1 %tobool227.not.3.i.i, label %for.inc230.2.i.i.for.end234.i.i_crit_edge, label %for.inc230.3.i.i

for.inc230.2.i.i.for.end234.i.i_crit_edge:        ; preds = %for.inc230.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end234.i.i

for.inc230.3.i.i:                                 ; preds = %for.inc230.2.i.i
  %srchost_bulk_flow_count226.4.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add208.4.i.i, i32 2
  %207 = ptrtoint ptr %srchost_bulk_flow_count226.4.i.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %srchost_bulk_flow_count226.4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %208)
  %tobool227.not.4.i.i = icmp eq i16 %208, 0
  br i1 %tobool227.not.4.i.i, label %for.inc230.3.i.i.for.end234.i.i_crit_edge, label %for.inc230.4.i.i

for.inc230.3.i.i.for.end234.i.i_crit_edge:        ; preds = %for.inc230.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end234.i.i

for.inc230.4.i.i:                                 ; preds = %for.inc230.3.i.i
  %srchost_bulk_flow_count226.5.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add208.5.i.i, i32 2
  %209 = ptrtoint ptr %srchost_bulk_flow_count226.5.i.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %srchost_bulk_flow_count226.5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %210)
  %tobool227.not.5.i.i = icmp eq i16 %210, 0
  br i1 %tobool227.not.5.i.i, label %for.inc230.4.i.i.for.end234.i.i_crit_edge, label %for.inc230.5.i.i

for.inc230.4.i.i.for.end234.i.i_crit_edge:        ; preds = %for.inc230.4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end234.i.i

for.inc230.5.i.i:                                 ; preds = %for.inc230.4.i.i
  %srchost_bulk_flow_count226.6.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add208.6.i.i, i32 2
  %211 = ptrtoint ptr %srchost_bulk_flow_count226.6.i.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %srchost_bulk_flow_count226.6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %212)
  %tobool227.not.6.i.i = icmp eq i16 %212, 0
  br i1 %tobool227.not.6.i.i, label %for.inc230.5.i.i.for.end234.i.i_crit_edge, label %for.inc230.6.i.i

for.inc230.5.i.i.for.end234.i.i_crit_edge:        ; preds = %for.inc230.5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end234.i.i

for.inc230.6.i.i:                                 ; preds = %for.inc230.5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %srchost_bulk_flow_count226.7.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add208.7.i.i, i32 2
  %213 = ptrtoint ptr %srchost_bulk_flow_count226.7.i.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %srchost_bulk_flow_count226.7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %214)
  %tobool227.not.7.i.i = icmp eq i16 %214, 0
  %spec.select58.i = select i1 %tobool227.not.7.i.i, i32 %add208.7.i.i, i32 %conv198.i.i
  br label %for.end234.i.i

for.end234.i.i:                                   ; preds = %for.inc230.6.i.i, %for.inc230.5.i.i.for.end234.i.i_crit_edge, %for.inc230.4.i.i.for.end234.i.i_crit_edge, %for.inc230.3.i.i.for.end234.i.i_crit_edge, %for.inc230.2.i.i.for.end234.i.i_crit_edge, %for.inc230.1.i.i.for.end234.i.i_crit_edge, %for.inc230.i.i.for.end234.i.i_crit_edge, %for.inc214.7.i.i.for.end234.i.i_crit_edge
  %add236.pre-phi.i.i = phi i32 [ %add208.6.i.i, %for.inc230.5.i.i.for.end234.i.i_crit_edge ], [ %add208.5.i.i, %for.inc230.4.i.i.for.end234.i.i_crit_edge ], [ %add208.4.i.i, %for.inc230.3.i.i.for.end234.i.i_crit_edge ], [ %add208.3.i.i, %for.inc230.2.i.i.for.end234.i.i_crit_edge ], [ %add208.2.i.i, %for.inc230.1.i.i.for.end234.i.i_crit_edge ], [ %add208.1.i.i, %for.inc230.i.i.for.end234.i.i_crit_edge ], [ %conv198.i.i, %for.inc214.7.i.i.for.end234.i.i_crit_edge ], [ %spec.select58.i, %for.inc230.6.i.i ]
  %arrayidx237.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add236.pre-phi.i.i
  %215 = ptrtoint ptr %arrayidx237.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %srchost_hash.2493.i.i, ptr %arrayidx237.i.i, align 4
  br label %found_src.i.i

found_src.i.i:                                    ; preds = %for.end234.i.i, %for.inc214.6.i.i.found_src.i.i_crit_edge, %for.inc214.5.i.i.found_src.i.i_crit_edge, %for.inc214.4.i.i.found_src.i.i_crit_edge, %for.inc214.3.i.i.found_src.i.i_crit_edge, %for.inc214.2.i.i.found_src.i.i_crit_edge, %for.inc214.1.i.i.found_src.i.i_crit_edge, %for.inc214.i.i.found_src.i.i_crit_edge, %if.then196.i.i.found_src.i.i_crit_edge
  %add239.pre-phi.i.i = phi i32 [ %add236.pre-phi.i.i, %for.end234.i.i ], [ %add208.7.i.i, %for.inc214.6.i.i.found_src.i.i_crit_edge ], [ %add208.6.i.i, %for.inc214.5.i.i.found_src.i.i_crit_edge ], [ %add208.5.i.i, %for.inc214.4.i.i.found_src.i.i_crit_edge ], [ %add208.4.i.i, %for.inc214.3.i.i.found_src.i.i_crit_edge ], [ %add208.3.i.i, %for.inc214.2.i.i.found_src.i.i_crit_edge ], [ %add208.2.i.i, %for.inc214.1.i.i.found_src.i.i_crit_edge ], [ %add208.1.i.i, %for.inc214.i.i.found_src.i.i_crit_edge ], [ %conv198.i.i, %if.then196.i.i.found_src.i.i_crit_edge ]
  %conv240.i.i = trunc i32 %add239.pre-phi.i.i to i16
  %set244.i.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %idxprom193511.i.i, i32 8
  %216 = ptrtoint ptr %set244.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %set244.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %217)
  %cmp246.i.i = icmp eq i8 %217, 3
  br i1 %cmp246.i.i, label %if.then248.i.i, label %found_src.i.i.if.end254.i.i_crit_edge

found_src.i.i.if.end254.i.i_crit_edge:            ; preds = %found_src.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end254.i.i

if.then248.i.i:                                   ; preds = %found_src.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %idxprom250.i.i = and i32 %add239.pre-phi.i.i, 65535
  %srchost_bulk_flow_count252.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %idxprom250.i.i, i32 2
  %218 = ptrtoint ptr %srchost_bulk_flow_count252.i.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %srchost_bulk_flow_count252.i.i, align 4
  %inc253.i.i = add i16 %219, 1
  store i16 %inc253.i.i, ptr %srchost_bulk_flow_count252.i.i, align 4
  br label %if.end254.i.i

if.end254.i.i:                                    ; preds = %if.then248.i.i, %found_src.i.i.if.end254.i.i_crit_edge
  %srchost258.i.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %idxprom193511.i.i, i32 6
  %220 = ptrtoint ptr %srchost258.i.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %conv240.i.i, ptr %srchost258.i.i, align 8
  br i1 %allocate_dst.0.shrunk509.i.i, label %if.end254.i.i.if.then261.i.i_crit_edge, label %if.end254.i.i.if.end325.i.i_crit_edge

if.end254.i.i.if.end325.i.i_crit_edge:            ; preds = %if.end254.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end325.i.i

if.end254.i.i.if.then261.i.i_crit_edge:           ; preds = %if.end254.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then261.i.i

if.end259.i.i:                                    ; preds = %found.i.i.if.end259.i.i_crit_edge, %if.then152.i.i.if.end259.i.i_crit_edge, %if.then133.i.i.if.end259.i.i_crit_edge
  %idxprom193504.i.i = phi i32 [ %idxprom.i52.i, %found.i.i.if.end259.i.i_crit_edge ], [ %add190505.i.i, %if.then133.i.i.if.end259.i.i_crit_edge ], [ %add190512.pre-phi.i.i, %if.then152.i.i.if.end259.i.i_crit_edge ]
  %conv191503.i.i = phi i16 [ %conv95.i.i, %found.i.i.if.end259.i.i_crit_edge ], [ %conv191506.i.i, %if.then133.i.i.if.end259.i.i_crit_edge ], [ %conv191513.i.i, %if.then152.i.i.if.end259.i.i_crit_edge ]
  %allocate_dst.0.shrunk502.i.i = phi i1 [ %cmp.i482.i.i, %found.i.i.if.end259.i.i_crit_edge ], [ %cmp.i474.i.i, %if.then133.i.i.if.end259.i.i_crit_edge ], [ %cmp.i478.i.i, %if.then152.i.i.if.end259.i.i_crit_edge ]
  br i1 %allocate_dst.0.shrunk502.i.i, label %if.end259.i.i.if.then261.i.i_crit_edge, label %if.end259.i.i.if.end325.i.i_crit_edge

if.end259.i.i.if.end325.i.i_crit_edge:            ; preds = %if.end259.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end325.i.i

if.end259.i.i.if.then261.i.i_crit_edge:           ; preds = %if.end259.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then261.i.i

if.then261.i.i:                                   ; preds = %if.end259.i.i.if.then261.i.i_crit_edge, %if.end254.i.i.if.then261.i.i_crit_edge
  %conv191503520.i.i = phi i16 [ %conv191510.i.i, %if.end254.i.i.if.then261.i.i_crit_edge ], [ %conv191503.i.i, %if.end259.i.i.if.then261.i.i_crit_edge ]
  %idxprom193504519.i.i = phi i32 [ %idxprom193511.i.i, %if.end254.i.i.if.then261.i.i_crit_edge ], [ %idxprom193504.i.i, %if.end259.i.i.if.then261.i.i_crit_edge ]
  %conv263.i.i = and i32 %dsthost_hash.2494.i.i, 1023
  %rem265.i.i = and i32 %dsthost_hash.2494.i.i, 7
  %sub267.i.i = sub nsw i32 %conv263.i.i, %rem265.i.i
  %dsthost_tag.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %conv263.i.i, i32 1
  %221 = ptrtoint ptr %dsthost_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %dsthost_tag.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %222, i32 %dsthost_hash.2494.i.i)
  %cmp275.i.i = icmp eq i32 %222, %dsthost_hash.2494.i.i
  br i1 %cmp275.i.i, label %if.then261.i.i.found_dst.i.i_crit_edge, label %for.inc279.i.i

if.then261.i.i.found_dst.i.i_crit_edge:           ; preds = %if.then261.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found_dst.i.i

for.inc279.i.i:                                   ; preds = %if.then261.i.i
  %add281.i.i = add i32 %dsthost_hash.2494.i.i, 1
  %rem282.i.i = and i32 %add281.i.i, 7
  %add273.1.i.i = add nsw i32 %rem282.i.i, %sub267.i.i
  %dsthost_tag.1.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add273.1.i.i, i32 1
  %223 = ptrtoint ptr %dsthost_tag.1.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %dsthost_tag.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %224, i32 %dsthost_hash.2494.i.i)
  %cmp275.1.i.i = icmp eq i32 %224, %dsthost_hash.2494.i.i
  br i1 %cmp275.1.i.i, label %for.inc279.i.i.found_dst.i.i_crit_edge, label %for.inc279.1.i.i

for.inc279.i.i.found_dst.i.i_crit_edge:           ; preds = %for.inc279.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found_dst.i.i

for.inc279.1.i.i:                                 ; preds = %for.inc279.i.i
  %add281.1.i.i = add i32 %dsthost_hash.2494.i.i, 2
  %rem282.1.i.i = and i32 %add281.1.i.i, 7
  %add273.2.i.i = add nsw i32 %rem282.1.i.i, %sub267.i.i
  %dsthost_tag.2.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add273.2.i.i, i32 1
  %225 = ptrtoint ptr %dsthost_tag.2.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %dsthost_tag.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %226, i32 %dsthost_hash.2494.i.i)
  %cmp275.2.i.i = icmp eq i32 %226, %dsthost_hash.2494.i.i
  br i1 %cmp275.2.i.i, label %for.inc279.1.i.i.found_dst.i.i_crit_edge, label %for.inc279.2.i.i

for.inc279.1.i.i.found_dst.i.i_crit_edge:         ; preds = %for.inc279.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found_dst.i.i

for.inc279.2.i.i:                                 ; preds = %for.inc279.1.i.i
  %add281.2.i.i = add i32 %dsthost_hash.2494.i.i, 3
  %rem282.2.i.i = and i32 %add281.2.i.i, 7
  %add273.3.i.i = add nsw i32 %rem282.2.i.i, %sub267.i.i
  %dsthost_tag.3.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add273.3.i.i, i32 1
  %227 = ptrtoint ptr %dsthost_tag.3.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %dsthost_tag.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %228, i32 %dsthost_hash.2494.i.i)
  %cmp275.3.i.i = icmp eq i32 %228, %dsthost_hash.2494.i.i
  br i1 %cmp275.3.i.i, label %for.inc279.2.i.i.found_dst.i.i_crit_edge, label %for.inc279.3.i.i

for.inc279.2.i.i.found_dst.i.i_crit_edge:         ; preds = %for.inc279.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found_dst.i.i

for.inc279.3.i.i:                                 ; preds = %for.inc279.2.i.i
  %add281.3.i.i = add i32 %dsthost_hash.2494.i.i, 4
  %rem282.3.i.i = and i32 %add281.3.i.i, 7
  %add273.4.i.i = add nsw i32 %rem282.3.i.i, %sub267.i.i
  %dsthost_tag.4.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add273.4.i.i, i32 1
  %229 = ptrtoint ptr %dsthost_tag.4.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %dsthost_tag.4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %dsthost_hash.2494.i.i)
  %cmp275.4.i.i = icmp eq i32 %230, %dsthost_hash.2494.i.i
  br i1 %cmp275.4.i.i, label %for.inc279.3.i.i.found_dst.i.i_crit_edge, label %for.inc279.4.i.i

for.inc279.3.i.i.found_dst.i.i_crit_edge:         ; preds = %for.inc279.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found_dst.i.i

for.inc279.4.i.i:                                 ; preds = %for.inc279.3.i.i
  %add281.4.i.i = add i32 %dsthost_hash.2494.i.i, 5
  %rem282.4.i.i = and i32 %add281.4.i.i, 7
  %add273.5.i.i = add nsw i32 %rem282.4.i.i, %sub267.i.i
  %dsthost_tag.5.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add273.5.i.i, i32 1
  %231 = ptrtoint ptr %dsthost_tag.5.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %dsthost_tag.5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %232, i32 %dsthost_hash.2494.i.i)
  %cmp275.5.i.i = icmp eq i32 %232, %dsthost_hash.2494.i.i
  br i1 %cmp275.5.i.i, label %for.inc279.4.i.i.found_dst.i.i_crit_edge, label %for.inc279.5.i.i

for.inc279.4.i.i.found_dst.i.i_crit_edge:         ; preds = %for.inc279.4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found_dst.i.i

for.inc279.5.i.i:                                 ; preds = %for.inc279.4.i.i
  %add281.5.i.i = add i32 %dsthost_hash.2494.i.i, 6
  %rem282.5.i.i = and i32 %add281.5.i.i, 7
  %add273.6.i.i = add nsw i32 %rem282.5.i.i, %sub267.i.i
  %dsthost_tag.6.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add273.6.i.i, i32 1
  %233 = ptrtoint ptr %dsthost_tag.6.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %dsthost_tag.6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %234, i32 %dsthost_hash.2494.i.i)
  %cmp275.6.i.i = icmp eq i32 %234, %dsthost_hash.2494.i.i
  br i1 %cmp275.6.i.i, label %for.inc279.5.i.i.found_dst.i.i_crit_edge, label %for.inc279.6.i.i

for.inc279.5.i.i.found_dst.i.i_crit_edge:         ; preds = %for.inc279.5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found_dst.i.i

for.inc279.6.i.i:                                 ; preds = %for.inc279.5.i.i
  %add281.6.i.i = add i32 %dsthost_hash.2494.i.i, 7
  %rem282.6.i.i = and i32 %add281.6.i.i, 7
  %add273.7.i.i = add nsw i32 %rem282.6.i.i, %sub267.i.i
  %dsthost_tag.7.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add273.7.i.i, i32 1
  %235 = ptrtoint ptr %dsthost_tag.7.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %dsthost_tag.7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %236, i32 %dsthost_hash.2494.i.i)
  %cmp275.7.i.i = icmp eq i32 %236, %dsthost_hash.2494.i.i
  br i1 %cmp275.7.i.i, label %for.inc279.6.i.i.found_dst.i.i_crit_edge, label %for.inc279.7.i.i

for.inc279.6.i.i.found_dst.i.i_crit_edge:         ; preds = %for.inc279.6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %found_dst.i.i

for.inc279.7.i.i:                                 ; preds = %for.inc279.6.i.i
  %dsthost_bulk_flow_count291.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %conv263.i.i, i32 3
  %237 = ptrtoint ptr %dsthost_bulk_flow_count291.i.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %dsthost_bulk_flow_count291.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %238)
  %tobool292.not.i.i = icmp eq i16 %238, 0
  br i1 %tobool292.not.i.i, label %for.inc279.7.i.i.for.end299.i.i_crit_edge, label %for.inc295.i.i

for.inc279.7.i.i.for.end299.i.i_crit_edge:        ; preds = %for.inc279.7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end299.i.i

for.inc295.i.i:                                   ; preds = %for.inc279.7.i.i
  %dsthost_bulk_flow_count291.1.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add273.1.i.i, i32 3
  %239 = ptrtoint ptr %dsthost_bulk_flow_count291.1.i.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %dsthost_bulk_flow_count291.1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %240)
  %tobool292.not.1.i.i = icmp eq i16 %240, 0
  br i1 %tobool292.not.1.i.i, label %for.inc295.i.i.for.end299.i.i_crit_edge, label %for.inc295.1.i.i

for.inc295.i.i.for.end299.i.i_crit_edge:          ; preds = %for.inc295.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end299.i.i

for.inc295.1.i.i:                                 ; preds = %for.inc295.i.i
  %dsthost_bulk_flow_count291.2.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add273.2.i.i, i32 3
  %241 = ptrtoint ptr %dsthost_bulk_flow_count291.2.i.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %dsthost_bulk_flow_count291.2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %242)
  %tobool292.not.2.i.i = icmp eq i16 %242, 0
  br i1 %tobool292.not.2.i.i, label %for.inc295.1.i.i.for.end299.i.i_crit_edge, label %for.inc295.2.i.i

for.inc295.1.i.i.for.end299.i.i_crit_edge:        ; preds = %for.inc295.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end299.i.i

for.inc295.2.i.i:                                 ; preds = %for.inc295.1.i.i
  %dsthost_bulk_flow_count291.3.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add273.3.i.i, i32 3
  %243 = ptrtoint ptr %dsthost_bulk_flow_count291.3.i.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %dsthost_bulk_flow_count291.3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %244)
  %tobool292.not.3.i.i = icmp eq i16 %244, 0
  br i1 %tobool292.not.3.i.i, label %for.inc295.2.i.i.for.end299.i.i_crit_edge, label %for.inc295.3.i.i

for.inc295.2.i.i.for.end299.i.i_crit_edge:        ; preds = %for.inc295.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end299.i.i

for.inc295.3.i.i:                                 ; preds = %for.inc295.2.i.i
  %dsthost_bulk_flow_count291.4.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add273.4.i.i, i32 3
  %245 = ptrtoint ptr %dsthost_bulk_flow_count291.4.i.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %dsthost_bulk_flow_count291.4.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %246)
  %tobool292.not.4.i.i = icmp eq i16 %246, 0
  br i1 %tobool292.not.4.i.i, label %for.inc295.3.i.i.for.end299.i.i_crit_edge, label %for.inc295.4.i.i

for.inc295.3.i.i.for.end299.i.i_crit_edge:        ; preds = %for.inc295.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end299.i.i

for.inc295.4.i.i:                                 ; preds = %for.inc295.3.i.i
  %dsthost_bulk_flow_count291.5.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add273.5.i.i, i32 3
  %247 = ptrtoint ptr %dsthost_bulk_flow_count291.5.i.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %dsthost_bulk_flow_count291.5.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %248)
  %tobool292.not.5.i.i = icmp eq i16 %248, 0
  br i1 %tobool292.not.5.i.i, label %for.inc295.4.i.i.for.end299.i.i_crit_edge, label %for.inc295.5.i.i

for.inc295.4.i.i.for.end299.i.i_crit_edge:        ; preds = %for.inc295.4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end299.i.i

for.inc295.5.i.i:                                 ; preds = %for.inc295.4.i.i
  %dsthost_bulk_flow_count291.6.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add273.6.i.i, i32 3
  %249 = ptrtoint ptr %dsthost_bulk_flow_count291.6.i.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %dsthost_bulk_flow_count291.6.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %250)
  %tobool292.not.6.i.i = icmp eq i16 %250, 0
  br i1 %tobool292.not.6.i.i, label %for.inc295.5.i.i.for.end299.i.i_crit_edge, label %for.inc295.6.i.i

for.inc295.5.i.i.for.end299.i.i_crit_edge:        ; preds = %for.inc295.5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end299.i.i

for.inc295.6.i.i:                                 ; preds = %for.inc295.5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dsthost_bulk_flow_count291.7.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add273.7.i.i, i32 3
  %251 = ptrtoint ptr %dsthost_bulk_flow_count291.7.i.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %dsthost_bulk_flow_count291.7.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %252)
  %tobool292.not.7.i.i = icmp eq i16 %252, 0
  %spec.select59.i = select i1 %tobool292.not.7.i.i, i32 %add273.7.i.i, i32 %conv263.i.i
  br label %for.end299.i.i

for.end299.i.i:                                   ; preds = %for.inc295.6.i.i, %for.inc295.5.i.i.for.end299.i.i_crit_edge, %for.inc295.4.i.i.for.end299.i.i_crit_edge, %for.inc295.3.i.i.for.end299.i.i_crit_edge, %for.inc295.2.i.i.for.end299.i.i_crit_edge, %for.inc295.1.i.i.for.end299.i.i_crit_edge, %for.inc295.i.i.for.end299.i.i_crit_edge, %for.inc279.7.i.i.for.end299.i.i_crit_edge
  %add301.pre-phi.i.i = phi i32 [ %add273.6.i.i, %for.inc295.5.i.i.for.end299.i.i_crit_edge ], [ %add273.5.i.i, %for.inc295.4.i.i.for.end299.i.i_crit_edge ], [ %add273.4.i.i, %for.inc295.3.i.i.for.end299.i.i_crit_edge ], [ %add273.3.i.i, %for.inc295.2.i.i.for.end299.i.i_crit_edge ], [ %add273.2.i.i, %for.inc295.1.i.i.for.end299.i.i_crit_edge ], [ %add273.1.i.i, %for.inc295.i.i.for.end299.i.i_crit_edge ], [ %conv263.i.i, %for.inc279.7.i.i.for.end299.i.i_crit_edge ], [ %spec.select59.i, %for.inc295.6.i.i ]
  %dsthost_tag303.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %add301.pre-phi.i.i, i32 1
  %253 = ptrtoint ptr %dsthost_tag303.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %dsthost_hash.2494.i.i, ptr %dsthost_tag303.i.i, align 4
  br label %found_dst.i.i

found_dst.i.i:                                    ; preds = %for.end299.i.i, %for.inc279.6.i.i.found_dst.i.i_crit_edge, %for.inc279.5.i.i.found_dst.i.i_crit_edge, %for.inc279.4.i.i.found_dst.i.i_crit_edge, %for.inc279.3.i.i.found_dst.i.i_crit_edge, %for.inc279.2.i.i.found_dst.i.i_crit_edge, %for.inc279.1.i.i.found_dst.i.i_crit_edge, %for.inc279.i.i.found_dst.i.i_crit_edge, %if.then261.i.i.found_dst.i.i_crit_edge
  %add304.pre-phi.i.i = phi i32 [ %add301.pre-phi.i.i, %for.end299.i.i ], [ %add273.7.i.i, %for.inc279.6.i.i.found_dst.i.i_crit_edge ], [ %add273.6.i.i, %for.inc279.5.i.i.found_dst.i.i_crit_edge ], [ %add273.5.i.i, %for.inc279.4.i.i.found_dst.i.i_crit_edge ], [ %add273.4.i.i, %for.inc279.3.i.i.found_dst.i.i_crit_edge ], [ %add273.3.i.i, %for.inc279.2.i.i.found_dst.i.i_crit_edge ], [ %add273.2.i.i, %for.inc279.1.i.i.found_dst.i.i_crit_edge ], [ %add273.1.i.i, %for.inc279.i.i.found_dst.i.i_crit_edge ], [ %conv263.i.i, %if.then261.i.i.found_dst.i.i_crit_edge ]
  %conv305.i.i = trunc i32 %add304.pre-phi.i.i to i16
  %set309.i.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %idxprom193504519.i.i, i32 8
  %254 = ptrtoint ptr %set309.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %set309.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %255)
  %cmp311.i.i = icmp eq i8 %255, 3
  br i1 %cmp311.i.i, label %if.then313.i.i, label %found_dst.i.i.if.end319.i.i_crit_edge

found_dst.i.i.if.end319.i.i_crit_edge:            ; preds = %found_dst.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end319.i.i

if.then313.i.i:                                   ; preds = %found_dst.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %idxprom315.i.i = and i32 %add304.pre-phi.i.i, 65535
  %dsthost_bulk_flow_count317.i.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %idxprom315.i.i, i32 3
  %256 = ptrtoint ptr %dsthost_bulk_flow_count317.i.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %dsthost_bulk_flow_count317.i.i, align 2
  %inc318.i.i = add i16 %257, 1
  store i16 %inc318.i.i, ptr %dsthost_bulk_flow_count317.i.i, align 2
  br label %if.end319.i.i

if.end319.i.i:                                    ; preds = %if.then313.i.i, %found_dst.i.i.if.end319.i.i_crit_edge
  %dsthost323.i.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %idxprom193504519.i.i, i32 7
  %258 = ptrtoint ptr %dsthost323.i.i to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 %conv305.i.i, ptr %dsthost323.i.i, align 2
  br label %if.end325.i.i

if.end325.i.i:                                    ; preds = %if.end319.i.i, %if.end259.i.i.if.end325.i.i_crit_edge, %if.end254.i.i.if.end325.i.i_crit_edge, %if.end259.thread.i.i, %if.then111.i.i
  %reduced_hash.0.i.i = phi i16 [ %conv95.i.i, %if.then111.i.i ], [ %conv191503520.i.i, %if.end319.i.i ], [ %conv191503.i.i, %if.end259.i.i.if.end325.i.i_crit_edge ], [ %conv191499.i.i, %if.end259.thread.i.i ], [ %conv191510.i.i, %if.end254.i.i.if.end325.i.i_crit_edge ]
  %conv326.i.i = zext i16 %reduced_hash.0.i.i to i32
  %phi.bo.i = add nuw nsw i32 %conv326.i.i, 1
  br label %if.end6

if.then5:                                         ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #15
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %259 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %drops.i.i, align 4
  %inc.i.i498 = add i32 %260, 1
  store i32 %inc.i.i498, ptr %drops.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.thread
  %ret.1.ph622 = phi i32 [ 65536, %if.then.thread ], [ 131072, %if.then5 ]
  %261 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %to_free, align 4
  %263 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %262, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  br label %cleanup321

if.end6:                                          ; preds = %if.end325.i.i, %cake_select_tin.exit.i.if.end6_crit_edge
  %retval.0.i.i = phi i32 [ %phi.bo.i, %if.end325.i.i ], [ 1, %cake_select_tin.exit.i.if.end6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %host_keys.i.i) #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %keys.i.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #15
  %dec = add nsw i32 %retval.0.i.i, -1
  %arrayidx = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %dec
  %tin_backlog = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 22
  %264 = ptrtoint ptr %tin_backlog to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %tin_backlog, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool7.not = icmp eq i32 %265, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end36_crit_edge

if.end6.if.end36_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then8:                                         ; preds = %if.end6
  %time_next_packet = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 16
  %266 = ptrtoint ptr %time_next_packet to i32
  call void @__asan_load8_noabort(i32 %266)
  %267 = load i64, ptr %time_next_packet, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %267, i64 %call2)
  %cmp.i.i499 = icmp slt i64 %267, %call2
  br i1 %cmp.i.i499, label %if.then10, label %if.then8.if.end12_crit_edge

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %268 = ptrtoint ptr %time_next_packet to i32
  call void @__asan_store8_noabort(i32 %268)
  store i64 %call2, ptr %time_next_packet, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8.if.end12_crit_edge
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %269 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %tobool14.not = icmp eq i32 %270, 0
  br i1 %tobool14.not, label %if.then15, label %if.end12.if.end36_crit_edge

if.end12.if.end36_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then15:                                        ; preds = %if.end12
  %time_next_packet16 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 7
  %271 = ptrtoint ptr %time_next_packet16 to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %time_next_packet16, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %272, i64 %call2)
  %cmp.i.i500 = icmp slt i64 %272, %call2
  br i1 %cmp.i.i500, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  %failsafe_next_packet = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 9
  %273 = ptrtoint ptr %failsafe_next_packet to i32
  call void @__asan_store8_noabort(i32 %273)
  store i64 %call2, ptr %failsafe_next_packet, align 8
  %274 = ptrtoint ptr %time_next_packet16 to i32
  call void @__asan_store8_noabort(i32 %274)
  store i64 %call2, ptr %time_next_packet16, align 8
  br label %if.end36

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_cmp8(i64 %272, i64 %call2)
  %cmp3.i.i = icmp sgt i64 %272, %call2
  br i1 %cmp3.i.i, label %land.lhs.true, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

land.lhs.true:                                    ; preds = %if.else
  %failsafe_next_packet23 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 9
  %275 = ptrtoint ptr %failsafe_next_packet23 to i32
  call void @__asan_load8_noabort(i32 %275)
  %276 = load i64, ptr %failsafe_next_packet23, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %276, i64 %call2)
  %cmp3.i.i501 = icmp sgt i64 %276, %call2
  br i1 %cmp3.i.i501, label %if.then26, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %277 = call i64 @llvm.smin.i64(i64 %272, i64 %276)
  %overlimits = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %278 = ptrtoint ptr %overlimits to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %overlimits, align 16
  %inc = add i32 %279, 1
  store i32 %inc, ptr %overlimits, align 16
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 48
  call void @qdisc_watchdog_schedule_range_ns(ptr noundef %watchdog, i64 noundef %277, i64 noundef 0) #15
  br label %if.end36

if.end36:                                         ; preds = %if.then26, %land.lhs.true.if.end36_crit_edge, %if.else.if.end36_crit_edge, %if.then18, %if.end12.if.end36_crit_edge, %if.end6.if.end36_crit_edge
  %max_skblen = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 12
  %280 = ptrtoint ptr %max_skblen to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %max_skblen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %281)
  %cmp37 = icmp ugt i32 %1, %281
  br i1 %cmp37, label %if.then41, label %if.end36.if.end43_crit_edge, !prof !66

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  %282 = ptrtoint ptr %max_skblen to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %1, ptr %max_skblen, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end36.if.end43_crit_edge
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %283 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %284, i32 0, i32 4
  %285 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %286)
  %tobool.i.not = icmp eq i16 %286, 0
  br i1 %tobool.i.not, label %if.end43.if.else97_crit_edge, label %land.lhs.true46

if.end43.if.else97_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else97

land.lhs.true46:                                  ; preds = %if.end43
  %287 = ptrtoint ptr %rate_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %rate_flags.i.i, align 8
  %289 = and i16 %288, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %289)
  %tobool49.not = icmp eq i16 %289, 0
  br i1 %tobool49.not, label %land.lhs.true46.if.else97_crit_edge, label %if.then50

land.lhs.true46.if.else97_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else97

if.then50:                                        ; preds = %land.lhs.true46
  %call51 = call i64 @netif_skb_features(ptr noundef %skb) #15
  %and52 = and i64 %call51, -34359672833
  %call.i = call ptr @__skb_gso_segment(ptr noundef %skb, i64 noundef %and52, i1 noundef zeroext true) #15
  %tobool.not.i502 = icmp eq ptr %call.i, null
  %cmp.i503 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i504 = or i1 %tobool.not.i502, %cmp.i503
  br i1 %spec.select.i504, label %if.then55, label %cond.end62

if.then55:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  %290 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %to_free, align 4
  %292 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %291, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %293 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %294, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %cleanup321

cond.end62:                                       ; preds = %if.then50
  %tail.i = getelementptr inbounds %struct.cake_flow, ptr %arrayidx, i32 0, i32 1
  %qlen70 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %buffer_used = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 24
  %packets = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 25
  br label %for.body

for.body:                                         ; preds = %flow_queue_add.exit.for.body_crit_edge, %cond.end62
  %numsegs.0644 = phi i32 [ 0, %cond.end62 ], [ %inc72, %flow_queue_add.exit.for.body_crit_edge ]
  %slen.0643 = phi i32 [ 0, %cond.end62 ], [ %add, %flow_queue_add.exit.for.body_crit_edge ]
  %segs.0641 = phi ptr [ %call.i, %cond.end62 ], [ %nskb.0642, %flow_queue_add.exit.for.body_crit_edge ]
  %295 = ptrtoint ptr %segs.0641 to i32
  call void @__asan_load4_noabort(i32 %295)
  %nskb.0642 = load ptr, ptr %segs.0641, align 8
  store ptr null, ptr %segs.0641, align 8
  %len65 = getelementptr inbounds %struct.sk_buff, ptr %segs.0641, i32 0, i32 6
  %296 = ptrtoint ptr %len65 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %len65, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %segs.0641, i32 0, i32 3
  %298 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %297, ptr %cb.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %segs.0641, i32 0, i32 3, i32 8
  %299 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store8_noabort(i32 %299)
  store i64 %call2, ptr %data.i.i, align 8
  %call67 = call fastcc i32 @cake_overhead(ptr noundef %privdata.i, ptr noundef nonnull %segs.0641)
  %adjusted_len = getelementptr inbounds %struct.sk_buff, ptr %segs.0641, i32 0, i32 3, i32 16
  %300 = ptrtoint ptr %adjusted_len to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %call67, ptr %adjusted_len, align 8
  %301 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %arrayidx, align 8
  %tobool.not.i505 = icmp eq ptr %302, null
  br i1 %tobool.not.i505, label %for.body.flow_queue_add.exit_crit_edge, label %if.else.i

for.body.flow_queue_add.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %flow_queue_add.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %303 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %tail.i, align 4
  br label %flow_queue_add.exit

flow_queue_add.exit:                              ; preds = %if.else.i, %for.body.flow_queue_add.exit_crit_edge
  %.sink.i = phi ptr [ %304, %if.else.i ], [ %arrayidx, %for.body.flow_queue_add.exit_crit_edge ]
  %305 = ptrtoint ptr %.sink.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %segs.0641, ptr %.sink.i, align 8
  %306 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %segs.0641, ptr %tail.i, align 4
  %307 = ptrtoint ptr %segs.0641 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr null, ptr %segs.0641, align 8
  %308 = ptrtoint ptr %qlen70 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %qlen70, align 8
  %inc71 = add i32 %309, 1
  store i32 %inc71, ptr %qlen70, align 8
  %310 = ptrtoint ptr %len65 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %len65, align 4
  %add = add i32 %311, %slen.0643
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %segs.0641, i32 0, i32 20
  %312 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %truesize, align 8
  %314 = ptrtoint ptr %buffer_used to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %buffer_used, align 8
  %add74 = add i32 %315, %313
  store i32 %add74, ptr %buffer_used, align 8
  %316 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %packets, align 4
  %inc75 = add i32 %317, 1
  store i32 %inc75, ptr %packets, align 4
  %tobool76.not = icmp eq ptr %nskb.0642, null
  %inc72 = add i32 %numsegs.0644, 1
  br i1 %tobool76.not, label %for.end, label %flow_queue_add.exit.for.body_crit_edge

flow_queue_add.exit.for.body_crit_edge:           ; preds = %flow_queue_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %flow_queue_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv82 = zext i32 %add to i64
  %bytes = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 26
  %318 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %318)
  %319 = load i64, ptr %bytes, align 8
  %add83 = add i64 %319, %conv82
  store i64 %add83, ptr %bytes, align 8
  %arrayidx84 = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 1, i32 %dec
  %320 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx84, align 4
  %add85 = add i32 %321, %add
  store i32 %add85, ptr %arrayidx84, align 4
  %322 = ptrtoint ptr %tin_backlog to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %tin_backlog, align 8
  %add87 = add i32 %323, %add
  store i32 %add87, ptr %tin_backlog, align 8
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %324 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %backlog, align 4
  %add89 = add i32 %325, %add
  store i32 %add89, ptr %backlog, align 4
  %avg_window_bytes = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 17, i32 3, i32 0, i32 0, i32 3
  %326 = ptrtoint ptr %avg_window_bytes to i32
  call void @__asan_load8_noabort(i32 %326)
  %327 = load i64, ptr %avg_window_bytes, align 8
  %add91 = add i64 %327, %conv82
  store i64 %add91, ptr %avg_window_bytes, align 8
  %sub = sub i32 0, %numsegs.0644
  %sub92 = sub i32 %1, %add
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %sub, i32 noundef %sub92) #15
  call void @consume_skb(ptr noundef %skb) #15
  br label %if.end153

if.else97:                                        ; preds = %land.lhs.true46.if.else97_crit_edge, %if.end43.if.else97_crit_edge
  %data.i.i506 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %328 = ptrtoint ptr %data.i.i506 to i32
  call void @__asan_store8_noabort(i32 %328)
  store i64 %call2, ptr %data.i.i506, align 8
  %call98 = call fastcc i32 @cake_overhead(ptr noundef %privdata.i, ptr noundef %skb)
  %adjusted_len100 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %329 = ptrtoint ptr %adjusted_len100 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %call98, ptr %adjusted_len100, align 8
  %330 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %arrayidx, align 8
  %tobool.not.i508 = icmp eq ptr %331, null
  br i1 %tobool.not.i508, label %if.else97.flow_queue_add.exit513_crit_edge, label %if.else.i510

if.else97.flow_queue_add.exit513_crit_edge:       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #17
  br label %flow_queue_add.exit513

if.else.i510:                                     ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #17
  %tail.i509 = getelementptr inbounds %struct.cake_flow, ptr %arrayidx, i32 0, i32 1
  %332 = ptrtoint ptr %tail.i509 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %tail.i509, align 4
  br label %flow_queue_add.exit513

flow_queue_add.exit513:                           ; preds = %if.else.i510, %if.else97.flow_queue_add.exit513_crit_edge
  %.sink.i511 = phi ptr [ %333, %if.else.i510 ], [ %arrayidx, %if.else97.flow_queue_add.exit513_crit_edge ]
  %334 = ptrtoint ptr %.sink.i511 to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %skb, ptr %.sink.i511, align 8
  %tail2.i512 = getelementptr inbounds %struct.cake_flow, ptr %arrayidx, i32 0, i32 1
  %335 = ptrtoint ptr %tail2.i512 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %skb, ptr %tail2.i512, align 4
  %336 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr null, ptr %skb, align 8
  %ack_filter = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 8
  %337 = ptrtoint ptr %ack_filter to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %ack_filter, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %338)
  %tobool101.not = icmp eq i8 %338, 0
  br i1 %tobool101.not, label %flow_queue_add.exit513.if.else129_crit_edge, label %if.then102

flow_queue_add.exit513.if.else129_crit_edge:      ; preds = %flow_queue_add.exit513
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else129

if.then102:                                       ; preds = %flow_queue_add.exit513
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %338)
  %cmp.i514 = icmp ne i8 %338, 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %_tcph.i) #15
  %339 = call ptr @memset(ptr %_tcph.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %_tcph_check.i) #15
  %340 = call ptr @memset(ptr %_tcph_check.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_iph.i) #15
  %341 = call ptr @memset(ptr %_iph.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_iph_check.i) #15
  %342 = call ptr @memset(ptr %_iph_check.i, i32 255, i32 40)
  %343 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %arrayidx, align 8
  %345 = ptrtoint ptr %tail2.i512 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %tail2.i512, align 4
  %cmp2.i = icmp eq ptr %344, %346
  br i1 %cmp2.i, label %if.then102.if.end104.thread625_crit_edge, label %if.end.i

if.then102.if.end104.thread625_crit_edge:         ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104.thread625

if.end.i:                                         ; preds = %if.then102
  %call.i516 = call fastcc ptr @cake_get_tcphdr(ptr noundef %346, ptr noundef nonnull %_tcph.i) #15
  %call5.i = call fastcc ptr @cake_get_iphdr(ptr noundef %346, ptr noundef nonnull %_iph.i) #15
  %tobool.not.i517 = icmp eq ptr %call.i516, null
  br i1 %tobool.not.i517, label %if.end.i.if.end104.thread625_crit_edge, label %if.end7.i

if.end.i.if.end104.thread625_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104.thread625

if.end7.i:                                        ; preds = %if.end.i
  %doff.i.i.i.i = getelementptr %struct.tcphdr, ptr %call.i516, i32 0, i32 4
  %347 = ptrtoint ptr %doff.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %347)
  %bf.load.i.i.i.i = load i16, ptr %doff.i.i.i.i, align 4
  %348 = lshr i16 %bf.load.i.i.i.i, 10
  %349 = and i16 %348, 60
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %349)
  %cmp52.i.i.i = icmp ugt i16 %349, 20
  br i1 %cmp52.i.i.i, label %while.body.preheader.i.i.i, label %if.end7.i.cake_tcph_get_tstamp.exit.i_crit_edge

if.end7.i.cake_tcph_get_tstamp.exit.i_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_tcph_get_tstamp.exit.i

while.body.preheader.i.i.i:                       ; preds = %if.end7.i
  %add.ptr.i.i.i = getelementptr %struct.tcphdr, ptr %call.i516, i32 1
  %mul.i.i.i.i = zext i16 %349 to i32
  %sub.i.i.i = add nsw i32 %mul.i.i.i.i, -20
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %while.body.preheader.i.i.i
  %ptr.054.i.i.i = phi ptr [ %ptr.1.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %while.body.preheader.i.i.i ]
  %length.053.i.i.i = phi i32 [ %length.1.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %sub.i.i.i, %while.body.preheader.i.i.i ]
  %incdec.ptr.i.i.i = getelementptr i8, ptr %ptr.054.i.i.i, i32 1
  %350 = ptrtoint ptr %ptr.054.i.i.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %ptr.054.i.i.i, align 1
  %352 = zext i8 %351 to i64
  call void @__sanitizer_cov_trace_switch(i64 %352, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %351, label %if.end6.i.i.i [
    i8 0, label %while.body.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge
    i8 1, label %if.then5.i.i.i
  ]

while.body.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_tcph_get_tstamp.exit.i

if.then5.i.i.i:                                   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dec.i.i.i = add i32 %length.053.i.i.i, -1
  br label %cleanup.i.i.i

if.end6.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length.053.i.i.i)
  %cmp7.i.i.i = icmp ult i32 %length.053.i.i.i, 2
  br i1 %cmp7.i.i.i, label %if.end6.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge, label %if.end10.i.i.i

if.end6.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_tcph_get_tstamp.exit.i

if.end10.i.i.i:                                   ; preds = %if.end6.i.i.i
  %353 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %incdec.ptr.i.i.i, align 1
  %conv12.i.i.i = zext i8 %354 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %354)
  %cmp13.i.i.i = icmp ult i8 %354, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %length.053.i.i.i, i32 %conv12.i.i.i)
  %cmp15.i.i.i = icmp ult i32 %length.053.i.i.i, %conv12.i.i.i
  %or.cond.i.i.i = select i1 %cmp13.i.i.i, i1 true, i1 %cmp15.i.i.i
  br i1 %or.cond.i.i.i, label %if.end10.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge, label %if.end18.i.i.i

if.end10.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_tcph_get_tstamp.exit.i

if.end18.i.i.i:                                   ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %351)
  %cmp19.i.i.i = icmp eq i8 %351, 8
  br i1 %cmp19.i.i.i, label %cake_get_tcpopt.exit.i.i, label %if.end22.i.i.i

if.end22.i.i.i:                                   ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr24.i.i.i = getelementptr i8, ptr %ptr.054.i.i.i, i32 %conv12.i.i.i
  %sub25.i.i.i = sub nsw i32 %length.053.i.i.i, %conv12.i.i.i
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.end22.i.i.i, %if.then5.i.i.i
  %length.1.i.i.i = phi i32 [ %dec.i.i.i, %if.then5.i.i.i ], [ %sub25.i.i.i, %if.end22.i.i.i ]
  %ptr.1.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.then5.i.i.i ], [ %add.ptr24.i.i.i, %if.end22.i.i.i ]
  %cmp.i.i.i518 = icmp sgt i32 %length.1.i.i.i, 0
  br i1 %cmp.i.i.i518, label %cleanup.i.i.i.while.body.i.i.i_crit_edge, label %cleanup.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge

cleanup.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_tcph_get_tstamp.exit.i

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i.i

cake_get_tcpopt.exit.i.i:                         ; preds = %if.end18.i.i.i
  %incdec.ptr11.le.i.i.i = getelementptr i8, ptr %ptr.054.i.i.i, i32 2
  %tobool.not.i.i519 = icmp ne ptr %incdec.ptr11.le.i.i.i, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %354)
  %cmp.i.i520 = icmp eq i8 %354, 10
  %or.cond.i.i = select i1 %tobool.not.i.i519, i1 %cmp.i.i520, i1 false
  br i1 %or.cond.i.i, label %if.then.i.i521, label %cake_get_tcpopt.exit.i.i.cake_tcph_get_tstamp.exit.i_crit_edge

cake_get_tcpopt.exit.i.i.cake_tcph_get_tstamp.exit.i_crit_edge: ; preds = %cake_get_tcpopt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_tcph_get_tstamp.exit.i

if.then.i.i521:                                   ; preds = %cake_get_tcpopt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %355 = ptrtoint ptr %incdec.ptr11.le.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %355, i32 4)
  %356 = load i32, ptr %incdec.ptr11.le.i.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %ptr.054.i.i.i, i32 6
  %357 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %357, i32 4)
  %358 = load i32, ptr %add.ptr.i.i, align 1
  br label %cake_tcph_get_tstamp.exit.i

cake_tcph_get_tstamp.exit.i:                      ; preds = %if.then.i.i521, %cake_get_tcpopt.exit.i.i.cake_tcph_get_tstamp.exit.i_crit_edge, %cleanup.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge, %if.end10.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge, %if.end6.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge, %while.body.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge, %if.end7.i.cake_tcph_get_tstamp.exit.i_crit_edge
  %tstamp.0.i = phi i32 [ %356, %if.then.i.i521 ], [ 0, %cake_get_tcpopt.exit.i.i.cake_tcph_get_tstamp.exit.i_crit_edge ], [ 0, %if.end7.i.cake_tcph_get_tstamp.exit.i_crit_edge ], [ 0, %while.body.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge ], [ 0, %if.end6.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge ], [ 0, %if.end10.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge ], [ 0, %cleanup.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge ]
  %tsecr.0.i = phi i32 [ %358, %if.then.i.i521 ], [ 0, %cake_get_tcpopt.exit.i.i.cake_tcph_get_tstamp.exit.i_crit_edge ], [ 0, %if.end7.i.cake_tcph_get_tstamp.exit.i_crit_edge ], [ 0, %while.body.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge ], [ 0, %if.end6.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge ], [ 0, %if.end10.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge ], [ 0, %cleanup.i.i.i.cake_tcph_get_tstamp.exit.i_crit_edge ]
  %359 = ptrtoint ptr %doff.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %doff.i.i.i.i, align 4
  %and.i522 = and i32 %360, 1179648
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %and.i522)
  %cmp8.not.i = icmp eq i32 %and.i522, 1048576
  br i1 %cmp8.not.i, label %for.cond.preheader.i, label %cake_tcph_get_tstamp.exit.i.if.end104.thread625_crit_edge

cake_tcph_get_tstamp.exit.i.if.end104.thread625_crit_edge: ; preds = %cake_tcph_get_tstamp.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104.thread625

for.cond.preheader.i:                             ; preds = %cake_tcph_get_tstamp.exit.i
  %361 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %361)
  %skb_check.0249.i = load ptr, ptr %arrayidx, align 8
  %tobool13.not250.i = icmp eq ptr %skb_check.0249.i, null
  %cmp14.not251.i = icmp eq ptr %skb_check.0249.i, %346
  %or.cond252.i = select i1 %tobool13.not250.i, i1 true, i1 %cmp14.not251.i
  br i1 %or.cond252.i, label %for.cond.preheader.i.if.end104.thread625_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end104.thread625_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104.thread625

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %dest33.i = getelementptr inbounds %struct.tcphdr, ptr %call.i516, i32 0, i32 1
  %saddr64.i = getelementptr inbounds %struct.ipv6hdr, ptr %call5.i, i32 0, i32 5
  %daddr69.i = getelementptr inbounds %struct.ipv6hdr, ptr %call5.i, i32 0, i32 6
  %saddr45.i = getelementptr inbounds %struct.iphdr, ptr %call5.i, i32 0, i32 8
  %daddr49.i = getelementptr inbounds %struct.iphdr, ptr %call5.i, i32 0, i32 9
  %ack_seq.i = getelementptr inbounds %struct.tcphdr, ptr %call.i516, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %skb_check.0263.i = phi ptr [ %skb_check.0249.i, %for.body.lr.ph.i ], [ %skb_check.0.i, %for.inc.i.for.body.i_crit_edge ]
  %elig_flags.0260.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %elig_flags.2.i, %for.inc.i.for.body.i_crit_edge ]
  %num_found.0258.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %num_found.2.i, %for.inc.i.for.body.i_crit_edge ]
  %skb_prev.0257.i = phi ptr [ null, %for.body.lr.ph.i ], [ %skb_check.0263.i, %for.inc.i.for.body.i_crit_edge ]
  %elig_ack_prev.0255.i = phi ptr [ null, %for.body.lr.ph.i ], [ %elig_ack_prev.3.i, %for.inc.i.for.body.i_crit_edge ]
  %elig_ack.0253.i = phi ptr [ null, %for.body.lr.ph.i ], [ %elig_ack.3.i, %for.inc.i.for.body.i_crit_edge ]
  %call16.i = call fastcc ptr @cake_get_iphdr(ptr noundef nonnull %skb_check.0263.i, ptr noundef nonnull %_iph_check.i) #15
  %call17.i = call fastcc ptr @cake_get_tcphdr(ptr noundef nonnull %skb_check.0263.i, ptr noundef nonnull %_tcph_check.i) #15
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %362 = ptrtoint ptr %call5.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %bf.load.i = load i8, ptr %call5.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %363 = ptrtoint ptr %call16.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %bf.load20.i = load i8, ptr %call16.i, align 4
  %bf.lshr21.i = lshr i8 %bf.load20.i, 4
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr.i, i8 %bf.lshr21.i)
  %cmp23.not.i = icmp eq i8 %bf.lshr.i, %bf.lshr21.i
  br i1 %cmp23.not.i, label %lor.lhs.false25.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

lor.lhs.false25.i:                                ; preds = %lor.lhs.false.i
  %364 = ptrtoint ptr %call17.i to i32
  call void @__asan_load2_noabort(i32 %364)
  %365 = load i16, ptr %call17.i, align 4
  %366 = ptrtoint ptr %call.i516 to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %call.i516, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %365, i16 %367)
  %cmp29.not.i = icmp eq i16 %365, %367
  br i1 %cmp29.not.i, label %lor.lhs.false31.i, label %lor.lhs.false25.i.for.inc.i_crit_edge

lor.lhs.false25.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

lor.lhs.false31.i:                                ; preds = %lor.lhs.false25.i
  %dest.i = getelementptr inbounds %struct.tcphdr, ptr %call17.i, i32 0, i32 1
  %368 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %368)
  %369 = load i16, ptr %dest.i, align 2
  %370 = ptrtoint ptr %dest33.i to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %dest33.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %369, i16 %371)
  %cmp35.not.i = icmp eq i16 %369, %371
  br i1 %cmp35.not.i, label %if.end38.i, label %lor.lhs.false31.i.for.inc.i_crit_edge

lor.lhs.false31.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end38.i:                                       ; preds = %lor.lhs.false31.i
  %trunc.i = trunc i8 %bf.lshr.i to i4
  %372 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %372, ptr @__sancov_gen_cov_switch_values.11)
  switch i4 %trunc.i, label %do.end.i [
    i4 4, label %if.then44.i
    i4 6, label %if.then62.i
  ]

if.then44.i:                                      ; preds = %if.end38.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %call16.i, i32 0, i32 8
  %373 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %saddr.i, align 4
  %375 = ptrtoint ptr %saddr45.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %saddr45.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %374, i32 %376)
  %cmp46.not.i = icmp eq i32 %374, %376
  br i1 %cmp46.not.i, label %lor.lhs.false48.i, label %if.then44.i.for.inc.i_crit_edge

if.then44.i.for.inc.i_crit_edge:                  ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

lor.lhs.false48.i:                                ; preds = %if.then44.i
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %call16.i, i32 0, i32 9
  %377 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %daddr.i, align 4
  %379 = ptrtoint ptr %daddr49.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %daddr49.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %378, i32 %380)
  %cmp50.not.i = icmp eq i32 %378, %380
  br i1 %cmp50.not.i, label %if.end53.i, label %lor.lhs.false48.i.for.inc.i_crit_edge

lor.lhs.false48.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end53.i:                                       ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #17
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %call16.i, i32 0, i32 2
  %381 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %tot_len.i, align 2
  %conv54.i = zext i16 %382 to i32
  %bf.clear.i = shl i8 %bf.load20.i, 2
  %383 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %383 to i32
  %sub.i = sub nsw i32 %conv54.i, %mul.i
  br label %if.end94.i

if.then62.i:                                      ; preds = %if.end38.i
  %saddr63.i = getelementptr inbounds %struct.ipv6hdr, ptr %call16.i, i32 0, i32 5
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %saddr63.i, ptr noundef dereferenceable(16) %saddr64.i, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool66.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool66.not.i, label %lor.lhs.false67.i, label %if.then62.i.for.inc.i_crit_edge

if.then62.i.for.inc.i_crit_edge:                  ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

lor.lhs.false67.i:                                ; preds = %if.then62.i
  %daddr68.i = getelementptr inbounds %struct.ipv6hdr, ptr %call16.i, i32 0, i32 6
  %bcmp244.i = call i32 @bcmp(ptr noundef dereferenceable(16) %daddr68.i, ptr noundef dereferenceable(16) %daddr69.i, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp244.i)
  %tobool71.not.i = icmp eq i32 %bcmp244.i, 0
  br i1 %tobool71.not.i, label %if.end73.i, label %lor.lhs.false67.i.for.inc.i_crit_edge

lor.lhs.false67.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false67.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end73.i:                                       ; preds = %lor.lhs.false67.i
  call void @__sanitizer_cov_trace_pc() #17
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %call16.i, i32 0, i32 2
  %384 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_load2_noabort(i32 %384)
  %385 = load i16, ptr %payload_len.i, align 4
  %conv74.i = zext i16 %385 to i32
  br label %if.end94.i

do.end.i:                                         ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1224, i32 noundef 9, ptr noundef null) #15
  br label %for.inc.i

if.end94.i:                                       ; preds = %if.end73.i, %if.end53.i
  %seglen.0.i = phi i32 [ %sub.i, %if.end53.i ], [ %conv74.i, %if.end73.i ]
  %tobool95.not.i = icmp eq ptr %elig_ack.0253.i, null
  br i1 %tobool95.not.i, label %if.end94.i.if.end101.i_crit_edge, label %land.lhs.true.i523

if.end94.i.if.end101.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101.i

land.lhs.true.i523:                               ; preds = %if.end94.i
  %arrayidx96.i = getelementptr [5 x i32], ptr %call17.i, i32 0, i32 3
  %386 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %arrayidx96.i, align 4
  %and97.i = and i32 %387, 12582912
  call void @__sanitizer_cov_trace_cmp4(i32 %and97.i, i32 %elig_flags.0260.i)
  %cmp98.not.i = icmp eq i32 %and97.i, %elig_flags.0260.i
  br i1 %cmp98.not.i, label %land.lhs.true.i523.if.end101.i_crit_edge, label %if.then100.i

land.lhs.true.i523.if.end101.i_crit_edge:         ; preds = %land.lhs.true.i523
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101.i

if.then100.i:                                     ; preds = %land.lhs.true.i523
  call void @__sanitizer_cov_trace_pc() #17
  %dec.i = add i32 %num_found.0258.i, -1
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then100.i, %land.lhs.true.i523.if.end101.i_crit_edge, %if.end94.i.if.end101.i_crit_edge
  %elig_ack.1.i = phi ptr [ null, %if.then100.i ], [ %elig_ack.0253.i, %land.lhs.true.i523.if.end101.i_crit_edge ], [ null, %if.end94.i.if.end101.i_crit_edge ]
  %elig_ack_prev.1.i = phi ptr [ null, %if.then100.i ], [ %elig_ack_prev.0255.i, %land.lhs.true.i523.if.end101.i_crit_edge ], [ %elig_ack_prev.0255.i, %if.end94.i.if.end101.i_crit_edge ]
  %num_found.1.i = phi i32 [ %dec.i, %if.then100.i ], [ %num_found.0258.i, %land.lhs.true.i523.if.end101.i_crit_edge ], [ %num_found.0258.i, %if.end94.i.if.end101.i_crit_edge ]
  %arrayidx.i.i524 = getelementptr [5 x i32], ptr %call17.i, i32 0, i32 3
  %388 = ptrtoint ptr %arrayidx.i.i524 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %arrayidx.i.i524, align 4
  %and.i.i525 = and i32 %389, 255787008
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %and.i.i525)
  %cmp.not.i.i = icmp eq i32 %and.i.i525, 1048576
  br i1 %cmp.not.i.i, label %while.cond.preheader.i.i, label %if.end101.i.for.inc.i_crit_edge

if.end101.i.for.inc.i_crit_edge:                  ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

while.cond.preheader.i.i:                         ; preds = %if.end101.i
  %390 = ptrtoint ptr %arrayidx.i.i524 to i32
  call void @__asan_load2_noabort(i32 %390)
  %bf.load.i.i.i = load i16, ptr %arrayidx.i.i524, align 4
  %391 = lshr i16 %bf.load.i.i.i, 10
  %392 = and i16 %391, 60
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %392)
  %cmp178.i.i = icmp ugt i16 %392, 20
  %mul.i.i.i = zext i16 %392 to i32
  br i1 %cmp178.i.i, label %while.body.preheader.i.i, label %while.cond.preheader.i.i.lor.lhs.false103.i_crit_edge

while.cond.preheader.i.i.lor.lhs.false103.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false103.i

while.body.preheader.i.i:                         ; preds = %while.cond.preheader.i.i
  %sub.i.i526 = add nsw i32 %mul.i.i.i, -20
  %add.ptr.i237.i = getelementptr %struct.tcphdr, ptr %call17.i, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %ptr.080.i.i = phi ptr [ %ptr.1.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i237.i, %while.body.preheader.i.i ]
  %length.079.i.i = phi i32 [ %length.1.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %sub.i.i526, %while.body.preheader.i.i ]
  %incdec.ptr.i.i = getelementptr i8, ptr %ptr.080.i.i, i32 1
  %393 = ptrtoint ptr %ptr.080.i.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %ptr.080.i.i, align 1
  %395 = zext i8 %394 to i64
  call void @__sanitizer_cov_trace_switch(i64 %395, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %394, label %if.end9.i.i [
    i8 0, label %while.body.i.i.lor.lhs.false103.i_crit_edge
    i8 1, label %if.then8.i.i
  ]

while.body.i.i.lor.lhs.false103.i_crit_edge:      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false103.i

if.then8.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dec.i.i527 = add i32 %length.079.i.i, -1
  br label %cleanup.i.i

if.end9.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length.079.i.i)
  %cmp10.i.i = icmp ult i32 %length.079.i.i, 2
  br i1 %cmp10.i.i, label %if.end9.i.i.lor.lhs.false103.i_crit_edge, label %if.end13.i.i

if.end9.i.i.lor.lhs.false103.i_crit_edge:         ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false103.i

if.end13.i.i:                                     ; preds = %if.end9.i.i
  %incdec.ptr14.i.i = getelementptr i8, ptr %ptr.080.i.i, i32 2
  %396 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %incdec.ptr.i.i, align 1
  %conv15.i.i = zext i8 %397 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %397)
  %cmp16.i.i = icmp ult i8 %397, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %length.079.i.i, i32 %conv15.i.i)
  %cmp18.i.i528 = icmp ult i32 %length.079.i.i, %conv15.i.i
  %or.cond.i238.i = select i1 %cmp16.i.i, i1 true, i1 %cmp18.i.i528
  br i1 %or.cond.i238.i, label %if.end13.i.i.lor.lhs.false103.i_crit_edge, label %if.end21.i.i

if.end13.i.i.lor.lhs.false103.i_crit_edge:        ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false103.i

if.end21.i.i:                                     ; preds = %if.end13.i.i
  %398 = zext i8 %394 to i64
  call void @__sanitizer_cov_trace_switch(i64 %398, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %394, label %if.end21.i.i.for.inc.i_crit_edge [
    i8 19, label %if.end21.i.i.sw.epilog.i.i530_crit_edge
    i8 5, label %sw.bb.i.i529
    i8 8, label %sw.bb26.i.i
  ]

if.end21.i.i.sw.epilog.i.i530_crit_edge:          ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i.i530

if.end21.i.i.for.inc.i_crit_edge:                 ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

sw.bb.i.i529:                                     ; preds = %if.end21.i.i
  %rem.i.i = and i32 %conv15.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.i.i)
  %cmp22.not.i.i = icmp eq i32 %rem.i.i, 2
  br i1 %cmp22.not.i.i, label %sw.bb.i.i529.sw.epilog.i.i530_crit_edge, label %sw.bb.i.i529.for.inc.i_crit_edge

sw.bb.i.i529.for.inc.i_crit_edge:                 ; preds = %sw.bb.i.i529
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

sw.bb.i.i529.sw.epilog.i.i530_crit_edge:          ; preds = %sw.bb.i.i529
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i.i530

sw.bb26.i.i:                                      ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %397)
  %cmp27.not.i.i = icmp eq i8 %397, 10
  br i1 %cmp27.not.i.i, label %if.end30.i.i, label %sw.bb26.i.i.for.inc.i_crit_edge

sw.bb26.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end30.i.i:                                     ; preds = %sw.bb26.i.i
  %399 = ptrtoint ptr %incdec.ptr14.i.i to i32
  call void @__asan_loadN_noabort(i32 %399, i32 4)
  %400 = load i32, ptr %incdec.ptr14.i.i, align 1
  %add.ptr32.i.i = getelementptr i8, ptr %ptr.080.i.i, i32 6
  %401 = ptrtoint ptr %add.ptr32.i.i to i32
  call void @__asan_loadN_noabort(i32 %401, i32 4)
  %402 = load i32, ptr %add.ptr32.i.i, align 1
  %sub.i.i239.i = sub i32 %tstamp.0.i, %400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i239.i)
  %cmp.i.i240.i = icmp slt i32 %sub.i.i239.i, 0
  %sub.i67.i.i = sub i32 %tsecr.0.i, %402
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i67.i.i)
  %cmp.i68.i.i = icmp slt i32 %sub.i67.i.i, 0
  %or.cond77.i.i = select i1 %cmp.i.i240.i, i1 true, i1 %cmp.i68.i.i
  br i1 %or.cond77.i.i, label %if.end30.i.i.for.inc.i_crit_edge, label %if.end30.i.i.sw.epilog.i.i530_crit_edge

if.end30.i.i.sw.epilog.i.i530_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i.i530

if.end30.i.i.for.inc.i_crit_edge:                 ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

sw.epilog.i.i530:                                 ; preds = %if.end30.i.i.sw.epilog.i.i530_crit_edge, %sw.bb.i.i529.sw.epilog.i.i530_crit_edge, %if.end21.i.i.sw.epilog.i.i530_crit_edge
  %add.ptr43.i.i = getelementptr i8, ptr %ptr.080.i.i, i32 %conv15.i.i
  %sub44.i.i = sub nsw i32 %length.079.i.i, %conv15.i.i
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %sw.epilog.i.i530, %if.then8.i.i
  %length.1.i.i = phi i32 [ %dec.i.i527, %if.then8.i.i ], [ %sub44.i.i, %sw.epilog.i.i530 ]
  %ptr.1.i.i = phi ptr [ %incdec.ptr.i.i, %if.then8.i.i ], [ %add.ptr43.i.i, %sw.epilog.i.i530 ]
  %cmp1.i.i = icmp sgt i32 %length.1.i.i, 0
  br i1 %cmp1.i.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %cleanup.i.i.lor.lhs.false103.i_crit_edge

cleanup.i.i.lor.lhs.false103.i_crit_edge:         ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false103.i

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

lor.lhs.false103.i:                               ; preds = %cleanup.i.i.lor.lhs.false103.i_crit_edge, %if.end13.i.i.lor.lhs.false103.i_crit_edge, %if.end9.i.i.lor.lhs.false103.i_crit_edge, %while.body.i.i.lor.lhs.false103.i_crit_edge, %while.cond.preheader.i.i.lor.lhs.false103.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %seglen.0.i, i32 %mul.i.i.i)
  %cmp106.not.i = icmp eq i32 %seglen.0.i, %mul.i.i.i
  br i1 %cmp106.not.i, label %lor.lhs.false108.i, label %lor.lhs.false103.i.for.inc.i_crit_edge

lor.lhs.false103.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false103.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

lor.lhs.false108.i:                               ; preds = %lor.lhs.false103.i
  %403 = ptrtoint ptr %ack_seq.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %ack_seq.i, align 4
  %ack_seq109.i = getelementptr inbounds %struct.tcphdr, ptr %call17.i, i32 0, i32 3
  %405 = ptrtoint ptr %ack_seq109.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %ack_seq109.i, align 4
  %sub.i241.i = sub i32 %404, %406
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i241.i)
  %cmp.i242.i = icmp slt i32 %sub.i241.i, 0
  br i1 %cmp.i242.i, label %lor.lhs.false108.i.for.inc.i_crit_edge, label %if.end113.i

lor.lhs.false108.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false108.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end113.i:                                      ; preds = %lor.lhs.false108.i
  %call114.i = call fastcc i32 @cake_tcph_sack_compare(ptr noundef nonnull %call17.i, ptr noundef nonnull %call.i516) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %cmp115.i = icmp slt i32 %call114.i, 0
  br i1 %cmp115.i, label %if.end113.i.for.inc.i_crit_edge, label %lor.lhs.false117.i

if.end113.i.for.inc.i_crit_edge:                  ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

lor.lhs.false117.i:                               ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_cmp4(i32 %404, i32 %406)
  %cmp120.i = icmp eq i32 %404, %406
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %cmp123.i = icmp eq i32 %call114.i, 0
  %or.cond235.i = select i1 %cmp120.i, i1 %cmp123.i, i1 false
  br i1 %or.cond235.i, label %lor.lhs.false117.i.for.inc.i_crit_edge, label %if.end126.i

lor.lhs.false117.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false117.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end126.i:                                      ; preds = %lor.lhs.false117.i
  %tobool127.not.i = icmp eq ptr %elig_ack.1.i, null
  %and130.i = and i32 %389, 12582912
  %elig_ack.2.i = select i1 %tobool127.not.i, ptr %skb_check.0263.i, ptr %elig_ack.1.i
  %elig_ack_prev.2.i = select i1 %tobool127.not.i, ptr %skb_prev.0257.i, ptr %elig_ack_prev.1.i
  %elig_flags.1.i = select i1 %tobool127.not.i, i32 %and130.i, i32 %elig_flags.0260.i
  %inc.i = add i32 %num_found.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_found.1.i)
  %cmp132.i = icmp sgt i32 %num_found.1.i, 0
  br i1 %cmp132.i, label %if.end104, label %if.end126.i.for.inc.i_crit_edge

if.end126.i.for.inc.i_crit_edge:                  ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end126.i.for.inc.i_crit_edge, %lor.lhs.false117.i.for.inc.i_crit_edge, %if.end113.i.for.inc.i_crit_edge, %lor.lhs.false108.i.for.inc.i_crit_edge, %lor.lhs.false103.i.for.inc.i_crit_edge, %if.end30.i.i.for.inc.i_crit_edge, %sw.bb26.i.i.for.inc.i_crit_edge, %sw.bb.i.i529.for.inc.i_crit_edge, %if.end21.i.i.for.inc.i_crit_edge, %if.end101.i.for.inc.i_crit_edge, %do.end.i, %lor.lhs.false67.i.for.inc.i_crit_edge, %if.then62.i.for.inc.i_crit_edge, %lor.lhs.false48.i.for.inc.i_crit_edge, %if.then44.i.for.inc.i_crit_edge, %lor.lhs.false31.i.for.inc.i_crit_edge, %lor.lhs.false25.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %elig_ack.3.i = phi ptr [ %elig_ack.0253.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %elig_ack.0253.i, %lor.lhs.false25.i.for.inc.i_crit_edge ], [ %elig_ack.0253.i, %lor.lhs.false31.i.for.inc.i_crit_edge ], [ %elig_ack.0253.i, %if.then44.i.for.inc.i_crit_edge ], [ %elig_ack.0253.i, %lor.lhs.false48.i.for.inc.i_crit_edge ], [ %elig_ack.1.i, %lor.lhs.false103.i.for.inc.i_crit_edge ], [ %elig_ack.1.i, %lor.lhs.false108.i.for.inc.i_crit_edge ], [ %elig_ack.1.i, %if.end113.i.for.inc.i_crit_edge ], [ %elig_ack.2.i, %if.end126.i.for.inc.i_crit_edge ], [ %elig_ack.0253.i, %if.then62.i.for.inc.i_crit_edge ], [ %elig_ack.0253.i, %lor.lhs.false67.i.for.inc.i_crit_edge ], [ %elig_ack.0253.i, %do.end.i ], [ %elig_ack.0253.i, %for.body.i.for.inc.i_crit_edge ], [ %elig_ack.1.i, %lor.lhs.false117.i.for.inc.i_crit_edge ], [ %elig_ack.1.i, %if.end101.i.for.inc.i_crit_edge ], [ %elig_ack.1.i, %if.end21.i.i.for.inc.i_crit_edge ], [ %elig_ack.1.i, %sw.bb.i.i529.for.inc.i_crit_edge ], [ %elig_ack.1.i, %sw.bb26.i.i.for.inc.i_crit_edge ], [ %elig_ack.1.i, %if.end30.i.i.for.inc.i_crit_edge ]
  %elig_ack_prev.3.i = phi ptr [ %elig_ack_prev.0255.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %elig_ack_prev.0255.i, %lor.lhs.false25.i.for.inc.i_crit_edge ], [ %elig_ack_prev.0255.i, %lor.lhs.false31.i.for.inc.i_crit_edge ], [ %elig_ack_prev.0255.i, %if.then44.i.for.inc.i_crit_edge ], [ %elig_ack_prev.0255.i, %lor.lhs.false48.i.for.inc.i_crit_edge ], [ %elig_ack_prev.1.i, %lor.lhs.false103.i.for.inc.i_crit_edge ], [ %elig_ack_prev.1.i, %lor.lhs.false108.i.for.inc.i_crit_edge ], [ %elig_ack_prev.1.i, %if.end113.i.for.inc.i_crit_edge ], [ %elig_ack_prev.2.i, %if.end126.i.for.inc.i_crit_edge ], [ %elig_ack_prev.0255.i, %if.then62.i.for.inc.i_crit_edge ], [ %elig_ack_prev.0255.i, %lor.lhs.false67.i.for.inc.i_crit_edge ], [ %elig_ack_prev.0255.i, %do.end.i ], [ %elig_ack_prev.0255.i, %for.body.i.for.inc.i_crit_edge ], [ %elig_ack_prev.1.i, %lor.lhs.false117.i.for.inc.i_crit_edge ], [ %elig_ack_prev.1.i, %if.end101.i.for.inc.i_crit_edge ], [ %elig_ack_prev.1.i, %if.end21.i.i.for.inc.i_crit_edge ], [ %elig_ack_prev.1.i, %sw.bb.i.i529.for.inc.i_crit_edge ], [ %elig_ack_prev.1.i, %sw.bb26.i.i.for.inc.i_crit_edge ], [ %elig_ack_prev.1.i, %if.end30.i.i.for.inc.i_crit_edge ]
  %num_found.2.i = phi i32 [ %num_found.0258.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %num_found.0258.i, %lor.lhs.false25.i.for.inc.i_crit_edge ], [ %num_found.0258.i, %lor.lhs.false31.i.for.inc.i_crit_edge ], [ %num_found.0258.i, %if.then44.i.for.inc.i_crit_edge ], [ %num_found.0258.i, %lor.lhs.false48.i.for.inc.i_crit_edge ], [ %num_found.1.i, %lor.lhs.false103.i.for.inc.i_crit_edge ], [ %num_found.1.i, %lor.lhs.false108.i.for.inc.i_crit_edge ], [ %num_found.1.i, %if.end113.i.for.inc.i_crit_edge ], [ %inc.i, %if.end126.i.for.inc.i_crit_edge ], [ %num_found.0258.i, %if.then62.i.for.inc.i_crit_edge ], [ %num_found.0258.i, %lor.lhs.false67.i.for.inc.i_crit_edge ], [ %num_found.0258.i, %do.end.i ], [ %num_found.0258.i, %for.body.i.for.inc.i_crit_edge ], [ %num_found.1.i, %lor.lhs.false117.i.for.inc.i_crit_edge ], [ %num_found.1.i, %if.end101.i.for.inc.i_crit_edge ], [ %num_found.1.i, %if.end21.i.i.for.inc.i_crit_edge ], [ %num_found.1.i, %sw.bb.i.i529.for.inc.i_crit_edge ], [ %num_found.1.i, %sw.bb26.i.i.for.inc.i_crit_edge ], [ %num_found.1.i, %if.end30.i.i.for.inc.i_crit_edge ]
  %elig_flags.2.i = phi i32 [ %elig_flags.0260.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %elig_flags.0260.i, %lor.lhs.false25.i.for.inc.i_crit_edge ], [ %elig_flags.0260.i, %lor.lhs.false31.i.for.inc.i_crit_edge ], [ %elig_flags.0260.i, %if.then44.i.for.inc.i_crit_edge ], [ %elig_flags.0260.i, %lor.lhs.false48.i.for.inc.i_crit_edge ], [ %elig_flags.0260.i, %lor.lhs.false103.i.for.inc.i_crit_edge ], [ %elig_flags.0260.i, %lor.lhs.false108.i.for.inc.i_crit_edge ], [ %elig_flags.0260.i, %if.end113.i.for.inc.i_crit_edge ], [ %elig_flags.1.i, %if.end126.i.for.inc.i_crit_edge ], [ %elig_flags.0260.i, %if.then62.i.for.inc.i_crit_edge ], [ %elig_flags.0260.i, %lor.lhs.false67.i.for.inc.i_crit_edge ], [ %elig_flags.0260.i, %do.end.i ], [ %elig_flags.0260.i, %for.body.i.for.inc.i_crit_edge ], [ %elig_flags.0260.i, %lor.lhs.false117.i.for.inc.i_crit_edge ], [ %elig_flags.0260.i, %if.end101.i.for.inc.i_crit_edge ], [ %elig_flags.0260.i, %if.end21.i.i.for.inc.i_crit_edge ], [ %elig_flags.0260.i, %sw.bb.i.i529.for.inc.i_crit_edge ], [ %elig_flags.0260.i, %sw.bb26.i.i.for.inc.i_crit_edge ], [ %elig_flags.0260.i, %if.end30.i.i.for.inc.i_crit_edge ]
  %407 = ptrtoint ptr %skb_check.0263.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %skb_check.0.i = load ptr, ptr %skb_check.0263.i, align 8
  %tobool13.not.i = icmp eq ptr %skb_check.0.i, null
  %cmp14.not.i = icmp eq ptr %skb_check.0.i, %346
  %or.cond.i = select i1 %tobool13.not.i, i1 true, i1 %cmp14.not.i
  br i1 %or.cond.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %tobool136.not.i = icmp eq ptr %elig_ack.3.i, null
  %brmerge.i = select i1 %tobool136.not.i, i1 true, i1 %cmp.i514
  br i1 %brmerge.i, label %for.end.i.if.end104.thread625_crit_edge, label %land.lhs.true140.i

for.end.i.if.end104.thread625_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104.thread625

land.lhs.true140.i:                               ; preds = %for.end.i
  %408 = ptrtoint ptr %elig_ack.3.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %elig_ack.3.i, align 8
  %cmp142.i = icmp eq ptr %409, %346
  br i1 %cmp142.i, label %land.lhs.true144.i, label %land.lhs.true140.i.if.end104.thread625_crit_edge

land.lhs.true140.i.if.end104.thread625_crit_edge: ; preds = %land.lhs.true140.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104.thread625

land.lhs.true144.i:                               ; preds = %land.lhs.true140.i
  %410 = ptrtoint ptr %doff.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %doff.i.i.i.i, align 4
  %and146.i = and i32 %411, 12582912
  call void @__sanitizer_cov_trace_cmp4(i32 %elig_flags.2.i, i32 %and146.i)
  %cmp147.i = icmp eq i32 %elig_flags.2.i, %and146.i
  br i1 %cmp147.i, label %if.end104.thread629, label %land.lhs.true144.i.if.end104.thread625_crit_edge

land.lhs.true144.i.if.end104.thread625_crit_edge: ; preds = %land.lhs.true144.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104.thread625

if.end104.thread629:                              ; preds = %land.lhs.true144.i
  call void @__sanitizer_cov_trace_pc() #17
  %tobool151.not.i632 = icmp eq ptr %elig_ack_prev.3.i, null
  %412 = ptrtoint ptr %elig_ack.3.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %elig_ack.3.i, align 8
  %flow.elig_ack_prev.4.i633 = select i1 %tobool151.not.i632, ptr %arrayidx, ptr %elig_ack_prev.3.i
  %414 = ptrtoint ptr %flow.elig_ack_prev.4.i633 to i32
  call void @__asan_store4_noabort(i32 %414)
  store ptr %413, ptr %flow.elig_ack_prev.4.i633, align 8
  store ptr null, ptr %elig_ack.3.i, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_iph_check.i) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_iph.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %_tcph_check.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %_tcph.i) #15
  br label %if.then106

if.end104.thread625:                              ; preds = %land.lhs.true144.i.if.end104.thread625_crit_edge, %land.lhs.true140.i.if.end104.thread625_crit_edge, %for.end.i.if.end104.thread625_crit_edge, %for.cond.preheader.i.if.end104.thread625_crit_edge, %cake_tcph_get_tstamp.exit.i.if.end104.thread625_crit_edge, %if.end.i.if.end104.thread625_crit_edge, %if.then102.if.end104.thread625_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_iph_check.i) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_iph.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %_tcph_check.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %_tcph.i) #15
  br label %if.else129

if.end104:                                        ; preds = %if.end126.i
  %tobool151.not.i = icmp eq ptr %elig_ack_prev.2.i, null
  %415 = ptrtoint ptr %elig_ack.2.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %elig_ack.2.i, align 8
  %flow.elig_ack_prev.4.i = select i1 %tobool151.not.i, ptr %arrayidx, ptr %elig_ack_prev.2.i
  %417 = ptrtoint ptr %flow.elig_ack_prev.4.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %416, ptr %flow.elig_ack_prev.4.i, align 8
  store ptr null, ptr %elig_ack.2.i, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_iph_check.i) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_iph.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %_tcph_check.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %_tcph.i) #15
  %tobool105.not = icmp eq ptr %elig_ack.2.i, null
  br i1 %tobool105.not, label %if.end104.if.else129_crit_edge, label %if.end104.if.then106_crit_edge

if.end104.if.then106_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then106

if.end104.if.else129_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else129

if.then106:                                       ; preds = %if.end104.if.then106_crit_edge, %if.end104.thread629
  %elig_ack.4.i635 = phi ptr [ %elig_ack.3.i, %if.end104.thread629 ], [ %elig_ack.2.i, %if.end104.if.then106_crit_edge ]
  %ack_drops = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 27
  %418 = ptrtoint ptr %ack_drops to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %ack_drops, align 8
  %inc107 = add i32 %419, 1
  store i32 %inc107, ptr %ack_drops, align 8
  %drops = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %420 = ptrtoint ptr %drops to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %drops, align 8
  %inc109 = add i32 %421, 1
  store i32 %inc109, ptr %drops, align 8
  %cb.i.i533 = getelementptr inbounds %struct.sk_buff, ptr %elig_ack.4.i635, i32 0, i32 3
  %422 = ptrtoint ptr %cb.i.i533 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %cb.i.i533, align 4
  %conv111 = zext i32 %423 to i64
  %bytes112 = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 26
  %424 = ptrtoint ptr %bytes112 to i32
  call void @__asan_load8_noabort(i32 %424)
  %425 = load i64, ptr %bytes112, align 8
  %add113 = add i64 %425, %conv111
  store i64 %add113, ptr %bytes112, align 8
  %426 = load i32, ptr %cb.i.i533, align 4
  %sub115 = sub i32 %1, %426
  %truesize116 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %427 = ptrtoint ptr %truesize116 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %truesize116, align 8
  %truesize117 = getelementptr inbounds %struct.sk_buff, ptr %elig_ack.4.i635, i32 0, i32 20
  %429 = ptrtoint ptr %truesize117 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %truesize117, align 8
  %sub118 = sub i32 %428, %430
  %buffer_used119 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 24
  %431 = ptrtoint ptr %buffer_used119 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %buffer_used119, align 8
  %add120 = add i32 %sub118, %432
  store i32 %add120, ptr %buffer_used119, align 8
  %433 = ptrtoint ptr %rate_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %433)
  %434 = load i16, ptr %rate_flags.i.i, align 8
  %435 = and i16 %434, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %435)
  %tobool124.not = icmp eq i16 %435, 0
  br i1 %tobool124.not, label %if.then106.if.end127_crit_edge, label %if.then125

if.then106.if.end127_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end127

if.then125:                                       ; preds = %if.then106
  %rate_ns.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 11
  %436 = ptrtoint ptr %rate_ns.i to i32
  call void @__asan_load8_noabort(i32 %436)
  %437 = load i64, ptr %rate_ns.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %437)
  %tobool.not.i535 = icmp eq i64 %437, 0
  br i1 %tobool.not.i535, label %if.then125.if.end127_crit_edge, label %if.then.i540

if.then125.if.end127_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end127

if.then.i540:                                     ; preds = %if.then125
  %adjusted_len.i = getelementptr inbounds %struct.sk_buff, ptr %elig_ack.4.i635, i32 0, i32 3, i32 16
  %438 = ptrtoint ptr %adjusted_len.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %adjusted_len.i, align 8
  %conv.i536 = zext i32 %439 to i64
  %tin_rate_ns.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 17
  %440 = ptrtoint ptr %tin_rate_ns.i to i32
  call void @__asan_load8_noabort(i32 %440)
  %441 = load i64, ptr %tin_rate_ns.i, align 8
  %mul.i537 = mul i64 %441, %conv.i536
  %tin_rate_shft.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 19
  %442 = ptrtoint ptr %tin_rate_shft.i to i32
  call void @__asan_load2_noabort(i32 %442)
  %443 = load i16, ptr %tin_rate_shft.i, align 8
  %sh_prom.i = zext i16 %443 to i64
  %shr.i538 = lshr i64 %mul.i537, %sh_prom.i
  %mul4.i = mul i64 %437, %conv.i536
  %rate_shft.i = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 12
  %444 = ptrtoint ptr %rate_shft.i to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %rate_shft.i, align 2
  %sh_prom6.i = zext i16 %445 to i64
  %shr7.i = lshr i64 %mul4.i, %sh_prom6.i
  %time_next_packet.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 16
  %446 = ptrtoint ptr %time_next_packet.i to i32
  call void @__asan_load8_noabort(i32 %446)
  %447 = load i64, ptr %time_next_packet.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %447, i64 %call2)
  %cmp.i.i.i539 = icmp slt i64 %447, %call2
  br i1 %cmp.i.i.i539, label %if.then10.i, label %if.else.i541

if.then10.i:                                      ; preds = %if.then.i540
  call void @__sanitizer_cov_trace_pc() #17
  %add12.i = add i64 %447, %shr.i538
  br label %if.end20.sink.split.i

if.else.i541:                                     ; preds = %if.then.i540
  %add15.i = add i64 %shr.i538, %call2
  call void @__sanitizer_cov_trace_cmp8(i64 %447, i64 %add15.i)
  %cmp.i.i50.i = icmp slt i64 %447, %add15.i
  br i1 %cmp.i.i50.i, label %if.else.i541.if.end20.sink.split.i_crit_edge, label %if.else.i541.if.end20.i_crit_edge

if.else.i541.if.end20.i_crit_edge:                ; preds = %if.else.i541
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.else.i541.if.end20.sink.split.i_crit_edge:     ; preds = %if.else.i541
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.sink.split.i

if.end20.sink.split.i:                            ; preds = %if.else.i541.if.end20.sink.split.i_crit_edge, %if.then10.i
  %add15.sink.i = phi i64 [ %add12.i, %if.then10.i ], [ %add15.i, %if.else.i541.if.end20.sink.split.i_crit_edge ]
  %448 = ptrtoint ptr %time_next_packet.i to i32
  call void @__asan_store8_noabort(i32 %448)
  store i64 %add15.sink.i, ptr %time_next_packet.i, align 8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20.sink.split.i, %if.else.i541.if.end20.i_crit_edge
  %time_next_packet21.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 7
  %449 = ptrtoint ptr %time_next_packet21.i to i32
  call void @__asan_load8_noabort(i32 %449)
  %450 = load i64, ptr %time_next_packet21.i, align 8
  %add22.i = add i64 %450, %shr7.i
  store i64 %add22.i, ptr %time_next_packet21.i, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.end20.i, %if.then125.if.end127_crit_edge, %if.then106.if.end127_crit_edge
  %451 = ptrtoint ptr %cb.i.i533 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %cb.i.i533, align 4
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef 1, i32 noundef %452) #15
  call void @consume_skb(ptr noundef nonnull %elig_ack.4.i635) #15
  br label %if.end136

if.else129:                                       ; preds = %if.end104.if.else129_crit_edge, %if.end104.thread625, %flow_queue_add.exit513.if.else129_crit_edge
  %qlen131 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %453 = ptrtoint ptr %qlen131 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %qlen131, align 8
  %inc132 = add i32 %454, 1
  store i32 %inc132, ptr %qlen131, align 8
  %truesize133 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %455 = ptrtoint ptr %truesize133 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %truesize133, align 8
  %buffer_used134 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 24
  %457 = ptrtoint ptr %buffer_used134 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %buffer_used134, align 8
  %add135 = add i32 %458, %456
  store i32 %add135, ptr %buffer_used134, align 8
  br label %if.end136

if.end136:                                        ; preds = %if.else129, %if.end127
  %len.0 = phi i32 [ %sub115, %if.end127 ], [ %1, %if.else129 ]
  %packets137 = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 25
  %459 = ptrtoint ptr %packets137 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %packets137, align 4
  %inc138 = add i32 %460, 1
  store i32 %inc138, ptr %packets137, align 4
  %conv139 = sext i32 %len.0 to i64
  %bytes140 = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 26
  %461 = ptrtoint ptr %bytes140 to i32
  call void @__asan_load8_noabort(i32 %461)
  %462 = load i64, ptr %bytes140, align 8
  %add141 = add i64 %462, %conv139
  store i64 %add141, ptr %bytes140, align 8
  %arrayidx143 = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 1, i32 %dec
  %463 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %arrayidx143, align 4
  %add144 = add i32 %464, %len.0
  store i32 %add144, ptr %arrayidx143, align 4
  %465 = ptrtoint ptr %tin_backlog to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %tin_backlog, align 8
  %add146 = add i32 %466, %len.0
  store i32 %add146, ptr %tin_backlog, align 8
  %backlog148 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %467 = ptrtoint ptr %backlog148 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %backlog148, align 4
  %add149 = add i32 %468, %len.0
  store i32 %add149, ptr %backlog148, align 4
  %avg_window_bytes151 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 17, i32 3, i32 0, i32 0, i32 3
  %469 = ptrtoint ptr %avg_window_bytes151 to i32
  call void @__asan_load8_noabort(i32 %469)
  %470 = load i64, ptr %avg_window_bytes151, align 8
  %add152 = add i64 %470, %conv139
  store i64 %add152, ptr %avg_window_bytes151, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.end136, %for.end
  %overflow_timeout = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 3
  %471 = ptrtoint ptr %overflow_timeout to i32
  call void @__asan_load2_noabort(i32 %471)
  %472 = load i16, ptr %overflow_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %472)
  %tobool154.not = icmp eq i16 %472, 0
  br i1 %tobool154.not, label %if.end153.if.end157_crit_edge, label %if.then155

if.end153.if.end157_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end157

if.then155:                                       ; preds = %if.end153
  %arrayidx156 = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 3, i32 %dec
  %473 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load2_noabort(i32 %473)
  %474 = load i16, ptr %arrayidx156, align 2
  %475 = add i16 %474, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %475)
  %476 = icmp ult i16 %475, 8191
  br i1 %476, label %if.then155.while.body.i_crit_edge, label %if.then155.if.end157_crit_edge

if.then155.if.end157_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end157

if.then155.while.body.i_crit_edge:                ; preds = %if.then155
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.then155.while.body.i_crit_edge
  %i.addr.039.i = phi i16 [ %conv6.i, %cleanup.i.while.body.i_crit_edge ], [ %474, %if.then155.while.body.i_crit_edge ]
  %conv.i544 = zext i16 %i.addr.039.i to i32
  %sub.i545 = add nuw nsw i32 %conv.i544, 131071
  %477 = lshr i32 %sub.i545, 1
  %arrayidx.i.i546 = getelementptr %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 3, i32 %conv.i544
  %478 = ptrtoint ptr %arrayidx.i.i546 to i32
  call void @__asan_load2_noabort(i32 %478)
  %ii.sroa.0.0.copyload.i.i = load i16, ptr %arrayidx.i.i546, align 2
  %479 = ptrtoint ptr %tins.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %tins.i.i, align 8
  %bf.lshr.i.i = lshr i16 %ii.sroa.0.0.copyload.i.i, 13
  %idxprom1.i.i = zext i16 %bf.lshr.i.i to i32
  %bf.lshr4.i.i = lshr i16 %ii.sroa.0.0.copyload.i.i, 3
  %bf.clear.i.i = and i16 %bf.lshr4.i.i, 1023
  %idxprom5.i.i = zext i16 %bf.clear.i.i to i32
  %arrayidx6.i.i = getelementptr %struct.cake_tin_data, ptr %480, i32 %idxprom1.i.i, i32 1, i32 %idxprom5.i.i
  %481 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %arrayidx6.i.i, align 4
  %idxprom.i20.i = and i32 %477, 65535
  %arrayidx.i21.i = getelementptr %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 3, i32 %idxprom.i20.i
  %483 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load2_noabort(i32 %483)
  %ii.sroa.0.0.copyload.i22.i = load i16, ptr %arrayidx.i21.i, align 2
  %bf.lshr.i24.i = lshr i16 %ii.sroa.0.0.copyload.i22.i, 13
  %idxprom1.i25.i = zext i16 %bf.lshr.i24.i to i32
  %bf.lshr4.i26.i = lshr i16 %ii.sroa.0.0.copyload.i22.i, 3
  %bf.clear.i27.i = and i16 %bf.lshr4.i26.i, 1023
  %idxprom5.i28.i = zext i16 %bf.clear.i27.i to i32
  %arrayidx6.i29.i = getelementptr %struct.cake_tin_data, ptr %480, i32 %idxprom1.i25.i, i32 1, i32 %idxprom5.i28.i
  %484 = ptrtoint ptr %arrayidx6.i29.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %arrayidx6.i29.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %482, i32 %485)
  %cmp8.i = icmp ugt i32 %482, %485
  br i1 %cmp8.i, label %cleanup.i, label %while.body.i.if.end157_crit_edge

while.body.i.if.end157_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end157

cleanup.i:                                        ; preds = %while.body.i
  %conv6.i = trunc i32 %477 to i16
  %486 = ptrtoint ptr %arrayidx.i.i546 to i32
  call void @__asan_store2_noabort(i32 %486)
  store i16 %ii.sroa.0.0.copyload.i22.i, ptr %arrayidx.i.i546, align 2
  %487 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_store2_noabort(i32 %487)
  store i16 %ii.sroa.0.0.copyload.i.i, ptr %arrayidx.i21.i, align 2
  %arrayidx15.i.i = getelementptr %struct.cake_tin_data, ptr %480, i32 %idxprom1.i.i, i32 3, i32 %idxprom5.i.i
  %488 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store2_noabort(i32 %488)
  store i16 %conv6.i, ptr %arrayidx15.i.i, align 2
  %489 = ptrtoint ptr %tins.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %tins.i.i, align 8
  %arrayidx26.i.i = getelementptr %struct.cake_tin_data, ptr %490, i32 %idxprom1.i25.i, i32 3, i32 %idxprom5.i28.i
  %491 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store2_noabort(i32 %491)
  store i16 %i.addr.039.i, ptr %arrayidx26.i.i, align 2
  %492 = add i16 %conv6.i, -1
  %493 = icmp ult i16 %492, 8191
  br i1 %493, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.if.end157_crit_edge

cleanup.i.if.end157_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end157

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end157:                                        ; preds = %cleanup.i.if.end157_crit_edge, %while.body.i.if.end157_crit_edge, %if.then155.if.end157_crit_edge, %if.end153.if.end157_crit_edge
  %494 = ptrtoint ptr %rate_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %494)
  %495 = load i16, ptr %rate_flags.i.i, align 8
  %496 = and i16 %495, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %496)
  %tobool161.not = icmp eq i16 %496, 0
  br i1 %tobool161.not, label %if.else200, label %if.then162

if.then162:                                       ; preds = %if.end157
  %last_packet_time = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 17
  %497 = ptrtoint ptr %last_packet_time to i32
  call void @__asan_load8_noabort(i32 %497)
  %498 = load i64, ptr %last_packet_time, align 8
  %sub163 = sub i64 %call2, %498
  %499 = call i64 @llvm.umin.i64(i64 %sub163, i64 1000000000)
  %avg_packet_interval = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 17, i32 3, i32 0, i32 0, i32 1
  %500 = ptrtoint ptr %avg_packet_interval to i32
  call void @__asan_load8_noabort(i32 %500)
  %501 = load i64, ptr %avg_packet_interval, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %499, i64 %501)
  %cmp170 = icmp ugt i64 %499, %501
  %sh_prom.i547 = select i1 %cmp170, i64 2, i64 8
  %shr.i548 = lshr i64 %501, %sh_prom.i547
  %sub.i549 = sub i64 %501, %shr.i548
  %shr2.i = lshr i64 %499, %sh_prom.i547
  %add.i550 = add i64 %sub.i549, %shr2.i
  %502 = ptrtoint ptr %avg_packet_interval to i32
  call void @__asan_store8_noabort(i32 %502)
  store i64 %add.i550, ptr %avg_packet_interval, align 8
  %503 = ptrtoint ptr %last_packet_time to i32
  call void @__asan_store8_noabort(i32 %503)
  store i64 %call2, ptr %last_packet_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %499, i64 %add.i550)
  %cmp177 = icmp ugt i64 %499, %add.i550
  br i1 %cmp177, label %if.then179, label %if.then162.if.end203_crit_edge

if.then162.if.end203_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end203

if.then179:                                       ; preds = %if.then162
  %avg_window_begin = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 17, i32 2
  %504 = ptrtoint ptr %avg_window_begin to i32
  call void @__asan_load8_noabort(i32 %504)
  %505 = load i64, ptr %avg_window_begin, align 8
  %sub180 = sub i64 %call2, %505
  %avg_window_bytes183 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 17, i32 3, i32 0, i32 0, i32 3
  %506 = ptrtoint ptr %avg_window_bytes183 to i32
  call void @__asan_load8_noabort(i32 %506)
  %507 = load i64, ptr %avg_window_bytes183, align 8
  %mul = mul i64 %507, 1000000000
  %call184 = call i64 @div64_u64(i64 noundef %mul, i64 noundef %sub180) #15
  %avg_peak_bandwidth = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 17, i32 3, i32 0, i32 0, i32 4, i32 1
  %508 = ptrtoint ptr %avg_peak_bandwidth to i32
  call void @__asan_load8_noabort(i32 %508)
  %509 = load i64, ptr %avg_peak_bandwidth, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call184, i64 %509)
  %cmp186 = icmp ugt i64 %call184, %509
  %sh_prom.i551 = select i1 %cmp186, i64 2, i64 8
  %shr.i552 = lshr i64 %509, %sh_prom.i551
  %sub.i553 = sub i64 %509, %shr.i552
  %shr2.i554 = lshr i64 %call184, %sh_prom.i551
  %add.i555 = add i64 %sub.i553, %shr2.i554
  %510 = ptrtoint ptr %avg_peak_bandwidth to i32
  call void @__asan_store8_noabort(i32 %510)
  store i64 %add.i555, ptr %avg_peak_bandwidth, align 8
  %511 = ptrtoint ptr %avg_window_bytes183 to i32
  call void @__asan_store8_noabort(i32 %511)
  store i64 0, ptr %avg_window_bytes183, align 8
  %512 = ptrtoint ptr %avg_window_begin to i32
  call void @__asan_store8_noabort(i32 %512)
  store i64 %call2, ptr %avg_window_begin, align 8
  %last_reconfig_time = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 17, i32 3, i32 0, i32 0, i32 4, i32 2
  %513 = ptrtoint ptr %last_reconfig_time to i32
  call void @__asan_load8_noabort(i32 %513)
  %514 = load i64, ptr %last_reconfig_time, align 8
  %add.i556 = add i64 %514, 250000000
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %add.i556)
  %cmp3.i.i557 = icmp sgt i64 %call2, %add.i556
  br i1 %cmp3.i.i557, label %if.then195, label %if.then179.if.end203_crit_edge

if.then179.if.end203_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end203

if.then195:                                       ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #17
  %mul197 = mul i64 %add.i555, 15
  %shr = lshr i64 %mul197, 4
  %rate_bps = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 13
  %515 = ptrtoint ptr %rate_bps to i32
  call void @__asan_store8_noabort(i32 %515)
  store i64 %shr, ptr %rate_bps, align 8
  call fastcc void @cake_reconfigure(ptr noundef %sch)
  br label %if.end203

if.else200:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #17
  %avg_window_bytes201 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 17, i32 3, i32 0, i32 0, i32 3
  %516 = ptrtoint ptr %avg_window_bytes201 to i32
  call void @__asan_store8_noabort(i32 %516)
  store i64 0, ptr %avg_window_bytes201, align 8
  %last_packet_time202 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 17
  %517 = ptrtoint ptr %last_packet_time202 to i32
  call void @__asan_store8_noabort(i32 %517)
  store i64 %call2, ptr %last_packet_time202, align 8
  br label %if.end203

if.end203:                                        ; preds = %if.else200, %if.then195, %if.then179.if.end203_crit_edge, %if.then162.if.end203_crit_edge
  %set = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %dec, i32 8
  %518 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %518)
  %519 = load i8, ptr %set, align 4
  %520 = zext i8 %519 to i64
  call void @__sanitizer_cov_trace_switch(i64 %520, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %519, label %if.end203.if.end301_crit_edge [
    i8 0, label %if.end203.if.then209_crit_edge
    i8 4, label %if.end203.if.then209_crit_edge664
    i8 2, label %if.then271
  ]

if.end203.if.then209_crit_edge664:                ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then209

if.end203.if.then209_crit_edge:                   ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then209

if.end203.if.end301_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end301

if.then209:                                       ; preds = %if.end203.if.then209_crit_edge, %if.end203.if.then209_crit_edge664
  %srchost210 = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %dec, i32 6
  %521 = ptrtoint ptr %srchost210 to i32
  call void @__asan_load2_noabort(i32 %521)
  %522 = load i16, ptr %srchost210, align 8
  %idxprom = zext i16 %522 to i32
  %dsthost213 = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %dec, i32 7
  %523 = ptrtoint ptr %dsthost213 to i32
  call void @__asan_load2_noabort(i32 %523)
  %524 = load i16, ptr %dsthost213, align 2
  %idxprom214 = zext i16 %524 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %519)
  %tobool217.not = icmp eq i8 %519, 0
  br i1 %tobool217.not, label %if.then218, label %if.else219

if.then218:                                       ; preds = %if.then209
  %flowchain = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %dec, i32 2
  %new_flows = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 13
  %prev.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 13, i32 1
  %525 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %flowchain, ptr noundef %526, ptr noundef %new_flows) #15
  br i1 %call.i.i, label %if.end.i.i558, label %if.then218.if.end223_crit_edge

if.then218.if.end223_crit_edge:                   ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end223

if.end.i.i558:                                    ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #17
  %527 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %527)
  store ptr %flowchain, ptr %prev.i, align 4
  %528 = ptrtoint ptr %flowchain to i32
  call void @__asan_store4_noabort(i32 %528)
  store ptr %new_flows, ptr %flowchain, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %flowchain, i32 0, i32 1
  %529 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %529)
  store ptr %526, ptr %prev3.i.i, align 4
  %530 = ptrtoint ptr %526 to i32
  call void @__asan_store4_noabort(i32 %530)
  store volatile ptr %flowchain, ptr %526, align 4
  br label %if.end223

if.else219:                                       ; preds = %if.then209
  %decaying_flow_count = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 10
  %531 = ptrtoint ptr %decaying_flow_count to i32
  call void @__asan_load2_noabort(i32 %531)
  %532 = load i16, ptr %decaying_flow_count, align 8
  %dec220 = add i16 %532, -1
  store i16 %dec220, ptr %decaying_flow_count, align 8
  %flowchain221 = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %dec, i32 2
  %new_flows222 = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 13
  %call.i.i559 = call zeroext i1 @__list_del_entry_valid(ptr noundef %flowchain221) #15
  br i1 %call.i.i559, label %if.end.i.i560, label %if.else219.__list_del_entry.exit.i_crit_edge

if.else219.__list_del_entry.exit.i_crit_edge:     ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #17
  br label %__list_del_entry.exit.i

if.end.i.i560:                                    ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %flowchain221, i32 0, i32 1
  %533 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %prev.i.i, align 4
  %535 = ptrtoint ptr %flowchain221 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %flowchain221, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %536, i32 0, i32 1
  %537 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %537)
  store ptr %534, ptr %prev1.i.i.i, align 4
  %538 = ptrtoint ptr %534 to i32
  call void @__asan_store4_noabort(i32 %538)
  store volatile ptr %536, ptr %534, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i560, %if.else219.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 13, i32 1
  %539 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i561 = call zeroext i1 @__list_add_valid(ptr noundef %flowchain221, ptr noundef %540, ptr noundef %new_flows222) #15
  br i1 %call.i.i.i561, label %if.end.i.i.i562, label %__list_del_entry.exit.i.if.end223_crit_edge

__list_del_entry.exit.i.if.end223_crit_edge:      ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end223

if.end.i.i.i562:                                  ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %541 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %541)
  store ptr %flowchain221, ptr %prev.i2.i, align 4
  %542 = ptrtoint ptr %flowchain221 to i32
  call void @__asan_store4_noabort(i32 %542)
  store ptr %new_flows222, ptr %flowchain221, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %flowchain221, i32 0, i32 1
  %543 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %543)
  store ptr %540, ptr %prev3.i.i.i, align 4
  %544 = ptrtoint ptr %540 to i32
  call void @__asan_store4_noabort(i32 %544)
  store volatile ptr %flowchain221, ptr %540, align 4
  br label %if.end223

if.end223:                                        ; preds = %if.end.i.i.i562, %__list_del_entry.exit.i.if.end223_crit_edge, %if.end.i.i558, %if.then218.if.end223_crit_edge
  %545 = ptrtoint ptr %set to i32
  call void @__asan_store1_noabort(i32 %545)
  store i8 1, ptr %set, align 4
  %sparse_flow_count = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 9
  %546 = ptrtoint ptr %sparse_flow_count to i32
  call void @__asan_load2_noabort(i32 %546)
  %547 = load i16, ptr %sparse_flow_count, align 2
  %inc225 = add i16 %547, 1
  store i16 %inc225, ptr %sparse_flow_count, align 2
  %548 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %flow_mode, align 1
  %conv227 = zext i8 %549 to i32
  %and.i563 = and i32 %conv227, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i563)
  %cmp.i564 = icmp eq i32 %and.i563, 5
  br i1 %cmp.i564, label %if.then229, label %if.end223.if.end242_crit_edge

if.end223.if.end242_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end242

if.then229:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #17
  %srchost_bulk_flow_count = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %idxprom, i32 2
  %550 = ptrtoint ptr %srchost_bulk_flow_count to i32
  call void @__asan_load2_noabort(i32 %550)
  %551 = load i16, ptr %srchost_bulk_flow_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %551)
  %cmp233 = icmp eq i16 %551, 0
  %. = select i1 %cmp233, i16 1, i16 %551
  br label %if.end242

if.end242:                                        ; preds = %if.then229, %if.end223.if.end242_crit_edge
  %host_load.0 = phi i16 [ %., %if.then229 ], [ 1, %if.end223.if.end242_crit_edge ]
  %and.i565 = and i32 %conv227, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i565)
  %cmp.i566 = icmp eq i32 %and.i565, 6
  br i1 %cmp.i566, label %if.then246, label %if.end242.if.end259_crit_edge

if.end242.if.end259_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end259

if.then246:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #17
  %dsthost_bulk_flow_count = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %idxprom214, i32 3
  %552 = ptrtoint ptr %dsthost_bulk_flow_count to i32
  call void @__asan_load2_noabort(i32 %552)
  %553 = load i16, ptr %dsthost_bulk_flow_count, align 2
  %554 = call i16 @llvm.umax.i16(i16 %host_load.0, i16 %553)
  br label %if.end259

if.end259:                                        ; preds = %if.then246, %if.end242.if.end259_crit_edge
  %host_load.1 = phi i16 [ %554, %if.then246 ], [ %host_load.0, %if.end242.if.end259_crit_edge ]
  %flow_quantum = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 5
  %555 = ptrtoint ptr %flow_quantum to i32
  call void @__asan_load2_noabort(i32 %555)
  %556 = load i16, ptr %flow_quantum, align 8
  %conv260 = zext i16 %556 to i32
  %idxprom261 = zext i16 %host_load.1 to i32
  %arrayidx262 = getelementptr [1025 x i16], ptr @quantum_div, i32 0, i32 %idxprom261
  %557 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_load2_noabort(i32 %557)
  %558 = load i16, ptr %arrayidx262, align 2
  %conv263 = zext i16 %558 to i32
  %mul264 = mul nuw i32 %conv263, %conv260
  %shr265 = ashr i32 %mul264, 16
  %deficit = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %dec, i32 3
  %559 = ptrtoint ptr %deficit to i32
  call void @__asan_store4_noabort(i32 %559)
  store i32 %shr265, ptr %deficit, align 8
  br label %if.end301

if.then271:                                       ; preds = %if.end203
  %srchost274 = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %dec, i32 6
  %560 = ptrtoint ptr %srchost274 to i32
  call void @__asan_load2_noabort(i32 %560)
  %561 = load i16, ptr %srchost274, align 8
  %dsthost279 = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx59.i.i, i32 0, i32 %dec, i32 7
  %562 = ptrtoint ptr %dsthost279 to i32
  call void @__asan_load2_noabort(i32 %562)
  %563 = load i16, ptr %dsthost279, align 2
  %idxprom280 = zext i16 %563 to i32
  %564 = ptrtoint ptr %set to i32
  call void @__asan_store1_noabort(i32 %564)
  store i8 3, ptr %set, align 4
  %sparse_flow_count283 = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 9
  %565 = ptrtoint ptr %sparse_flow_count283 to i32
  call void @__asan_load2_noabort(i32 %565)
  %566 = load i16, ptr %sparse_flow_count283, align 2
  %dec284 = add i16 %566, -1
  store i16 %dec284, ptr %sparse_flow_count283, align 2
  %bulk_flow_count = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 8
  %567 = ptrtoint ptr %bulk_flow_count to i32
  call void @__asan_load2_noabort(i32 %567)
  %568 = load i16, ptr %bulk_flow_count, align 4
  %inc285 = add i16 %568, 1
  store i16 %inc285, ptr %bulk_flow_count, align 4
  %569 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load1_noabort(i32 %569)
  %570 = load i8, ptr %flow_mode, align 1
  %571 = and i8 %570, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %571)
  %cmp.i568 = icmp eq i8 %571, 5
  br i1 %cmp.i568, label %if.then289, label %if.then271.if.end292_crit_edge

if.then271.if.end292_crit_edge:                   ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end292

if.then289:                                       ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #17
  %idxprom275 = zext i16 %561 to i32
  %srchost_bulk_flow_count290 = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %idxprom275, i32 2
  %572 = ptrtoint ptr %srchost_bulk_flow_count290 to i32
  call void @__asan_load2_noabort(i32 %572)
  %573 = load i16, ptr %srchost_bulk_flow_count290, align 4
  %inc291 = add i16 %573, 1
  store i16 %inc291, ptr %srchost_bulk_flow_count290, align 4
  br label %if.end292

if.end292:                                        ; preds = %if.then289, %if.then271.if.end292_crit_edge
  %574 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %flow_mode, align 1
  %576 = and i8 %575, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %576)
  %cmp.i570 = icmp eq i8 %576, 6
  br i1 %cmp.i570, label %if.then296, label %if.end292.if.end301_crit_edge

if.end292.if.end301_crit_edge:                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end301

if.then296:                                       ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #17
  %dsthost_bulk_flow_count297 = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 4, i32 %idxprom280, i32 3
  %577 = ptrtoint ptr %dsthost_bulk_flow_count297 to i32
  call void @__asan_load2_noabort(i32 %577)
  %578 = load i16, ptr %dsthost_bulk_flow_count297, align 2
  %inc298 = add i16 %578, 1
  store i16 %inc298, ptr %dsthost_bulk_flow_count297, align 2
  br label %if.end301

if.end301:                                        ; preds = %if.then296, %if.end292.if.end301_crit_edge, %if.end259, %if.end203.if.end301_crit_edge
  %buffer_used302 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 24
  %579 = ptrtoint ptr %buffer_used302 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %buffer_used302, align 8
  %buffer_max_used = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 28
  %581 = ptrtoint ptr %buffer_max_used to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %buffer_max_used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %580, i32 %582)
  %cmp303 = icmp ugt i32 %580, %582
  br i1 %cmp303, label %if.then305, label %if.end301.if.end308_crit_edge

if.end301.if.end308_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end308

if.then305:                                       ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #17
  %583 = ptrtoint ptr %buffer_max_used to i32
  call void @__asan_store4_noabort(i32 %583)
  store i32 %580, ptr %buffer_max_used, align 4
  br label %if.end308

if.end308:                                        ; preds = %if.then305, %if.end301.if.end308_crit_edge
  %584 = ptrtoint ptr %buffer_used302 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %buffer_used302, align 8
  %buffer_limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 32
  %586 = ptrtoint ptr %buffer_limit to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %buffer_limit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %585, i32 %587)
  %cmp310 = icmp ugt i32 %585, %587
  br i1 %cmp310, label %while.cond.preheader, label %if.end308.cleanup321_crit_edge

if.end308.cleanup321_crit_edge:                   ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup321

while.cond.preheader:                             ; preds = %if.end308
  %588 = ptrtoint ptr %buffer_used302 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %buffer_used302, align 8
  %590 = ptrtoint ptr %buffer_limit to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %buffer_limit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %589, i32 %591)
  %cmp315646 = icmp ugt i32 %589, %591
  br i1 %cmp315646, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %overflow_heap.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %drops.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %rate_ns.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 11
  %rate_shft.i.i = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 12
  %time_next_packet21.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 7
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  br label %while.body

while.body:                                       ; preds = %cake_drop.exit.while.body_crit_edge, %while.body.lr.ph
  %dropped.0647 = phi i32 [ 0, %while.body.lr.ph ], [ %inc317, %cake_drop.exit.while.body_crit_edge ]
  %inc317 = add i32 %dropped.0647, 1
  %call1.i = call i64 @ktime_get() #15
  %592 = ptrtoint ptr %overflow_timeout to i32
  call void @__asan_load2_noabort(i32 %592)
  %593 = load i16, ptr %overflow_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %593)
  %tobool.not.i572 = icmp eq i16 %593, 0
  br i1 %tobool.not.i572, label %while.body.for.body.i575_crit_edge, label %while.body.if.end.i580_crit_edge

while.body.if.end.i580_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i580

while.body.for.body.i575_crit_edge:               ; preds = %while.body
  br label %for.body.i575

for.body.i575:                                    ; preds = %for.body.i575.for.body.i575_crit_edge, %while.body.for.body.i575_crit_edge
  %i.07.i = phi i32 [ %dec.i574, %for.body.i575.for.body.i575_crit_edge ], [ 4096, %while.body.for.body.i575_crit_edge ]
  %conv.i573 = trunc i32 %i.07.i to i16
  call fastcc void @cake_heapify(ptr noundef %privdata.i, i16 noundef zeroext %conv.i573) #15
  %dec.i574 = add nsw i32 %i.07.i, -1
  %cmp.not.i = icmp eq i32 %i.07.i, 0
  br i1 %cmp.not.i, label %for.body.i575.if.end.i580_crit_edge, label %for.body.i575.for.body.i575_crit_edge

for.body.i575.for.body.i575_crit_edge:            ; preds = %for.body.i575
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i575

for.body.i575.if.end.i580_crit_edge:              ; preds = %for.body.i575
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i580

if.end.i580:                                      ; preds = %for.body.i575.if.end.i580_crit_edge, %while.body.if.end.i580_crit_edge
  %594 = ptrtoint ptr %overflow_timeout to i32
  call void @__asan_store2_noabort(i32 %594)
  store i16 -1, ptr %overflow_timeout, align 4
  %595 = ptrtoint ptr %overflow_heap.i to i32
  call void @__asan_load2_noabort(i32 %595)
  %qq.sroa.0.0.copyload.i = load i16, ptr %overflow_heap.i, align 4
  %bf.lshr.i576 = lshr i16 %qq.sroa.0.0.copyload.i, 13
  %conv3.i = zext i16 %bf.lshr.i576 to i32
  %bf.lshr5.i = lshr i16 %qq.sroa.0.0.copyload.i, 3
  %bf.clear.i577 = and i16 %bf.lshr5.i, 1023
  %conv6.i578 = zext i16 %bf.clear.i577 to i32
  %596 = ptrtoint ptr %tins.i.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %tins.i.i, align 8
  %arrayidx7.i = getelementptr %struct.cake_tin_data, ptr %597, i32 %conv3.i
  %arrayidx8.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx7.i, i32 0, i32 %conv6.i578
  %598 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %arrayidx8.i, align 8
  %tobool.not.i.i579 = icmp eq ptr %599, null
  br i1 %tobool.not.i.i579, label %if.then14.i581, label %if.end16.i

if.then14.i581:                                   ; preds = %if.end.i580
  call void @__sanitizer_cov_trace_pc() #17
  %600 = ptrtoint ptr %overflow_timeout to i32
  call void @__asan_store2_noabort(i32 %600)
  store i16 0, ptr %overflow_timeout, align 4
  br label %cake_drop.exit

if.end16.i:                                       ; preds = %if.end.i580
  %601 = ptrtoint ptr %599 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %599, align 8
  %603 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %603)
  store ptr %602, ptr %arrayidx8.i, align 8
  store ptr null, ptr %599, align 8
  %cvars.i = getelementptr inbounds %struct.cake_flow, ptr %arrayidx8.i, i32 0, i32 5
  %blue_timer.i.i = getelementptr inbounds %struct.cake_flow, ptr %arrayidx8.i, i32 0, i32 5, i32 3
  %604 = ptrtoint ptr %blue_timer.i.i to i32
  call void @__asan_load8_noabort(i32 %604)
  %605 = load i64, ptr %blue_timer.i.i, align 8
  %sub.i.i582 = sub i64 %call1.i, %605
  %target.i.i = getelementptr %struct.cake_tin_data, ptr %597, i32 %conv3.i, i32 6, i32 1
  %606 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load8_noabort(i32 %606)
  %607 = load i64, ptr %target.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i582, i64 %607)
  %cmp.i.i583 = icmp ugt i64 %sub.i.i582, %607
  br i1 %cmp.i.i583, label %if.then.i2.i, label %if.end16.i.if.end8.i.i_crit_edge

if.end16.i.if.end8.i.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i.i

if.then.i2.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  %p_drop.i.i = getelementptr inbounds %struct.cake_flow, ptr %arrayidx8.i, i32 0, i32 5, i32 4
  %608 = ptrtoint ptr %p_drop.i.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %p_drop.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %609)
  %tobool.not.i1.i = icmp eq i32 %609, 0
  %p_inc.i.i = getelementptr %struct.cake_tin_data, ptr %597, i32 %conv3.i, i32 6, i32 3
  %610 = ptrtoint ptr %p_inc.i.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %p_inc.i.i, align 8
  %612 = call i32 @llvm.uadd.sat.i32(i32 %611, i32 %609) #15
  %613 = ptrtoint ptr %p_drop.i.i to i32
  call void @__asan_store4_noabort(i32 %613)
  store i32 %612, ptr %p_drop.i.i, align 8
  %614 = ptrtoint ptr %blue_timer.i.i to i32
  call void @__asan_store8_noabort(i32 %614)
  store i64 %call1.i, ptr %blue_timer.i.i, align 8
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then.i2.i, %if.end16.i.if.end8.i.i_crit_edge
  %up.0.off0.i.i = phi i1 [ %tobool.not.i1.i, %if.then.i2.i ], [ false, %if.end16.i.if.end8.i.i_crit_edge ]
  %dropping.i.i = getelementptr inbounds %struct.cake_flow, ptr %arrayidx8.i, i32 0, i32 5, i32 5
  %615 = ptrtoint ptr %dropping.i.i to i32
  call void @__asan_store1_noabort(i32 %615)
  store i8 1, ptr %dropping.i.i, align 4
  %drop_next.i.i = getelementptr inbounds %struct.cake_flow, ptr %arrayidx8.i, i32 0, i32 5, i32 2
  %616 = ptrtoint ptr %drop_next.i.i to i32
  call void @__asan_store8_noabort(i32 %616)
  store i64 %call1.i, ptr %drop_next.i.i, align 8
  %617 = ptrtoint ptr %cvars.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %cvars.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %618)
  %tobool9.not.i.i = icmp eq i32 %618, 0
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.end8.i.i.cobalt_queue_full.exit.i_crit_edge

if.end8.i.i.cobalt_queue_full.exit.i_crit_edge:   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cobalt_queue_full.exit.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %619 = ptrtoint ptr %cvars.i to i32
  call void @__asan_store4_noabort(i32 %619)
  store i32 1, ptr %cvars.i, align 8
  br label %cobalt_queue_full.exit.i

cobalt_queue_full.exit.i:                         ; preds = %if.then10.i.i, %if.end8.i.i.cobalt_queue_full.exit.i_crit_edge
  br i1 %up.0.off0.i.i, label %if.then18.i, label %cobalt_queue_full.exit.i.if.end19.i_crit_edge

cobalt_queue_full.exit.i.if.end19.i_crit_edge:    ; preds = %cobalt_queue_full.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

if.then18.i:                                      ; preds = %cobalt_queue_full.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %unresponsive_flow_count.i = getelementptr %struct.cake_tin_data, ptr %597, i32 %conv3.i, i32 11
  %620 = ptrtoint ptr %unresponsive_flow_count.i to i32
  call void @__asan_load2_noabort(i32 %620)
  %621 = load i16, ptr %unresponsive_flow_count.i, align 2
  %inc.i584 = add i16 %621, 1
  store i16 %inc.i584, ptr %unresponsive_flow_count.i, align 2
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %cobalt_queue_full.exit.i.if.end19.i_crit_edge
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %599, i32 0, i32 3
  %622 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %cb.i.i.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %599, i32 0, i32 20
  %624 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load i32, ptr %truesize.i, align 8
  %626 = ptrtoint ptr %buffer_used302 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %buffer_used302, align 8
  %sub.i585 = sub i32 %627, %625
  store i32 %sub.i585, ptr %buffer_used302, align 8
  %arrayidx21.i = getelementptr %struct.cake_tin_data, ptr %597, i32 %conv3.i, i32 1, i32 %conv6.i578
  %628 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %arrayidx21.i, align 4
  %sub22.i = sub i32 %629, %623
  store i32 %sub22.i, ptr %arrayidx21.i, align 4
  %tin_backlog.i = getelementptr %struct.cake_tin_data, ptr %597, i32 %conv3.i, i32 22
  %630 = ptrtoint ptr %tin_backlog.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %tin_backlog.i, align 8
  %sub23.i = sub i32 %631, %623
  store i32 %sub23.i, ptr %tin_backlog.i, align 8
  %632 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %backlog.i, align 4
  %sub24.i = sub i32 %633, %623
  store i32 %sub24.i, ptr %backlog.i, align 4
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef 1, i32 noundef %623) #15
  %dropped.i = getelementptr inbounds %struct.cake_flow, ptr %arrayidx8.i, i32 0, i32 4
  %634 = ptrtoint ptr %dropped.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load i32, ptr %dropped.i, align 4
  %inc25.i = add i32 %635, 1
  store i32 %inc25.i, ptr %dropped.i, align 4
  %tin_dropped.i = getelementptr %struct.cake_tin_data, ptr %597, i32 %conv3.i, i32 23
  %636 = ptrtoint ptr %tin_dropped.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %tin_dropped.i, align 4
  %inc26.i = add i32 %637, 1
  store i32 %inc26.i, ptr %tin_dropped.i, align 4
  %638 = ptrtoint ptr %drops.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %drops.i, align 8
  %inc28.i = add i32 %639, 1
  store i32 %inc28.i, ptr %drops.i, align 8
  %640 = ptrtoint ptr %rate_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %640)
  %641 = load i16, ptr %rate_flags.i.i, align 8
  %642 = and i16 %641, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %642)
  %tobool30.not.i = icmp eq i16 %642, 0
  br i1 %tobool30.not.i, label %if.end19.i.if.end33.i_crit_edge, label %if.then31.i

if.end19.i.if.end33.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.i

if.then31.i:                                      ; preds = %if.end19.i
  %643 = ptrtoint ptr %rate_ns.i.i to i32
  call void @__asan_load8_noabort(i32 %643)
  %644 = load i64, ptr %rate_ns.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %644)
  %tobool.not.i3.i = icmp eq i64 %644, 0
  br i1 %tobool.not.i3.i, label %if.then31.i.if.end33.i_crit_edge, label %if.then.i5.i

if.then31.i.if.end33.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.i

if.then.i5.i:                                     ; preds = %if.then31.i
  %adjusted_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %599, i32 0, i32 3, i32 16
  %645 = ptrtoint ptr %adjusted_len.i.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load i32, ptr %adjusted_len.i.i, align 8
  %conv.i.i586 = zext i32 %646 to i64
  %tin_rate_ns.i.i = getelementptr %struct.cake_tin_data, ptr %597, i32 %conv3.i, i32 17
  %647 = ptrtoint ptr %tin_rate_ns.i.i to i32
  call void @__asan_load8_noabort(i32 %647)
  %648 = load i64, ptr %tin_rate_ns.i.i, align 8
  %mul.i.i587 = mul i64 %648, %conv.i.i586
  %tin_rate_shft.i.i = getelementptr %struct.cake_tin_data, ptr %597, i32 %conv3.i, i32 19
  %649 = ptrtoint ptr %tin_rate_shft.i.i to i32
  call void @__asan_load2_noabort(i32 %649)
  %650 = load i16, ptr %tin_rate_shft.i.i, align 8
  %sh_prom.i.i = zext i16 %650 to i64
  %shr.i.i588 = lshr i64 %mul.i.i587, %sh_prom.i.i
  %mul4.i.i = mul i64 %644, %conv.i.i586
  %651 = ptrtoint ptr %rate_shft.i.i to i32
  call void @__asan_load2_noabort(i32 %651)
  %652 = load i16, ptr %rate_shft.i.i, align 2
  %sh_prom6.i.i = zext i16 %652 to i64
  %shr7.i.i = lshr i64 %mul4.i.i, %sh_prom6.i.i
  %time_next_packet.i.i = getelementptr %struct.cake_tin_data, ptr %597, i32 %conv3.i, i32 16
  %653 = ptrtoint ptr %time_next_packet.i.i to i32
  call void @__asan_load8_noabort(i32 %653)
  %654 = load i64, ptr %time_next_packet.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %654, i64 %call1.i)
  %cmp.i.i.i.i = icmp slt i64 %654, %call1.i
  br i1 %cmp.i.i.i.i, label %if.then10.i6.i, label %if.else.i.i589

if.then10.i6.i:                                   ; preds = %if.then.i5.i
  call void @__sanitizer_cov_trace_pc() #17
  %add12.i.i = add i64 %654, %shr.i.i588
  br label %if.end20.sink.split.i.i

if.else.i.i589:                                   ; preds = %if.then.i5.i
  %add15.i.i = add i64 %shr.i.i588, %call1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %654, i64 %add15.i.i)
  %cmp.i.i50.i.i = icmp slt i64 %654, %add15.i.i
  br i1 %cmp.i.i50.i.i, label %if.else.i.i589.if.end20.sink.split.i.i_crit_edge, label %if.else.i.i589.if.end20.i.i_crit_edge

if.else.i.i589.if.end20.i.i_crit_edge:            ; preds = %if.else.i.i589
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i.i

if.else.i.i589.if.end20.sink.split.i.i_crit_edge: ; preds = %if.else.i.i589
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.sink.split.i.i

if.end20.sink.split.i.i:                          ; preds = %if.else.i.i589.if.end20.sink.split.i.i_crit_edge, %if.then10.i6.i
  %add15.sink.i.i = phi i64 [ %add12.i.i, %if.then10.i6.i ], [ %add15.i.i, %if.else.i.i589.if.end20.sink.split.i.i_crit_edge ]
  %655 = ptrtoint ptr %time_next_packet.i.i to i32
  call void @__asan_store8_noabort(i32 %655)
  store i64 %add15.sink.i.i, ptr %time_next_packet.i.i, align 8
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.end20.sink.split.i.i, %if.else.i.i589.if.end20.i.i_crit_edge
  %656 = ptrtoint ptr %time_next_packet21.i.i to i32
  call void @__asan_load8_noabort(i32 %656)
  %657 = load i64, ptr %time_next_packet21.i.i, align 8
  %add22.i.i = add i64 %657, %shr7.i.i
  store i64 %add22.i.i, ptr %time_next_packet21.i.i, align 8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end20.i.i, %if.then31.i.if.end33.i_crit_edge, %if.end19.i.if.end33.i_crit_edge
  %658 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %to_free, align 4
  %660 = ptrtoint ptr %599 to i32
  call void @__asan_store4_noabort(i32 %660)
  store ptr %659, ptr %599, align 8
  store ptr %599, ptr %to_free, align 4
  %661 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %qlen.i, align 8
  %dec35.i = add i32 %662, -1
  store i32 %dec35.i, ptr %qlen.i, align 8
  call fastcc void @cake_heapify(ptr noundef %privdata.i, i16 noundef zeroext 0) #15
  br label %cake_drop.exit

cake_drop.exit:                                   ; preds = %if.end33.i, %if.then14.i581
  %663 = ptrtoint ptr %buffer_used302 to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %buffer_used302, align 8
  %665 = ptrtoint ptr %buffer_limit to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load i32, ptr %buffer_limit, align 8
  %cmp315 = icmp ugt i32 %664, %666
  br i1 %cmp315, label %cake_drop.exit.while.body_crit_edge, label %cake_drop.exit.while.end_crit_edge

cake_drop.exit.while.end_crit_edge:               ; preds = %cake_drop.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

cake_drop.exit.while.body_crit_edge:              ; preds = %cake_drop.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %cake_drop.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %dropped.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc317, %cake_drop.exit.while.end_crit_edge ]
  %drop_overlimit = getelementptr %struct.cake_tin_data, ptr %48, i32 %tin.0.i.i, i32 7
  %667 = ptrtoint ptr %drop_overlimit to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load i32, ptr %drop_overlimit, align 8
  %add319 = add i32 %668, %dropped.0.lcssa
  store i32 %add319, ptr %drop_overlimit, align 8
  br label %cleanup321

cleanup321:                                       ; preds = %while.end, %if.end308.cleanup321_crit_edge, %if.then55, %if.end
  %retval.1 = phi i32 [ %ret.1.ph622, %if.end ], [ 1, %if.then55 ], [ 0, %while.end ], [ 0, %if.end308.cleanup321_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cake_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  %vhdr.i.i.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tins = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %0 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tins, align 8
  %cur_tin = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 40
  %2 = ptrtoint ptr %cur_tin to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cur_tin, align 8
  %call1 = tail call i64 @ktime_get() #15
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %4 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not847 = icmp eq i32 %5, 0
  br i1 %tobool.not847, label %entry.cleanup472_crit_edge, label %if.end.lr.ph

entry.cleanup472_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup472

if.end.lr.ph:                                     ; preds = %entry
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.cake_tin_data, ptr %1, i32 %idxprom
  %time_next_packet = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 7
  %failsafe_next_packet = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 9
  %rate_ns = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 11
  %tin_cnt51 = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 5
  %cur_flow = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 42
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %buffer_used.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 24
  %overflow_timeout.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 3
  %rate_flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15
  %6 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i.i, i32 0, i32 1
  %rate_shft.i = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 12
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %flow_mode = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %begin.backedge.if.end_crit_edge, %if.end.lr.ph
  %b.0849 = phi ptr [ %arrayidx, %if.end.lr.ph ], [ %b.4, %begin.backedge.if.end_crit_edge ]
  %first_flow.0.off0848 = phi i1 [ true, %if.end.lr.ph ], [ %first_flow.0.off0.be, %begin.backedge.if.end_crit_edge ]
  %7 = ptrtoint ptr %time_next_packet to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %time_next_packet, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %call1)
  %cmp3.i.i = icmp sgt i64 %8, %call1
  br i1 %cmp3.i.i, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %failsafe_next_packet to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %failsafe_next_packet, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %call1)
  %cmp3.i.i675 = icmp sgt i64 %10, %call1
  br i1 %cmp3.i.i675, label %if.then5, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %11 = call i64 @llvm.smin.i64(i64 %8, i64 %10)
  %overlimits = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %12 = ptrtoint ptr %overlimits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %overlimits, align 16
  %inc = add i32 %13, 1
  store i32 %inc, ptr %overlimits, align 16
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 48
  call void @qdisc_watchdog_schedule_range_ns(ptr noundef %watchdog, i64 noundef %11, i64 noundef 0) #15
  br label %cleanup472

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %14 = ptrtoint ptr %rate_ns to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rate_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool11.not = icmp eq i64 %15, 0
  br i1 %tobool11.not, label %if.end10.while.cond.outer_crit_edge, label %for.cond.preheader

if.end10.while.cond.outer_crit_edge:              ; preds = %if.end10
  br label %while.cond.outer

for.cond.preheader:                               ; preds = %if.end10
  %16 = ptrtoint ptr %tin_cnt51 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tin_cnt51, align 2
  %conv52 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp53839.not = icmp eq i16 %17, 0
  br i1 %cmp53839.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %18 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tins, align 8
  br label %for.body

while.cond:                                       ; preds = %while.cond.outer, %if.end23.while.cond_crit_edge
  %empty.0.off0 = phi i1 [ %spec.select, %if.end23.while.cond_crit_edge ], [ %empty.0.off0.ph, %while.cond.outer ]
  %b.1 = phi ptr [ %incdec.ptr, %if.end23.while.cond_crit_edge ], [ %b.1.ph, %while.cond.outer ]
  %tin_deficit = getelementptr inbounds %struct.cake_tin_data, ptr %b.1, i32 0, i32 21
  %20 = ptrtoint ptr %tin_deficit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tin_deficit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp13 = icmp slt i32 %21, 0
  br i1 %cmp13, label %while.cond.if.then19_crit_edge, label %lor.rhs

while.cond.if.then19_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then19

lor.rhs:                                          ; preds = %while.cond
  %sparse_flow_count = getelementptr inbounds %struct.cake_tin_data, ptr %b.1, i32 0, i32 9
  %22 = ptrtoint ptr %sparse_flow_count to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sparse_flow_count, align 2
  %conv = zext i16 %23 to i32
  %bulk_flow_count = getelementptr inbounds %struct.cake_tin_data, ptr %b.1, i32 0, i32 8
  %24 = ptrtoint ptr %bulk_flow_count to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %bulk_flow_count, align 4
  %conv14 = zext i16 %25 to i32
  %add = sub nsw i32 0, %conv14
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %add)
  %tobool15.not = icmp eq i32 %conv, %add
  br i1 %tobool15.not, label %while.body, label %lor.rhs.if.end96_crit_edge

lor.rhs.if.end96_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

while.body:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp17 = icmp eq i32 %21, 0
  br i1 %cmp17, label %while.body.if.then19_crit_edge, label %while.body.if.end23_crit_edge

while.body.if.end23_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

while.body.if.then19_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then19

if.then19:                                        ; preds = %while.body.if.then19_crit_edge, %while.cond.if.then19_crit_edge
  %tin_quantum = getelementptr inbounds %struct.cake_tin_data, ptr %b.1, i32 0, i32 20
  %26 = ptrtoint ptr %tin_quantum to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tin_quantum, align 2
  %conv20 = zext i16 %27 to i32
  %add22 = add nsw i32 %21, %conv20
  %28 = ptrtoint ptr %tin_deficit to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add22, ptr %tin_deficit, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %while.body.if.end23_crit_edge
  %sparse_flow_count24 = getelementptr inbounds %struct.cake_tin_data, ptr %b.1, i32 0, i32 9
  %29 = ptrtoint ptr %sparse_flow_count24 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sparse_flow_count24, align 2
  %conv25 = zext i16 %30 to i32
  %bulk_flow_count26 = getelementptr inbounds %struct.cake_tin_data, ptr %b.1, i32 0, i32 8
  %31 = ptrtoint ptr %bulk_flow_count26 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %bulk_flow_count26, align 4
  %conv27 = zext i16 %32 to i32
  %add28 = sub nsw i32 0, %conv27
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25, i32 %add28)
  %tobool29.not = icmp eq i32 %conv25, %add28
  %spec.select = select i1 %tobool29.not, i1 %empty.0.off0, i1 false
  %33 = ptrtoint ptr %cur_tin to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cur_tin, align 8
  %inc33 = add i16 %34, 1
  store i16 %inc33, ptr %cur_tin, align 8
  %incdec.ptr = getelementptr %struct.cake_tin_data, ptr %b.1, i32 1
  %35 = ptrtoint ptr %tin_cnt51 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tin_cnt51, align 2
  %cmp37.not = icmp ult i16 %inc33, %36
  br i1 %cmp37.not, label %if.end23.while.cond_crit_edge, label %if.then39

if.end23.while.cond_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

if.then39:                                        ; preds = %if.end23
  %37 = ptrtoint ptr %cur_tin to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %cur_tin, align 8
  %38 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tins, align 8
  %40 = select i1 %wrapped.0.off0.ph, i1 %spec.select, i1 false
  br i1 %40, label %if.then39.cleanup472_crit_edge, label %if.then39.while.cond.outer_crit_edge

if.then39.while.cond.outer_crit_edge:             ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.outer

if.then39.cleanup472_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup472

while.cond.outer:                                 ; preds = %if.then39.while.cond.outer_crit_edge, %if.end10.while.cond.outer_crit_edge
  %wrapped.0.off0.ph = phi i1 [ true, %if.then39.while.cond.outer_crit_edge ], [ false, %if.end10.while.cond.outer_crit_edge ]
  %empty.0.off0.ph = phi i1 [ %spec.select, %if.then39.while.cond.outer_crit_edge ], [ true, %if.end10.while.cond.outer_crit_edge ]
  %b.1.ph = phi ptr [ %39, %if.then39.while.cond.outer_crit_edge ], [ %b.0849, %if.end10.while.cond.outer_crit_edge ]
  br label %while.cond

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %best_tin.0843 = phi i32 [ 0, %for.body.lr.ph ], [ %best_tin.2, %for.inc.for.body_crit_edge ]
  %tin.0841 = phi i32 [ 0, %for.body.lr.ph ], [ %inc74, %for.inc.for.body_crit_edge ]
  %best_time.0840 = phi i64 [ 9223372036854775807, %for.body.lr.ph ], [ %best_time.2, %for.inc.for.body_crit_edge ]
  %sparse_flow_count56 = getelementptr %struct.cake_tin_data, ptr %19, i32 %tin.0841, i32 9
  %41 = ptrtoint ptr %sparse_flow_count56 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %sparse_flow_count56, align 2
  %conv57 = zext i16 %42 to i32
  %bulk_flow_count58 = getelementptr %struct.cake_tin_data, ptr %19, i32 %tin.0841, i32 8
  %43 = ptrtoint ptr %bulk_flow_count58 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %bulk_flow_count58, align 4
  %conv59 = zext i16 %44 to i32
  %add60 = sub nsw i32 0, %conv59
  call void @__sanitizer_cov_trace_cmp4(i32 %conv57, i32 %add60)
  %cmp61.not = icmp eq i32 %conv57, %add60
  br i1 %cmp61.not, label %for.body.for.inc_crit_edge, label %if.then63

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then63:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %time_next_packet64 = getelementptr %struct.cake_tin_data, ptr %19, i32 %tin.0841, i32 16
  %45 = ptrtoint ptr %time_next_packet64 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %time_next_packet64, align 8
  %sub = sub i64 %46, %call1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp66 = icmp sgt i64 %sub, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %best_time.0840)
  %cmp3.i.not = icmp sgt i64 %sub, %best_time.0840
  %or.cond = select i1 %cmp66, i1 %cmp3.i.not, i1 false
  %spec.select809 = select i1 %or.cond, i64 %best_time.0840, i64 %sub
  %spec.select810 = select i1 %or.cond, i32 %best_tin.0843, i32 %tin.0841
  br label %for.inc

for.inc:                                          ; preds = %if.then63, %for.body.for.inc_crit_edge
  %best_time.2 = phi i64 [ %best_time.0840, %for.body.for.inc_crit_edge ], [ %spec.select809, %if.then63 ]
  %best_tin.2 = phi i32 [ %best_tin.0843, %for.body.for.inc_crit_edge ], [ %spec.select810, %if.then63 ]
  %inc74 = add nuw nsw i32 %tin.0841, 1
  %exitcond.not = icmp eq i32 %inc74, %conv52
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %best_tin.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %best_tin.2, %for.inc.for.end_crit_edge ]
  %conv75 = trunc i32 %best_tin.0.lcssa to i16
  %47 = ptrtoint ptr %cur_tin to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv75, ptr %cur_tin, align 8
  %48 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tins, align 8
  %add.ptr78 = getelementptr %struct.cake_tin_data, ptr %49, i32 %best_tin.0.lcssa
  %sparse_flow_count79 = getelementptr %struct.cake_tin_data, ptr %49, i32 %best_tin.0.lcssa, i32 9
  %50 = ptrtoint ptr %sparse_flow_count79 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %sparse_flow_count79, align 2
  %conv80 = zext i16 %51 to i32
  %bulk_flow_count81 = getelementptr %struct.cake_tin_data, ptr %49, i32 %best_tin.0.lcssa, i32 8
  %52 = ptrtoint ptr %bulk_flow_count81 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bulk_flow_count81, align 4
  %conv82 = zext i16 %53 to i32
  %add83 = sub nsw i32 0, %conv82
  call void @__sanitizer_cov_trace_cmp4(i32 %conv80, i32 %add83)
  %tobool84.not = icmp eq i32 %conv80, %add83
  br i1 %tobool84.not, label %for.end.cleanup472_crit_edge, label %for.end.if.end96_crit_edge

for.end.if.end96_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

for.end.cleanup472_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup472

if.end96:                                         ; preds = %for.end.if.end96_crit_edge, %lor.rhs.if.end96_crit_edge
  %b.4 = phi ptr [ %add.ptr78, %for.end.if.end96_crit_edge ], [ %b.1, %lor.rhs.if.end96_crit_edge ]
  %decaying_flows = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 15
  %new_flows = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 13
  %old_flows = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 14
  %sub.ptr.rhs.cast = ptrtoint ptr %b.4 to i32
  %cparams350 = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 6
  %target.i721 = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 6, i32 1
  %bulk_flow_count351 = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 8
  %mtu_time.i = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 6, i32 2
  %tin_rate_ns.i = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 17
  %tin_rate_shft.i = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 19
  %time_next_packet.i = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 16
  %tin_deficit374 = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 21
  %tin_dropped = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 23
  %sparse_flow_count149 = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 9
  %flow_quantum = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 5
  %prev.i2.i = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 14, i32 1
  br label %retry

retry:                                            ; preds = %retry.backedge, %if.end96
  %first_flow.1.off0 = phi i1 [ %first_flow.0.off0848, %if.end96 ], [ false, %retry.backedge ]
  br i1 %first_flow.1.off0, label %lor.lhs.false98, label %retry.if.then101_crit_edge

retry.if.then101_crit_edge:                       ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then101

lor.lhs.false98:                                  ; preds = %retry
  %54 = ptrtoint ptr %decaying_flows to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %decaying_flows, align 4
  %cmp.i676.not = icmp eq ptr %55, %decaying_flows
  br i1 %cmp.i676.not, label %lor.lhs.false98.if.then101_crit_edge, label %lor.lhs.false98.if.end127_crit_edge

lor.lhs.false98.if.end127_crit_edge:              ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end127

lor.lhs.false98.if.then101_crit_edge:             ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then101

if.then101:                                       ; preds = %lor.lhs.false98.if.then101_crit_edge, %retry.if.then101_crit_edge
  %56 = ptrtoint ptr %new_flows to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %new_flows, align 4
  %cmp.i677.not = icmp eq ptr %57, %new_flows
  br i1 %cmp.i677.not, label %if.then104, label %if.then101.if.end127_crit_edge

if.then101.if.end127_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end127

if.then104:                                       ; preds = %if.then101
  %58 = ptrtoint ptr %old_flows to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %old_flows, align 4
  %cmp.i679.not = icmp eq ptr %59, %old_flows
  br i1 %cmp.i679.not, label %if.then113, label %if.then104.if.end127_crit_edge, !prof !66

if.then104.if.end127_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end127

if.then113:                                       ; preds = %if.then104
  %60 = ptrtoint ptr %decaying_flows to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %decaying_flows, align 4
  %cmp.i681.not = icmp eq ptr %61, %decaying_flows
  br i1 %cmp.i681.not, label %if.then113.begin.backedge_crit_edge, label %if.then113.if.end127_crit_edge, !prof !66

if.then113.if.end127_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end127

if.then113.begin.backedge_crit_edge:              ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #17
  br label %begin.backedge

if.end127:                                        ; preds = %if.then113.if.end127_crit_edge, %if.then104.if.end127_crit_edge, %if.then101.if.end127_crit_edge, %lor.lhs.false98.if.end127_crit_edge
  %head.0 = phi ptr [ %decaying_flows, %if.then113.if.end127_crit_edge ], [ %old_flows, %if.then104.if.end127_crit_edge ], [ %new_flows, %if.then101.if.end127_crit_edge ], [ %decaying_flows, %lor.lhs.false98.if.end127_crit_edge ]
  %62 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.0, align 4
  %add.ptr130 = getelementptr i8, ptr %63, i32 -8
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr130 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %64 = lshr exact i32 %sub.ptr.sub, 6
  %conv131 = trunc i32 %64 to i16
  %65 = ptrtoint ptr %cur_flow to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv131, ptr %cur_flow, align 2
  %srchost132 = getelementptr i8, ptr %63, i32 48
  %66 = ptrtoint ptr %srchost132 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %srchost132, align 8
  %idxprom133 = zext i16 %67 to i32
  %dsthost136 = getelementptr i8, ptr %63, i32 50
  %68 = ptrtoint ptr %dsthost136 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %dsthost136, align 2
  %idxprom137 = zext i16 %69 to i32
  %deficit = getelementptr i8, ptr %63, i32 8
  %70 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %deficit, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp139 = icmp slt i32 %71, 1
  br i1 %cmp139, label %if.then141, label %while.cond244.preheader

while.cond244.preheader:                          ; preds = %if.end127
  %cvars349 = getelementptr i8, ptr %63, i32 16
  %drop_next.i720 = getelementptr i8, ptr %63, i32 24
  %ecn_marked199.i = getelementptr i8, ptr %63, i32 45
  %dropping27.i = getelementptr i8, ptr %63, i32 44
  %rec_inv_sqrt.i728 = getelementptr i8, ptr %63, i32 20
  %p_drop.i749 = getelementptr i8, ptr %63, i32 40
  %dropped = getelementptr i8, ptr %63, i32 12
  br label %while.cond244

if.then141:                                       ; preds = %if.end127
  %set = getelementptr i8, ptr %63, i32 52
  %72 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %set, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %73)
  %cmp143 = icmp eq i8 %73, 1
  br i1 %cmp143, label %if.then145, label %if.then141.if.end167_crit_edge

if.then141.if.end167_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end167

if.then145:                                       ; preds = %if.then141
  %74 = ptrtoint ptr %add.ptr130 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr130, align 8
  %tobool147.not = icmp eq ptr %75, null
  br i1 %tobool147.not, label %if.then145.if.end167.sink.split_crit_edge, label %if.then148

if.then145.if.end167.sink.split_crit_edge:        ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end167.sink.split

if.then148:                                       ; preds = %if.then145
  %76 = ptrtoint ptr %sparse_flow_count149 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %sparse_flow_count149, align 2
  %dec = add i16 %77, -1
  store i16 %dec, ptr %sparse_flow_count149, align 2
  %78 = ptrtoint ptr %bulk_flow_count351 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %bulk_flow_count351, align 4
  %inc151 = add i16 %79, 1
  store i16 %inc151, ptr %bulk_flow_count351, align 4
  %80 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %flow_mode, align 1
  %82 = and i8 %81, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %82)
  %cmp.i683 = icmp eq i8 %82, 5
  br i1 %cmp.i683, label %if.then154, label %if.then148.if.end156_crit_edge

if.then148.if.end156_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end156

if.then154:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #17
  %srchost_bulk_flow_count = getelementptr %struct.cake_tin_data, ptr %b.4, i32 0, i32 4, i32 %idxprom133, i32 2
  %83 = ptrtoint ptr %srchost_bulk_flow_count to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %srchost_bulk_flow_count, align 4
  %inc155 = add i16 %84, 1
  store i16 %inc155, ptr %srchost_bulk_flow_count, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %if.then148.if.end156_crit_edge
  %85 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %flow_mode, align 1
  %87 = and i8 %86, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %87)
  %cmp.i685 = icmp eq i8 %87, 6
  br i1 %cmp.i685, label %if.then160, label %if.end156.if.end167.sink.split_crit_edge

if.end156.if.end167.sink.split_crit_edge:         ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end167.sink.split

if.then160:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #17
  %dsthost_bulk_flow_count = getelementptr %struct.cake_tin_data, ptr %b.4, i32 0, i32 4, i32 %idxprom137, i32 3
  %88 = ptrtoint ptr %dsthost_bulk_flow_count to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %dsthost_bulk_flow_count, align 2
  %inc161 = add i16 %89, 1
  store i16 %inc161, ptr %dsthost_bulk_flow_count, align 2
  br label %if.end167.sink.split

if.end167.sink.split:                             ; preds = %if.then160, %if.end156.if.end167.sink.split_crit_edge, %if.then145.if.end167.sink.split_crit_edge
  %.sink = phi i8 [ 3, %if.then160 ], [ 3, %if.end156.if.end167.sink.split_crit_edge ], [ 2, %if.then145.if.end167.sink.split_crit_edge ]
  %90 = ptrtoint ptr %set to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %.sink, ptr %set, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.end167.sink.split, %if.then141.if.end167_crit_edge
  %91 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %flow_mode, align 1
  %conv169 = zext i8 %92 to i32
  %and.i686 = and i32 %conv169, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i686)
  %cmp.i687 = icmp eq i32 %and.i686, 5
  br i1 %cmp.i687, label %if.then171, label %if.end167.if.end185_crit_edge

if.end167.if.end185_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end185

if.then171:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #17
  %srchost_bulk_flow_count172 = getelementptr %struct.cake_tin_data, ptr %b.4, i32 0, i32 4, i32 %idxprom133, i32 2
  %93 = ptrtoint ptr %srchost_bulk_flow_count172 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %srchost_bulk_flow_count172, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %cmp176 = icmp eq i16 %94, 0
  %. = select i1 %cmp176, i16 1, i16 %94
  br label %if.end185

if.end185:                                        ; preds = %if.then171, %if.end167.if.end185_crit_edge
  %host_load.0 = phi i16 [ %., %if.then171 ], [ 1, %if.end167.if.end185_crit_edge ]
  %and.i688 = and i32 %conv169, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i688)
  %cmp.i689 = icmp eq i32 %and.i688, 6
  br i1 %cmp.i689, label %if.then189, label %if.end185.if.end203_crit_edge

if.end185.if.end203_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end203

if.then189:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #17
  %dsthost_bulk_flow_count190 = getelementptr %struct.cake_tin_data, ptr %b.4, i32 0, i32 4, i32 %idxprom137, i32 3
  %95 = ptrtoint ptr %dsthost_bulk_flow_count190 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %dsthost_bulk_flow_count190, align 2
  %97 = call i16 @llvm.umax.i16(i16 %host_load.0, i16 %96)
  br label %if.end203

if.end203:                                        ; preds = %if.then189, %if.end185.if.end203_crit_edge
  %host_load.1 = phi i16 [ %97, %if.then189 ], [ %host_load.0, %if.end185.if.end203_crit_edge ]
  %conv204 = zext i16 %host_load.1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %host_load.1)
  %cmp205 = icmp ugt i16 %host_load.1, 1024
  br i1 %cmp205, label %do.end, label %if.end203.if.end225_crit_edge, !prof !66

if.end203.if.end225_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end225

do.end:                                           ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2093, i32 noundef 9, ptr noundef null) #15
  br label %if.end225

if.end225:                                        ; preds = %do.end, %if.end203.if.end225_crit_edge
  %98 = ptrtoint ptr %flow_quantum to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %flow_quantum, align 8
  %conv233 = zext i16 %99 to i32
  %arrayidx235 = getelementptr [1025 x i16], ptr @quantum_div, i32 0, i32 %conv204
  %100 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx235, align 2
  %conv236 = zext i16 %101 to i32
  %mul = mul nuw i32 %conv236, %conv233
  %call237 = call i32 @prandom_u32() #15
  %shr = lshr i32 %call237, 16
  %add238 = add nuw i32 %mul, %shr
  %shr239 = lshr i32 %add238, 16
  %102 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %deficit, align 8
  %add241 = add i32 %shr239, %103
  store i32 %add241, ptr %deficit, align 8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %63) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end225.__list_del_entry.exit.i_crit_edge

if.end225.__list_del_entry.exit.i_crit_edge:      ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #17
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i.i, align 4
  %106 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %63, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev1.i.i.i, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %107, ptr %105, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end225.__list_del_entry.exit.i_crit_edge
  %110 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %63, ptr noundef %111, ptr noundef %old_flows) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.retry.backedge_crit_edge

__list_del_entry.exit.i.retry.backedge_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %retry.backedge

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %112 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %63, ptr %prev.i2.i, align 4
  %113 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %old_flows, ptr %63, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %114 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %111, ptr %prev3.i.i.i, align 4
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %63, ptr %111, align 4
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.end376.retry.backedge_crit_edge, %if.end.i.i.i, %__list_del_entry.exit.i.retry.backedge_crit_edge
  br label %retry

while.cond244:                                    ; preds = %if.end376.while.cond244_crit_edge, %while.cond244.preheader
  %116 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tins, align 8
  %118 = ptrtoint ptr %cur_tin to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %cur_tin, align 8
  %idxprom.i = zext i16 %119 to i32
  %arrayidx.i = getelementptr %struct.cake_tin_data, ptr %117, i32 %idxprom.i
  %120 = ptrtoint ptr %cur_flow to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %cur_flow, align 2
  %idxprom1.i = zext i16 %121 to i32
  %arrayidx2.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx.i, i32 0, i32 %idxprom1.i
  %122 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx2.i, align 8
  %tobool.not.i = icmp eq ptr %123, null
  br i1 %tobool.not.i, label %if.then248, label %dequeue_head.exit.i

dequeue_head.exit.i:                              ; preds = %while.cond244
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 8
  %126 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %arrayidx2.i, align 8
  store ptr null, ptr %123, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 3
  %127 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cb.i.i.i, align 4
  %129 = ptrtoint ptr %cur_flow to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %cur_flow, align 2
  %idxprom6.i = zext i16 %130 to i32
  %arrayidx7.i = getelementptr %struct.cake_tin_data, ptr %117, i32 %idxprom.i, i32 1, i32 %idxprom6.i
  %131 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx7.i, align 4
  %sub.i = sub i32 %132, %128
  store i32 %sub.i, ptr %arrayidx7.i, align 4
  %tin_backlog.i = getelementptr %struct.cake_tin_data, ptr %117, i32 %idxprom.i, i32 22
  %133 = ptrtoint ptr %tin_backlog.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tin_backlog.i, align 8
  %sub8.i = sub i32 %134, %128
  store i32 %sub8.i, ptr %tin_backlog.i, align 8
  %135 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %backlog.i, align 4
  %sub9.i = sub i32 %136, %128
  store i32 %sub9.i, ptr %backlog.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 20
  %137 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %truesize.i, align 8
  %139 = ptrtoint ptr %buffer_used.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %buffer_used.i, align 8
  %sub10.i = sub i32 %140, %138
  store i32 %sub10.i, ptr %buffer_used.i, align 8
  %141 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %qlen, align 8
  %dec.i = add i32 %142, -1
  store i32 %dec.i, ptr %qlen, align 8
  %143 = ptrtoint ptr %overflow_timeout.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %overflow_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %144)
  %tobool12.not.i = icmp eq i16 %144, 0
  br i1 %tobool12.not.i, label %dequeue_head.exit.i.if.end348_crit_edge, label %if.then13.i

dequeue_head.exit.i.if.end348_crit_edge:          ; preds = %dequeue_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end348

if.then13.i:                                      ; preds = %dequeue_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %145 = ptrtoint ptr %cur_flow to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %cur_flow, align 2
  %idxprom15.i = zext i16 %146 to i32
  %arrayidx16.i = getelementptr %struct.cake_tin_data, ptr %117, i32 %idxprom.i, i32 3, i32 %idxprom15.i
  %147 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %arrayidx16.i, align 2
  call fastcc void @cake_heapify(ptr noundef %privdata.i, i16 noundef zeroext %148) #15
  br label %if.end348

if.then248:                                       ; preds = %while.cond244
  %idxprom133.le = zext i16 %67 to i32
  %idxprom137.le = zext i16 %69 to i32
  %149 = ptrtoint ptr %p_drop.i749 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %p_drop.i749, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i690 = icmp eq i32 %150, 0
  br i1 %tobool.not.i690, label %if.then248.if.end11.i_crit_edge, label %land.lhs.true.i

if.then248.if.end11.i_crit_edge:                  ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.then248
  %blue_timer.i = getelementptr i8, ptr %63, i32 32
  %151 = ptrtoint ptr %blue_timer.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %blue_timer.i, align 8
  %sub.i691 = sub i64 %call1, %152
  %153 = ptrtoint ptr %target.i721 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %target.i721, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i691, i64 %154)
  %cmp.i692 = icmp ugt i64 %sub.i691, %154
  br i1 %cmp.i692, label %if.then.i, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %p_dec.i = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 6, i32 4
  %155 = ptrtoint ptr %p_dec.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %p_dec.i, align 4
  %157 = call i32 @llvm.usub.sat.i32(i32 %150, i32 %156) #15
  %158 = ptrtoint ptr %p_drop.i749 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %p_drop.i749, align 8
  %159 = ptrtoint ptr %blue_timer.i to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %call1, ptr %blue_timer.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %156)
  %tobool10.not.i = icmp ule i32 %150, %156
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then.i, %land.lhs.true.i.if.end11.i_crit_edge, %if.then248.if.end11.i_crit_edge
  %down.0.off0.i = phi i1 [ %tobool10.not.i, %if.then.i ], [ false, %land.lhs.true.i.if.end11.i_crit_edge ], [ false, %if.then248.if.end11.i_crit_edge ]
  %160 = ptrtoint ptr %dropping27.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %dropping27.i, align 4
  %161 = ptrtoint ptr %cvars349 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %cvars349, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool12.not.i693 = icmp eq i32 %162, 0
  br i1 %tobool12.not.i693, label %if.end11.i.cobalt_queue_empty.exit_crit_edge, label %land.lhs.true13.i

if.end11.i.cobalt_queue_empty.exit_crit_edge:     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cobalt_queue_empty.exit

land.lhs.true13.i:                                ; preds = %if.end11.i
  %163 = ptrtoint ptr %drop_next.i720 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %drop_next.i720, align 8
  %sub14.i = sub i64 %call1, %164
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub14.i)
  %cmp16.i = icmp sgt i64 %sub14.i, -1
  br i1 %cmp16.i, label %if.then17.i, label %land.lhs.true13.i.cobalt_queue_empty.exit_crit_edge

land.lhs.true13.i.cobalt_queue_empty.exit_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cobalt_queue_empty.exit

if.then17.i:                                      ; preds = %land.lhs.true13.i
  %dec.i694 = add i32 %162, -1
  %165 = ptrtoint ptr %cvars349 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %dec.i694, ptr %cvars349, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %dec.i694)
  %cmp.i.i = icmp ult i32 %dec.i694, 16
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i.i = getelementptr [16 x i32], ptr @cobalt_rec_inv_sqrt_cache, i32 0, i32 %dec.i694
  %166 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx.i.i, align 4
  br label %cobalt_invsqrt.exit.i

if.else.i.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #17
  %168 = ptrtoint ptr %rec_inv_sqrt.i728 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %rec_inv_sqrt.i728, align 4
  %conv.i.i.i = zext i32 %169 to i64
  %mul.i.i.i = mul nuw i64 %conv.i.i.i, %conv.i.i.i
  %shr.i.i.i = lshr i64 %mul.i.i.i, 32
  %conv3.i.i.i = zext i32 %dec.i694 to i64
  %mul5.i.i.i = mul nuw i64 %shr.i.i.i, %conv3.i.i.i
  %sub.i.i.i = sub i64 12884901888, %mul5.i.i.i
  %shr6.i.i.i = lshr i64 %sub.i.i.i, 2
  %mul8.i.i.i = mul i64 %shr6.i.i.i, %conv.i.i.i
  %shr9.i.i.i = lshr i64 %mul8.i.i.i, 31
  %conv10.i.i.i = trunc i64 %shr9.i.i.i to i32
  br label %cobalt_invsqrt.exit.i

cobalt_invsqrt.exit.i:                            ; preds = %if.else.i.i, %if.then.i.i
  %storemerge873 = phi i32 [ %conv10.i.i.i, %if.else.i.i ], [ %167, %if.then.i.i ]
  %170 = ptrtoint ptr %rec_inv_sqrt.i728 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %storemerge873, ptr %rec_inv_sqrt.i728, align 4
  %171 = ptrtoint ptr %cparams350 to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %cparams350, align 8
  %conv.i.i44.i = and i64 %172, 4294967295
  %conv1.i.i.i = zext i32 %storemerge873 to i64
  %mul.i.i45.i = mul nuw i64 %conv.i.i44.i, %conv1.i.i.i
  %shr.i.i46.i = lshr i64 %mul.i.i45.i, 32
  %add.i.i = add i64 %shr.i.i46.i, %164
  %173 = ptrtoint ptr %drop_next.i720 to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %add.i.i, ptr %drop_next.i720, align 8
  br label %cobalt_queue_empty.exit

cobalt_queue_empty.exit:                          ; preds = %cobalt_invsqrt.exit.i, %land.lhs.true13.i.cobalt_queue_empty.exit_crit_edge, %if.end11.i.cobalt_queue_empty.exit_crit_edge
  br i1 %down.0.off0.i, label %if.then250, label %cobalt_queue_empty.exit.if.end252_crit_edge

cobalt_queue_empty.exit.if.end252_crit_edge:      ; preds = %cobalt_queue_empty.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end252

if.then250:                                       ; preds = %cobalt_queue_empty.exit
  call void @__sanitizer_cov_trace_pc() #17
  %unresponsive_flow_count = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 11
  %174 = ptrtoint ptr %unresponsive_flow_count to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %unresponsive_flow_count, align 2
  %dec251 = add i16 %175, -1
  store i16 %dec251, ptr %unresponsive_flow_count, align 2
  br label %if.end252

if.end252:                                        ; preds = %if.then250, %cobalt_queue_empty.exit.if.end252_crit_edge
  %176 = ptrtoint ptr %p_drop.i749 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %p_drop.i749, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool254.not = icmp eq i32 %177, 0
  br i1 %tobool254.not, label %lor.lhs.false255, label %if.end252.if.then262_crit_edge

if.end252.if.then262_crit_edge:                   ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then262

lor.lhs.false255:                                 ; preds = %if.end252
  %178 = ptrtoint ptr %cvars349 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %cvars349, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool257.not = icmp eq i32 %179, 0
  br i1 %tobool257.not, label %lor.lhs.false258, label %lor.lhs.false255.if.then262_crit_edge

lor.lhs.false255.if.then262_crit_edge:            ; preds = %lor.lhs.false255
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then262

lor.lhs.false258:                                 ; preds = %lor.lhs.false255
  %180 = ptrtoint ptr %drop_next.i720 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %drop_next.i720, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %181)
  %cmp.i.i695 = icmp slt i64 %call1, %181
  br i1 %cmp.i.i695, label %lor.lhs.false258.if.then262_crit_edge, label %if.else305

lor.lhs.false258.if.then262_crit_edge:            ; preds = %lor.lhs.false258
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then262

if.then262:                                       ; preds = %lor.lhs.false258.if.then262_crit_edge, %lor.lhs.false255.if.then262_crit_edge, %if.end252.if.then262_crit_edge
  %call.i.i696 = call zeroext i1 @__list_del_entry_valid(ptr noundef %63) #15
  br i1 %call.i.i696, label %if.end.i.i699, label %if.then262.__list_del_entry.exit.i702_crit_edge

if.then262.__list_del_entry.exit.i702_crit_edge:  ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #17
  br label %__list_del_entry.exit.i702

if.end.i.i699:                                    ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i697 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %182 = ptrtoint ptr %prev.i.i697 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %prev.i.i697, align 4
  %184 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %63, align 4
  %prev1.i.i.i698 = getelementptr inbounds %struct.list_head, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %prev1.i.i.i698 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %183, ptr %prev1.i.i.i698, align 4
  %187 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %187)
  store volatile ptr %185, ptr %183, align 4
  br label %__list_del_entry.exit.i702

__list_del_entry.exit.i702:                       ; preds = %if.end.i.i699, %if.then262.__list_del_entry.exit.i702_crit_edge
  %prev.i2.i700 = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 15, i32 1
  %188 = ptrtoint ptr %prev.i2.i700 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %prev.i2.i700, align 4
  %call.i.i.i701 = call zeroext i1 @__list_add_valid(ptr noundef %63, ptr noundef %189, ptr noundef %decaying_flows) #15
  br i1 %call.i.i.i701, label %if.end.i.i.i704, label %__list_del_entry.exit.i702.list_move_tail.exit705_crit_edge

__list_del_entry.exit.i702.list_move_tail.exit705_crit_edge: ; preds = %__list_del_entry.exit.i702
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_move_tail.exit705

if.end.i.i.i704:                                  ; preds = %__list_del_entry.exit.i702
  call void @__sanitizer_cov_trace_pc() #17
  %190 = ptrtoint ptr %prev.i2.i700 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %63, ptr %prev.i2.i700, align 4
  %191 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %decaying_flows, ptr %63, align 4
  %prev3.i.i.i703 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %192 = ptrtoint ptr %prev3.i.i.i703 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %189, ptr %prev3.i.i.i703, align 4
  %193 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile ptr %63, ptr %189, align 4
  br label %list_move_tail.exit705

list_move_tail.exit705:                           ; preds = %if.end.i.i.i704, %__list_del_entry.exit.i702.list_move_tail.exit705_crit_edge
  %set265 = getelementptr i8, ptr %63, i32 52
  %194 = ptrtoint ptr %set265 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %set265, align 4
  %196 = zext i8 %195 to i64
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %195, label %list_move_tail.exit705.if.end303_crit_edge [
    i8 3, label %if.then269
    i8 1, label %list_move_tail.exit705.if.end303.sink.split.sink.split_crit_edge
    i8 2, label %list_move_tail.exit705.if.end303.sink.split.sink.split_crit_edge991
  ]

list_move_tail.exit705.if.end303.sink.split.sink.split_crit_edge991: ; preds = %list_move_tail.exit705
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end303.sink.split.sink.split

list_move_tail.exit705.if.end303.sink.split.sink.split_crit_edge: ; preds = %list_move_tail.exit705
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end303.sink.split.sink.split

list_move_tail.exit705.if.end303_crit_edge:       ; preds = %list_move_tail.exit705
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end303

if.then269:                                       ; preds = %list_move_tail.exit705
  %197 = ptrtoint ptr %bulk_flow_count351 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %bulk_flow_count351, align 4
  %dec271 = add i16 %198, -1
  store i16 %dec271, ptr %bulk_flow_count351, align 4
  %199 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %flow_mode, align 1
  %201 = and i8 %200, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %201)
  %cmp.i707 = icmp eq i8 %201, 5
  br i1 %cmp.i707, label %if.then275, label %if.then269.if.end278_crit_edge

if.then269.if.end278_crit_edge:                   ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end278

if.then275:                                       ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #17
  %srchost_bulk_flow_count276 = getelementptr %struct.cake_tin_data, ptr %b.4, i32 0, i32 4, i32 %idxprom133.le, i32 2
  %202 = ptrtoint ptr %srchost_bulk_flow_count276 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %srchost_bulk_flow_count276, align 4
  %dec277 = add i16 %203, -1
  store i16 %dec277, ptr %srchost_bulk_flow_count276, align 4
  br label %if.end278

if.end278:                                        ; preds = %if.then275, %if.then269.if.end278_crit_edge
  %204 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %flow_mode, align 1
  %206 = and i8 %205, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %206)
  %cmp.i709 = icmp eq i8 %206, 6
  br i1 %cmp.i709, label %if.then282, label %if.end278.if.end303.sink.split_crit_edge

if.end278.if.end303.sink.split_crit_edge:         ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end303.sink.split

if.then282:                                       ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #17
  %dsthost_bulk_flow_count283 = getelementptr %struct.cake_tin_data, ptr %b.4, i32 0, i32 4, i32 %idxprom137.le, i32 3
  br label %if.end303.sink.split.sink.split

if.end303.sink.split.sink.split:                  ; preds = %if.then282, %list_move_tail.exit705.if.end303.sink.split.sink.split_crit_edge, %list_move_tail.exit705.if.end303.sink.split.sink.split_crit_edge991
  %dsthost_bulk_flow_count283.sink910 = phi ptr [ %dsthost_bulk_flow_count283, %if.then282 ], [ %sparse_flow_count149, %list_move_tail.exit705.if.end303.sink.split.sink.split_crit_edge ], [ %sparse_flow_count149, %list_move_tail.exit705.if.end303.sink.split.sink.split_crit_edge991 ]
  %207 = ptrtoint ptr %dsthost_bulk_flow_count283.sink910 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %dsthost_bulk_flow_count283.sink910, align 2
  %dec284 = add i16 %208, -1
  store i16 %dec284, ptr %dsthost_bulk_flow_count283.sink910, align 2
  br label %if.end303.sink.split

if.end303.sink.split:                             ; preds = %if.end303.sink.split.sink.split, %if.end278.if.end303.sink.split_crit_edge
  %decaying_flow_count = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 10
  %209 = ptrtoint ptr %decaying_flow_count to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %decaying_flow_count, align 8
  %inc301 = add i16 %210, 1
  store i16 %inc301, ptr %decaying_flow_count, align 8
  br label %if.end303

if.end303:                                        ; preds = %if.end303.sink.split, %list_move_tail.exit705.if.end303_crit_edge
  %211 = ptrtoint ptr %set265 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 4, ptr %set265, align 4
  br label %begin.backedge

if.else305:                                       ; preds = %lor.lhs.false258
  %call.i.i710 = call zeroext i1 @__list_del_entry_valid(ptr noundef %63) #15
  br i1 %call.i.i710, label %if.end.i.i713, label %if.else305.list_del_init.exit_crit_edge

if.else305.list_del_init.exit_crit_edge:          ; preds = %if.else305
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i713:                                    ; preds = %if.else305
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i711 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %212 = ptrtoint ptr %prev.i.i711 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %prev.i.i711, align 4
  %214 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %63, align 4
  %prev1.i.i.i712 = getelementptr inbounds %struct.list_head, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %prev1.i.i.i712 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %213, ptr %prev1.i.i.i712, align 4
  %217 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %217)
  store volatile ptr %215, ptr %213, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i713, %if.else305.list_del_init.exit_crit_edge
  %218 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile ptr %63, ptr %63, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %219 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %63, ptr %prev.i3.i, align 4
  %set307 = getelementptr i8, ptr %63, i32 52
  %220 = ptrtoint ptr %set307 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %set307, align 4
  %222 = zext i8 %221 to i64
  call void @__sanitizer_cov_trace_switch(i64 %222, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %221, label %if.else341 [
    i8 1, label %list_del_init.exit.if.then316_crit_edge
    i8 2, label %list_del_init.exit.if.then316_crit_edge992
    i8 3, label %if.then324
  ]

list_del_init.exit.if.then316_crit_edge992:       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then316

list_del_init.exit.if.then316_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then316

if.then316:                                       ; preds = %list_del_init.exit.if.then316_crit_edge, %list_del_init.exit.if.then316_crit_edge992
  %223 = ptrtoint ptr %sparse_flow_count149 to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %sparse_flow_count149, align 2
  %dec318 = add i16 %224, -1
  store i16 %dec318, ptr %sparse_flow_count149, align 2
  br label %if.end345

if.then324:                                       ; preds = %list_del_init.exit
  %225 = ptrtoint ptr %bulk_flow_count351 to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %bulk_flow_count351, align 4
  %dec326 = add i16 %226, -1
  store i16 %dec326, ptr %bulk_flow_count351, align 4
  %227 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %flow_mode, align 1
  %229 = and i8 %228, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %229)
  %cmp.i716 = icmp eq i8 %229, 5
  br i1 %cmp.i716, label %if.then330, label %if.then324.if.end333_crit_edge

if.then324.if.end333_crit_edge:                   ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end333

if.then330:                                       ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #17
  %srchost_bulk_flow_count331 = getelementptr %struct.cake_tin_data, ptr %b.4, i32 0, i32 4, i32 %idxprom133.le, i32 2
  %230 = ptrtoint ptr %srchost_bulk_flow_count331 to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %srchost_bulk_flow_count331, align 4
  %dec332 = add i16 %231, -1
  store i16 %dec332, ptr %srchost_bulk_flow_count331, align 4
  br label %if.end333

if.end333:                                        ; preds = %if.then330, %if.then324.if.end333_crit_edge
  %232 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %flow_mode, align 1
  %234 = and i8 %233, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %234)
  %cmp.i718 = icmp eq i8 %234, 6
  br i1 %cmp.i718, label %if.then337, label %if.end333.if.end345_crit_edge

if.end333.if.end345_crit_edge:                    ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end345

if.then337:                                       ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #17
  %dsthost_bulk_flow_count338 = getelementptr %struct.cake_tin_data, ptr %b.4, i32 0, i32 4, i32 %idxprom137.le, i32 3
  %235 = ptrtoint ptr %dsthost_bulk_flow_count338 to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %dsthost_bulk_flow_count338, align 2
  %dec339 = add i16 %236, -1
  store i16 %dec339, ptr %dsthost_bulk_flow_count338, align 2
  br label %if.end345

if.else341:                                       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %decaying_flow_count342 = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 10
  %237 = ptrtoint ptr %decaying_flow_count342 to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %decaying_flow_count342, align 8
  %dec343 = add i16 %238, -1
  store i16 %dec343, ptr %decaying_flow_count342, align 8
  br label %if.end345

if.end345:                                        ; preds = %if.else341, %if.then337, %if.end333.if.end345_crit_edge, %if.then316
  %239 = ptrtoint ptr %set307 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 0, ptr %set307, align 4
  br label %begin.backedge

begin.backedge:                                   ; preds = %if.end345, %if.end303, %if.then113.begin.backedge_crit_edge
  %first_flow.0.off0.be = phi i1 [ false, %if.end345 ], [ false, %if.end303 ], [ %first_flow.1.off0, %if.then113.begin.backedge_crit_edge ]
  %240 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %qlen, align 8
  %tobool.not = icmp eq i32 %241, 0
  br i1 %tobool.not, label %begin.backedge.cleanup472_crit_edge, label %begin.backedge.if.end_crit_edge

begin.backedge.if.end_crit_edge:                  ; preds = %begin.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

begin.backedge.cleanup472_crit_edge:              ; preds = %begin.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup472

if.end348:                                        ; preds = %if.then13.i, %dequeue_head.exit.i.if.end348_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 3, i32 8
  %242 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %data.i.i.i, align 8
  %sub.i719 = sub i64 %call1, %243
  %244 = ptrtoint ptr %drop_next.i720 to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %drop_next.i720, align 8
  %sub2.i = sub i64 %call1, %245
  %246 = ptrtoint ptr %target.i721 to i32
  call void @__asan_load8_noabort(i32 %246)
  %247 = load i64, ptr %target.i721, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i719, i64 %247)
  %cmp.i722 = icmp ugt i64 %sub.i719, %247
  br i1 %cmp.i722, label %land.lhs.true.i724, label %if.end348.land.end.thread.i_crit_edge

if.end348.land.end.thread.i_crit_edge:            ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end.thread.i

land.lhs.true.i724:                               ; preds = %if.end348
  %248 = ptrtoint ptr %bulk_flow_count351 to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %bulk_flow_count351, align 4
  %250 = ptrtoint ptr %rate_flags to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %rate_flags, align 8
  %252 = lshr i16 %251, 2
  %.lobit = and i16 %252, 1
  %narrow = mul nuw nsw i16 %.lobit, %249
  %253 = ptrtoint ptr %mtu_time.i to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %mtu_time.i, align 8
  %conv.i723 = zext i16 %narrow to i64
  %mul.i = shl i64 %254, 1
  %mul3.i = mul i64 %mul.i, %conv.i723
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i719, i64 %mul3.i)
  %cmp4.i = icmp ugt i64 %sub.i719, %mul3.i
  br i1 %cmp4.i, label %land.end.i, label %land.lhs.true.i724.land.end.thread.i_crit_edge

land.lhs.true.i724.land.end.thread.i_crit_edge:   ; preds = %land.lhs.true.i724
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end.thread.i

land.end.thread.i:                                ; preds = %land.lhs.true.i724.land.end.thread.i_crit_edge, %if.end348.land.end.thread.i_crit_edge
  %255 = ptrtoint ptr %cvars349 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %cvars349, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool.not195.i = icmp ne i32 %256, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub2.i)
  %cmp12196.i = icmp sgt i64 %sub2.i, -1
  %spec.select192198.i = select i1 %tobool.not195.i, i1 %cmp12196.i, i1 false
  %257 = ptrtoint ptr %ecn_marked199.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 0, ptr %ecn_marked199.i, align 1
  br label %if.else.i

land.end.i:                                       ; preds = %land.lhs.true.i724
  %mul7.i = shl i64 %254, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i719, i64 %mul7.i)
  %cmp8.i = icmp ugt i64 %sub.i719, %mul7.i
  %258 = ptrtoint ptr %cvars349 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %cvars349, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool.not.i725 = icmp eq i32 %259, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub2.i)
  %cmp12.i = icmp sgt i64 %sub2.i, -1
  %not.tobool.not.i = xor i1 %tobool.not.i725, true
  %spec.select192.i = select i1 %not.tobool.not.i, i1 %cmp12.i, i1 false
  %260 = ptrtoint ptr %ecn_marked199.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 0, ptr %ecn_marked199.i, align 1
  br i1 %cmp8.i, label %if.then.i727, label %land.end.i.if.else.i_crit_edge

land.end.i.if.else.i_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then.i727:                                     ; preds = %land.end.i
  %261 = ptrtoint ptr %dropping27.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %dropping27.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool17.not.i = icmp eq i8 %262, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.then.i727.if.end.i_crit_edge

if.then.i727.if.end.i_crit_edge:                  ; preds = %if.then.i727
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then18.i:                                      ; preds = %if.then.i727
  call void @__sanitizer_cov_trace_pc() #17
  %263 = ptrtoint ptr %dropping27.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 1, ptr %dropping27.i, align 4
  %264 = ptrtoint ptr %cparams350 to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %cparams350, align 8
  %266 = ptrtoint ptr %rec_inv_sqrt.i728 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %rec_inv_sqrt.i728, align 4
  %conv.i.i.i729 = and i64 %265, 4294967295
  %conv1.i.i.i730 = zext i32 %267 to i64
  %mul.i.i.i731 = mul nuw i64 %conv.i.i.i729, %conv1.i.i.i730
  %shr.i.i.i732 = lshr i64 %mul.i.i.i731, 32
  %add.i.i733 = add i64 %shr.i.i.i732, %call1
  %268 = ptrtoint ptr %drop_next.i720 to i32
  call void @__asan_store8_noabort(i32 %268)
  store i64 %add.i.i733, ptr %drop_next.i720, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then18.i, %if.then.i727.if.end.i_crit_edge
  br i1 %tobool.not.i725, label %if.then24.i, label %if.end.i.if.end32.i_crit_edge

if.end.i.if.end32.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i

if.then24.i:                                      ; preds = %if.end.i
  %269 = ptrtoint ptr %cvars349 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 1, ptr %cvars349, align 8
  br i1 %spec.select192.i, label %if.then24.i.land.lhs.true35.i_crit_edge, label %if.then24.i.if.end77.i_crit_edge

if.then24.i.if.end77.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77.i

if.then24.i.land.lhs.true35.i_crit_edge:          ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true35.i

if.else.i:                                        ; preds = %land.end.i.if.else.i_crit_edge, %land.end.thread.i
  %spec.select192201.i = phi i1 [ %spec.select192198.i, %land.end.thread.i ], [ %spec.select192.i, %land.end.i.if.else.i_crit_edge ]
  %270 = ptrtoint ptr %dropping27.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %dropping27.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool28.not.i = icmp eq i8 %271, 0
  br i1 %tobool28.not.i, label %if.else.i.if.end32.i_crit_edge, label %if.then29.i

if.else.i.if.end32.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.else.i
  %272 = ptrtoint ptr %dropping27.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 0, ptr %dropping27.i, align 4
  br i1 %spec.select192201.i, label %if.then29.i.while.body.i.preheader_crit_edge, label %if.then29.i.if.end77.i_crit_edge

if.then29.i.if.end77.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77.i

if.then29.i.while.body.i.preheader_crit_edge:     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.preheader

if.end32.i:                                       ; preds = %if.else.i.if.end32.i_crit_edge, %if.end.i.if.end32.i_crit_edge
  %spec.select192200.i = phi i1 [ %spec.select192201.i, %if.else.i.if.end32.i_crit_edge ], [ %cmp12.i, %if.end.i.if.end32.i_crit_edge ]
  br i1 %spec.select192200.i, label %if.end32.i.land.lhs.true35.i_crit_edge, label %if.end32.i.if.end77.i_crit_edge

if.end32.i.if.end77.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77.i

if.end32.i.land.lhs.true35.i_crit_edge:           ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true35.i

land.lhs.true35.i:                                ; preds = %if.end32.i.land.lhs.true35.i_crit_edge, %if.then24.i.land.lhs.true35.i_crit_edge
  %273 = ptrtoint ptr %dropping27.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %.pr874 = load i8, ptr %dropping27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr874)
  %tobool37.not.i = icmp eq i8 %.pr874, 0
  br i1 %tobool37.not.i, label %land.lhs.true35.i.while.body.i.preheader_crit_edge, label %if.then39.i

land.lhs.true35.i.while.body.i.preheader_crit_edge: ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %land.lhs.true35.i.while.body.i.preheader_crit_edge, %if.then29.i.while.body.i.preheader_crit_edge
  br label %while.body.i

if.then39.i:                                      ; preds = %land.lhs.true35.i
  %protocol.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 15, i32 0, i32 18
  %274 = ptrtoint ptr %protocol.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %protocol.i.i.i.i, align 8
  %mac_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 8
  %276 = ptrtoint ptr %mac_len.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %mac_len.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %277 to i32
  %278 = zext i16 %275 to i64
  call void @__sanitizer_cov_trace_switch(i64 %278, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %275, label %if.then39.i.skb_protocol.exit.i.i_crit_edge [
    i16 -30552, label %if.then39.i.if.then.i.i.i.i.i_crit_edge
    i16 -32512, label %if.then39.i.if.then.i.i.i.i.i_crit_edge993
  ]

if.then39.i.if.then.i.i.i.i.i_crit_edge993:       ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i.i.i

if.then39.i.if.then.i.i.i.i.i_crit_edge:          ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i.i.i

if.then39.i.skb_protocol.exit.i.i_crit_edge:      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_protocol.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then39.i.if.then.i.i.i.i.i_crit_edge, %if.then39.i.if.then.i.i.i.i.i_crit_edge993
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %277)
  %tobool.not.i.i.i.i.i = icmp eq i16 %277, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i.if.end26.i.i.i.i.i_crit_edge, label %if.then1.i.i.i.i.i

if.then.i.i.i.i.i.if.end26.i.i.i.i.i_crit_edge:   ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i.i.i.i.i

if.then1.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %277)
  %cmp.i.i.i.i.i = icmp ult i16 %277, 4
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.end25.i.i.i.i.i, !prof !66

do.end.i.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 598, i32 noundef 9, ptr noundef null) #15
  br label %INET_ECN_set_ce.exit.i

if.end25.i.i.i.i.i:                               ; preds = %if.then1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i, -4
  br label %if.end26.i.i.i.i.i

if.end26.i.i.i.i.i:                               ; preds = %if.end25.i.i.i.i.i, %if.then.i.i.i.i.i.if.end26.i.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.end25.i.i.i.i.i ], [ 14, %if.then.i.i.i.i.i.if.end26.i.i.i.i.i_crit_edge ]
  %len.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 6
  %data_len.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 7
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 19
  br label %do.body27.i.i.i.i.i

do.body27.i.i.i.i.i:                              ; preds = %do.body27.backedge.i.i.i.i.i, %if.end26.i.i.i.i.i
  %vlan_depth.1.i.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i.i, %if.end26.i.i.i.i.i ], [ %add.i.i.i.i.i, %do.body27.backedge.i.i.i.i.i ]
  %parse_depth.0.i.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i.i ], [ %dec.i.i.i.i.i, %do.body27.backedge.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i) #15
  %279 = ptrtoint ptr %vhdr.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 -1, ptr %vhdr.i.i.i.i.i, align 2, !annotation !64
  %280 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 -1, ptr %6, align 2, !annotation !64
  %281 = ptrtoint ptr %len.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %len.i.i.i.i.i.i.i, align 4
  %283 = ptrtoint ptr %data_len.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %data_len.i.i.i.i.i.i.i, align 8
  %285 = add i32 %vlan_depth.1.i.i.i.i.i, %284
  %sub.i4.i.i.i.i.i.i = sub i32 %282, %285
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp slt i32 %sub.i4.i.i.i.i.i.i, 4
  br i1 %cmp.not.i.i.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i, !prof !66

if.then.i.i.i.i.i.i.i:                            ; preds = %do.body27.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %286 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %287, i32 %vlan_depth.1.i.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i.i

lor.lhs.false.i.i.i.i.i.i.i:                      ; preds = %do.body27.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %123, i32 noundef %vlan_depth.1.i.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i.i, !prof !66
  br label %skb_header_pointer.exit.i.i.i.i.i

skb_header_pointer.exit.i.i.i.i.i:                ; preds = %lor.lhs.false.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i.i, null
  %dec.i.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i.i)
  %tobool30.not.i.i.i.i.i = icmp eq i32 %dec.i.i.i.i.i, 0
  %288 = select i1 %tobool29.not.i.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i.i, !prof !66
  br i1 %288, label %cleanup.thread.i.i.i.i.i, label %do.cond42.i.i.i.i.i, !prof !66

cleanup.thread.i.i.i.i.i:                         ; preds = %skb_header_pointer.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i) #15
  br label %INET_ECN_set_ce.exit.i

do.cond42.i.i.i.i.i:                              ; preds = %skb_header_pointer.exit.i.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i.i, i32 0, i32 1
  %289 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i) #15
  %291 = zext i16 %290 to i64
  call void @__sanitizer_cov_trace_switch(i64 %291, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %290, label %do.cond42.i.i.i.i.i.skb_protocol.exit.i.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge994
  ]

do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge994: ; preds = %do.cond42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body27.backedge.i.i.i.i.i

do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body27.backedge.i.i.i.i.i

do.cond42.i.i.i.i.i.skb_protocol.exit.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_protocol.exit.i.i

do.body27.backedge.i.i.i.i.i:                     ; preds = %do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge994
  %add.i.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i.i, 4
  br label %do.body27.i.i.i.i.i

skb_protocol.exit.i.i:                            ; preds = %do.cond42.i.i.i.i.i.skb_protocol.exit.i.i_crit_edge, %if.then39.i.skb_protocol.exit.i.i_crit_edge
  %retval.2.i.i.i.i.i = phi i16 [ %275, %if.then39.i.skb_protocol.exit.i.i_crit_edge ], [ %290, %do.cond42.i.i.i.i.i.skb_protocol.exit.i.i_crit_edge ]
  %292 = zext i16 %retval.2.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %292, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %retval.2.i.i.i.i.i, label %skb_protocol.exit.i.i.INET_ECN_set_ce.exit.i_crit_edge [
    i16 2048, label %sw.bb.i.i
    i16 -31011, label %sw.bb6.i.i
  ]

skb_protocol.exit.i.i.INET_ECN_set_ce.exit.i_crit_edge: ; preds = %skb_protocol.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %INET_ECN_set_ce.exit.i

sw.bb.i.i:                                        ; preds = %skb_protocol.exit.i.i
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 18
  %293 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 15, i32 0, i32 20
  %295 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i160.i = zext i16 %296 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %294, i32 %conv.i.i160.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 16
  %297 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %tail.i.i.i, align 8
  %cmp.not.i.i = icmp ugt ptr %add.ptr.i.i, %298
  br i1 %cmp.not.i.i, label %sw.bb.i.i.INET_ECN_set_ce.exit.i_crit_edge, label %if.then.i.i734

sw.bb.i.i.INET_ECN_set_ce.exit.i_crit_edge:       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %INET_ECN_set_ce.exit.i

if.then.i.i734:                                   ; preds = %sw.bb.i.i
  %tos.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %299 = ptrtoint ptr %tos.i.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %tos.i.i.i, align 1
  %301 = add i8 %300, 1
  %302 = and i8 %301, 3
  %303 = and i8 %301, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %303)
  %tobool.not.i.i.i = icmp eq i8 %303, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i735

if.then.i.i.i:                                    ; preds = %if.then.i.i734
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %302)
  %tobool2.not.i.i.i = icmp eq i8 %302, 0
  br label %INET_ECN_set_ce.exit.i

if.end.i.i.i735:                                  ; preds = %if.then.i.i734
  call void @__sanitizer_cov_trace_pc() #17
  %conv4.i.i.i = zext i8 %302 to i16
  %add5.i.i.i = add nuw nsw i16 %conv4.i.i.i, -5
  %check.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 7
  %304 = ptrtoint ptr %check.i.i.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %check.i.i.i, align 2
  %add.i.i.i.i = add i16 %305, %add5.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i.i, i16 %add5.i.i.i)
  %cmp.i.i.i.i = icmp ult i16 %add.i.i.i.i, %add5.i.i.i
  %conv6.i.i.i.i = zext i1 %cmp.i.i.i.i to i16
  %add7.i.i.i.i = add i16 %add.i.i.i.i, %conv6.i.i.i.i
  %306 = ptrtoint ptr %check.i.i.i to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 %add7.i.i.i.i, ptr %check.i.i.i, align 2
  %307 = or i8 %300, 3
  %308 = ptrtoint ptr %tos.i.i.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %307, ptr %tos.i.i.i, align 1
  br label %INET_ECN_set_ce.exit.i

sw.bb6.i.i:                                       ; preds = %skb_protocol.exit.i.i
  %head.i23.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 18
  %309 = ptrtoint ptr %head.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %head.i23.i.i, align 8
  %network_header.i24.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 15, i32 0, i32 20
  %311 = ptrtoint ptr %network_header.i24.i.i to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %network_header.i24.i.i, align 4
  %conv.i25.i.i = zext i16 %312 to i32
  %add.ptr.i26.i.i = getelementptr i8, ptr %310, i32 %conv.i25.i.i
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr.i26.i.i, i32 40
  %tail.i27.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 16
  %313 = ptrtoint ptr %tail.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %tail.i27.i.i, align 8
  %cmp10.not.i.i = icmp ugt ptr %add.ptr8.i.i, %314
  br i1 %cmp10.not.i.i, label %sw.bb6.i.i.INET_ECN_set_ce.exit.i_crit_edge, label %if.then12.i.i

sw.bb6.i.i.INET_ECN_set_ce.exit.i_crit_edge:      ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %INET_ECN_set_ce.exit.i

if.then12.i.i:                                    ; preds = %sw.bb6.i.i
  %315 = ptrtoint ptr %add.ptr.i26.i.i to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %add.ptr.i26.i.i, align 2
  %317 = and i16 %316, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %317)
  %cmp.i14.not.i.i.i = icmp eq i16 %317, 0
  br i1 %cmp.i14.not.i.i.i, label %if.then12.i.i.INET_ECN_set_ce.exit.i_crit_edge, label %if.end.i32.i.i

if.then12.i.i.INET_ECN_set_ce.exit.i_crit_edge:   ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %INET_ECN_set_ce.exit.i

if.end.i32.i.i:                                   ; preds = %if.then12.i.i
  %318 = ptrtoint ptr %add.ptr.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %add.ptr.i26.i.i, align 4
  %or.i.i.i = or i32 %319, 3145728
  store i32 %or.i.i.i, ptr %add.ptr.i26.i.i, align 4
  %ip_summed.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 15
  %320 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %320)
  %bf.load.i.i.i = load i16, ptr %ip_summed.i.i.i, align 8
  %321 = and i16 %bf.load.i.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %321)
  %cmp.i.i.i = icmp eq i16 %321, 1024
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.end.i32.i.i.INET_ECN_set_ce.exit.i_crit_edge

if.end.i32.i.i.INET_ECN_set_ce.exit.i_crit_edge:  ; preds = %if.end.i32.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %INET_ECN_set_ce.exit.i

if.then3.i.i.i:                                   ; preds = %if.end.i32.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %322 = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 15, i32 0, i32 5
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %322, align 8
  %neg.i.i.i.i = xor i32 %319, -1
  %add.i.i.i33.i.i = add i32 %324, %neg.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i33.i.i, i32 %neg.i.i.i.i)
  %cmp.i.i.i34.i.i = icmp ult i32 %add.i.i.i33.i.i, %neg.i.i.i.i
  %conv.i.i.i35.i.i = zext i1 %cmp.i.i.i34.i.i to i32
  %add1.i.i.i.i.i = add i32 %add.i.i.i33.i.i, %or.i.i.i
  %add.i.i36.i.i = add i32 %add1.i.i.i.i.i, %conv.i.i.i35.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i36.i.i, i32 %or.i.i.i)
  %cmp.i.i37.i.i = icmp ult i32 %add.i.i36.i.i, %or.i.i.i
  %conv.i.i38.i.i = zext i1 %cmp.i.i37.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i36.i.i, %conv.i.i38.i.i
  %325 = ptrtoint ptr %322 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %add1.i.i.i.i, ptr %322, align 8
  br label %INET_ECN_set_ce.exit.i

INET_ECN_set_ce.exit.i:                           ; preds = %if.then3.i.i.i, %if.end.i32.i.i.INET_ECN_set_ce.exit.i_crit_edge, %if.then12.i.i.INET_ECN_set_ce.exit.i_crit_edge, %sw.bb6.i.i.INET_ECN_set_ce.exit.i_crit_edge, %if.end.i.i.i735, %if.then.i.i.i, %sw.bb.i.i.INET_ECN_set_ce.exit.i_crit_edge, %skb_protocol.exit.i.i.INET_ECN_set_ce.exit.i_crit_edge, %cleanup.thread.i.i.i.i.i, %do.end.i.i.i.i.i
  %retval.0.i.i = phi i1 [ false, %sw.bb6.i.i.INET_ECN_set_ce.exit.i_crit_edge ], [ false, %sw.bb.i.i.INET_ECN_set_ce.exit.i_crit_edge ], [ false, %skb_protocol.exit.i.i.INET_ECN_set_ce.exit.i_crit_edge ], [ true, %if.end.i.i.i735 ], [ %tobool2.not.i.i.i, %if.then.i.i.i ], [ false, %if.then12.i.i.INET_ECN_set_ce.exit.i_crit_edge ], [ true, %if.then3.i.i.i ], [ true, %if.end.i32.i.i.INET_ECN_set_ce.exit.i_crit_edge ], [ false, %do.end.i.i.i.i.i ], [ false, %cleanup.thread.i.i.i.i.i ]
  %frombool43.i = zext i1 %retval.0.i.i to i8
  %326 = ptrtoint ptr %ecn_marked199.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %frombool43.i, ptr %ecn_marked199.i, align 1
  %lnot.i = xor i1 %retval.0.i.i, true
  %327 = ptrtoint ptr %cvars349 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %cvars349, align 8
  %inc.i = add i32 %328, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool47.not.i = icmp eq i32 %inc.i, 0
  %spec.select.i = select i1 %tobool47.not.i, i32 %328, i32 %inc.i
  %329 = ptrtoint ptr %cvars349 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %spec.select.i, ptr %cvars349, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %spec.select.i)
  %cmp.i.i736 = icmp ult i32 %spec.select.i, 16
  br i1 %cmp.i.i736, label %if.then.i161.i, label %if.else.i.i747

if.then.i161.i:                                   ; preds = %INET_ECN_set_ce.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i.i737 = getelementptr [16 x i32], ptr @cobalt_rec_inv_sqrt_cache, i32 0, i32 %spec.select.i
  %330 = ptrtoint ptr %arrayidx.i.i737 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx.i.i737, align 4
  br label %cobalt_invsqrt.exit.i748

if.else.i.i747:                                   ; preds = %INET_ECN_set_ce.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %332 = ptrtoint ptr %rec_inv_sqrt.i728 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %rec_inv_sqrt.i728, align 4
  %conv.i.i162.i = zext i32 %333 to i64
  %mul.i.i163.i = mul nuw i64 %conv.i.i162.i, %conv.i.i162.i
  %shr.i.i164.i = lshr i64 %mul.i.i163.i, 32
  %conv3.i.i.i740 = zext i32 %spec.select.i to i64
  %mul5.i.i.i741 = mul nuw i64 %shr.i.i164.i, %conv3.i.i.i740
  %sub.i.i.i742 = sub i64 12884901888, %mul5.i.i.i741
  %shr6.i.i.i743 = lshr i64 %sub.i.i.i742, 2
  %mul8.i.i.i744 = mul i64 %shr6.i.i.i743, %conv.i.i162.i
  %shr9.i.i.i745 = lshr i64 %mul8.i.i.i744, 31
  %conv10.i.i.i746 = trunc i64 %shr9.i.i.i745 to i32
  br label %cobalt_invsqrt.exit.i748

cobalt_invsqrt.exit.i748:                         ; preds = %if.else.i.i747, %if.then.i161.i
  %storemerge = phi i32 [ %conv10.i.i.i746, %if.else.i.i747 ], [ %331, %if.then.i161.i ]
  %334 = ptrtoint ptr %rec_inv_sqrt.i728 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %storemerge, ptr %rec_inv_sqrt.i728, align 4
  %335 = ptrtoint ptr %drop_next.i720 to i32
  call void @__asan_load8_noabort(i32 %335)
  %336 = load i64, ptr %drop_next.i720, align 8
  %337 = ptrtoint ptr %cparams350 to i32
  call void @__asan_load8_noabort(i32 %337)
  %338 = load i64, ptr %cparams350, align 8
  %conv.i.i165.i = and i64 %338, 4294967295
  %conv1.i.i166.i = zext i32 %storemerge to i64
  %mul.i.i167.i = mul nuw i64 %conv.i.i165.i, %conv1.i.i166.i
  %shr.i.i168.i = lshr i64 %mul.i.i167.i, 32
  %add.i169.i = add i64 %shr.i.i168.i, %336
  store i64 %add.i169.i, ptr %drop_next.i720, align 8
  %sub57.i = sub i64 %call1, %add.i169.i
  br label %if.end77.i

while.body.i:                                     ; preds = %cobalt_invsqrt.exit186.i.while.body.i_crit_edge, %while.body.i.preheader
  %339 = ptrtoint ptr %cvars349 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %cvars349, align 8
  %dec61.i = add i32 %340, -1
  store i32 %dec61.i, ptr %cvars349, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %dec61.i)
  %cmp.i170.i = icmp ult i32 %dec61.i, 16
  br i1 %cmp.i170.i, label %if.then.i173.i, label %if.else.i185.i

if.then.i173.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i171.i = getelementptr [16 x i32], ptr @cobalt_rec_inv_sqrt_cache, i32 0, i32 %dec61.i
  %341 = ptrtoint ptr %arrayidx.i171.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %arrayidx.i171.i, align 4
  br label %cobalt_invsqrt.exit186.i

if.else.i185.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %343 = ptrtoint ptr %rec_inv_sqrt.i728 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %rec_inv_sqrt.i728, align 4
  %conv.i.i175.i = zext i32 %344 to i64
  %mul.i.i176.i = mul nuw i64 %conv.i.i175.i, %conv.i.i175.i
  %shr.i.i177.i = lshr i64 %mul.i.i176.i, 32
  %conv3.i.i178.i = zext i32 %dec61.i to i64
  %mul5.i.i179.i = mul nuw i64 %shr.i.i177.i, %conv3.i.i178.i
  %sub.i.i180.i = sub i64 12884901888, %mul5.i.i179.i
  %shr6.i.i181.i = lshr i64 %sub.i.i180.i, 2
  %mul8.i.i182.i = mul i64 %shr6.i.i181.i, %conv.i.i175.i
  %shr9.i.i183.i = lshr i64 %mul8.i.i182.i, 31
  %conv10.i.i184.i = trunc i64 %shr9.i.i183.i to i32
  br label %cobalt_invsqrt.exit186.i

cobalt_invsqrt.exit186.i:                         ; preds = %if.else.i185.i, %if.then.i173.i
  %storemerge.i = phi i32 [ %conv10.i.i184.i, %if.else.i185.i ], [ %342, %if.then.i173.i ]
  %345 = ptrtoint ptr %rec_inv_sqrt.i728 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %storemerge.i, ptr %rec_inv_sqrt.i728, align 4
  %346 = ptrtoint ptr %drop_next.i720 to i32
  call void @__asan_load8_noabort(i32 %346)
  %347 = load i64, ptr %drop_next.i720, align 8
  %348 = ptrtoint ptr %cparams350 to i32
  call void @__asan_load8_noabort(i32 %348)
  %349 = load i64, ptr %cparams350, align 8
  %conv.i.i187.i = and i64 %349, 4294967295
  %conv1.i.i188.i = zext i32 %storemerge.i to i64
  %mul.i.i189.i = mul nuw i64 %conv.i.i187.i, %conv1.i.i188.i
  %shr.i.i190.i = lshr i64 %mul.i.i189.i, 32
  %add.i191.i = add i64 %shr.i.i190.i, %347
  store i64 %add.i191.i, ptr %drop_next.i720, align 8
  %sub68.i = sub i64 %call1, %add.i191.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec61.i)
  %tobool70.not.i = icmp ne i32 %dec61.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub68.i)
  %cmp73.i = icmp sgt i64 %sub68.i, -1
  %spec.select193.i = select i1 %tobool70.not.i, i1 %cmp73.i, i1 false
  br i1 %spec.select193.i, label %cobalt_invsqrt.exit186.i.while.body.i_crit_edge, label %cobalt_invsqrt.exit186.i.if.end77.i_crit_edge

cobalt_invsqrt.exit186.i.if.end77.i_crit_edge:    ; preds = %cobalt_invsqrt.exit186.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77.i

cobalt_invsqrt.exit186.i.while.body.i_crit_edge:  ; preds = %cobalt_invsqrt.exit186.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end77.i:                                       ; preds = %cobalt_invsqrt.exit186.i.if.end77.i_crit_edge, %cobalt_invsqrt.exit.i748, %if.end32.i.if.end77.i_crit_edge, %if.then29.i.if.end77.i_crit_edge, %if.then24.i.if.end77.i_crit_edge
  %drop.0.off0.i = phi i1 [ %lnot.i, %cobalt_invsqrt.exit.i748 ], [ false, %if.end32.i.if.end77.i_crit_edge ], [ false, %if.then29.i.if.end77.i_crit_edge ], [ false, %if.then24.i.if.end77.i_crit_edge ], [ false, %cobalt_invsqrt.exit186.i.if.end77.i_crit_edge ]
  %schedule.1.i = phi i64 [ %sub57.i, %cobalt_invsqrt.exit.i748 ], [ %sub2.i, %if.end32.i.if.end77.i_crit_edge ], [ %sub2.i, %if.then29.i.if.end77.i_crit_edge ], [ %sub2.i, %if.then24.i.if.end77.i_crit_edge ], [ %sub68.i, %cobalt_invsqrt.exit186.i.if.end77.i_crit_edge ]
  %350 = ptrtoint ptr %p_drop.i749 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %p_drop.i749, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %tobool78.not.i = icmp eq i32 %351, 0
  br i1 %tobool78.not.i, label %if.end77.i.if.end88.i_crit_edge, label %if.then79.i

if.end77.i.if.end88.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88.i

if.then79.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #17
  %call80.i = call i32 @prandom_u32() #15
  %352 = ptrtoint ptr %p_drop.i749 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %p_drop.i749, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call80.i, i32 %353)
  %cmp82.i = icmp ult i32 %call80.i, %353
  %or159.i = or i1 %drop.0.off0.i, %cmp82.i
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then79.i, %if.end77.i.if.end88.i_crit_edge
  %drop.1.off0.i = phi i1 [ %or159.i, %if.then79.i ], [ %drop.0.off0.i, %if.end77.i.if.end88.i_crit_edge ]
  %354 = ptrtoint ptr %cvars349 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %cvars349, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %355)
  %tobool90.not.i = icmp eq i32 %355, 0
  br i1 %tobool90.not.i, label %if.then91.i, label %if.else94.i

if.then91.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #17
  %356 = ptrtoint ptr %cparams350 to i32
  call void @__asan_load8_noabort(i32 %356)
  %357 = load i64, ptr %cparams350, align 8
  %add.i = add i64 %357, %call1
  br label %if.end103.sink.split.i

if.else94.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %schedule.1.i)
  %cmp96.i = icmp slt i64 %schedule.1.i, 1
  %brmerge.i = select i1 %cmp96.i, i1 true, i1 %drop.1.off0.i
  br i1 %brmerge.i, label %if.else94.i.cobalt_should_drop.exit_crit_edge, label %if.else94.i.if.end103.sink.split.i_crit_edge

if.else94.i.if.end103.sink.split.i_crit_edge:     ; preds = %if.else94.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103.sink.split.i

if.else94.i.cobalt_should_drop.exit_crit_edge:    ; preds = %if.else94.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cobalt_should_drop.exit

if.end103.sink.split.i:                           ; preds = %if.else94.i.if.end103.sink.split.i_crit_edge, %if.then91.i
  %now.sink.i = phi i64 [ %add.i, %if.then91.i ], [ %call1, %if.else94.i.if.end103.sink.split.i_crit_edge ]
  %358 = ptrtoint ptr %drop_next.i720 to i32
  call void @__asan_store8_noabort(i32 %358)
  store i64 %now.sink.i, ptr %drop_next.i720, align 8
  br label %cobalt_should_drop.exit

cobalt_should_drop.exit:                          ; preds = %if.end103.sink.split.i, %if.else94.i.cobalt_should_drop.exit_crit_edge
  br i1 %drop.1.off0.i, label %lor.lhs.false361, label %cobalt_should_drop.exit.while.end386_crit_edge

cobalt_should_drop.exit.while.end386_crit_edge:   ; preds = %cobalt_should_drop.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end386

lor.lhs.false361:                                 ; preds = %cobalt_should_drop.exit
  %359 = ptrtoint ptr %add.ptr130 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %add.ptr130, align 8
  %tobool363.not = icmp eq ptr %360, null
  br i1 %tobool363.not, label %lor.lhs.false361.while.end386_crit_edge, label %if.end365

lor.lhs.false361.while.end386_crit_edge:          ; preds = %lor.lhs.false361
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end386

if.end365:                                        ; preds = %lor.lhs.false361
  %361 = ptrtoint ptr %rate_flags to i32
  call void @__asan_load2_noabort(i32 %361)
  %362 = load i16, ptr %rate_flags, align 8
  %363 = and i16 %362, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %363)
  %tobool369.not = icmp eq i16 %363, 0
  br i1 %tobool369.not, label %if.end365.if.end376_crit_edge, label %if.then370

if.end365.if.end376_crit_edge:                    ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end376

if.then370:                                       ; preds = %if.end365
  %adjusted_len.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 3, i32 16
  %364 = ptrtoint ptr %adjusted_len.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %adjusted_len.i, align 8
  %366 = ptrtoint ptr %rate_ns to i32
  call void @__asan_load8_noabort(i32 %366)
  %367 = load i64, ptr %rate_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %367)
  %tobool.not.i750 = icmp eq i64 %367, 0
  br i1 %tobool.not.i750, label %if.then370.cake_advance_shaper.exit_crit_edge, label %if.then.i755

if.then370.cake_advance_shaper.exit_crit_edge:    ; preds = %if.then370
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_advance_shaper.exit

if.then.i755:                                     ; preds = %if.then370
  %conv.i751 = zext i32 %365 to i64
  %368 = ptrtoint ptr %tin_rate_ns.i to i32
  call void @__asan_load8_noabort(i32 %368)
  %369 = load i64, ptr %tin_rate_ns.i, align 8
  %mul.i752 = mul i64 %369, %conv.i751
  %370 = ptrtoint ptr %tin_rate_shft.i to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %tin_rate_shft.i, align 8
  %sh_prom.i = zext i16 %371 to i64
  %shr.i = lshr i64 %mul.i752, %sh_prom.i
  %mul4.i = mul i64 %367, %conv.i751
  %372 = ptrtoint ptr %rate_shft.i to i32
  call void @__asan_load2_noabort(i32 %372)
  %373 = load i16, ptr %rate_shft.i, align 2
  %sh_prom6.i = zext i16 %373 to i64
  %shr7.i = lshr i64 %mul4.i, %sh_prom6.i
  %374 = ptrtoint ptr %time_next_packet.i to i32
  call void @__asan_load8_noabort(i32 %374)
  %375 = load i64, ptr %time_next_packet.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %375, i64 %call1)
  %cmp.i.i.i754 = icmp slt i64 %375, %call1
  br i1 %cmp.i.i.i754, label %if.then10.i, label %if.else.i756

if.then10.i:                                      ; preds = %if.then.i755
  call void @__sanitizer_cov_trace_pc() #17
  %add12.i = add i64 %375, %shr.i
  br label %if.end20.sink.split.i

if.else.i756:                                     ; preds = %if.then.i755
  %add15.i = add i64 %shr.i, %call1
  call void @__sanitizer_cov_trace_cmp8(i64 %375, i64 %add15.i)
  %cmp.i.i50.i = icmp slt i64 %375, %add15.i
  br i1 %cmp.i.i50.i, label %if.else.i756.if.end20.sink.split.i_crit_edge, label %if.else.i756.if.end20.i_crit_edge

if.else.i756.if.end20.i_crit_edge:                ; preds = %if.else.i756
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.else.i756.if.end20.sink.split.i_crit_edge:     ; preds = %if.else.i756
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.sink.split.i

if.end20.sink.split.i:                            ; preds = %if.else.i756.if.end20.sink.split.i_crit_edge, %if.then10.i
  %add15.sink.i = phi i64 [ %add12.i, %if.then10.i ], [ %add15.i, %if.else.i756.if.end20.sink.split.i_crit_edge ]
  %376 = ptrtoint ptr %time_next_packet.i to i32
  call void @__asan_store8_noabort(i32 %376)
  store i64 %add15.sink.i, ptr %time_next_packet.i, align 8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20.sink.split.i, %if.else.i756.if.end20.i_crit_edge
  %377 = ptrtoint ptr %time_next_packet to i32
  call void @__asan_load8_noabort(i32 %377)
  %378 = load i64, ptr %time_next_packet, align 8
  %add22.i = add i64 %378, %shr7.i
  store i64 %add22.i, ptr %time_next_packet, align 8
  br label %cake_advance_shaper.exit

cake_advance_shaper.exit:                         ; preds = %if.end20.i, %if.then370.cake_advance_shaper.exit_crit_edge
  %379 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %deficit, align 8
  %sub373 = sub i32 %380, %365
  store i32 %sub373, ptr %deficit, align 8
  %381 = ptrtoint ptr %tin_deficit374 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %tin_deficit374, align 4
  %sub375 = sub i32 %382, %365
  store i32 %sub375, ptr %tin_deficit374, align 4
  br label %if.end376

if.end376:                                        ; preds = %cake_advance_shaper.exit, %if.end365.if.end376_crit_edge
  %383 = ptrtoint ptr %dropped to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %dropped, align 4
  %inc377 = add i32 %384, 1
  store i32 %inc377, ptr %dropped, align 4
  %385 = ptrtoint ptr %tin_dropped to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %tin_dropped, align 4
  %inc378 = add i32 %386, 1
  store i32 %inc378, ptr %tin_dropped, align 4
  %387 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %cb.i.i.i, align 4
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef 1, i32 noundef %388) #15
  %389 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %390, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  call void @kfree_skb_reason(ptr noundef %123, i32 noundef 0) #15
  %391 = ptrtoint ptr %rate_flags to i32
  call void @__asan_load2_noabort(i32 %391)
  %392 = load i16, ptr %rate_flags, align 8
  %393 = and i16 %392, 4
  %tobool383.not = icmp eq i16 %393, 0
  br i1 %tobool383.not, label %if.end376.while.cond244_crit_edge, label %if.end376.retry.backedge_crit_edge

if.end376.retry.backedge_crit_edge:               ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #17
  br label %retry.backedge

if.end376.while.cond244_crit_edge:                ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond244

while.end386:                                     ; preds = %lor.lhs.false361.while.end386_crit_edge, %cobalt_should_drop.exit.while.end386_crit_edge
  %data.i.i.i.le = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 3, i32 8
  %394 = ptrtoint ptr %ecn_marked199.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %ecn_marked199.i, align 1, !range !67
  %396 = zext i8 %395 to i32
  %tin_ecn_mark = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 24
  %397 = ptrtoint ptr %tin_ecn_mark to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %tin_ecn_mark, align 8
  %add393 = add i32 %398, %396
  store i32 %add393, ptr %tin_ecn_mark, align 8
  %399 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %cb.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 17
  %401 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %402, i32 0, i32 4
  %403 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %403)
  %404 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %404)
  %tobool.i.not.i.i = icmp eq i16 %404, 0
  br i1 %tobool.i.not.i.i, label %while.end386.cond.end.i.i_crit_edge, label %cond.true.i.i

while.end386.cond.end.i.i_crit_edge:              ; preds = %while.end386
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %while.end386
  call void @__sanitizer_cov_trace_pc() #17
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %402, i32 0, i32 5
  %405 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %405)
  %406 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %406 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %while.end386.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %while.end386.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %407 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %407)
  %tobool.not.i.i.i.i.i757 = icmp eq i32 %407, 0
  br i1 %tobool.not.i.i.i.i.i757, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %408 = call i32 @llvm.read_register.i32(metadata !54) #15
  %and.i.i.i.i.i.i.i.i = and i32 %408, -16384
  %409 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %409, i32 0, i32 1
  %410 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %411, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !68
  %412 = call i32 @llvm.read_register.i32(metadata !54) #15
  %and.i.i.i.i.i.i = and i32 %412, -16384
  %413 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %413, i32 0, i32 3
  %414 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %415
  %416 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i758 = add i32 %417, ptrtoint (ptr @lockdep_recursion to i32)
  %418 = inttoptr i32 %add.i.i.i.i.i758 to ptr
  %419 = ptrtoint ptr %418 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load volatile i32, ptr %418, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !69
  %421 = call i32 @llvm.read_register.i32(metadata !54) #15
  %and.i.i.i7.i.i.i.i.i = and i32 %421, -16384
  %422 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %422, i32 0, i32 1
  %423 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %424, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %420)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %420, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %425 = call i32 @llvm.read_register.i32(metadata !54) #15
  %and.i.i.i.i.i.i.i = and i32 %425, -16384
  %426 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %426, i32 0, i32 1
  %427 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %428)
  %cmp.i.i.i.i.i759 = icmp eq i32 %428, 0
  br i1 %cmp.i.i.i.i.i759, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %429 = call i32 @llvm.read_register.i32(metadata !54) #15
  %and.i.i.i9.i.i.i.i.i = and i32 %429, -16384
  %430 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %430, i32 0, i32 1
  %431 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %432, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !70
  %433 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %434
  %435 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %436, ptrtoint (ptr @hardirqs_enabled to i32)
  %437 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load volatile i32, ptr %437, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !71
  %440 = call i32 @llvm.read_register.i32(metadata !54) #15
  %and.i.i.i12.i.i.i.i.i = and i32 %440, -16384
  %441 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %441, i32 0, i32 1
  %442 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %443, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %439)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %439, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i760, !prof !65

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i760:                             ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i760, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %400 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %444 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %445, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !72
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %446 = call ptr @llvm.returnaddress(i32 0) #15
  %447 = ptrtoint ptr %446 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %447) #15
  %448 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %448)
  %449 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i761 = add i64 %449, %conv.i.i
  store i64 %add.i.i.i.i761, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %450 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %450)
  %451 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %451, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %447) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !73
  %452 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %453, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  %454 = ptrtoint ptr %data.i.i.i.le to i32
  call void @__asan_load8_noabort(i32 %454)
  %455 = load i64, ptr %data.i.i.i.le, align 8
  %sub395 = sub i64 %call1, %455
  %avge_delay = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 28
  %456 = ptrtoint ptr %avge_delay to i32
  call void @__asan_load8_noabort(i32 %456)
  %457 = load i64, ptr %avge_delay, align 8
  %shr.i762 = lshr i64 %457, 8
  %sub.i763 = sub i64 %457, %shr.i762
  %shr2.i = lshr i64 %sub395, 8
  %add.i764 = add i64 %sub.i763, %shr2.i
  store i64 %add.i764, ptr %avge_delay, align 8
  %peak_delay = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 29
  %458 = ptrtoint ptr %peak_delay to i32
  call void @__asan_load8_noabort(i32 %458)
  %459 = load i64, ptr %peak_delay, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub395, i64 %459)
  %cmp400 = icmp ugt i64 %sub395, %459
  %sh_prom.i765 = select i1 %cmp400, i64 2, i64 8
  %shr.i766 = lshr i64 %459, %sh_prom.i765
  %sub.i767 = sub i64 %459, %shr.i766
  %shr2.i768 = lshr i64 %sub395, %sh_prom.i765
  %add.i769 = add i64 %sub.i767, %shr2.i768
  %460 = ptrtoint ptr %peak_delay to i32
  call void @__asan_store8_noabort(i32 %460)
  store i64 %add.i769, ptr %peak_delay, align 8
  %base_delay = getelementptr inbounds %struct.cake_tin_data, ptr %b.4, i32 0, i32 30
  %461 = ptrtoint ptr %base_delay to i32
  call void @__asan_load8_noabort(i32 %461)
  %462 = load i64, ptr %base_delay, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub395, i64 %462)
  %cmp406 = icmp ult i64 %sub395, %462
  %sh_prom.i770 = select i1 %cmp406, i64 2, i64 8
  %shr.i771 = lshr i64 %462, %sh_prom.i770
  %sub.i772 = sub i64 %462, %shr.i771
  %shr2.i773 = lshr i64 %sub395, %sh_prom.i770
  %add.i774 = add i64 %sub.i772, %shr2.i773
  %463 = ptrtoint ptr %base_delay to i32
  call void @__asan_store8_noabort(i32 %463)
  store i64 %add.i774, ptr %base_delay, align 8
  %adjusted_len.i775 = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 3, i32 16
  %464 = ptrtoint ptr %adjusted_len.i775 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %adjusted_len.i775, align 8
  %466 = ptrtoint ptr %rate_ns to i32
  call void @__asan_load8_noabort(i32 %466)
  %467 = load i64, ptr %rate_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %467)
  %tobool.not.i777 = icmp eq i64 %467, 0
  br i1 %tobool.not.i777, label %qdisc_bstats_update.exit.cake_advance_shaper.exit803_crit_edge, label %if.then.i792

qdisc_bstats_update.exit.cake_advance_shaper.exit803_crit_edge: ; preds = %qdisc_bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_advance_shaper.exit803

if.then.i792:                                     ; preds = %qdisc_bstats_update.exit
  %conv.i778 = zext i32 %465 to i64
  %468 = ptrtoint ptr %tin_rate_ns.i to i32
  call void @__asan_load8_noabort(i32 %468)
  %469 = load i64, ptr %tin_rate_ns.i, align 8
  %mul.i780 = mul i64 %469, %conv.i778
  %470 = ptrtoint ptr %tin_rate_shft.i to i32
  call void @__asan_load2_noabort(i32 %470)
  %471 = load i16, ptr %tin_rate_shft.i, align 8
  %sh_prom.i782 = zext i16 %471 to i64
  %shr.i783 = lshr i64 %mul.i780, %sh_prom.i782
  %mul4.i784 = mul i64 %467, %conv.i778
  %472 = ptrtoint ptr %rate_shft.i to i32
  call void @__asan_load2_noabort(i32 %472)
  %473 = load i16, ptr %rate_shft.i, align 2
  %sh_prom6.i786 = zext i16 %473 to i64
  %shr7.i787 = lshr i64 %mul4.i784, %sh_prom6.i786
  %shr8.i788 = lshr i64 %shr7.i787, 1
  %add.i789 = add i64 %shr8.i788, %shr7.i787
  %474 = ptrtoint ptr %time_next_packet.i to i32
  call void @__asan_load8_noabort(i32 %474)
  %475 = load i64, ptr %time_next_packet.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %475, i64 %call1)
  %cmp.i.i.i791 = icmp slt i64 %475, %call1
  br i1 %cmp.i.i.i791, label %if.then10.i794, label %if.else.i797

if.then10.i794:                                   ; preds = %if.then.i792
  call void @__sanitizer_cov_trace_pc() #17
  %add12.i793 = add i64 %475, %shr.i783
  br label %if.end20.sink.split.i799

if.else.i797:                                     ; preds = %if.then.i792
  %add15.i795 = add i64 %shr.i783, %call1
  call void @__sanitizer_cov_trace_cmp8(i64 %475, i64 %add15.i795)
  %cmp.i.i50.i796 = icmp slt i64 %475, %add15.i795
  br i1 %cmp.i.i50.i796, label %if.else.i797.if.end20.sink.split.i799_crit_edge, label %if.else.i797.if.end20.i802_crit_edge

if.else.i797.if.end20.i802_crit_edge:             ; preds = %if.else.i797
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i802

if.else.i797.if.end20.sink.split.i799_crit_edge:  ; preds = %if.else.i797
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.sink.split.i799

if.end20.sink.split.i799:                         ; preds = %if.else.i797.if.end20.sink.split.i799_crit_edge, %if.then10.i794
  %add15.sink.i798 = phi i64 [ %add12.i793, %if.then10.i794 ], [ %add15.i795, %if.else.i797.if.end20.sink.split.i799_crit_edge ]
  %476 = ptrtoint ptr %time_next_packet.i to i32
  call void @__asan_store8_noabort(i32 %476)
  store i64 %add15.sink.i798, ptr %time_next_packet.i, align 8
  br label %if.end20.i802

if.end20.i802:                                    ; preds = %if.end20.sink.split.i799, %if.else.i797.if.end20.i802_crit_edge
  %477 = ptrtoint ptr %time_next_packet to i32
  call void @__asan_load8_noabort(i32 %477)
  %478 = load i64, ptr %time_next_packet, align 8
  %add22.i801 = add i64 %478, %shr7.i787
  store i64 %add22.i801, ptr %time_next_packet, align 8
  %479 = ptrtoint ptr %failsafe_next_packet to i32
  call void @__asan_load8_noabort(i32 %479)
  %480 = load i64, ptr %failsafe_next_packet, align 8
  %add26.i = add i64 %add.i789, %480
  store i64 %add26.i, ptr %failsafe_next_packet, align 8
  br label %cake_advance_shaper.exit803

cake_advance_shaper.exit803:                      ; preds = %if.end20.i802, %qdisc_bstats_update.exit.cake_advance_shaper.exit803_crit_edge
  %481 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %deficit, align 8
  %sub413 = sub i32 %482, %465
  store i32 %sub413, ptr %deficit, align 8
  %483 = ptrtoint ptr %tin_deficit374 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %tin_deficit374, align 4
  %sub415 = sub i32 %484, %465
  store i32 %sub415, ptr %tin_deficit374, align 4
  %485 = ptrtoint ptr %time_next_packet to i32
  call void @__asan_load8_noabort(i32 %485)
  %486 = load i64, ptr %time_next_packet, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %486, i64 %call1)
  %cmp3.i.i804 = icmp sgt i64 %486, %call1
  %487 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %488)
  %tobool422.not = icmp eq i32 %488, 0
  br i1 %cmp3.i.i804, label %land.lhs.true419, label %if.else437thread-pre-split

land.lhs.true419:                                 ; preds = %cake_advance_shaper.exit803
  br i1 %tobool422.not, label %land.lhs.true419.for.cond442.preheader_crit_edge, label %if.then423

land.lhs.true419.for.cond442.preheader_crit_edge: ; preds = %land.lhs.true419
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond442.preheader

if.then423:                                       ; preds = %land.lhs.true419
  call void @__sanitizer_cov_trace_pc() #17
  %489 = ptrtoint ptr %failsafe_next_packet to i32
  call void @__asan_load8_noabort(i32 %489)
  %490 = load i64, ptr %failsafe_next_packet, align 8
  %491 = call i64 @llvm.smin.i64(i64 %486, i64 %490)
  br label %if.end466.sink.split

if.else437thread-pre-split:                       ; preds = %cake_advance_shaper.exit803
  br i1 %tobool422.not, label %if.else437thread-pre-split.for.cond442.preheader_crit_edge, label %if.else437thread-pre-split.if.end466_crit_edge

if.else437thread-pre-split.if.end466_crit_edge:   ; preds = %if.else437thread-pre-split
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end466

if.else437thread-pre-split.for.cond442.preheader_crit_edge: ; preds = %if.else437thread-pre-split
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond442.preheader

for.cond442.preheader:                            ; preds = %if.else437thread-pre-split.for.cond442.preheader_crit_edge, %land.lhs.true419.for.cond442.preheader_crit_edge
  %492 = ptrtoint ptr %tin_cnt51 to i32
  call void @__asan_load2_noabort(i32 %492)
  %493 = load i16, ptr %tin_cnt51, align 2
  %conv444 = zext i16 %493 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %493)
  %cmp445850.not = icmp eq i16 %493, 0
  br i1 %cmp445850.not, label %for.cond442.preheader.if.end466_crit_edge, label %for.body447.lr.ph

for.cond442.preheader.if.end466_crit_edge:        ; preds = %for.cond442.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end466

for.body447.lr.ph:                                ; preds = %for.cond442.preheader
  %494 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %tins, align 8
  br label %for.body447

for.body447:                                      ; preds = %for.inc462.for.body447_crit_edge, %for.body447.lr.ph
  %i.0851 = phi i32 [ 0, %for.body447.lr.ph ], [ %inc463, %for.inc462.for.body447_crit_edge ]
  %decaying_flow_count450 = getelementptr %struct.cake_tin_data, ptr %495, i32 %i.0851, i32 10
  %496 = ptrtoint ptr %decaying_flow_count450 to i32
  call void @__asan_load2_noabort(i32 %496)
  %497 = load i16, ptr %decaying_flow_count450, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %497)
  %tobool451.not = icmp eq i16 %497, 0
  br i1 %tobool451.not, label %for.inc462, label %if.then452

if.then452:                                       ; preds = %for.body447
  call void @__sanitizer_cov_trace_pc() #17
  %target = getelementptr %struct.cake_tin_data, ptr %495, i32 %i.0851, i32 6, i32 1
  %498 = ptrtoint ptr %target to i32
  call void @__asan_load8_noabort(i32 %498)
  %499 = load i64, ptr %target, align 8
  %add457 = add i64 %499, %call1
  br label %if.end466.sink.split

for.inc462:                                       ; preds = %for.body447
  %inc463 = add nuw nsw i32 %i.0851, 1
  %exitcond872.not = icmp eq i32 %inc463, %conv444
  br i1 %exitcond872.not, label %for.inc462.if.end466_crit_edge, label %for.inc462.for.body447_crit_edge

for.inc462.for.body447_crit_edge:                 ; preds = %for.inc462
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body447

for.inc462.if.end466_crit_edge:                   ; preds = %for.inc462
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end466

if.end466.sink.split:                             ; preds = %if.then452, %if.then423
  %add457.sink = phi i64 [ %add457, %if.then452 ], [ %491, %if.then423 ]
  %watchdog458 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 48
  call void @qdisc_watchdog_schedule_range_ns(ptr noundef %watchdog458, i64 noundef %add457.sink, i64 noundef 0) #15
  br label %if.end466

if.end466:                                        ; preds = %if.end466.sink.split, %for.inc462.if.end466_crit_edge, %for.cond442.preheader.if.end466_crit_edge, %if.else437thread-pre-split.if.end466_crit_edge
  %500 = ptrtoint ptr %overflow_timeout.i to i32
  call void @__asan_load2_noabort(i32 %500)
  %501 = load i16, ptr %overflow_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %501)
  %tobool467.not = icmp eq i16 %501, 0
  br i1 %tobool467.not, label %if.end466.cleanup472_crit_edge, label %if.then468

if.end466.cleanup472_crit_edge:                   ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup472

if.then468:                                       ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #17
  %dec470 = add i16 %501, -1
  %502 = ptrtoint ptr %overflow_timeout.i to i32
  call void @__asan_store2_noabort(i32 %502)
  store i16 %dec470, ptr %overflow_timeout.i, align 4
  br label %cleanup472

cleanup472:                                       ; preds = %if.then468, %if.end466.cleanup472_crit_edge, %begin.backedge.cleanup472_crit_edge, %for.end.cleanup472_crit_edge, %if.then39.cleanup472_crit_edge, %if.then5, %entry.cleanup472_crit_edge
  %retval.4 = phi ptr [ null, %if.then5 ], [ %123, %if.then468 ], [ %123, %if.end466.cleanup472_crit_edge ], [ null, %entry.cleanup472_crit_edge ], [ null, %if.then39.cleanup472_crit_edge ], [ null, %begin.backedge.cleanup472_crit_edge ], [ null, %for.end.cleanup472_crit_edge ]
  ret ptr %retval.4
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qdisc_peek_dequeued(ptr noundef %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not15 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not15
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then:                                          ; preds = %entry
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %3(ptr noundef %sch) #15
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
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
define internal i32 @cake_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %0 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10240, ptr %limit, align 4
  %tin_mode = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 4
  %1 = ptrtoint ptr %tin_mode to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %tin_mode, align 8
  %flow_mode = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 7
  %2 = ptrtoint ptr %flow_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 7, ptr %flow_mode, align 1
  %rate_bps = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 13
  %3 = ptrtoint ptr %rate_bps to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %rate_bps, align 8
  %interval = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 8
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 100000, ptr %interval, align 8
  %target = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 16
  %5 = ptrtoint ptr %target to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 5000, ptr %target, align 8
  %rate_flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15
  %6 = ptrtoint ptr %rate_flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rate_flags, align 8
  %8 = or i16 %7, 16
  store i16 %8, ptr %rate_flags, align 8
  %cur_tin = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 40
  %9 = ptrtoint ptr %cur_tin to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %cur_tin, align 8
  %cur_flow = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 42
  %10 = ptrtoint ptr %cur_flow to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %cur_flow, align 2
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 48
  tail call void @qdisc_watchdog_init(ptr noundef %watchdog, ptr noundef %sch) #15
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @cake_change(ptr noundef %sch, ptr noundef nonnull %opt, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %call6 = tail call i32 @tcf_block_get(ptr noundef %block, ptr noundef %privdata.i, ptr noundef %sch, ptr noundef %extack) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  store i16 -1, ptr @quantum_div, align 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end9
  %i.0104 = phi i32 [ 1, %if.end9 ], [ %inc, %for.body.for.body_crit_edge ]
  %div = udiv i32 65535, %i.0104
  %conv11 = trunc i32 %div to i16
  %arrayidx = getelementptr [1025 x i16], ptr @quantum_div, i32 0, i32 %i.0104
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv11, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.0104, 1
  %exitcond.not = icmp eq i32 %inc, 1025
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 705984, i32 noundef 3520, i32 noundef -1) #19
  %tins = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %12 = ptrtoint ptr %tins to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i.i, ptr %tins, align 8
  %tobool14.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool14.not, label %for.end.cleanup_crit_edge, label %for.end.for.body20_crit_edge

for.end.for.body20_crit_edge:                     ; preds = %for.end
  br label %for.body20

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body20:                                       ; preds = %for.end41.for.body20_crit_edge, %for.end.for.body20_crit_edge
  %i.1106 = phi i32 [ %inc43, %for.end41.for.body20_crit_edge ], [ 0, %for.end.for.body20_crit_edge ]
  %13 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tins, align 8
  %add.ptr = getelementptr %struct.cake_tin_data, ptr %14, i32 %i.1106
  %new_flows = getelementptr %struct.cake_tin_data, ptr %14, i32 %i.1106, i32 13
  %15 = ptrtoint ptr %new_flows to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %new_flows, ptr %new_flows, align 4
  %prev.i = getelementptr %struct.cake_tin_data, ptr %14, i32 %i.1106, i32 13, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %new_flows, ptr %prev.i, align 4
  %old_flows = getelementptr %struct.cake_tin_data, ptr %14, i32 %i.1106, i32 14
  %17 = ptrtoint ptr %old_flows to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %old_flows, ptr %old_flows, align 4
  %prev.i101 = getelementptr %struct.cake_tin_data, ptr %14, i32 %i.1106, i32 14, i32 1
  %18 = ptrtoint ptr %prev.i101 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %old_flows, ptr %prev.i101, align 4
  %decaying_flows = getelementptr %struct.cake_tin_data, ptr %14, i32 %i.1106, i32 15
  %19 = ptrtoint ptr %decaying_flows to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %decaying_flows, ptr %decaying_flows, align 4
  %prev.i102 = getelementptr %struct.cake_tin_data, ptr %14, i32 %i.1106, i32 15, i32 1
  %20 = ptrtoint ptr %prev.i102 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %decaying_flows, ptr %prev.i102, align 4
  %sparse_flow_count = getelementptr %struct.cake_tin_data, ptr %14, i32 %i.1106, i32 9
  %21 = ptrtoint ptr %sparse_flow_count to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %sparse_flow_count, align 2
  %bulk_flow_count = getelementptr %struct.cake_tin_data, ptr %14, i32 %i.1106, i32 8
  %22 = ptrtoint ptr %bulk_flow_count to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %bulk_flow_count, align 4
  %decaying_flow_count = getelementptr %struct.cake_tin_data, ptr %14, i32 %i.1106, i32 10
  %23 = ptrtoint ptr %decaying_flow_count to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %decaying_flow_count, align 8
  %conv27 = trunc i32 %i.1106 to i16
  %bf.shl = shl i16 %conv27, 13
  br label %for.body25

for.body25:                                       ; preds = %cobalt_vars_init.exit.for.body25_crit_edge, %for.body20
  %j.0105 = phi i32 [ 0, %for.body20 ], [ %inc40, %cobalt_vars_init.exit.for.body25_crit_edge ]
  %add.ptr26 = getelementptr %struct.cake_flow, ptr %add.ptr, i32 %j.0105
  %mul = shl i32 %j.0105, 3
  %add = add nuw nsw i32 %mul, %i.1106
  %flowchain = getelementptr inbounds %struct.cake_flow, ptr %add.ptr26, i32 0, i32 2
  %24 = ptrtoint ptr %flowchain to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %flowchain, ptr %flowchain, align 4
  %prev.i103 = getelementptr inbounds %struct.list_head, ptr %flowchain, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %flowchain, ptr %prev.i103, align 4
  %cvars = getelementptr inbounds %struct.cake_flow, ptr %add.ptr26, i32 0, i32 5
  %26 = call ptr @memset(ptr %cvars, i32 0, i32 32)
  %27 = load i32, ptr @cobalt_rec_inv_sqrt_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %for.body25.for.body.i.i_crit_edge, label %for.body25.cobalt_vars_init.exit_crit_edge

for.body25.cobalt_vars_init.exit_crit_edge:       ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cobalt_vars_init.exit

for.body25.for.body.i.i_crit_edge:                ; preds = %for.body25
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body25.for.body.i.i_crit_edge
  %storemerge56.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 1, %for.body25.for.body.i.i_crit_edge ]
  %v.sroa.10.055.i.i = phi i32 [ %conv10.i38.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ -1, %for.body25.for.body.i.i_crit_edge ]
  %conv.i.i.i = zext i32 %v.sroa.10.055.i.i to i64
  %mul.i.i.i = mul nuw i64 %conv.i.i.i, %conv.i.i.i
  %shr.i.i.i = lshr i64 %mul.i.i.i, 32
  %conv3.i.i.i = zext i32 %storemerge56.i.i to i64
  %mul5.i.i.i = mul nuw nsw i64 %shr.i.i.i, %conv3.i.i.i
  %sub.i.i.i = sub nsw i64 12884901888, %mul5.i.i.i
  %shr6.i.i.i = lshr i64 %sub.i.i.i, 2
  %mul8.i.i.i = mul i64 %shr6.i.i.i, %conv.i.i.i
  %shr9.i.i.i = lshr i64 %mul8.i.i.i, 31
  %conv.i7.i.i = and i64 %shr9.i.i.i, 4294967295
  %mul.i8.i.i = mul nuw i64 %conv.i7.i.i, %conv.i7.i.i
  %shr.i9.i.i = lshr i64 %mul.i8.i.i, 32
  %mul5.i11.i.i = mul nuw nsw i64 %shr.i9.i.i, %conv3.i.i.i
  %sub.i12.i.i = sub nsw i64 12884901888, %mul5.i11.i.i
  %shr6.i13.i.i = lshr i64 %sub.i12.i.i, 2
  %mul8.i14.i.i = mul i64 %shr6.i13.i.i, %conv.i7.i.i
  %shr9.i15.i.i = lshr i64 %mul8.i14.i.i, 31
  %conv.i18.i.i = and i64 %shr9.i15.i.i, 4294967295
  %mul.i19.i.i = mul nuw i64 %conv.i18.i.i, %conv.i18.i.i
  %shr.i20.i.i = lshr i64 %mul.i19.i.i, 32
  %mul5.i22.i.i = mul nuw nsw i64 %shr.i20.i.i, %conv3.i.i.i
  %sub.i23.i.i = sub nsw i64 12884901888, %mul5.i22.i.i
  %shr6.i24.i.i = lshr i64 %sub.i23.i.i, 2
  %mul8.i25.i.i = mul i64 %shr6.i24.i.i, %conv.i18.i.i
  %shr9.i26.i.i = lshr i64 %mul8.i25.i.i, 31
  %conv.i29.i.i = and i64 %shr9.i26.i.i, 4294967295
  %mul.i30.i.i = mul nuw i64 %conv.i29.i.i, %conv.i29.i.i
  %shr.i31.i.i = lshr i64 %mul.i30.i.i, 32
  %mul5.i33.i.i = mul nuw nsw i64 %shr.i31.i.i, %conv3.i.i.i
  %sub.i34.i.i = sub nsw i64 12884901888, %mul5.i33.i.i
  %shr6.i35.i.i = lshr i64 %sub.i34.i.i, 2
  %mul8.i36.i.i = mul i64 %shr6.i35.i.i, %conv.i29.i.i
  %shr9.i37.i.i = lshr i64 %mul8.i36.i.i, 31
  %conv10.i38.i.i = trunc i64 %shr9.i37.i.i to i32
  %arrayidx.i.i = getelementptr [16 x i32], ptr @cobalt_rec_inv_sqrt_cache, i32 0, i32 %storemerge56.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv10.i38.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %storemerge56.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %cobalt_cache_init.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

cobalt_cache_init.exit.i:                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i32 -1, ptr @cobalt_rec_inv_sqrt_cache, align 4
  br label %cobalt_vars_init.exit

cobalt_vars_init.exit:                            ; preds = %cobalt_cache_init.exit.i, %for.body25.cobalt_vars_init.exit_crit_edge
  %arrayidx28 = getelementptr %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 3, i32 %add
  %29 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load = load i16, ptr %arrayidx28, align 2
  %bf.clear = and i16 %bf.load, 7
  %bf.set = or i16 %bf.clear, %bf.shl
  %conv29 = trunc i32 %j.0105 to i16
  %bf.value33 = shl i16 %conv29, 3
  %bf.shl34 = and i16 %bf.value33, 8184
  %bf.set36 = or i16 %bf.set, %bf.shl34
  store i16 %bf.set36, ptr %arrayidx28, align 2
  %conv37 = trunc i32 %add to i16
  %arrayidx38 = getelementptr %struct.cake_tin_data, ptr %14, i32 %i.1106, i32 3, i32 %j.0105
  %30 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv37, ptr %arrayidx38, align 2
  %inc40 = add nuw nsw i32 %j.0105, 1
  %exitcond107.not = icmp eq i32 %inc40, 1024
  br i1 %exitcond107.not, label %for.end41, label %cobalt_vars_init.exit.for.body25_crit_edge

cobalt_vars_init.exit.for.body25_crit_edge:       ; preds = %cobalt_vars_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body25

for.end41:                                        ; preds = %cobalt_vars_init.exit
  %inc43 = add nuw nsw i32 %i.1106, 1
  %exitcond108.not = icmp eq i32 %inc43, 8
  br i1 %exitcond108.not, label %for.end44, label %for.end41.for.body20_crit_edge

for.end41.for.body20_crit_edge:                   ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body20

for.end44:                                        ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @cake_reconfigure(ptr noundef %sch)
  %31 = ptrtoint ptr %rate_bps to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rate_bps, align 8
  %avg_peak_bandwidth = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 17, i32 3, i32 0, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %avg_peak_bandwidth to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %avg_peak_bandwidth, align 8
  %min_netlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 18
  %34 = ptrtoint ptr %min_netlen to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %min_netlen, align 8
  %min_adjlen = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 41
  %35 = ptrtoint ptr %min_adjlen to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %min_adjlen, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end44, %for.end.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end44 ], [ %call2, %if.then.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cake_reset(ptr nocapture noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cake_clear_tin(ptr noundef %sch, i16 noundef zeroext 0)
  tail call fastcc void @cake_clear_tin(ptr noundef %sch, i16 noundef zeroext 1)
  tail call fastcc void @cake_clear_tin(ptr noundef %sch, i16 noundef zeroext 2)
  tail call fastcc void @cake_clear_tin(ptr noundef %sch, i16 noundef zeroext 3)
  tail call fastcc void @cake_clear_tin(ptr noundef %sch, i16 noundef zeroext 4)
  tail call fastcc void @cake_clear_tin(ptr noundef %sch, i16 noundef zeroext 5)
  tail call fastcc void @cake_clear_tin(ptr noundef %sch, i16 noundef zeroext 6)
  tail call fastcc void @cake_clear_tin(ptr noundef %sch, i16 noundef zeroext 7)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cake_destroy(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 48
  tail call void @qdisc_watchdog_cancel(ptr noundef %watchdog) #15
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 4
  tail call void @tcf_block_put(ptr noundef %1) #15
  %tins = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %2 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tins, align 8
  tail call void @kvfree(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cake_change(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  %tmp.i = alloca i64, align 8
  %tb = alloca [19 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %tb) #15
  %0 = call ptr @memset(ptr %tb, i32 255, i32 76)
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %1 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %2 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 18, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @cake_policy, i32 noundef 0, ptr noundef %extack) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 11
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.end3.if.end14_crit_edge, label %if.then5

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %flow_mode = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 7
  %5 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flow_mode, align 1
  %7 = and i8 %6, -65
  store i8 %7, ptr %flow_mode, align 1
  %add.ptr.i.i260 = getelementptr i8, ptr %4, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i260 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i260, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  %mul = select i1 %tobool9.not, i8 0, i8 64
  %or = or i8 %mul, %7
  %10 = ptrtoint ptr %flow_mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or, ptr %flow_mode, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then5, %if.end3.if.end14_crit_edge
  %arrayidx15 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %12, null
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %if.then17

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #15
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %tmp.i, align 8, !annotation !64
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %12, i32 noundef 8) #15
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #15
  %rate_bps = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 13
  %16 = ptrtoint ptr %rate_bps to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %rate_bps, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %arrayidx21 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %18, null
  br i1 %tobool22.not, label %if.end20.if.end27_crit_edge, label %if.then23

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i261 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i261 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i261, align 4
  %conv26 = trunc i32 %20 to i8
  %tin_mode = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 4
  %21 = ptrtoint ptr %tin_mode to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv26, ptr %tin_mode, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end20.if.end27_crit_edge
  %arrayidx28 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 13
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %23, null
  br i1 %tobool29.not, label %if.end27.if.end43_crit_edge, label %if.then30

if.end27.if.end43_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i262 = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i262 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool33.not = icmp eq i32 %25, 0
  %rate_flags38 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15
  %26 = ptrtoint ptr %rate_flags38 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rate_flags38, align 8
  %28 = and i16 %27, -9
  %masksel = select i1 %tobool33.not, i16 0, i16 8
  %.sink = or i16 %28, %masksel
  store i16 %.sink, ptr %rate_flags38, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then30, %if.end27.if.end43_crit_edge
  %arrayidx44 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx44, align 4
  %tobool45.not = icmp eq ptr %30, null
  br i1 %tobool45.not, label %if.end43.if.end56_crit_edge, label %if.then46

if.end43.if.end56_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  %flow_mode47 = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 7
  %31 = ptrtoint ptr %flow_mode47 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flow_mode47, align 1
  %33 = and i8 %32, 64
  %add.ptr.i.i263 = getelementptr i8, ptr %30, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i263 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i263, align 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 63
  %conv54 = or i8 %37, %33
  store i8 %conv54, ptr %flow_mode47, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.then46, %if.end43.if.end56_crit_edge
  %arrayidx57 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 4
  %38 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx57, align 4
  %tobool58.not = icmp eq ptr %39, null
  br i1 %tobool58.not, label %if.end56.if.end63_crit_edge, label %if.then59

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i264 = getelementptr i8, ptr %39, i32 4
  %40 = ptrtoint ptr %add.ptr.i.i264 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i264, align 4
  %conv62 = trunc i32 %41 to i8
  %atm_mode = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 9
  %42 = ptrtoint ptr %atm_mode to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv62, ptr %atm_mode, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.end56.if.end63_crit_edge
  %arrayidx64 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 6
  %43 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx64, align 4
  %tobool65.not = icmp eq ptr %44, null
  br i1 %tobool65.not, label %if.end63.if.end74_crit_edge, label %if.then66

if.end63.if.end74_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i265 = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i265 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i.i265, align 4
  %conv69 = trunc i32 %46 to i16
  %rate_overhead = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 2
  %47 = ptrtoint ptr %rate_overhead to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv69, ptr %rate_overhead, align 2
  %rate_flags70 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15
  %48 = ptrtoint ptr %rate_flags70 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %rate_flags70, align 8
  %50 = or i16 %49, 1
  store i16 %50, ptr %rate_flags70, align 8
  %max_netlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 17, i32 3, i32 0, i32 0, i32 4, i32 7
  %51 = ptrtoint ptr %max_netlen to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %max_netlen, align 4
  %max_adjlen = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 39
  %52 = ptrtoint ptr %max_adjlen to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %max_adjlen, align 2
  %min_netlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 18
  %53 = ptrtoint ptr %min_netlen to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 -1, ptr %min_netlen, align 8
  %min_adjlen = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 41
  %54 = ptrtoint ptr %min_adjlen to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -1, ptr %min_adjlen, align 2
  br label %if.end74

if.end74:                                         ; preds = %if.then66, %if.end63.if.end74_crit_edge
  %arrayidx75 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 12
  %55 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx75, align 4
  %tobool76.not = icmp eq ptr %56, null
  br i1 %tobool76.not, label %if.end74.if.end86_crit_edge, label %if.then77

if.end74.if.end86_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  %rate_flags78 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15
  %57 = ptrtoint ptr %rate_flags78 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %rate_flags78, align 8
  %59 = and i16 %58, -2
  store i16 %59, ptr %rate_flags78, align 8
  %max_netlen82 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 17, i32 3, i32 0, i32 0, i32 4, i32 7
  %60 = ptrtoint ptr %max_netlen82 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %max_netlen82, align 4
  %max_adjlen83 = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 39
  %61 = ptrtoint ptr %max_adjlen83 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %max_adjlen83, align 2
  %min_netlen84 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 18
  %62 = ptrtoint ptr %min_netlen84 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -1, ptr %min_netlen84, align 8
  %min_adjlen85 = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 41
  %63 = ptrtoint ptr %min_adjlen85 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -1, ptr %min_adjlen85, align 2
  br label %if.end86

if.end86:                                         ; preds = %if.then77, %if.end74.if.end86_crit_edge
  %arrayidx87 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 14
  %64 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx87, align 4
  %tobool88.not = icmp eq ptr %65, null
  br i1 %tobool88.not, label %if.end86.if.end93_crit_edge, label %if.then89

if.end86.if.end93_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end93

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i266 = getelementptr i8, ptr %65, i32 4
  %66 = ptrtoint ptr %add.ptr.i.i266 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i.i266, align 4
  %conv92 = trunc i32 %67 to i16
  %rate_mpu = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 4
  %68 = ptrtoint ptr %rate_mpu to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv92, ptr %rate_mpu, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.end86.if.end93_crit_edge
  %arrayidx94 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 7
  %69 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx94, align 4
  %tobool95.not = icmp eq ptr %70, null
  br i1 %tobool95.not, label %if.end93.if.end105_crit_edge, label %if.then96

if.end93.if.end105_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i267 = getelementptr i8, ptr %70, i32 4
  %71 = ptrtoint ptr %add.ptr.i.i267 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i.i267, align 4
  %interval = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool101.not = icmp eq i32 %72, 0
  %narrow = select i1 %tobool101.not, i32 1, i32 %72
  %spec.store.select = zext i32 %narrow to i64
  %73 = ptrtoint ptr %interval to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %spec.store.select, ptr %interval, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.then96, %if.end93.if.end105_crit_edge
  %arrayidx106 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 8
  %74 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx106, align 4
  %tobool107.not = icmp eq ptr %75, null
  br i1 %tobool107.not, label %if.end105.if.end117_crit_edge, label %if.then108

if.end105.if.end117_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i268 = getelementptr i8, ptr %75, i32 4
  %76 = ptrtoint ptr %add.ptr.i.i268 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i.i268, align 4
  %target = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool113.not = icmp eq i32 %77, 0
  %narrow288 = select i1 %tobool113.not, i32 1, i32 %77
  %spec.store.select259 = zext i32 %narrow288 to i64
  %78 = ptrtoint ptr %target to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %spec.store.select259, ptr %target, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then108, %if.end105.if.end117_crit_edge
  %arrayidx118 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 9
  %79 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx118, align 4
  %tobool119.not = icmp eq ptr %80, null
  br i1 %tobool119.not, label %if.end117.if.end135_crit_edge, label %if.then120

if.end117.if.end135_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end135

if.then120:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i269 = getelementptr i8, ptr %80, i32 4
  %81 = ptrtoint ptr %add.ptr.i.i269 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr.i.i269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool123.not = icmp eq i32 %82, 0
  %rate_flags130 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15
  %83 = ptrtoint ptr %rate_flags130 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %rate_flags130, align 8
  %85 = and i16 %84, -3
  %masksel292 = select i1 %tobool123.not, i16 0, i16 2
  %.sink289 = or i16 %85, %masksel292
  store i16 %.sink289, ptr %rate_flags130, align 8
  br label %if.end135

if.end135:                                        ; preds = %if.then120, %if.end117.if.end135_crit_edge
  %arrayidx136 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 15
  %86 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx136, align 4
  %tobool137.not = icmp eq ptr %87, null
  br i1 %tobool137.not, label %if.end135.if.end153_crit_edge, label %if.then138

if.end135.if.end153_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end153

if.then138:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i270 = getelementptr i8, ptr %87, i32 4
  %88 = ptrtoint ptr %add.ptr.i.i270 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr.i.i270, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool141.not = icmp eq i32 %89, 0
  %rate_flags148 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15
  %90 = ptrtoint ptr %rate_flags148 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %rate_flags148, align 8
  %92 = and i16 %91, -5
  %masksel293 = select i1 %tobool141.not, i16 0, i16 4
  %.sink290 = or i16 %92, %masksel293
  store i16 %.sink290, ptr %rate_flags148, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.then138, %if.end135.if.end153_crit_edge
  %arrayidx154 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 16
  %93 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx154, align 4
  %tobool155.not = icmp eq ptr %94, null
  br i1 %tobool155.not, label %if.end153.if.end160_crit_edge, label %if.then156

if.end153.if.end160_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end160

if.then156:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i271 = getelementptr i8, ptr %94, i32 4
  %95 = ptrtoint ptr %add.ptr.i.i271 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr.i.i271, align 4
  %conv159 = trunc i32 %96 to i8
  %ack_filter = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 8
  %97 = ptrtoint ptr %ack_filter to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv159, ptr %ack_filter, align 2
  br label %if.end160

if.end160:                                        ; preds = %if.then156, %if.end153.if.end160_crit_edge
  %arrayidx161 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 10
  %98 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx161, align 4
  %tobool162.not = icmp eq ptr %99, null
  br i1 %tobool162.not, label %if.end160.if.end166_crit_edge, label %if.then163

if.end160.if.end166_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end166

if.then163:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i272 = getelementptr i8, ptr %99, i32 4
  %100 = ptrtoint ptr %add.ptr.i.i272 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr.i.i272, align 4
  %buffer_config_limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 36
  %102 = ptrtoint ptr %buffer_config_limit to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %buffer_config_limit, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %if.end160.if.end166_crit_edge
  %arrayidx167 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 17
  %103 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx167, align 4
  %tobool168.not = icmp eq ptr %104, null
  br i1 %tobool168.not, label %if.end166.if.end184_crit_edge, label %if.then169

if.end166.if.end184_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end184

if.then169:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i273 = getelementptr i8, ptr %104, i32 4
  %105 = ptrtoint ptr %add.ptr.i.i273 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr.i.i273, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool172.not = icmp eq i32 %106, 0
  %rate_flags179 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15
  %107 = ptrtoint ptr %rate_flags179 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %rate_flags179, align 8
  %109 = and i16 %108, -17
  %masksel294 = select i1 %tobool172.not, i16 0, i16 16
  %.sink291 = or i16 %109, %masksel294
  store i16 %.sink291, ptr %rate_flags179, align 8
  br label %if.end184

if.end184:                                        ; preds = %if.then169, %if.end166.if.end184_crit_edge
  %arrayidx185 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 18
  %110 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx185, align 4
  %tobool186.not = icmp eq ptr %111, null
  br i1 %tobool186.not, label %if.end184.if.end195_crit_edge, label %if.then187

if.end184.if.end195_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end195

if.then187:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i274 = getelementptr i8, ptr %111, i32 4
  %112 = ptrtoint ptr %add.ptr.i.i274 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i.i274, align 4
  %fwmark_mask = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 5
  %114 = ptrtoint ptr %fwmark_mask to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %fwmark_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool191.not = icmp eq i32 %113, 0
  %115 = call i32 @llvm.cttz.i32(i32 %113, i1 true) #15, !range !74
  %phi.cast = trunc i32 %115 to i16
  %cond = select i1 %tobool191.not, i16 0, i16 %phi.cast
  %fwmark_shft = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 6
  %116 = ptrtoint ptr %fwmark_shft to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %cond, ptr %fwmark_shft, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.then187, %if.end184.if.end195_crit_edge
  %tins = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %117 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tins, align 8
  %tobool196.not = icmp eq ptr %118, null
  br i1 %tobool196.not, label %if.end195.cleanup_crit_edge, label %if.then197

if.end195.cleanup_crit_edge:                      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then197:                                       ; preds = %if.end195
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %119 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %120, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then197.sch_tree_lock.exit_crit_edge

if.then197.sch_tree_lock.exit_crit_edge:          ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #17
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.then197
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %121 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = call i32 @rtnl_is_locked() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !65

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #15
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.then197.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.then197.sch_tree_lock.exit_crit_edge ], [ %124, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %124, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %124, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #15
  call fastcc void @cake_reconfigure(ptr noundef %sch)
  %125 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %flags.i, align 8
  %and.i276 = and i32 %126, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i276)
  %tobool.not.i277 = icmp eq i32 %and.i276, 0
  br i1 %tobool.not.i277, label %if.else.i282, label %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge

sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge: ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sch_tree_unlock.exit

if.else.i282:                                     ; preds = %sch_tree_lock.exit
  %dev_queue.i.i.i278 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %127 = ptrtoint ptr %dev_queue.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev_queue.i.i.i278, align 8
  %qdisc_sleeping.i.i.i279 = getelementptr inbounds %struct.netdev_queue, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %qdisc_sleeping.i.i.i279 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %qdisc_sleeping.i.i.i279, align 4
  %call1.i.i280 = call i32 @rtnl_is_locked() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i280)
  %tobool.not.i.i281 = icmp eq i32 %call1.i.i280, 0
  br i1 %tobool.not.i.i281, label %land.rhs.i.i284, label %if.else.i282.sch_tree_unlock.exit_crit_edge

if.else.i282.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i282
  call void @__sanitizer_cov_trace_pc() #17
  br label %sch_tree_unlock.exit

land.rhs.i.i284:                                  ; preds = %if.else.i282
  %.b41.i.i283 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i283, label %land.rhs.i.i284.sch_tree_unlock.exit_crit_edge, label %if.then.i.i285, !prof !65

land.rhs.i.i284.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i284
  call void @__sanitizer_cov_trace_pc() #17
  br label %sch_tree_unlock.exit

if.then.i.i285:                                   ; preds = %land.rhs.i.i284
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #15
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i285, %land.rhs.i.i284.sch_tree_unlock.exit_crit_edge, %if.else.i282.sch_tree_unlock.exit_crit_edge, %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge
  %.sink.i286 = phi ptr [ %sch, %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge ], [ %130, %if.else.i282.sch_tree_unlock.exit_crit_edge ], [ %130, %land.rhs.i.i284.sch_tree_unlock.exit_crit_edge ], [ %130, %if.then.i.i285 ]
  %lock.i.i.i287 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i286, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i287) #15
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit, %if.end195.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ 0, %sch_tree_unlock.exit ], [ 0, %if.end195.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %tb) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cake_dump(ptr nocapture noundef readonly %sch, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i190 = alloca i32, align 4
  %tmp.i188 = alloca i32, align 4
  %tmp.i186 = alloca i32, align 4
  %tmp.i184 = alloca i32, align 4
  %tmp.i182 = alloca i32, align 4
  %tmp.i180 = alloca i32, align 4
  %tmp.i178 = alloca i32, align 4
  %tmp.i176 = alloca i32, align 4
  %tmp.i174 = alloca i32, align 4
  %tmp.i172 = alloca i32, align 4
  %tmp.i170 = alloca i32, align 4
  %tmp.i168 = alloca i32, align 4
  %tmp.i166 = alloca i32, align 4
  %tmp.i164 = alloca i32, align 4
  %tmp.i162 = alloca i32, align 4
  %tmp.i160 = alloca i32, align 4
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not193 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not193
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %rate_bps = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 13
  %2 = ptrtoint ptr %rate_bps to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rate_bps, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #15
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %flow_mode = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 7
  %5 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flow_mode, align 1
  %7 = and i8 %6, 63
  %and = zext i8 %7 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i160) #15
  %8 = ptrtoint ptr %tmp.i160 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %tmp.i160, align 4
  %call.i161 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i160) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i160) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool7.not = icmp eq i32 %call.i161, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %interval = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 8
  %9 = ptrtoint ptr %interval to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %interval, align 8
  %conv10 = trunc i64 %10 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i162) #15
  %11 = ptrtoint ptr %tmp.i162 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv10, ptr %tmp.i162, align 4
  %call.i163 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i162) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i162) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %tobool12.not = icmp eq i32 %call.i163, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %target = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 16
  %12 = ptrtoint ptr %target to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %target, align 8
  %conv15 = trunc i64 %13 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i164) #15
  %14 = ptrtoint ptr %tmp.i164 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv15, ptr %tmp.i164, align 4
  %call.i165 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i164) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i164) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool17.not = icmp eq i32 %call.i165, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %buffer_config_limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 36
  %15 = ptrtoint ptr %buffer_config_limit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buffer_config_limit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i166) #15
  %17 = ptrtoint ptr %tmp.i166 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i166, align 4
  %call.i167 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i166) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i166) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %tobool21.not = icmp eq i32 %call.i167, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %rate_flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15
  %18 = ptrtoint ptr %rate_flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rate_flags, align 8
  %20 = lshr i16 %19, 1
  %.lobit = and i16 %20, 1
  %21 = zext i16 %.lobit to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i168) #15
  %22 = ptrtoint ptr %tmp.i168 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tmp.i168, align 4
  %call.i169 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i168) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i168) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool29.not = icmp eq i32 %call.i169, 0
  br i1 %tobool29.not, label %if.end31, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %23 = ptrtoint ptr %rate_flags to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rate_flags, align 8
  %25 = lshr i16 %24, 2
  %.lobit156 = and i16 %25, 1
  %26 = zext i16 %.lobit156 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i170) #15
  %27 = ptrtoint ptr %tmp.i170 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tmp.i170, align 4
  %call.i171 = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i170) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i170) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool41.not = icmp eq i32 %call.i171, 0
  br i1 %tobool41.not, label %if.end43, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end43:                                         ; preds = %if.end31
  %ack_filter = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 8
  %28 = ptrtoint ptr %ack_filter to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ack_filter, align 2
  %conv44 = zext i8 %29 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i172) #15
  %30 = ptrtoint ptr %tmp.i172 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv44, ptr %tmp.i172, align 4
  %call.i173 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %tmp.i172) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i172) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %tobool46.not = icmp eq i32 %call.i173, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  %31 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flow_mode, align 1
  %33 = lshr i8 %32, 6
  %.lobit157 = and i8 %33, 1
  %34 = zext i8 %.lobit157 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i174) #15
  %35 = ptrtoint ptr %tmp.i174 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %tmp.i174, align 4
  %call.i175 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i174) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i174) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool58.not = icmp eq i32 %call.i175, 0
  br i1 %tobool58.not, label %if.end60, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end60:                                         ; preds = %if.end48
  %tin_mode = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 4
  %36 = ptrtoint ptr %tin_mode to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tin_mode, align 8
  %conv61 = zext i8 %37 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i176) #15
  %38 = ptrtoint ptr %tmp.i176 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv61, ptr %tmp.i176, align 4
  %call.i177 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i176) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i176) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %tobool63.not = icmp eq i32 %call.i177, 0
  br i1 %tobool63.not, label %if.end65, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end65:                                         ; preds = %if.end60
  %39 = ptrtoint ptr %rate_flags to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %rate_flags, align 8
  %41 = lshr i16 %40, 3
  %.lobit158 = and i16 %41, 1
  %42 = zext i16 %.lobit158 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i178) #15
  %43 = ptrtoint ptr %tmp.i178 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tmp.i178, align 4
  %call.i179 = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %tmp.i178) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i178) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179)
  %tobool75.not = icmp eq i32 %call.i179, 0
  br i1 %tobool75.not, label %if.end77, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end77:                                         ; preds = %if.end65
  %rate_overhead = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 2
  %44 = ptrtoint ptr %rate_overhead to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %rate_overhead, align 2
  %conv78 = sext i16 %45 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i180) #15
  %46 = ptrtoint ptr %tmp.i180 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv78, ptr %tmp.i180, align 4
  %call.i181 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i180) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i180) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %tobool80.not = icmp eq i32 %call.i181, 0
  br i1 %tobool80.not, label %if.end82, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end82:                                         ; preds = %if.end77
  %47 = ptrtoint ptr %rate_flags to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %rate_flags, align 8
  %49 = and i16 %48, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool86.not = icmp eq i16 %49, 0
  br i1 %tobool86.not, label %if.then87, label %if.end82.if.end92_crit_edge

if.end82.if.end92_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end92

if.then87:                                        ; preds = %if.end82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i182) #15
  %50 = ptrtoint ptr %tmp.i182 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %tmp.i182, align 4
  %call.i183 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i182) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i182) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool89.not = icmp eq i32 %call.i183, 0
  br i1 %tobool89.not, label %if.then87.if.end92_crit_edge, label %if.then87.cleanup_crit_edge

if.then87.cleanup_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then87.if.end92_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end92

if.end92:                                         ; preds = %if.then87.if.end92_crit_edge, %if.end82.if.end92_crit_edge
  %atm_mode = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 9
  %51 = ptrtoint ptr %atm_mode to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %atm_mode, align 1
  %conv93 = zext i8 %52 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i184) #15
  %53 = ptrtoint ptr %tmp.i184 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv93, ptr %tmp.i184, align 4
  %call.i185 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i184) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i184) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool95.not = icmp eq i32 %call.i185, 0
  br i1 %tobool95.not, label %if.end97, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end97:                                         ; preds = %if.end92
  %rate_mpu = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 4
  %54 = ptrtoint ptr %rate_mpu to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %rate_mpu, align 4
  %conv98 = zext i16 %55 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i186) #15
  %56 = ptrtoint ptr %tmp.i186 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv98, ptr %tmp.i186, align 4
  %call.i187 = call i32 @nla_put(ptr noundef %skb, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %tmp.i186) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i186) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %tobool100.not = icmp eq i32 %call.i187, 0
  br i1 %tobool100.not, label %if.end102, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end102:                                        ; preds = %if.end97
  %57 = ptrtoint ptr %rate_flags to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %rate_flags, align 8
  %59 = lshr i16 %58, 4
  %.lobit159 = and i16 %59, 1
  %60 = zext i16 %.lobit159 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i188) #15
  %61 = ptrtoint ptr %tmp.i188 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %tmp.i188, align 4
  %call.i189 = call i32 @nla_put(ptr noundef %skb, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %tmp.i188) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i188) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool112.not = icmp eq i32 %call.i189, 0
  br i1 %tobool112.not, label %if.end114, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end114:                                        ; preds = %if.end102
  %fwmark_mask = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 5
  %62 = ptrtoint ptr %fwmark_mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fwmark_mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i190) #15
  %64 = ptrtoint ptr %tmp.i190 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %tmp.i190, align 4
  %call.i191 = call i32 @nla_put(ptr noundef %skb, i32 noundef 18, i32 noundef 4, ptr noundef nonnull %tmp.i190) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i190) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool116.not = icmp eq i32 %call.i191, 0
  br i1 %tobool116.not, label %if.end118, label %if.end114.cleanup_crit_edge

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end118:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #17
  %65 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %66 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i, ptr %1, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %68 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end118, %if.end114.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %if.then87.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %69, %if.end118 ], [ -1, %if.end114.cleanup_crit_edge ], [ -1, %if.end102.cleanup_crit_edge ], [ -1, %if.end97.cleanup_crit_edge ], [ -1, %if.end92.cleanup_crit_edge ], [ -1, %if.then87.cleanup_crit_edge ], [ -1, %if.end77.cleanup_crit_edge ], [ -1, %if.end65.cleanup_crit_edge ], [ -1, %if.end60.cleanup_crit_edge ], [ -1, %if.end48.cleanup_crit_edge ], [ -1, %if.end43.cleanup_crit_edge ], [ -1, %if.end31.cleanup_crit_edge ], [ -1, %if.end23.cleanup_crit_edge ], [ -1, %if.end19.cleanup_crit_edge ], [ -1, %if.end14.cleanup_crit_edge ], [ -1, %if.end9.cleanup_crit_edge ], [ -1, %if.end5.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cake_dump_stats(ptr nocapture noundef readonly %sch, ptr noundef readonly %d) #2 align 64 {
entry:
  %tmp.i434 = alloca i32, align 4
  %tmp.i432 = alloca i32, align 4
  %tmp.i430 = alloca i32, align 4
  %tmp.i428 = alloca i32, align 4
  %tmp.i426 = alloca i32, align 4
  %tmp.i424 = alloca i32, align 4
  %tmp.i422 = alloca i32, align 4
  %tmp.i420 = alloca i32, align 4
  %tmp.i418 = alloca i32, align 4
  %tmp.i409 = alloca i32, align 4
  %tmp.i400 = alloca i32, align 4
  %tmp.i391 = alloca i32, align 4
  %tmp.i389 = alloca i32, align 4
  %tmp.i387 = alloca i32, align 4
  %tmp.i385 = alloca i32, align 4
  %tmp.i383 = alloca i32, align 4
  %tmp.i374 = alloca i32, align 4
  %tmp.i372 = alloca i32, align 4
  %tmp.i370 = alloca i64, align 8
  %tmp.i368 = alloca i64, align 8
  %tmp.i358 = alloca i32, align 4
  %tmp.i356 = alloca i32, align 4
  %tmp.i354 = alloca i32, align 4
  %tmp.i352 = alloca i32, align 4
  %tmp.i350 = alloca i32, align 4
  %tmp.i348 = alloca i32, align 4
  %tmp.i346 = alloca i32, align 4
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.gnet_dump, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %1, i32 noundef 4, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tobool.not451 = icmp eq ptr %3, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not451
  br i1 %tobool.not, label %entry.cleanup269_crit_edge, label %do.body

entry.cleanup269_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup269

do.body:                                          ; preds = %entry
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb, align 4
  %avg_peak_bandwidth = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 17, i32 3, i32 0, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %avg_peak_bandwidth to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %avg_peak_bandwidth, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #15
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %5, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %do.body7, label %do.body.if.then.i.i_crit_edge

do.body.if.then.i.i_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body7:                                         ; preds = %do.body
  %9 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skb, align 4
  %buffer_limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 32
  %11 = ptrtoint ptr %buffer_limit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buffer_limit, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i346) #15
  %13 = ptrtoint ptr %tmp.i346 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i346, align 4
  %call.i347 = call i32 @nla_put(ptr noundef %10, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i346) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i346) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i347)
  %tobool10.not = icmp eq i32 %call.i347, 0
  br i1 %tobool10.not, label %do.body15, label %do.body7.if.then.i.i_crit_edge

do.body7.if.then.i.i_crit_edge:                   ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body15:                                        ; preds = %do.body7
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb, align 4
  %buffer_max_used = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 28
  %16 = ptrtoint ptr %buffer_max_used to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffer_max_used, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i348) #15
  %18 = ptrtoint ptr %tmp.i348 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tmp.i348, align 4
  %call.i349 = call i32 @nla_put(ptr noundef %15, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i348) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i348) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i349)
  %tobool18.not = icmp eq i32 %call.i349, 0
  br i1 %tobool18.not, label %do.body23, label %do.body15.if.then.i.i_crit_edge

do.body15.if.then.i.i_crit_edge:                  ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body23:                                        ; preds = %do.body15
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb, align 4
  %avg_netoff = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 17, i32 3, i32 0, i32 0, i32 4, i32 6
  %21 = ptrtoint ptr %avg_netoff to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %avg_netoff, align 8
  %add = add i32 %22, 32768
  %shr = lshr i32 %add, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i350) #15
  %23 = ptrtoint ptr %tmp.i350 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr, ptr %tmp.i350, align 4
  %call.i351 = call i32 @nla_put(ptr noundef %20, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i350) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i350) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i351)
  %tobool26.not = icmp eq i32 %call.i351, 0
  br i1 %tobool26.not, label %do.body31, label %do.body23.if.then.i.i_crit_edge

do.body23.if.then.i.i_crit_edge:                  ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body31:                                        ; preds = %do.body23
  %24 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb, align 4
  %max_netlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 17, i32 3, i32 0, i32 0, i32 4, i32 7
  %26 = ptrtoint ptr %max_netlen to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %max_netlen, align 4
  %conv = zext i16 %27 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i352) #15
  %28 = ptrtoint ptr %tmp.i352 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %tmp.i352, align 4
  %call.i353 = call i32 @nla_put(ptr noundef %25, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i352) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i352) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i353)
  %tobool34.not = icmp eq i32 %call.i353, 0
  br i1 %tobool34.not, label %do.body39, label %do.body31.if.then.i.i_crit_edge

do.body31.if.then.i.i_crit_edge:                  ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body39:                                        ; preds = %do.body31
  %29 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skb, align 4
  %max_adjlen = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 39
  %31 = ptrtoint ptr %max_adjlen to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %max_adjlen, align 2
  %conv41 = zext i16 %32 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i354) #15
  %33 = ptrtoint ptr %tmp.i354 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv41, ptr %tmp.i354, align 4
  %call.i355 = call i32 @nla_put(ptr noundef %30, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i354) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i354) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i355)
  %tobool43.not = icmp eq i32 %call.i355, 0
  br i1 %tobool43.not, label %do.body48, label %do.body39.if.then.i.i_crit_edge

do.body39.if.then.i.i_crit_edge:                  ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body48:                                        ; preds = %do.body39
  %34 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skb, align 4
  %min_netlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 18
  %36 = ptrtoint ptr %min_netlen to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %min_netlen, align 8
  %conv50 = zext i16 %37 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i356) #15
  %38 = ptrtoint ptr %tmp.i356 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv50, ptr %tmp.i356, align 4
  %call.i357 = call i32 @nla_put(ptr noundef %35, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i356) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i356) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i357)
  %tobool52.not = icmp eq i32 %call.i357, 0
  br i1 %tobool52.not, label %do.body57, label %do.body48.if.then.i.i_crit_edge

do.body48.if.then.i.i_crit_edge:                  ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body57:                                        ; preds = %do.body48
  %39 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skb, align 4
  %min_adjlen = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 41
  %41 = ptrtoint ptr %min_adjlen to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_adjlen, align 2
  %conv59 = zext i16 %42 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i358) #15
  %43 = ptrtoint ptr %tmp.i358 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv59, ptr %tmp.i358, align 4
  %call.i359 = call i32 @nla_put(ptr noundef %40, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i358) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i358) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i359)
  %tobool61.not = icmp eq i32 %call.i359, 0
  br i1 %tobool61.not, label %do.end65, label %do.body57.if.then.i.i_crit_edge

do.body57.if.then.i.i_crit_edge:                  ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.end65:                                         ; preds = %do.body57
  %44 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skb, align 4
  %tail.i.i360 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %tail.i.i360 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tail.i.i360, align 8
  %call1.i361 = call i32 @nla_put(ptr noundef %45, i32 noundef 10, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i361)
  %cmp.i362 = icmp slt i32 %call1.i361, 0
  %tobool68.not456 = icmp eq ptr %47, null
  %tobool68.not = select i1 %cmp.i362, i1 true, i1 %tobool68.not456
  br i1 %tobool68.not, label %do.end65.if.then.i.i_crit_edge, label %for.cond.preheader

do.end65.if.then.i.i_crit_edge:                   ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

for.cond.preheader:                               ; preds = %do.end65
  %tin_cnt = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 5
  %48 = ptrtoint ptr %tin_cnt to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %tin_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp454.not = icmp eq i16 %49, 0
  br i1 %cmp454.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tins = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %tin_order = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 16, i32 2, i32 0, i32 0, i32 4, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0455 = phi i32 [ 0, %for.body.lr.ph ], [ %add75, %cleanup.for.body_crit_edge ]
  %50 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tins, align 8
  %52 = ptrtoint ptr %tin_order to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tin_order, align 4
  %arrayidx = getelementptr i8, ptr %53, i32 %i.0455
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %55 to i32
  %56 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skb, align 4
  %add75 = add nuw nsw i32 %i.0455, 1
  %tail.i.i364 = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %tail.i.i364 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i.i364, align 8
  %call1.i365 = call i32 @nla_put(ptr noundef %57, i32 noundef %add75, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i365)
  %cmp.i366 = icmp slt i32 %call1.i365, 0
  %tobool77.not452 = icmp eq ptr %59, null
  %tobool77.not = select i1 %cmp.i366, i1 true, i1 %tobool77.not452
  br i1 %tobool77.not, label %for.body.if.then.i.i_crit_edge, label %do.body80

for.body.if.then.i.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body80:                                        ; preds = %for.body
  %60 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %skb, align 4
  %tin_rate_bps = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 18
  %62 = ptrtoint ptr %tin_rate_bps to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %tin_rate_bps, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i368) #15
  %64 = ptrtoint ptr %tmp.i368 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %tmp.i368, align 8
  %call.i369 = call i32 @nla_put_64bit(ptr noundef %61, i32 noundef 12, i32 noundef 8, ptr noundef nonnull %tmp.i368, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i368) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i369)
  %tobool83.not = icmp eq i32 %call.i369, 0
  br i1 %tobool83.not, label %do.body88, label %do.body80.if.then.i.i_crit_edge

do.body80.if.then.i.i_crit_edge:                  ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body88:                                        ; preds = %do.body80
  %65 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %skb, align 4
  %bytes = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 26
  %67 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %bytes, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i370) #15
  %69 = ptrtoint ptr %tmp.i370 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %tmp.i370, align 8
  %call.i371 = call i32 @nla_put_64bit(ptr noundef %66, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i370, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i370) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i371)
  %tobool91.not = icmp eq i32 %call.i371, 0
  br i1 %tobool91.not, label %do.body96, label %do.body88.if.then.i.i_crit_edge

do.body88.if.then.i.i_crit_edge:                  ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body96:                                        ; preds = %do.body88
  %70 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %skb, align 4
  %tin_backlog = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 22
  %72 = ptrtoint ptr %tin_backlog to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tin_backlog, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i372) #15
  %74 = ptrtoint ptr %tmp.i372 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %tmp.i372, align 4
  %call.i373 = call i32 @nla_put(ptr noundef %71, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i372) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i372) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i373)
  %tobool99.not = icmp eq i32 %call.i373, 0
  br i1 %tobool99.not, label %do.body104, label %do.body96.if.then.i.i_crit_edge

do.body96.if.then.i.i_crit_edge:                  ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body104:                                       ; preds = %do.body96
  %75 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %skb, align 4
  %target = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 6, i32 1
  %77 = ptrtoint ptr %target to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %target, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %78)
  %cmp8.i.i = icmp slt i64 %78, 0
  %79 = call i64 @llvm.abs.i64(i64 %78, i1 false) #15
  %80 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %79, i32 0) #20, !srcloc !75
  %asmresult.i.i.i = extractvalue { i64, i32 } %80, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %80, 1
  %81 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %79, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #20, !srcloc !76
  %asmresult10.i.i.i = extractvalue { i64, i32 } %81, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %conv108 = trunc i64 %cond213.i.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i374) #15
  %82 = ptrtoint ptr %tmp.i374 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv108, ptr %tmp.i374, align 4
  %call.i375 = call i32 @nla_put(ptr noundef %76, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %tmp.i374) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i374) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i375)
  %tobool110.not = icmp eq i32 %call.i375, 0
  br i1 %tobool110.not, label %do.body115, label %do.body104.if.then.i.i_crit_edge

do.body104.if.then.i.i_crit_edge:                 ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body115:                                       ; preds = %do.body104
  %cparams = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 6
  %83 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %skb, align 4
  %85 = ptrtoint ptr %cparams to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %cparams, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %86)
  %cmp8.i.i376 = icmp slt i64 %86, 0
  %87 = call i64 @llvm.abs.i64(i64 %86, i1 false) #15
  %88 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %87, i32 0) #20, !srcloc !75
  %asmresult.i.i.i377 = extractvalue { i64, i32 } %88, 0
  %asmresult4.i.i.i378 = extractvalue { i64, i32 } %88, 1
  %89 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %87, i64 %asmresult.i.i.i377, i32 %asmresult4.i.i.i378) #20, !srcloc !76
  %asmresult10.i.i.i379 = extractvalue { i64, i32 } %89, 0
  %tmp.0.i.i380 = lshr i64 %asmresult10.i.i.i379, 9
  %sub210.i.i381 = sub nsw i64 0, %tmp.0.i.i380
  %cond213.i.i382 = select i1 %cmp8.i.i376, i64 %sub210.i.i381, i64 %tmp.0.i.i380
  %conv120 = trunc i64 %cond213.i.i382 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i383) #15
  %90 = ptrtoint ptr %tmp.i383 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv120, ptr %tmp.i383, align 4
  %call.i384 = call i32 @nla_put(ptr noundef %84, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %tmp.i383) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i383) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i384)
  %tobool122.not = icmp eq i32 %call.i384, 0
  br i1 %tobool122.not, label %do.body127, label %do.body115.if.then.i.i_crit_edge

do.body115.if.then.i.i_crit_edge:                 ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body127:                                       ; preds = %do.body115
  %91 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %skb, align 4
  %packets = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 25
  %93 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %packets, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i385) #15
  %95 = ptrtoint ptr %tmp.i385 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %tmp.i385, align 4
  %call.i386 = call i32 @nla_put(ptr noundef %92, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i385) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i385) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i386)
  %tobool130.not = icmp eq i32 %call.i386, 0
  br i1 %tobool130.not, label %do.body135, label %do.body127.if.then.i.i_crit_edge

do.body127.if.then.i.i_crit_edge:                 ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body135:                                       ; preds = %do.body127
  %96 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %skb, align 4
  %tin_dropped = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 23
  %98 = ptrtoint ptr %tin_dropped to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tin_dropped, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i387) #15
  %100 = ptrtoint ptr %tmp.i387 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %tmp.i387, align 4
  %call.i388 = call i32 @nla_put(ptr noundef %97, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i387) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i387) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i388)
  %tobool138.not = icmp eq i32 %call.i388, 0
  br i1 %tobool138.not, label %do.body143, label %do.body135.if.then.i.i_crit_edge

do.body135.if.then.i.i_crit_edge:                 ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body143:                                       ; preds = %do.body135
  %101 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %skb, align 4
  %tin_ecn_mark = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 24
  %103 = ptrtoint ptr %tin_ecn_mark to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tin_ecn_mark, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i389) #15
  %105 = ptrtoint ptr %tmp.i389 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %tmp.i389, align 4
  %call.i390 = call i32 @nla_put(ptr noundef %102, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i389) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i389) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i390)
  %tobool146.not = icmp eq i32 %call.i390, 0
  br i1 %tobool146.not, label %do.body151, label %do.body143.if.then.i.i_crit_edge

do.body143.if.then.i.i_crit_edge:                 ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body151:                                       ; preds = %do.body143
  %106 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %skb, align 4
  %ack_drops = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 27
  %108 = ptrtoint ptr %ack_drops to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ack_drops, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i391) #15
  %110 = ptrtoint ptr %tmp.i391 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %tmp.i391, align 4
  %call.i392 = call i32 @nla_put(ptr noundef %107, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i391) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i391) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i392)
  %tobool154.not = icmp eq i32 %call.i392, 0
  br i1 %tobool154.not, label %do.body159, label %do.body151.if.then.i.i_crit_edge

do.body151.if.then.i.i_crit_edge:                 ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body159:                                       ; preds = %do.body151
  %111 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %skb, align 4
  %peak_delay = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 29
  %113 = ptrtoint ptr %peak_delay to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %peak_delay, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %114)
  %cmp8.i.i393 = icmp slt i64 %114, 0
  %115 = call i64 @llvm.abs.i64(i64 %114, i1 false) #15
  %116 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %115, i32 0) #20, !srcloc !75
  %asmresult.i.i.i394 = extractvalue { i64, i32 } %116, 0
  %asmresult4.i.i.i395 = extractvalue { i64, i32 } %116, 1
  %117 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %115, i64 %asmresult.i.i.i394, i32 %asmresult4.i.i.i395) #20, !srcloc !76
  %asmresult10.i.i.i396 = extractvalue { i64, i32 } %117, 0
  %tmp.0.i.i397 = lshr i64 %asmresult10.i.i.i396, 9
  %sub210.i.i398 = sub nsw i64 0, %tmp.0.i.i397
  %cond213.i.i399 = select i1 %cmp8.i.i393, i64 %sub210.i.i398, i64 %tmp.0.i.i397
  %conv163 = trunc i64 %cond213.i.i399 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i400) #15
  %118 = ptrtoint ptr %tmp.i400 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conv163, ptr %tmp.i400, align 4
  %call.i401 = call i32 @nla_put(ptr noundef %112, i32 noundef 18, i32 noundef 4, ptr noundef nonnull %tmp.i400) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i400) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i401)
  %tobool165.not = icmp eq i32 %call.i401, 0
  br i1 %tobool165.not, label %do.body170, label %do.body159.if.then.i.i_crit_edge

do.body159.if.then.i.i_crit_edge:                 ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body170:                                       ; preds = %do.body159
  %119 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %skb, align 4
  %avge_delay = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 28
  %121 = ptrtoint ptr %avge_delay to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %avge_delay, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %122)
  %cmp8.i.i402 = icmp slt i64 %122, 0
  %123 = call i64 @llvm.abs.i64(i64 %122, i1 false) #15
  %124 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %123, i32 0) #20, !srcloc !75
  %asmresult.i.i.i403 = extractvalue { i64, i32 } %124, 0
  %asmresult4.i.i.i404 = extractvalue { i64, i32 } %124, 1
  %125 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %123, i64 %asmresult.i.i.i403, i32 %asmresult4.i.i.i404) #20, !srcloc !76
  %asmresult10.i.i.i405 = extractvalue { i64, i32 } %125, 0
  %tmp.0.i.i406 = lshr i64 %asmresult10.i.i.i405, 9
  %sub210.i.i407 = sub nsw i64 0, %tmp.0.i.i406
  %cond213.i.i408 = select i1 %cmp8.i.i402, i64 %sub210.i.i407, i64 %tmp.0.i.i406
  %conv174 = trunc i64 %cond213.i.i408 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i409) #15
  %126 = ptrtoint ptr %tmp.i409 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %conv174, ptr %tmp.i409, align 4
  %call.i410 = call i32 @nla_put(ptr noundef %120, i32 noundef 19, i32 noundef 4, ptr noundef nonnull %tmp.i409) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i409) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i410)
  %tobool176.not = icmp eq i32 %call.i410, 0
  br i1 %tobool176.not, label %do.body181, label %do.body170.if.then.i.i_crit_edge

do.body170.if.then.i.i_crit_edge:                 ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body181:                                       ; preds = %do.body170
  %127 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %skb, align 4
  %base_delay = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 30
  %129 = ptrtoint ptr %base_delay to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %base_delay, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %130)
  %cmp8.i.i411 = icmp slt i64 %130, 0
  %131 = call i64 @llvm.abs.i64(i64 %130, i1 false) #15
  %132 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %131, i32 0) #20, !srcloc !75
  %asmresult.i.i.i412 = extractvalue { i64, i32 } %132, 0
  %asmresult4.i.i.i413 = extractvalue { i64, i32 } %132, 1
  %133 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %131, i64 %asmresult.i.i.i412, i32 %asmresult4.i.i.i413) #20, !srcloc !76
  %asmresult10.i.i.i414 = extractvalue { i64, i32 } %133, 0
  %tmp.0.i.i415 = lshr i64 %asmresult10.i.i.i414, 9
  %sub210.i.i416 = sub nsw i64 0, %tmp.0.i.i415
  %cond213.i.i417 = select i1 %cmp8.i.i411, i64 %sub210.i.i416, i64 %tmp.0.i.i415
  %conv185 = trunc i64 %cond213.i.i417 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i418) #15
  %134 = ptrtoint ptr %tmp.i418 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv185, ptr %tmp.i418, align 4
  %call.i419 = call i32 @nla_put(ptr noundef %128, i32 noundef 20, i32 noundef 4, ptr noundef nonnull %tmp.i418) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i418) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i419)
  %tobool187.not = icmp eq i32 %call.i419, 0
  br i1 %tobool187.not, label %do.body192, label %do.body181.if.then.i.i_crit_edge

do.body181.if.then.i.i_crit_edge:                 ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body192:                                       ; preds = %do.body181
  %135 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %skb, align 4
  %way_hits = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 32
  %137 = ptrtoint ptr %way_hits to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %way_hits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i420) #15
  %139 = ptrtoint ptr %tmp.i420 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %tmp.i420, align 4
  %call.i421 = call i32 @nla_put(ptr noundef %136, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i420) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i420) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i421)
  %tobool195.not = icmp eq i32 %call.i421, 0
  br i1 %tobool195.not, label %do.body200, label %do.body192.if.then.i.i_crit_edge

do.body192.if.then.i.i_crit_edge:                 ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body200:                                       ; preds = %do.body192
  %140 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %skb, align 4
  %way_misses = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 33
  %142 = ptrtoint ptr %way_misses to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %way_misses, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i422) #15
  %144 = ptrtoint ptr %tmp.i422 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %tmp.i422, align 4
  %call.i423 = call i32 @nla_put(ptr noundef %141, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %tmp.i422) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i422) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i423)
  %tobool203.not = icmp eq i32 %call.i423, 0
  br i1 %tobool203.not, label %do.body208, label %do.body200.if.then.i.i_crit_edge

do.body200.if.then.i.i_crit_edge:                 ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body208:                                       ; preds = %do.body200
  %145 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %skb, align 4
  %way_collisions = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 34
  %147 = ptrtoint ptr %way_collisions to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %way_collisions, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i424) #15
  %149 = ptrtoint ptr %tmp.i424 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %tmp.i424, align 4
  %call.i425 = call i32 @nla_put(ptr noundef %146, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %tmp.i424) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i424) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i425)
  %tobool211.not = icmp eq i32 %call.i425, 0
  br i1 %tobool211.not, label %do.body216, label %do.body208.if.then.i.i_crit_edge

do.body208.if.then.i.i_crit_edge:                 ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body216:                                       ; preds = %do.body208
  %150 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %skb, align 4
  %sparse_flow_count = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 9
  %152 = ptrtoint ptr %sparse_flow_count to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %sparse_flow_count, align 2
  %conv218 = zext i16 %153 to i32
  %decaying_flow_count = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 10
  %154 = ptrtoint ptr %decaying_flow_count to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %decaying_flow_count, align 8
  %conv219 = zext i16 %155 to i32
  %add220 = add nuw nsw i32 %conv219, %conv218
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i426) #15
  %156 = ptrtoint ptr %tmp.i426 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %add220, ptr %tmp.i426, align 4
  %call.i427 = call i32 @nla_put(ptr noundef %151, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %tmp.i426) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i426) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i427)
  %tobool222.not = icmp eq i32 %call.i427, 0
  br i1 %tobool222.not, label %do.body227, label %do.body216.if.then.i.i_crit_edge

do.body216.if.then.i.i_crit_edge:                 ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body227:                                       ; preds = %do.body216
  %157 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %skb, align 4
  %bulk_flow_count = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 8
  %159 = ptrtoint ptr %bulk_flow_count to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %bulk_flow_count, align 4
  %conv229 = zext i16 %160 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i428) #15
  %161 = ptrtoint ptr %tmp.i428 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %conv229, ptr %tmp.i428, align 4
  %call.i429 = call i32 @nla_put(ptr noundef %158, i32 noundef 22, i32 noundef 4, ptr noundef nonnull %tmp.i428) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i428) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i429)
  %tobool231.not = icmp eq i32 %call.i429, 0
  br i1 %tobool231.not, label %do.body236, label %do.body227.if.then.i.i_crit_edge

do.body227.if.then.i.i_crit_edge:                 ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body236:                                       ; preds = %do.body227
  %162 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %skb, align 4
  %unresponsive_flow_count = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 11
  %164 = ptrtoint ptr %unresponsive_flow_count to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %unresponsive_flow_count, align 2
  %conv238 = zext i16 %165 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i430) #15
  %166 = ptrtoint ptr %tmp.i430 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %conv238, ptr %tmp.i430, align 4
  %call.i431 = call i32 @nla_put(ptr noundef %163, i32 noundef 23, i32 noundef 4, ptr noundef nonnull %tmp.i430) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i430) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i431)
  %tobool240.not = icmp eq i32 %call.i431, 0
  br i1 %tobool240.not, label %do.body245, label %do.body236.if.then.i.i_crit_edge

do.body236.if.then.i.i_crit_edge:                 ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body245:                                       ; preds = %do.body236
  %167 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %skb, align 4
  %max_skblen = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 12
  %169 = ptrtoint ptr %max_skblen to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %max_skblen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i432) #15
  %171 = ptrtoint ptr %tmp.i432 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %tmp.i432, align 4
  %call.i433 = call i32 @nla_put(ptr noundef %168, i32 noundef 24, i32 noundef 4, ptr noundef nonnull %tmp.i432) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i432) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i433)
  %tobool248.not = icmp eq i32 %call.i433, 0
  br i1 %tobool248.not, label %do.body253, label %do.body245.if.then.i.i_crit_edge

do.body245.if.then.i.i_crit_edge:                 ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body253:                                       ; preds = %do.body245
  %172 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %skb, align 4
  %flow_quantum = getelementptr %struct.cake_tin_data, ptr %51, i32 %idxprom, i32 5
  %174 = ptrtoint ptr %flow_quantum to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %flow_quantum, align 8
  %conv255 = zext i16 %175 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i434) #15
  %176 = ptrtoint ptr %tmp.i434 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %conv255, ptr %tmp.i434, align 4
  %call.i435 = call i32 @nla_put(ptr noundef %173, i32 noundef 25, i32 noundef 4, ptr noundef nonnull %tmp.i434) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i434) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i435)
  %tobool257.not = icmp eq i32 %call.i435, 0
  br i1 %tobool257.not, label %cleanup, label %do.body253.if.then.i.i_crit_edge

do.body253.if.then.i.i_crit_edge:                 ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

cleanup:                                          ; preds = %do.body253
  %177 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %skb, align 4
  %tail.i.i436 = getelementptr inbounds %struct.sk_buff, ptr %178, i32 0, i32 16
  %179 = ptrtoint ptr %tail.i.i436 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %tail.i.i436, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %180 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %181 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %conv.i, ptr %59, align 2
  %182 = ptrtoint ptr %tin_cnt to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %tin_cnt, align 2
  %conv71 = zext i16 %183 to i32
  %cmp = icmp ult i32 %add75, %conv71
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %184 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %skb, align 4
  %tail.i.i437 = getelementptr inbounds %struct.sk_buff, ptr %185, i32 0, i32 16
  %186 = ptrtoint ptr %tail.i.i437 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %tail.i.i437, align 8
  %sub.ptr.lhs.cast.i438 = ptrtoint ptr %187 to i32
  %sub.ptr.rhs.cast.i439 = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i440 = sub i32 %sub.ptr.lhs.cast.i438, %sub.ptr.rhs.cast.i439
  %conv.i441 = trunc i32 %sub.ptr.sub.i440 to i16
  %188 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %conv.i441, ptr %47, align 2
  %189 = load ptr, ptr %skb, align 4
  %tail.i.i443 = getelementptr inbounds %struct.sk_buff, ptr %189, i32 0, i32 16
  %190 = ptrtoint ptr %tail.i.i443 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %tail.i.i443, align 8
  %sub.ptr.lhs.cast.i444 = ptrtoint ptr %191 to i32
  %sub.ptr.rhs.cast.i445 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i446 = sub i32 %sub.ptr.lhs.cast.i444, %sub.ptr.rhs.cast.i445
  %conv.i447 = trunc i32 %sub.ptr.sub.i446 to i16
  %192 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %conv.i447, ptr %3, align 2
  %len.i448 = getelementptr inbounds %struct.sk_buff, ptr %189, i32 0, i32 6
  %193 = ptrtoint ptr %len.i448 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %len.i448, align 4
  br label %cleanup269

if.then.i.i:                                      ; preds = %do.body253.if.then.i.i_crit_edge, %do.body245.if.then.i.i_crit_edge, %do.body236.if.then.i.i_crit_edge, %do.body227.if.then.i.i_crit_edge, %do.body216.if.then.i.i_crit_edge, %do.body208.if.then.i.i_crit_edge, %do.body200.if.then.i.i_crit_edge, %do.body192.if.then.i.i_crit_edge, %do.body181.if.then.i.i_crit_edge, %do.body170.if.then.i.i_crit_edge, %do.body159.if.then.i.i_crit_edge, %do.body151.if.then.i.i_crit_edge, %do.body143.if.then.i.i_crit_edge, %do.body135.if.then.i.i_crit_edge, %do.body127.if.then.i.i_crit_edge, %do.body115.if.then.i.i_crit_edge, %do.body104.if.then.i.i_crit_edge, %do.body96.if.then.i.i_crit_edge, %do.body88.if.then.i.i_crit_edge, %do.body80.if.then.i.i_crit_edge, %for.body.if.then.i.i_crit_edge, %do.end65.if.then.i.i_crit_edge, %do.body57.if.then.i.i_crit_edge, %do.body48.if.then.i.i_crit_edge, %do.body39.if.then.i.i_crit_edge, %do.body31.if.then.i.i_crit_edge, %do.body23.if.then.i.i_crit_edge, %do.body15.if.then.i.i_crit_edge, %do.body7.if.then.i.i_crit_edge, %do.body.if.then.i.i_crit_edge
  %195 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %skb, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %196, i32 0, i32 19
  %197 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %198, %3
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !66

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #15
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %199 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %200 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %196, i32 noundef %sub.ptr.sub.i.i) #15
  br label %cleanup269

cleanup269:                                       ; preds = %nla_nest_cancel.exit, %for.end, %entry.cleanup269_crit_edge
  %retval.0 = phi i32 [ -1, %nla_nest_cancel.exit ], [ %194, %for.end ], [ -1, %entry.cleanup269_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @cake_leaf(ptr nocapture noundef readnone %sch, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cake_find(ptr nocapture noundef readnone %sch, i32 noundef %classid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cake_walk(ptr noundef %sch, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tin_cnt = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 5
  %2 = ptrtoint ptr %tin_cnt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tin_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp50.not = icmp eq i16 %3, 0
  br i1 %cmp50.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tins = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %tin_order = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 16, i32 2, i32 0, i32 0, i32 4, i32 7
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc26, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tins, align 8
  %6 = ptrtoint ptr %tin_order to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tin_order, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 %i.051
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %9 to i32
  %arrayidx2 = getelementptr %struct.cake_tin_data, ptr %5, i32 %idxprom
  %mul = shl i32 %i.051, 10
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body
  %j.046 = phi i32 [ 0, %for.body ], [ %inc24.pre-phi, %for.inc.for.body6_crit_edge ]
  %arrayidx7 = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx2, i32 0, i32 %j.046
  %flowchain = getelementptr inbounds %struct.cake_flow, ptr %arrayidx7, i32 0, i32 2
  %10 = ptrtoint ptr %flowchain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %flowchain, align 4
  %cmp.i.not = icmp eq ptr %11, %flowchain
  br i1 %cmp.i.not, label %for.body6.if.then12_crit_edge, label %lor.lhs.false

for.body6.if.then12_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

lor.lhs.false:                                    ; preds = %for.body6
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  %14 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp10 = icmp slt i32 %13, %15
  br i1 %cmp10, label %lor.lhs.false.if.then12_crit_edge, label %if.end14

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %for.body6.if.then12_crit_edge
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %count, align 4
  %.pre = add nuw nsw i32 %j.046, 1
  br label %for.inc

if.end14:                                         ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fn, align 4
  %add = add nuw nsw i32 %j.046, 1
  %add15 = add nuw nsw i32 %add, %mul
  %call16 = tail call i32 %19(ptr noundef %sch, i32 noundef %add15, ptr noundef %arg) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %arg, align 4
  br label %for.end

if.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count, align 4
  %inc23 = add i32 %22, 1
  store i32 %inc23, ptr %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %if.then12
  %inc24.pre-phi = phi i32 [ %add, %if.end21 ], [ %.pre, %if.then12 ]
  %exitcond.not = icmp eq i32 %inc24.pre-phi, 1024
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body6

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then19
  %inc26 = add nuw nsw i32 %i.051, 1
  %23 = ptrtoint ptr %tin_cnt to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tin_cnt, align 2
  %conv = zext i16 %24 to i32
  %cmp = icmp ult i32 %inc26, %conv
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @cake_tcf_block(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cl)
  %tobool.not = icmp eq i32 %cl, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cake_bind(ptr nocapture noundef readnone %sch, i32 noundef %parent, i32 noundef %classid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cake_unbind(ptr nocapture noundef %q, i32 noundef %cl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cake_dump_class(ptr nocapture noundef readnone %sch, i32 noundef %cl, ptr nocapture noundef readnone %skb, ptr nocapture noundef %tcm) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %cl, 65535
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %0 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tcm_handle, align 4
  %or = or i32 %1, %and
  store i32 %or, ptr %tcm_handle, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cake_dump_class_stats(ptr noundef %sch, i32 noundef %cl, ptr noundef %d) #2 align 64 {
entry:
  %tmp.i165 = alloca i32, align 4
  %tmp.i156 = alloca i32, align 4
  %tmp.i154 = alloca i32, align 4
  %tmp.i152 = alloca i32, align 4
  %tmp.i150 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %qs = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qs) #15
  %0 = call ptr @memset(ptr %qs, i32 0, i32 20)
  %sub = add i32 %cl, -1
  %tin_cnt = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 5
  %1 = ptrtoint ptr %tin_cnt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tin_cnt, align 2
  %conv = zext i16 %2 to i32
  %mul = shl nuw nsw i32 %conv, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %mul)
  %cmp = icmp ult i32 %sub, %mul
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then:                                          ; preds = %entry
  %tins = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %3 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tins, align 8
  %tin_order = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 16, i32 2, i32 0, i32 0, i32 4, i32 7
  %5 = ptrtoint ptr %tin_order to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tin_order, align 4
  %div136 = lshr i32 %sub, 10
  %arrayidx = getelementptr i8, ptr %6, i32 %div136
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %8 to i32
  %arrayidx2 = getelementptr %struct.cake_tin_data, ptr %4, i32 %idxprom
  %rem = and i32 %sub, 1023
  %arrayidx3 = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx2, i32 0, i32 %rem
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then4:                                         ; preds = %if.then
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then4.sch_tree_lock.exit_crit_edge

if.then4.sch_tree_lock.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.then4
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %13 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = tail call i32 @rtnl_is_locked() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !65

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #15
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.then4.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.then4.sch_tree_lock.exit_crit_edge ], [ %16, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %16, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %16, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #15
  %17 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %skb.0175 = load ptr, ptr %arrayidx3, align 8
  %tobool6.not176 = icmp eq ptr %skb.0175, null
  br i1 %tobool6.not176, label %sch_tree_lock.exit.while.end_crit_edge, label %sch_tree_lock.exit.while.body_crit_edge

sch_tree_lock.exit.while.body_crit_edge:          ; preds = %sch_tree_lock.exit
  br label %while.body

sch_tree_lock.exit.while.end_crit_edge:           ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %sch_tree_lock.exit.while.body_crit_edge
  %skb.0177 = phi ptr [ %skb.0, %while.body.while.body_crit_edge ], [ %skb.0175, %sch_tree_lock.exit.while.body_crit_edge ]
  %18 = ptrtoint ptr %qs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qs, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %qs, align 4
  %20 = ptrtoint ptr %skb.0177 to i32
  call void @__asan_load4_noabort(i32 %20)
  %skb.0 = load ptr, ptr %skb.0177, align 8
  %tobool6.not = icmp eq ptr %skb.0, null
  br i1 %tobool6.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %sch_tree_lock.exit.while.end_crit_edge
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 8
  %and.i138 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool.not.i139 = icmp eq i32 %and.i138, 0
  br i1 %tobool.not.i139, label %if.else.i144, label %while.end.sch_tree_unlock.exit_crit_edge

while.end.sch_tree_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sch_tree_unlock.exit

if.else.i144:                                     ; preds = %while.end
  %dev_queue.i.i.i140 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %23 = ptrtoint ptr %dev_queue.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_queue.i.i.i140, align 8
  %qdisc_sleeping.i.i.i141 = getelementptr inbounds %struct.netdev_queue, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %qdisc_sleeping.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qdisc_sleeping.i.i.i141, align 4
  %call1.i.i142 = tail call i32 @rtnl_is_locked() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i142)
  %tobool.not.i.i143 = icmp eq i32 %call1.i.i142, 0
  br i1 %tobool.not.i.i143, label %land.rhs.i.i146, label %if.else.i144.sch_tree_unlock.exit_crit_edge

if.else.i144.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i144
  call void @__sanitizer_cov_trace_pc() #17
  br label %sch_tree_unlock.exit

land.rhs.i.i146:                                  ; preds = %if.else.i144
  %.b41.i.i145 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i145, label %land.rhs.i.i146.sch_tree_unlock.exit_crit_edge, label %if.then.i.i147, !prof !65

land.rhs.i.i146.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i146
  call void @__sanitizer_cov_trace_pc() #17
  br label %sch_tree_unlock.exit

if.then.i.i147:                                   ; preds = %land.rhs.i.i146
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #15
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i147, %land.rhs.i.i146.sch_tree_unlock.exit_crit_edge, %if.else.i144.sch_tree_unlock.exit_crit_edge, %while.end.sch_tree_unlock.exit_crit_edge
  %.sink.i148 = phi ptr [ %sch, %while.end.sch_tree_unlock.exit_crit_edge ], [ %26, %if.else.i144.sch_tree_unlock.exit_crit_edge ], [ %26, %land.rhs.i.i146.sch_tree_unlock.exit_crit_edge ], [ %26, %if.then.i.i147 ]
  %lock.i.i.i149 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i148, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i149) #15
  br label %if.end

if.end:                                           ; preds = %sch_tree_unlock.exit, %if.then.if.end_crit_edge
  %arrayidx8 = getelementptr %struct.cake_tin_data, ptr %4, i32 %idxprom, i32 1, i32 %rem
  %27 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx8, align 4
  %backlog = getelementptr inbounds %struct.gnet_stats_queue, ptr %qs, i32 0, i32 1
  %29 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %backlog, align 4
  %dropped = getelementptr inbounds %struct.cake_flow, ptr %arrayidx3, i32 0, i32 4
  %30 = ptrtoint ptr %dropped to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dropped, align 4
  %drops = getelementptr inbounds %struct.gnet_stats_queue, ptr %qs, i32 0, i32 2
  %32 = ptrtoint ptr %drops to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %drops, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %flow.0 = phi ptr [ %arrayidx3, %if.end ], [ null, %entry.if.end9_crit_edge ]
  %33 = ptrtoint ptr %qs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qs, align 4
  %call11 = call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef null, ptr noundef nonnull %qs, i32 noundef %34) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end9.cleanup99_crit_edge, label %if.end15

if.end9.cleanup99_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup99

if.end15:                                         ; preds = %if.end9
  %tobool16.not = icmp eq ptr %flow.0, null
  br i1 %tobool16.not, label %if.end15.cleanup99_crit_edge, label %if.then17

if.end15.cleanup99_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup99

if.then17:                                        ; preds = %if.end15
  %call18 = call i64 @ktime_get() #15
  %skb19 = getelementptr inbounds %struct.gnet_dump, ptr %d, i32 0, i32 1
  %35 = ptrtoint ptr %skb19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %skb19, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 16
  %37 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %36, i32 noundef 4, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool21.not174 = icmp eq ptr %38, null
  %tobool21.not = select i1 %cmp.i, i1 true, i1 %tobool21.not174
  br i1 %tobool21.not, label %if.then17.cleanup.thread172_crit_edge, label %do.body

if.then17.cleanup.thread172_crit_edge:            ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread172

do.body:                                          ; preds = %if.then17
  %39 = ptrtoint ptr %skb19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skb19, align 4
  %deficit = getelementptr inbounds %struct.cake_flow, ptr %flow.0, i32 0, i32 3
  %41 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %deficit, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #15
  %43 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %40, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not = icmp eq i32 %call.i, 0
  br i1 %tobool26.not, label %do.body29, label %do.body.if.then.i.i169_crit_edge

do.body.if.then.i.i169_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i169

do.body29:                                        ; preds = %do.body
  %44 = ptrtoint ptr %skb19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skb19, align 4
  %dropping = getelementptr inbounds %struct.cake_flow, ptr %flow.0, i32 0, i32 5, i32 5
  %46 = ptrtoint ptr %dropping to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dropping, align 4, !range !67
  %48 = zext i8 %47 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i150) #15
  %49 = ptrtoint ptr %tmp.i150 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %tmp.i150, align 4
  %call.i151 = call i32 @nla_put(ptr noundef %45, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %tmp.i150) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i150) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool34.not = icmp eq i32 %call.i151, 0
  br i1 %tobool34.not, label %do.body39, label %do.body29.if.then.i.i169_crit_edge

do.body29.if.then.i.i169_crit_edge:               ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i169

do.body39:                                        ; preds = %do.body29
  %cvars = getelementptr inbounds %struct.cake_flow, ptr %flow.0, i32 0, i32 5
  %50 = ptrtoint ptr %skb19 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skb19, align 4
  %52 = ptrtoint ptr %cvars to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cvars, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i152) #15
  %54 = ptrtoint ptr %tmp.i152 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %tmp.i152, align 4
  %call.i153 = call i32 @nla_put(ptr noundef %51, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i152) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i152) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool43.not = icmp eq i32 %call.i153, 0
  br i1 %tobool43.not, label %do.body48, label %do.body39.if.then.i.i169_crit_edge

do.body39.if.then.i.i169_crit_edge:               ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i169

do.body48:                                        ; preds = %do.body39
  %55 = ptrtoint ptr %skb19 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skb19, align 4
  %p_drop = getelementptr inbounds %struct.cake_flow, ptr %flow.0, i32 0, i32 5, i32 4
  %57 = ptrtoint ptr %p_drop to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %p_drop, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i154) #15
  %59 = ptrtoint ptr %tmp.i154 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %tmp.i154, align 4
  %call.i155 = call i32 @nla_put(ptr noundef %56, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i154) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i154) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool52.not = icmp eq i32 %call.i155, 0
  br i1 %tobool52.not, label %do.end56, label %do.body48.if.then.i.i169_crit_edge

do.body48.if.then.i.i169_crit_edge:               ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i169

do.end56:                                         ; preds = %do.body48
  %60 = ptrtoint ptr %p_drop to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %p_drop, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool59.not = icmp eq i32 %61, 0
  br i1 %tobool59.not, label %do.end56.if.end73_crit_edge, label %do.body61

do.end56.if.end73_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

do.body61:                                        ; preds = %do.end56
  %62 = ptrtoint ptr %skb19 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skb19, align 4
  %blue_timer = getelementptr inbounds %struct.cake_flow, ptr %flow.0, i32 0, i32 5, i32 3
  %64 = ptrtoint ptr %blue_timer to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %blue_timer, align 8
  %sub64 = sub i64 %call18, %65
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub64)
  %cmp8.i.i = icmp slt i64 %sub64, 0
  %66 = call i64 @llvm.abs.i64(i64 %sub64, i1 false) #15
  %67 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %66, i32 0) #20, !srcloc !75
  %asmresult.i.i.i = extractvalue { i64, i32 } %67, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %67, 1
  %68 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %66, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #20, !srcloc !76
  %asmresult10.i.i.i = extractvalue { i64, i32 } %68, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %conv66 = trunc i64 %cond213.i.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i156) #15
  %69 = ptrtoint ptr %tmp.i156 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv66, ptr %tmp.i156, align 4
  %call.i157 = call i32 @nla_put(ptr noundef %63, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %tmp.i156) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i156) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool68.not = icmp eq i32 %call.i157, 0
  br i1 %tobool68.not, label %do.body61.if.end73_crit_edge, label %do.body61.if.then.i.i169_crit_edge

do.body61.if.then.i.i169_crit_edge:               ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i169

do.body61.if.end73_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

if.end73:                                         ; preds = %do.body61.if.end73_crit_edge, %do.end56.if.end73_crit_edge
  %70 = ptrtoint ptr %dropping to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %dropping, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool76.not = icmp eq i8 %71, 0
  br i1 %tobool76.not, label %if.end73.if.end90_crit_edge, label %do.body78

if.end73.if.end90_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end90

do.body78:                                        ; preds = %if.end73
  %72 = ptrtoint ptr %skb19 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %skb19, align 4
  %drop_next = getelementptr inbounds %struct.cake_flow, ptr %flow.0, i32 0, i32 5, i32 2
  %74 = ptrtoint ptr %drop_next to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %drop_next, align 8
  %sub81 = sub i64 %call18, %75
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub81)
  %cmp8.i.i158 = icmp slt i64 %sub81, 0
  %76 = call i64 @llvm.abs.i64(i64 %sub81, i1 false) #15
  %77 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %76, i32 0) #20, !srcloc !75
  %asmresult.i.i.i159 = extractvalue { i64, i32 } %77, 0
  %asmresult4.i.i.i160 = extractvalue { i64, i32 } %77, 1
  %78 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %76, i64 %asmresult.i.i.i159, i32 %asmresult4.i.i.i160) #20, !srcloc !76
  %asmresult10.i.i.i161 = extractvalue { i64, i32 } %78, 0
  %tmp.0.i.i162 = lshr i64 %asmresult10.i.i.i161, 9
  %sub210.i.i163 = sub nsw i64 0, %tmp.0.i.i162
  %cond213.i.i164 = select i1 %cmp8.i.i158, i64 %sub210.i.i163, i64 %tmp.0.i.i162
  %conv83 = trunc i64 %cond213.i.i164 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i165) #15
  %79 = ptrtoint ptr %tmp.i165 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv83, ptr %tmp.i165, align 4
  %call.i166 = call i32 @nla_put(ptr noundef %73, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %tmp.i165) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i165) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool85.not = icmp eq i32 %call.i166, 0
  br i1 %tobool85.not, label %do.body78.if.end90_crit_edge, label %do.body78.if.then.i.i169_crit_edge

do.body78.if.then.i.i169_crit_edge:               ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i169

do.body78.if.end90_crit_edge:                     ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end90

if.end90:                                         ; preds = %do.body78.if.end90_crit_edge, %if.end73.if.end90_crit_edge
  %80 = ptrtoint ptr %skb19 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %skb19, align 4
  %tail.i.i167 = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 16
  %82 = ptrtoint ptr %tail.i.i167 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tail.i.i167, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %83 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %84 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.i, ptr %38, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 6
  %85 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp93 = icmp slt i32 %86, 0
  br i1 %cmp93, label %if.end90.cleanup.thread172_crit_edge, label %if.end90.cleanup99_crit_edge

if.end90.cleanup99_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup99

if.end90.cleanup.thread172_crit_edge:             ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread172

cleanup.thread172:                                ; preds = %if.end90.cleanup.thread172_crit_edge, %if.then17.cleanup.thread172_crit_edge
  br label %cleanup99

if.then.i.i169:                                   ; preds = %do.body78.if.then.i.i169_crit_edge, %do.body61.if.then.i.i169_crit_edge, %do.body48.if.then.i.i169_crit_edge, %do.body39.if.then.i.i169_crit_edge, %do.body29.if.then.i.i169_crit_edge, %do.body.if.then.i.i169_crit_edge
  %87 = ptrtoint ptr %skb19 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %skb19, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 19
  %89 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %90, %38
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i169.nla_nest_cancel.exit_crit_edge, !prof !66

if.then.i.i169.nla_nest_cancel.exit_crit_edge:    ; preds = %if.then.i.i169
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i169
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #15
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i169.nla_nest_cancel.exit_crit_edge
  %91 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %92 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %88, i32 noundef %sub.ptr.sub.i.i) #15
  br label %cleanup99

cleanup99:                                        ; preds = %nla_nest_cancel.exit, %cleanup.thread172, %if.end90.cleanup99_crit_edge, %if.end15.cleanup99_crit_edge, %if.end9.cleanup99_crit_edge
  %retval.1 = phi i32 [ -1, %nla_nest_cancel.exit ], [ -1, %if.end9.cleanup99_crit_edge ], [ -1, %cleanup.thread172 ], [ 0, %if.end90.cleanup99_crit_edge ], [ 0, %if.end15.cleanup99_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qs) #15
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @netif_skb_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cake_overhead(ptr noundef %q, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  %_tcphdr = alloca %struct.tcphdr, align 4
  %_udphdr = alloca %struct.udphdr, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %8 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cb.i.i, align 4
  %avg_netoff = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 37
  %10 = ptrtoint ptr %avg_netoff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %avg_netoff, align 8
  %shr.i = lshr i32 %11, 8
  %sub.i = sub i32 %11, %shr.i
  %12 = shl i32 %sub.ptr.sub.i, 8
  %13 = and i32 %12, 16776960
  %add.i = add i32 %sub.i, %13
  store i32 %add.i, ptr %avg_netoff, align 8
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %gso_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rate_flags.i = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 17
  %16 = ptrtoint ptr %rate_flags.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rate_flags.i, align 8
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i = icmp eq i16 %18, 0
  %sub.i103 = select i1 %tobool.not.i, i32 0, i32 %sub.ptr.sub.i
  %spec.select.i = sub i32 %9, %sub.i103
  %max_netlen.i = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 38
  %19 = ptrtoint ptr %max_netlen.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max_netlen.i, align 4
  %conv1.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %conv1.i)
  %cmp.i = icmp ugt i32 %spec.select.i, %conv1.i
  br i1 %cmp.i, label %if.then3.i, label %if.then.if.end6.i_crit_edge

if.then.if.end6.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %conv4.i = trunc i32 %spec.select.i to i16
  %21 = ptrtoint ptr %max_netlen.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv4.i, ptr %max_netlen.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.then.if.end6.i_crit_edge
  %min_netlen.i = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 40
  %22 = ptrtoint ptr %min_netlen.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %min_netlen.i, align 8
  %conv7.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %conv7.i)
  %cmp8.i = icmp ult i32 %spec.select.i, %conv7.i
  br i1 %cmp8.i, label %if.then10.i, label %if.end6.i.if.end13.i_crit_edge

if.end6.i.if.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv11.i = trunc i32 %spec.select.i to i16
  %24 = ptrtoint ptr %min_netlen.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv11.i, ptr %min_netlen.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end6.i.if.end13.i_crit_edge
  %rate_overhead.i = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 18
  %25 = ptrtoint ptr %rate_overhead.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rate_overhead.i, align 2
  %conv14.i = sext i16 %26 to i32
  %add.i104 = add i32 %spec.select.i, %conv14.i
  %rate_mpu.i = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 19
  %27 = ptrtoint ptr %rate_mpu.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %rate_mpu.i, align 4
  %conv15.i = zext i16 %28 to i32
  %29 = tail call i32 @llvm.umax.i32(i32 %add.i104, i32 %conv15.i) #15
  %atm_mode.i = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 9
  %30 = ptrtoint ptr %atm_mode.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %atm_mode.i, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %31, label %if.end13.i.if.end36.i_crit_edge [
    i8 1, label %if.then25.i
    i8 2, label %if.then31.i
  ]

if.end13.i.if.end36.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i

if.then25.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  %add26.i = add i32 %29, 47
  %div.i = udiv i32 %add26.i, 48
  %mul.i = mul i32 %div.i, 53
  br label %if.end36.i

if.then31.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  %add32.i = add i32 %29, 63
  %div3380.i = lshr i32 %add32.i, 6
  %add34.i = add i32 %div3380.i, %29
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then31.i, %if.then25.i, %if.end13.i.if.end36.i_crit_edge
  %len.addr.2.i = phi i32 [ %mul.i, %if.then25.i ], [ %add34.i, %if.then31.i ], [ %29, %if.end13.i.if.end36.i_crit_edge ]
  %max_adjlen.i = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 39
  %33 = ptrtoint ptr %max_adjlen.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %max_adjlen.i, align 2
  %conv37.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.2.i, i32 %conv37.i)
  %cmp38.i = icmp ugt i32 %len.addr.2.i, %conv37.i
  br i1 %cmp38.i, label %if.then40.i, label %if.end36.i.if.end43.i_crit_edge

if.end36.i.if.end43.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43.i

if.then40.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv41.i = trunc i32 %len.addr.2.i to i16
  %35 = ptrtoint ptr %max_adjlen.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv41.i, ptr %max_adjlen.i, align 2
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then40.i, %if.end36.i.if.end43.i_crit_edge
  %min_adjlen.i = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 41
  %36 = ptrtoint ptr %min_adjlen.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %min_adjlen.i, align 2
  %conv44.i = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.2.i, i32 %conv44.i)
  %cmp45.i = icmp ult i32 %len.addr.2.i, %conv44.i
  br i1 %cmp45.i, label %if.then47.i, label %if.end43.i.cleanup_crit_edge

if.end43.i.cleanup_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv48.i = trunc i32 %len.addr.2.i to i16
  %38 = ptrtoint ptr %min_adjlen.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv48.i, ptr %min_adjlen.i, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %39 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %41 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %42 to i32
  %add.ptr.i = getelementptr i8, ptr %40, i32 %conv.i
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %43 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %mac_header.i, align 2
  %conv.i106 = zext i16 %44 to i32
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i to i32
  %gepdiff = sub nsw i32 %conv.i, %conv.i106
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 8
  %45 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %gso_type, align 8
  %and = and i32 %46, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.else, label %if.then13, !prof !66

if.then13:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcphdr) #15
  %47 = call ptr @memset(ptr %_tcphdr, i32 255, i32 20)
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i, align 4
  %sub.ptr.rhs.cast.i113 = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i114 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.i113
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %50 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %52 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data_len.i.i, align 8
  %54 = add i32 %sub.ptr.sub.i114, %53
  %sub.i4.i = sub i32 %51, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !66

if.end.i.i:                                       ; preds = %if.then13
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end25_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.end25_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i114, ptr noundef nonnull %_tcphdr, i32 noundef 20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.end25_crit_edge, label %lor.lhs.false.i.i.if.then23_crit_edge

lor.lhs.false.i.i.if.then23_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23

lor.lhs.false.i.i.if.end25_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

skb_header_pointer.exit:                          ; preds = %if.then13
  %add.ptr.i.i116 = getelementptr i8, ptr %49, i32 %sub.ptr.sub.i114
  %tobool16.not = icmp eq ptr %add.ptr.i.i116, null
  br i1 %tobool16.not, label %skb_header_pointer.exit.if.end25_crit_edge, label %skb_header_pointer.exit.if.then23_crit_edge, !prof !66

skb_header_pointer.exit.if.then23_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23

skb_header_pointer.exit.if.end25_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then23:                                        ; preds = %skb_header_pointer.exit.if.then23_crit_edge, %lor.lhs.false.i.i.if.then23_crit_edge
  %retval.0.i.i219 = phi ptr [ %add.ptr.i.i116, %skb_header_pointer.exit.if.then23_crit_edge ], [ %_tcphdr, %lor.lhs.false.i.i.if.then23_crit_edge ]
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i219, i32 0, i32 4
  %55 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %56 = lshr i16 %bf.load.i, 10
  %57 = and i16 %56, 60
  %mul.i117 = zext i16 %57 to i32
  %add = add nsw i32 %gepdiff, %mul.i117
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %skb_header_pointer.exit.if.end25_crit_edge, %lor.lhs.false.i.i.if.end25_crit_edge, %if.end.i.i.if.end25_crit_edge
  %hdr_len.0 = phi i32 [ %add, %if.then23 ], [ %gepdiff, %skb_header_pointer.exit.if.end25_crit_edge ], [ %gepdiff, %if.end.i.i.if.end25_crit_edge ], [ %gepdiff, %lor.lhs.false.i.i.if.end25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcphdr) #15
  br label %if.end32

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_udphdr) #15
  %58 = ptrtoint ptr %_udphdr to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 -1, ptr %_udphdr, align 8
  %59 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i, align 4
  %sub.ptr.rhs.cast.i124 = ptrtoint ptr %60 to i32
  %sub.ptr.sub.i125 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.i124
  %call27 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %sub.ptr.sub.i125, i32 noundef 8, ptr noundef nonnull %_udphdr)
  %tobool28.not = icmp eq ptr %call27, null
  %add30 = add nsw i32 %gepdiff, 8
  %spec.select = select i1 %tobool28.not, i32 %gepdiff, i32 %add30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_udphdr) #15
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.end25
  %hdr_len.2 = phi i32 [ %hdr_len.0, %if.end25 ], [ %spec.select, %if.else ]
  %61 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %gso_type, align 8
  %and34 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else51, label %if.then42, !prof !65

if.then42:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %len43 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %63 = ptrtoint ptr %len43 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len43, align 4
  %65 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %gso_size, align 4
  %conv45 = zext i16 %66 to i32
  %sub = xor i32 %hdr_len.2, -1
  %add46 = add i32 %64, %sub
  %sub47 = add i32 %add46, %conv45
  %div = udiv i32 %sub47, %conv45
  %conv50 = trunc i32 %div to i16
  br label %if.end52

if.else51:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 5
  %67 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %gso_segs, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %if.then42
  %segs.0 = phi i16 [ %conv50, %if.then42 ], [ %68, %if.else51 ]
  %69 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %gso_size, align 4
  %conv54 = zext i16 %70 to i32
  %add55 = add nsw i32 %hdr_len.2, %conv54
  %len56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %71 = ptrtoint ptr %len56 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len56, align 4
  %conv59 = zext i16 %segs.0 to i32
  %sub60 = add nsw i32 %conv59, -1
  %mul = mul i32 %sub60, %conv54
  %rate_flags.i126 = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 17
  %73 = ptrtoint ptr %rate_flags.i126 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %rate_flags.i126, align 8
  %75 = and i16 %74, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool.not.i127 = icmp eq i16 %75, 0
  %sub.i128 = select i1 %tobool.not.i127, i32 0, i32 %sub.ptr.sub.i
  %spec.select.i129 = sub i32 %add55, %sub.i128
  %max_netlen.i130 = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 38
  %76 = ptrtoint ptr %max_netlen.i130 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %max_netlen.i130, align 4
  %conv1.i131 = zext i16 %77 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i129, i32 %conv1.i131)
  %cmp.i132 = icmp ugt i32 %spec.select.i129, %conv1.i131
  br i1 %cmp.i132, label %if.then3.i134, label %if.end52.if.end6.i138_crit_edge

if.end52.if.end6.i138_crit_edge:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i138

if.then3.i134:                                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  %conv4.i133 = trunc i32 %spec.select.i129 to i16
  %78 = ptrtoint ptr %max_netlen.i130 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv4.i133, ptr %max_netlen.i130, align 4
  br label %if.end6.i138

if.end6.i138:                                     ; preds = %if.then3.i134, %if.end52.if.end6.i138_crit_edge
  %min_netlen.i135 = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 40
  %79 = ptrtoint ptr %min_netlen.i135 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %min_netlen.i135, align 8
  %conv7.i136 = zext i16 %80 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i129, i32 %conv7.i136)
  %cmp8.i137 = icmp ult i32 %spec.select.i129, %conv7.i136
  br i1 %cmp8.i137, label %if.then10.i140, label %if.end6.i138.if.end13.i147_crit_edge

if.end6.i138.if.end13.i147_crit_edge:             ; preds = %if.end6.i138
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i147

if.then10.i140:                                   ; preds = %if.end6.i138
  call void @__sanitizer_cov_trace_pc() #17
  %conv11.i139 = trunc i32 %spec.select.i129 to i16
  %81 = ptrtoint ptr %min_netlen.i135 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv11.i139, ptr %min_netlen.i135, align 8
  br label %if.end13.i147

if.end13.i147:                                    ; preds = %if.then10.i140, %if.end6.i138.if.end13.i147_crit_edge
  %rate_overhead.i141 = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 18
  %82 = ptrtoint ptr %rate_overhead.i141 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %rate_overhead.i141, align 2
  %conv14.i142 = sext i16 %83 to i32
  %add.i143 = add i32 %spec.select.i129, %conv14.i142
  %rate_mpu.i144 = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 19
  %84 = ptrtoint ptr %rate_mpu.i144 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %rate_mpu.i144, align 4
  %conv15.i145 = zext i16 %85 to i32
  %86 = call i32 @llvm.umax.i32(i32 %add.i143, i32 %conv15.i145) #15
  %atm_mode.i146 = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 9
  %87 = ptrtoint ptr %atm_mode.i146 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %atm_mode.i146, align 1
  %89 = zext i8 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %88, label %if.end13.i147.if.end36.i160_crit_edge [
    i8 1, label %if.then25.i151
    i8 2, label %if.then31.i155
  ]

if.end13.i147.if.end36.i160_crit_edge:            ; preds = %if.end13.i147
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i160

if.then25.i151:                                   ; preds = %if.end13.i147
  call void @__sanitizer_cov_trace_pc() #17
  %add26.i148 = add i32 %86, 47
  %div.i149 = udiv i32 %add26.i148, 48
  %mul.i150 = mul i32 %div.i149, 53
  br label %if.end36.i160

if.then31.i155:                                   ; preds = %if.end13.i147
  call void @__sanitizer_cov_trace_pc() #17
  %add32.i152 = add i32 %86, 63
  %div3380.i153 = lshr i32 %add32.i152, 6
  %add34.i154 = add i32 %div3380.i153, %86
  br label %if.end36.i160

if.end36.i160:                                    ; preds = %if.then31.i155, %if.then25.i151, %if.end13.i147.if.end36.i160_crit_edge
  %len.addr.2.i156 = phi i32 [ %mul.i150, %if.then25.i151 ], [ %add34.i154, %if.then31.i155 ], [ %86, %if.end13.i147.if.end36.i160_crit_edge ]
  %max_adjlen.i157 = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 39
  %90 = ptrtoint ptr %max_adjlen.i157 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %max_adjlen.i157, align 2
  %conv37.i158 = zext i16 %91 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.2.i156, i32 %conv37.i158)
  %cmp38.i159 = icmp ugt i32 %len.addr.2.i156, %conv37.i158
  br i1 %cmp38.i159, label %if.then40.i162, label %if.end36.i160.if.end43.i166_crit_edge

if.end36.i160.if.end43.i166_crit_edge:            ; preds = %if.end36.i160
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43.i166

if.then40.i162:                                   ; preds = %if.end36.i160
  call void @__sanitizer_cov_trace_pc() #17
  %conv41.i161 = trunc i32 %len.addr.2.i156 to i16
  %92 = ptrtoint ptr %max_adjlen.i157 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv41.i161, ptr %max_adjlen.i157, align 2
  br label %if.end43.i166

if.end43.i166:                                    ; preds = %if.then40.i162, %if.end36.i160.if.end43.i166_crit_edge
  %min_adjlen.i163 = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 41
  %93 = ptrtoint ptr %min_adjlen.i163 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %min_adjlen.i163, align 2
  %conv44.i164 = zext i16 %94 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.2.i156, i32 %conv44.i164)
  %cmp45.i165 = icmp ult i32 %len.addr.2.i156, %conv44.i164
  br i1 %cmp45.i165, label %if.then47.i168, label %if.end43.i166.cake_calc_overhead.exit169_crit_edge

if.end43.i166.cake_calc_overhead.exit169_crit_edge: ; preds = %if.end43.i166
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_calc_overhead.exit169

if.then47.i168:                                   ; preds = %if.end43.i166
  call void @__sanitizer_cov_trace_pc() #17
  %conv48.i167 = trunc i32 %len.addr.2.i156 to i16
  %95 = ptrtoint ptr %min_adjlen.i163 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv48.i167, ptr %min_adjlen.i163, align 2
  br label %cake_calc_overhead.exit169

cake_calc_overhead.exit169:                       ; preds = %if.then47.i168, %if.end43.i166.cake_calc_overhead.exit169_crit_edge
  %mul65 = mul i32 %len.addr.2.i156, %sub60
  %96 = add i32 %mul, %sub.i128
  %spec.select.i173 = sub i32 %72, %96
  %97 = ptrtoint ptr %max_netlen.i130 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %max_netlen.i130, align 4
  %conv1.i175 = zext i16 %98 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i173, i32 %conv1.i175)
  %cmp.i176 = icmp ugt i32 %spec.select.i173, %conv1.i175
  br i1 %cmp.i176, label %if.then3.i178, label %cake_calc_overhead.exit169.if.end6.i182_crit_edge

cake_calc_overhead.exit169.if.end6.i182_crit_edge: ; preds = %cake_calc_overhead.exit169
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i182

if.then3.i178:                                    ; preds = %cake_calc_overhead.exit169
  call void @__sanitizer_cov_trace_pc() #17
  %conv4.i177 = trunc i32 %spec.select.i173 to i16
  %99 = ptrtoint ptr %max_netlen.i130 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv4.i177, ptr %max_netlen.i130, align 4
  br label %if.end6.i182

if.end6.i182:                                     ; preds = %if.then3.i178, %cake_calc_overhead.exit169.if.end6.i182_crit_edge
  %100 = ptrtoint ptr %min_netlen.i135 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %min_netlen.i135, align 8
  %conv7.i180 = zext i16 %101 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i173, i32 %conv7.i180)
  %cmp8.i181 = icmp ult i32 %spec.select.i173, %conv7.i180
  br i1 %cmp8.i181, label %if.then10.i184, label %if.end6.i182.if.end13.i191_crit_edge

if.end6.i182.if.end13.i191_crit_edge:             ; preds = %if.end6.i182
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i191

if.then10.i184:                                   ; preds = %if.end6.i182
  call void @__sanitizer_cov_trace_pc() #17
  %conv11.i183 = trunc i32 %spec.select.i173 to i16
  %102 = ptrtoint ptr %min_netlen.i135 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv11.i183, ptr %min_netlen.i135, align 8
  br label %if.end13.i191

if.end13.i191:                                    ; preds = %if.then10.i184, %if.end6.i182.if.end13.i191_crit_edge
  %add.i187 = add i32 %spec.select.i173, %conv14.i142
  %103 = call i32 @llvm.umax.i32(i32 %add.i187, i32 %conv15.i145) #15
  %104 = zext i8 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %88, label %if.end13.i191.if.end36.i204_crit_edge [
    i8 1, label %if.then25.i195
    i8 2, label %if.then31.i199
  ]

if.end13.i191.if.end36.i204_crit_edge:            ; preds = %if.end13.i191
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i204

if.then25.i195:                                   ; preds = %if.end13.i191
  call void @__sanitizer_cov_trace_pc() #17
  %add26.i192 = add i32 %103, 47
  %div.i193 = udiv i32 %add26.i192, 48
  %mul.i194 = mul i32 %div.i193, 53
  br label %if.end36.i204

if.then31.i199:                                   ; preds = %if.end13.i191
  call void @__sanitizer_cov_trace_pc() #17
  %add32.i196 = add i32 %103, 63
  %div3380.i197 = lshr i32 %add32.i196, 6
  %add34.i198 = add i32 %div3380.i197, %103
  br label %if.end36.i204

if.end36.i204:                                    ; preds = %if.then31.i199, %if.then25.i195, %if.end13.i191.if.end36.i204_crit_edge
  %len.addr.2.i200 = phi i32 [ %mul.i194, %if.then25.i195 ], [ %add34.i198, %if.then31.i199 ], [ %103, %if.end13.i191.if.end36.i204_crit_edge ]
  %105 = ptrtoint ptr %max_adjlen.i157 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %max_adjlen.i157, align 2
  %conv37.i202 = zext i16 %106 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.2.i200, i32 %conv37.i202)
  %cmp38.i203 = icmp ugt i32 %len.addr.2.i200, %conv37.i202
  br i1 %cmp38.i203, label %if.then40.i206, label %if.end36.i204.if.end43.i210_crit_edge

if.end36.i204.if.end43.i210_crit_edge:            ; preds = %if.end36.i204
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43.i210

if.then40.i206:                                   ; preds = %if.end36.i204
  call void @__sanitizer_cov_trace_pc() #17
  %conv41.i205 = trunc i32 %len.addr.2.i200 to i16
  %107 = ptrtoint ptr %max_adjlen.i157 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv41.i205, ptr %max_adjlen.i157, align 2
  br label %if.end43.i210

if.end43.i210:                                    ; preds = %if.then40.i206, %if.end36.i204.if.end43.i210_crit_edge
  %108 = ptrtoint ptr %min_adjlen.i163 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %min_adjlen.i163, align 2
  %conv44.i208 = zext i16 %109 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.2.i200, i32 %conv44.i208)
  %cmp45.i209 = icmp ult i32 %len.addr.2.i200, %conv44.i208
  br i1 %cmp45.i209, label %if.then47.i212, label %if.end43.i210.cake_calc_overhead.exit213_crit_edge

if.end43.i210.cake_calc_overhead.exit213_crit_edge: ; preds = %if.end43.i210
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_calc_overhead.exit213

if.then47.i212:                                   ; preds = %if.end43.i210
  call void @__sanitizer_cov_trace_pc() #17
  %conv48.i211 = trunc i32 %len.addr.2.i200 to i16
  %110 = ptrtoint ptr %min_adjlen.i163 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv48.i211, ptr %min_adjlen.i163, align 2
  br label %cake_calc_overhead.exit213

cake_calc_overhead.exit213:                       ; preds = %if.then47.i212, %if.end43.i210.cake_calc_overhead.exit213_crit_edge
  %add67 = add i32 %len.addr.2.i200, %mul65
  br label %cleanup

cleanup:                                          ; preds = %cake_calc_overhead.exit213, %if.then47.i, %if.end43.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %add67, %cake_calc_overhead.exit213 ], [ %len.addr.2.i, %if.end43.i.cleanup_crit_edge ], [ %len.addr.2.i, %if.then47.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_tree_reduce_backlog(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cake_reconfigure(ptr noundef %sch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tin_mode = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 4
  %0 = ptrtoint ptr %tin_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tin_mode, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %1, label %sw.default [
    i8 3, label %sw.bb
    i8 4, label %sw.bb2
    i8 2, label %sw.bb4
    i8 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %tins.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %3 = ptrtoint ptr %tins.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tins.i, align 8
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %5 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_queue.i.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 128
  %mtu.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mtu.i.i, align 4
  %hard_header_len.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 19
  %11 = ptrtoint ptr %hard_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hard_header_len.i.i, align 2
  %rate_bps.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 13
  %13 = ptrtoint ptr %rate_bps.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rate_bps.i, align 8
  %tin_cnt.i = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 5
  %15 = ptrtoint ptr %tin_cnt.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %tin_cnt.i, align 2
  %tin_index.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 16, i32 2, i32 0, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %tin_index.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @besteffort, ptr %tin_index.i, align 8
  %tin_order.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 16, i32 2, i32 0, i32 0, i32 4, i32 7
  %17 = ptrtoint ptr %tin_order.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @normal_order, ptr %tin_order.i, align 4
  %target.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 16
  %18 = ptrtoint ptr %target.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %target.i, align 8
  %interval.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 8
  %20 = ptrtoint ptr %interval.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %interval.i, align 8
  %flow_quantum.i.i = getelementptr inbounds %struct.cake_tin_data, ptr %4, i32 0, i32 5
  %22 = ptrtoint ptr %flow_quantum.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1514, ptr %flow_quantum.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not.i.i = icmp eq i64 %14, 0
  br i1 %tobool.not.i.i, label %sw.bb.cake_config_besteffort.exit_crit_edge, label %if.then.i.i

sw.bb.cake_config_besteffort.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_config_besteffort.exit

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp8(i64 6201344, i64 %14)
  %cmp.i.i = icmp ult i64 %14, 6201344
  %shr.i.i = lshr i64 %14, 12
  %23 = tail call i64 @llvm.umax.i64(i64 %shr.i.i, i64 300) #15
  %24 = trunc i64 %23 to i16
  %25 = select i1 %cmp.i.i, i16 %24, i16 1514
  %26 = ptrtoint ptr %flow_quantum.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %flow_quantum.i.i, align 8
  %27 = tail call i64 @llvm.umax.i64(i64 %14, i64 64) #15
  %call.i.i = tail call i64 @div64_u64(i64 noundef -1266874889709551616, i64 noundef %27) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 17179869184, i64 %call.i.i)
  %tobool17.not83.i.i = icmp ult i64 %call.i.i, 17179869184
  br i1 %tobool17.not83.i.i, label %if.then.i.i.cake_config_besteffort.exit_crit_edge, label %if.then.i.i.while.body.i.i_crit_edge

if.then.i.i.while.body.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %while.body.i.i

if.then.i.i.cake_config_besteffort.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_config_besteffort.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i.i.while.body.i.i_crit_edge
  %rate_shft.085.i.i = phi i8 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 34, %if.then.i.i.while.body.i.i_crit_edge ]
  %rate_ns.084.i.i = phi i64 [ %shr19.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call.i.i, %if.then.i.i.while.body.i.i_crit_edge ]
  %shr19.i.i = lshr i64 %rate_ns.084.i.i, 1
  %dec.i.i = add nsw i8 %rate_shft.085.i.i, -1
  %tobool17.not.i.i = icmp ult i64 %rate_ns.084.i.i, 34359738368
  br i1 %tobool17.not.i.i, label %while.body.i.i.cake_config_besteffort.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

while.body.i.i.cake_config_besteffort.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_config_besteffort.exit

cake_config_besteffort.exit:                      ; preds = %while.body.i.i.cake_config_besteffort.exit_crit_edge, %if.then.i.i.cake_config_besteffort.exit_crit_edge, %sw.bb.cake_config_besteffort.exit_crit_edge
  %rate_ns.1.i.i = phi i64 [ 0, %sw.bb.cake_config_besteffort.exit_crit_edge ], [ %call.i.i, %if.then.i.i.cake_config_besteffort.exit_crit_edge ], [ %shr19.i.i, %while.body.i.i.cake_config_besteffort.exit_crit_edge ]
  %rate_shft.1.i.i = phi i8 [ 0, %sw.bb.cake_config_besteffort.exit_crit_edge ], [ 34, %if.then.i.i.cake_config_besteffort.exit_crit_edge ], [ %dec.i.i, %while.body.i.i.cake_config_besteffort.exit_crit_edge ]
  %mul.i1.i = mul i64 %21, 1000
  %mul.i.i = mul i64 %19, 1000
  %conv.i.i = zext i16 %12 to i32
  %add.i.i = add i32 %10, %conv.i.i
  %tin_rate_bps.i.i = getelementptr inbounds %struct.cake_tin_data, ptr %4, i32 0, i32 18
  %28 = ptrtoint ptr %tin_rate_bps.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %14, ptr %tin_rate_bps.i.i, align 8
  %tin_rate_ns.i.i = getelementptr inbounds %struct.cake_tin_data, ptr %4, i32 0, i32 17
  %29 = ptrtoint ptr %tin_rate_ns.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %rate_ns.1.i.i, ptr %tin_rate_ns.i.i, align 8
  %conv20.i.i = zext i8 %rate_shft.1.i.i to i16
  %tin_rate_shft.i.i = getelementptr inbounds %struct.cake_tin_data, ptr %4, i32 0, i32 19
  %30 = ptrtoint ptr %tin_rate_shft.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv20.i.i, ptr %tin_rate_shft.i.i, align 8
  %conv21.i.i = zext i32 %add.i.i to i64
  %mul.i2.i = mul i64 %rate_ns.1.i.i, %conv21.i.i
  %sh_prom23.i.i = zext i8 %rate_shft.1.i.i to i64
  %shr24.i.i = lshr i64 %mul.i2.i, %sh_prom23.i.i
  %mul25.i.i = mul i64 %shr24.i.i, 3
  %div81.i.i = lshr i64 %mul25.i.i, 1
  %31 = tail call i64 @llvm.umax.i64(i64 %div81.i.i, i64 %mul.i.i) #15
  %target.i.i = getelementptr inbounds %struct.cake_tin_data, ptr %4, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %target.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %target.i.i, align 8
  %add.i3.i = sub i64 %mul.i1.i, %mul.i.i
  %sub.i.i = add i64 %add.i3.i, %31
  %mul37.i.i = shl i64 %31, 1
  %33 = tail call i64 @llvm.umax.i64(i64 %sub.i.i, i64 %mul37.i.i) #15
  %cparams.i.i = getelementptr inbounds %struct.cake_tin_data, ptr %4, i32 0, i32 6
  %34 = ptrtoint ptr %cparams.i.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %cparams.i.i, align 8
  %mtu_time.i.i = getelementptr inbounds %struct.cake_tin_data, ptr %4, i32 0, i32 6, i32 2
  %35 = ptrtoint ptr %mtu_time.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %shr24.i.i, ptr %mtu_time.i.i, align 8
  %p_inc.i.i = getelementptr inbounds %struct.cake_tin_data, ptr %4, i32 0, i32 6, i32 3
  %36 = ptrtoint ptr %p_inc.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16777216, ptr %p_inc.i.i, align 8
  %p_dec.i.i = getelementptr inbounds %struct.cake_tin_data, ptr %4, i32 0, i32 6, i32 4
  %37 = ptrtoint ptr %p_dec.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1048576, ptr %p_dec.i.i, align 4
  %tin_quantum.i = getelementptr inbounds %struct.cake_tin_data, ptr %4, i32 0, i32 20
  %38 = ptrtoint ptr %tin_quantum.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %tin_quantum.i, align 2
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %dev_queue.i.i368 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %39 = ptrtoint ptr %dev_queue.i.i368 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_queue.i.i368, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 128
  %mtu.i.i369 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 20
  %43 = ptrtoint ptr %mtu.i.i369 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mtu.i.i369, align 4
  %hard_header_len.i.i370 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 19
  %45 = ptrtoint ptr %hard_header_len.i.i370 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %hard_header_len.i.i370, align 2
  %rate_bps.i371 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 13
  %47 = ptrtoint ptr %rate_bps.i371 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %rate_bps.i371, align 8
  %tin_cnt.i372 = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 5
  %49 = ptrtoint ptr %tin_cnt.i372 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 8, ptr %tin_cnt.i372, align 2
  %tin_index.i373 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 16, i32 2, i32 0, i32 0, i32 4, i32 6
  %50 = ptrtoint ptr %tin_index.i373 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @precedence, ptr %tin_index.i373, align 8
  %tin_order.i374 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 16, i32 2, i32 0, i32 0, i32 4, i32 7
  %51 = ptrtoint ptr %tin_order.i374 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @normal_order, ptr %tin_order.i374, align 4
  %conv.i.i375 = zext i16 %46 to i32
  %add.i.i376 = add i32 %44, %conv.i.i375
  %tins.i377 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %target.i378 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 16
  %interval.i379 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 8
  %conv21.i.i380 = zext i32 %add.i.i376 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %cake_set_rate.exit.i.for.body.i_crit_edge, %sw.bb2
  %i.08.i = phi i32 [ 0, %sw.bb2 ], [ %inc.i, %cake_set_rate.exit.i.for.body.i_crit_edge ]
  %quantum.07.i = phi i32 [ 256, %sw.bb2 ], [ %shr16.i, %cake_set_rate.exit.i.for.body.i_crit_edge ]
  %rate.06.i = phi i64 [ %48, %sw.bb2 ], [ %shr.i, %cake_set_rate.exit.i.for.body.i_crit_edge ]
  %52 = ptrtoint ptr %tins.i377 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tins.i377, align 8
  %54 = ptrtoint ptr %target.i378 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %target.i378, align 8
  %mul.i.i381 = mul i64 %55, 1000
  %56 = ptrtoint ptr %interval.i379 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %interval.i379, align 8
  %mul.i1.i382 = mul i64 %57, 1000
  %flow_quantum.i.i383 = getelementptr %struct.cake_tin_data, ptr %53, i32 %i.08.i, i32 5
  %58 = ptrtoint ptr %flow_quantum.i.i383 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1514, ptr %flow_quantum.i.i383, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rate.06.i)
  %tobool.not.i.i384 = icmp eq i64 %rate.06.i, 0
  br i1 %tobool.not.i.i384, label %for.body.i.cake_set_rate.exit.i_crit_edge, label %if.then.i.i389

for.body.i.cake_set_rate.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit.i

if.then.i.i389:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 6201344, i64 %rate.06.i)
  %cmp.i.i385 = icmp ult i64 %rate.06.i, 6201344
  %shr.i.i386 = lshr i64 %rate.06.i, 12
  %59 = tail call i64 @llvm.umax.i64(i64 %shr.i.i386, i64 300) #15
  %60 = trunc i64 %59 to i16
  %61 = select i1 %cmp.i.i385, i16 %60, i16 1514
  %62 = ptrtoint ptr %flow_quantum.i.i383 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %flow_quantum.i.i383, align 8
  %63 = tail call i64 @llvm.umax.i64(i64 %rate.06.i, i64 64) #15
  %call.i.i387 = tail call i64 @div64_u64(i64 noundef -1266874889709551616, i64 noundef %63) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 17179869184, i64 %call.i.i387)
  %tobool17.not83.i.i388 = icmp ult i64 %call.i.i387, 17179869184
  br i1 %tobool17.not83.i.i388, label %if.then.i.i389.cake_set_rate.exit.i_crit_edge, label %if.then.i.i389.while.body.i.i395_crit_edge

if.then.i.i389.while.body.i.i395_crit_edge:       ; preds = %if.then.i.i389
  br label %while.body.i.i395

if.then.i.i389.cake_set_rate.exit.i_crit_edge:    ; preds = %if.then.i.i389
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit.i

while.body.i.i395:                                ; preds = %while.body.i.i395.while.body.i.i395_crit_edge, %if.then.i.i389.while.body.i.i395_crit_edge
  %rate_shft.085.i.i390 = phi i8 [ %dec.i.i393, %while.body.i.i395.while.body.i.i395_crit_edge ], [ 34, %if.then.i.i389.while.body.i.i395_crit_edge ]
  %rate_ns.084.i.i391 = phi i64 [ %shr19.i.i392, %while.body.i.i395.while.body.i.i395_crit_edge ], [ %call.i.i387, %if.then.i.i389.while.body.i.i395_crit_edge ]
  %shr19.i.i392 = lshr i64 %rate_ns.084.i.i391, 1
  %dec.i.i393 = add nsw i8 %rate_shft.085.i.i390, -1
  %tobool17.not.i.i394 = icmp ult i64 %rate_ns.084.i.i391, 34359738368
  br i1 %tobool17.not.i.i394, label %while.body.i.i395.cake_set_rate.exit.i_crit_edge, label %while.body.i.i395.while.body.i.i395_crit_edge

while.body.i.i395.while.body.i.i395_crit_edge:    ; preds = %while.body.i.i395
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i395

while.body.i.i395.cake_set_rate.exit.i_crit_edge: ; preds = %while.body.i.i395
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit.i

cake_set_rate.exit.i:                             ; preds = %while.body.i.i395.cake_set_rate.exit.i_crit_edge, %if.then.i.i389.cake_set_rate.exit.i_crit_edge, %for.body.i.cake_set_rate.exit.i_crit_edge
  %rate_ns.1.i.i396 = phi i64 [ 0, %for.body.i.cake_set_rate.exit.i_crit_edge ], [ %call.i.i387, %if.then.i.i389.cake_set_rate.exit.i_crit_edge ], [ %shr19.i.i392, %while.body.i.i395.cake_set_rate.exit.i_crit_edge ]
  %rate_shft.1.i.i397 = phi i8 [ 0, %for.body.i.cake_set_rate.exit.i_crit_edge ], [ 34, %if.then.i.i389.cake_set_rate.exit.i_crit_edge ], [ %dec.i.i393, %while.body.i.i395.cake_set_rate.exit.i_crit_edge ]
  %tin_rate_bps.i.i398 = getelementptr %struct.cake_tin_data, ptr %53, i32 %i.08.i, i32 18
  %64 = ptrtoint ptr %tin_rate_bps.i.i398 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %rate.06.i, ptr %tin_rate_bps.i.i398, align 8
  %tin_rate_ns.i.i399 = getelementptr %struct.cake_tin_data, ptr %53, i32 %i.08.i, i32 17
  %65 = ptrtoint ptr %tin_rate_ns.i.i399 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %rate_ns.1.i.i396, ptr %tin_rate_ns.i.i399, align 8
  %conv20.i.i400 = zext i8 %rate_shft.1.i.i397 to i16
  %tin_rate_shft.i.i401 = getelementptr %struct.cake_tin_data, ptr %53, i32 %i.08.i, i32 19
  %66 = ptrtoint ptr %tin_rate_shft.i.i401 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv20.i.i400, ptr %tin_rate_shft.i.i401, align 8
  %mul.i2.i402 = mul i64 %rate_ns.1.i.i396, %conv21.i.i380
  %sh_prom23.i.i403 = zext i8 %rate_shft.1.i.i397 to i64
  %shr24.i.i404 = lshr i64 %mul.i2.i402, %sh_prom23.i.i403
  %mul25.i.i405 = mul i64 %shr24.i.i404, 3
  %div81.i.i406 = lshr i64 %mul25.i.i405, 1
  %67 = tail call i64 @llvm.umax.i64(i64 %div81.i.i406, i64 %mul.i.i381) #15
  %target.i.i407 = getelementptr %struct.cake_tin_data, ptr %53, i32 %i.08.i, i32 6, i32 1
  %68 = ptrtoint ptr %target.i.i407 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %target.i.i407, align 8
  %add.i3.i408 = sub i64 %mul.i1.i382, %mul.i.i381
  %sub.i.i409 = add i64 %add.i3.i408, %67
  %mul37.i.i410 = shl i64 %67, 1
  %69 = tail call i64 @llvm.umax.i64(i64 %sub.i.i409, i64 %mul37.i.i410) #15
  %cparams.i.i411 = getelementptr %struct.cake_tin_data, ptr %53, i32 %i.08.i, i32 6
  %70 = ptrtoint ptr %cparams.i.i411 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %cparams.i.i411, align 8
  %mtu_time.i.i412 = getelementptr %struct.cake_tin_data, ptr %53, i32 %i.08.i, i32 6, i32 2
  %71 = ptrtoint ptr %mtu_time.i.i412 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %shr24.i.i404, ptr %mtu_time.i.i412, align 8
  %p_inc.i.i413 = getelementptr %struct.cake_tin_data, ptr %53, i32 %i.08.i, i32 6, i32 3
  %72 = ptrtoint ptr %p_inc.i.i413 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 16777216, ptr %p_inc.i.i413, align 8
  %p_dec.i.i414 = getelementptr %struct.cake_tin_data, ptr %53, i32 %i.08.i, i32 6, i32 4
  %73 = ptrtoint ptr %p_dec.i.i414 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1048576, ptr %p_dec.i.i414, align 4
  %conv9.i = and i32 %quantum.07.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9.i)
  %cmp10.i = icmp eq i32 %conv9.i, 0
  %74 = trunc i32 %quantum.07.i to i16
  %conv14.i = select i1 %cmp10.i, i16 1, i16 %74
  %tin_quantum.i415 = getelementptr %struct.cake_tin_data, ptr %53, i32 %i.08.i, i32 20
  %75 = ptrtoint ptr %tin_quantum.i415 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv14.i, ptr %tin_quantum.i415, align 2
  %mul.i = mul i64 %rate.06.i, 7
  %shr.i = lshr i64 %mul.i, 3
  %mul15.i = mul nuw i32 %quantum.07.i, 7
  %shr16.i = lshr i32 %mul15.i, 3
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %76 = ptrtoint ptr %tin_cnt.i372 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %tin_cnt.i372, align 2
  %conv.i = zext i16 %77 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %cake_set_rate.exit.i.for.body.i_crit_edge, label %cake_set_rate.exit.i.sw.epilog_crit_edge

cake_set_rate.exit.i.sw.epilog_crit_edge:         ; preds = %cake_set_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

cake_set_rate.exit.i.for.body.i_crit_edge:        ; preds = %cake_set_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

sw.bb4:                                           ; preds = %entry
  %dev_queue.i.i417 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %78 = ptrtoint ptr %dev_queue.i.i417 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_queue.i.i417, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 128
  %mtu.i.i418 = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 20
  %82 = ptrtoint ptr %mtu.i.i418 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mtu.i.i418, align 4
  %hard_header_len.i.i419 = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 19
  %84 = ptrtoint ptr %hard_header_len.i.i419 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %hard_header_len.i.i419, align 2
  %rate_bps.i420 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 13
  %86 = ptrtoint ptr %rate_bps.i420 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %rate_bps.i420, align 8
  %tin_cnt.i421 = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 5
  %88 = ptrtoint ptr %tin_cnt.i421 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 8, ptr %tin_cnt.i421, align 2
  %tin_index.i422 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 16, i32 2, i32 0, i32 0, i32 4, i32 6
  %89 = ptrtoint ptr %tin_index.i422 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @diffserv8, ptr %tin_index.i422, align 8
  %tin_order.i423 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 16, i32 2, i32 0, i32 0, i32 4, i32 7
  %90 = ptrtoint ptr %tin_order.i423 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @normal_order, ptr %tin_order.i423, align 4
  %conv.i.i424 = zext i16 %85 to i32
  %add.i.i425 = add i32 %83, %conv.i.i424
  %tins.i426 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %target.i427 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 16
  %interval.i428 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 8
  %conv21.i.i429 = zext i32 %add.i.i425 to i64
  br label %for.body.i437

for.body.i437:                                    ; preds = %cake_set_rate.exit.i479.for.body.i437_crit_edge, %sw.bb4
  %i.08.i430 = phi i32 [ 0, %sw.bb4 ], [ %inc.i476, %cake_set_rate.exit.i479.for.body.i437_crit_edge ]
  %quantum.07.i431 = phi i32 [ 256, %sw.bb4 ], [ %shr16.i475, %cake_set_rate.exit.i479.for.body.i437_crit_edge ]
  %rate.06.i432 = phi i64 [ %87, %sw.bb4 ], [ %shr.i473, %cake_set_rate.exit.i479.for.body.i437_crit_edge ]
  %91 = ptrtoint ptr %tins.i426 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tins.i426, align 8
  %93 = ptrtoint ptr %target.i427 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %target.i427, align 8
  %mul.i.i433 = mul i64 %94, 1000
  %95 = ptrtoint ptr %interval.i428 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %interval.i428, align 8
  %mul.i1.i434 = mul i64 %96, 1000
  %flow_quantum.i.i435 = getelementptr %struct.cake_tin_data, ptr %92, i32 %i.08.i430, i32 5
  %97 = ptrtoint ptr %flow_quantum.i.i435 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 1514, ptr %flow_quantum.i.i435, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rate.06.i432)
  %tobool.not.i.i436 = icmp eq i64 %rate.06.i432, 0
  br i1 %tobool.not.i.i436, label %for.body.i437.cake_set_rate.exit.i479_crit_edge, label %if.then.i.i442

for.body.i437.cake_set_rate.exit.i479_crit_edge:  ; preds = %for.body.i437
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit.i479

if.then.i.i442:                                   ; preds = %for.body.i437
  call void @__sanitizer_cov_trace_const_cmp8(i64 6201344, i64 %rate.06.i432)
  %cmp.i.i438 = icmp ult i64 %rate.06.i432, 6201344
  %shr.i.i439 = lshr i64 %rate.06.i432, 12
  %98 = tail call i64 @llvm.umax.i64(i64 %shr.i.i439, i64 300) #15
  %99 = trunc i64 %98 to i16
  %100 = select i1 %cmp.i.i438, i16 %99, i16 1514
  %101 = ptrtoint ptr %flow_quantum.i.i435 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %flow_quantum.i.i435, align 8
  %102 = tail call i64 @llvm.umax.i64(i64 %rate.06.i432, i64 64) #15
  %call.i.i440 = tail call i64 @div64_u64(i64 noundef -1266874889709551616, i64 noundef %102) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 17179869184, i64 %call.i.i440)
  %tobool17.not83.i.i441 = icmp ult i64 %call.i.i440, 17179869184
  br i1 %tobool17.not83.i.i441, label %if.then.i.i442.cake_set_rate.exit.i479_crit_edge, label %if.then.i.i442.while.body.i.i448_crit_edge

if.then.i.i442.while.body.i.i448_crit_edge:       ; preds = %if.then.i.i442
  br label %while.body.i.i448

if.then.i.i442.cake_set_rate.exit.i479_crit_edge: ; preds = %if.then.i.i442
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit.i479

while.body.i.i448:                                ; preds = %while.body.i.i448.while.body.i.i448_crit_edge, %if.then.i.i442.while.body.i.i448_crit_edge
  %rate_shft.085.i.i443 = phi i8 [ %dec.i.i446, %while.body.i.i448.while.body.i.i448_crit_edge ], [ 34, %if.then.i.i442.while.body.i.i448_crit_edge ]
  %rate_ns.084.i.i444 = phi i64 [ %shr19.i.i445, %while.body.i.i448.while.body.i.i448_crit_edge ], [ %call.i.i440, %if.then.i.i442.while.body.i.i448_crit_edge ]
  %shr19.i.i445 = lshr i64 %rate_ns.084.i.i444, 1
  %dec.i.i446 = add nsw i8 %rate_shft.085.i.i443, -1
  %tobool17.not.i.i447 = icmp ult i64 %rate_ns.084.i.i444, 34359738368
  br i1 %tobool17.not.i.i447, label %while.body.i.i448.cake_set_rate.exit.i479_crit_edge, label %while.body.i.i448.while.body.i.i448_crit_edge

while.body.i.i448.while.body.i.i448_crit_edge:    ; preds = %while.body.i.i448
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i448

while.body.i.i448.cake_set_rate.exit.i479_crit_edge: ; preds = %while.body.i.i448
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit.i479

cake_set_rate.exit.i479:                          ; preds = %while.body.i.i448.cake_set_rate.exit.i479_crit_edge, %if.then.i.i442.cake_set_rate.exit.i479_crit_edge, %for.body.i437.cake_set_rate.exit.i479_crit_edge
  %rate_ns.1.i.i449 = phi i64 [ 0, %for.body.i437.cake_set_rate.exit.i479_crit_edge ], [ %call.i.i440, %if.then.i.i442.cake_set_rate.exit.i479_crit_edge ], [ %shr19.i.i445, %while.body.i.i448.cake_set_rate.exit.i479_crit_edge ]
  %rate_shft.1.i.i450 = phi i8 [ 0, %for.body.i437.cake_set_rate.exit.i479_crit_edge ], [ 34, %if.then.i.i442.cake_set_rate.exit.i479_crit_edge ], [ %dec.i.i446, %while.body.i.i448.cake_set_rate.exit.i479_crit_edge ]
  %tin_rate_bps.i.i451 = getelementptr %struct.cake_tin_data, ptr %92, i32 %i.08.i430, i32 18
  %103 = ptrtoint ptr %tin_rate_bps.i.i451 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %rate.06.i432, ptr %tin_rate_bps.i.i451, align 8
  %tin_rate_ns.i.i452 = getelementptr %struct.cake_tin_data, ptr %92, i32 %i.08.i430, i32 17
  %104 = ptrtoint ptr %tin_rate_ns.i.i452 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %rate_ns.1.i.i449, ptr %tin_rate_ns.i.i452, align 8
  %conv20.i.i453 = zext i8 %rate_shft.1.i.i450 to i16
  %tin_rate_shft.i.i454 = getelementptr %struct.cake_tin_data, ptr %92, i32 %i.08.i430, i32 19
  %105 = ptrtoint ptr %tin_rate_shft.i.i454 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv20.i.i453, ptr %tin_rate_shft.i.i454, align 8
  %mul.i2.i455 = mul i64 %rate_ns.1.i.i449, %conv21.i.i429
  %sh_prom23.i.i456 = zext i8 %rate_shft.1.i.i450 to i64
  %shr24.i.i457 = lshr i64 %mul.i2.i455, %sh_prom23.i.i456
  %mul25.i.i458 = mul i64 %shr24.i.i457, 3
  %div81.i.i459 = lshr i64 %mul25.i.i458, 1
  %106 = tail call i64 @llvm.umax.i64(i64 %div81.i.i459, i64 %mul.i.i433) #15
  %target.i.i460 = getelementptr %struct.cake_tin_data, ptr %92, i32 %i.08.i430, i32 6, i32 1
  %107 = ptrtoint ptr %target.i.i460 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %target.i.i460, align 8
  %add.i3.i461 = sub i64 %mul.i1.i434, %mul.i.i433
  %sub.i.i462 = add i64 %add.i3.i461, %106
  %mul37.i.i463 = shl i64 %106, 1
  %108 = tail call i64 @llvm.umax.i64(i64 %sub.i.i462, i64 %mul37.i.i463) #15
  %cparams.i.i464 = getelementptr %struct.cake_tin_data, ptr %92, i32 %i.08.i430, i32 6
  %109 = ptrtoint ptr %cparams.i.i464 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %cparams.i.i464, align 8
  %mtu_time.i.i465 = getelementptr %struct.cake_tin_data, ptr %92, i32 %i.08.i430, i32 6, i32 2
  %110 = ptrtoint ptr %mtu_time.i.i465 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %shr24.i.i457, ptr %mtu_time.i.i465, align 8
  %p_inc.i.i466 = getelementptr %struct.cake_tin_data, ptr %92, i32 %i.08.i430, i32 6, i32 3
  %111 = ptrtoint ptr %p_inc.i.i466 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 16777216, ptr %p_inc.i.i466, align 8
  %p_dec.i.i467 = getelementptr %struct.cake_tin_data, ptr %92, i32 %i.08.i430, i32 6, i32 4
  %112 = ptrtoint ptr %p_dec.i.i467 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1048576, ptr %p_dec.i.i467, align 4
  %conv9.i468 = and i32 %quantum.07.i431, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9.i468)
  %cmp10.i469 = icmp eq i32 %conv9.i468, 0
  %113 = trunc i32 %quantum.07.i431 to i16
  %conv14.i470 = select i1 %cmp10.i469, i16 1, i16 %113
  %tin_quantum.i471 = getelementptr %struct.cake_tin_data, ptr %92, i32 %i.08.i430, i32 20
  %114 = ptrtoint ptr %tin_quantum.i471 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv14.i470, ptr %tin_quantum.i471, align 2
  %mul.i472 = mul i64 %rate.06.i432, 7
  %shr.i473 = lshr i64 %mul.i472, 3
  %mul15.i474 = mul nuw i32 %quantum.07.i431, 7
  %shr16.i475 = lshr i32 %mul15.i474, 3
  %inc.i476 = add nuw nsw i32 %i.08.i430, 1
  %115 = ptrtoint ptr %tin_cnt.i421 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %tin_cnt.i421, align 2
  %conv.i477 = zext i16 %116 to i32
  %cmp.i478 = icmp ult i32 %inc.i476, %conv.i477
  br i1 %cmp.i478, label %cake_set_rate.exit.i479.for.body.i437_crit_edge, label %cake_set_rate.exit.i479.sw.epilog_crit_edge

cake_set_rate.exit.i479.sw.epilog_crit_edge:      ; preds = %cake_set_rate.exit.i479
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

cake_set_rate.exit.i479.for.body.i437_crit_edge:  ; preds = %cake_set_rate.exit.i479
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i437

sw.bb6:                                           ; preds = %entry
  %dev_queue.i.i481 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %117 = ptrtoint ptr %dev_queue.i.i481 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev_queue.i.i481, align 8
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 128
  %mtu.i.i482 = getelementptr inbounds %struct.net_device, ptr %120, i32 0, i32 20
  %121 = ptrtoint ptr %mtu.i.i482 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %mtu.i.i482, align 4
  %hard_header_len.i.i483 = getelementptr inbounds %struct.net_device, ptr %120, i32 0, i32 19
  %123 = ptrtoint ptr %hard_header_len.i.i483 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %hard_header_len.i.i483, align 2
  %conv.i.i484 = zext i16 %124 to i32
  %add.i.i485 = add i32 %122, %conv.i.i484
  %rate_bps.i486 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 13
  %125 = ptrtoint ptr %rate_bps.i486 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %rate_bps.i486, align 8
  %tin_cnt.i487 = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 5
  %127 = ptrtoint ptr %tin_cnt.i487 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 4, ptr %tin_cnt.i487, align 2
  %tin_index.i488 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 16, i32 2, i32 0, i32 0, i32 4, i32 6
  %128 = ptrtoint ptr %tin_index.i488 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @diffserv4, ptr %tin_index.i488, align 8
  %tin_order.i489 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 16, i32 2, i32 0, i32 0, i32 4, i32 7
  %129 = ptrtoint ptr %tin_order.i489 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @bulk_order, ptr %tin_order.i489, align 4
  %tins.i490 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %130 = ptrtoint ptr %tins.i490 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tins.i490, align 8
  %target.i491 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 16
  %132 = ptrtoint ptr %target.i491 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %target.i491, align 8
  %mul.i.i492 = mul i64 %133, 1000
  %interval.i493 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 8
  %134 = ptrtoint ptr %interval.i493 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %interval.i493, align 8
  %mul.i1.i494 = mul i64 %135, 1000
  %flow_quantum.i.i495 = getelementptr inbounds %struct.cake_tin_data, ptr %131, i32 0, i32 5
  %136 = ptrtoint ptr %flow_quantum.i.i495 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 1514, ptr %flow_quantum.i.i495, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %126)
  %tobool.not.i.i496 = icmp eq i64 %126, 0
  br i1 %tobool.not.i.i496, label %sw.bb6.cake_set_rate.exit.i529_crit_edge, label %if.then.i.i501

sw.bb6.cake_set_rate.exit.i529_crit_edge:         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit.i529

if.then.i.i501:                                   ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_const_cmp8(i64 6201344, i64 %126)
  %cmp.i.i497 = icmp ult i64 %126, 6201344
  %shr.i.i498 = lshr i64 %126, 12
  %137 = tail call i64 @llvm.umax.i64(i64 %shr.i.i498, i64 300) #15
  %138 = trunc i64 %137 to i16
  %139 = select i1 %cmp.i.i497, i16 %138, i16 1514
  %140 = ptrtoint ptr %flow_quantum.i.i495 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %flow_quantum.i.i495, align 8
  %141 = tail call i64 @llvm.umax.i64(i64 %126, i64 64) #15
  %call.i.i499 = tail call i64 @div64_u64(i64 noundef -1266874889709551616, i64 noundef %141) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 17179869184, i64 %call.i.i499)
  %tobool17.not83.i.i500 = icmp ult i64 %call.i.i499, 17179869184
  br i1 %tobool17.not83.i.i500, label %if.then.i.i501.cake_set_rate.exit.i529_crit_edge, label %if.then.i.i501.while.body.i.i507_crit_edge

if.then.i.i501.while.body.i.i507_crit_edge:       ; preds = %if.then.i.i501
  br label %while.body.i.i507

if.then.i.i501.cake_set_rate.exit.i529_crit_edge: ; preds = %if.then.i.i501
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit.i529

while.body.i.i507:                                ; preds = %while.body.i.i507.while.body.i.i507_crit_edge, %if.then.i.i501.while.body.i.i507_crit_edge
  %rate_shft.085.i.i502 = phi i8 [ %dec.i.i505, %while.body.i.i507.while.body.i.i507_crit_edge ], [ 34, %if.then.i.i501.while.body.i.i507_crit_edge ]
  %rate_ns.084.i.i503 = phi i64 [ %shr19.i.i504, %while.body.i.i507.while.body.i.i507_crit_edge ], [ %call.i.i499, %if.then.i.i501.while.body.i.i507_crit_edge ]
  %shr19.i.i504 = lshr i64 %rate_ns.084.i.i503, 1
  %dec.i.i505 = add nsw i8 %rate_shft.085.i.i502, -1
  %tobool17.not.i.i506 = icmp ult i64 %rate_ns.084.i.i503, 34359738368
  br i1 %tobool17.not.i.i506, label %while.body.i.i507.cake_set_rate.exit.i529_crit_edge, label %while.body.i.i507.while.body.i.i507_crit_edge

while.body.i.i507.while.body.i.i507_crit_edge:    ; preds = %while.body.i.i507
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i507

while.body.i.i507.cake_set_rate.exit.i529_crit_edge: ; preds = %while.body.i.i507
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit.i529

cake_set_rate.exit.i529:                          ; preds = %while.body.i.i507.cake_set_rate.exit.i529_crit_edge, %if.then.i.i501.cake_set_rate.exit.i529_crit_edge, %sw.bb6.cake_set_rate.exit.i529_crit_edge
  %rate_ns.1.i.i508 = phi i64 [ 0, %sw.bb6.cake_set_rate.exit.i529_crit_edge ], [ %call.i.i499, %if.then.i.i501.cake_set_rate.exit.i529_crit_edge ], [ %shr19.i.i504, %while.body.i.i507.cake_set_rate.exit.i529_crit_edge ]
  %rate_shft.1.i.i509 = phi i8 [ 0, %sw.bb6.cake_set_rate.exit.i529_crit_edge ], [ 34, %if.then.i.i501.cake_set_rate.exit.i529_crit_edge ], [ %dec.i.i505, %while.body.i.i507.cake_set_rate.exit.i529_crit_edge ]
  %tin_rate_bps.i.i510 = getelementptr inbounds %struct.cake_tin_data, ptr %131, i32 0, i32 18
  %142 = ptrtoint ptr %tin_rate_bps.i.i510 to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %126, ptr %tin_rate_bps.i.i510, align 8
  %tin_rate_ns.i.i511 = getelementptr inbounds %struct.cake_tin_data, ptr %131, i32 0, i32 17
  %143 = ptrtoint ptr %tin_rate_ns.i.i511 to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %rate_ns.1.i.i508, ptr %tin_rate_ns.i.i511, align 8
  %conv20.i.i512 = zext i8 %rate_shft.1.i.i509 to i16
  %tin_rate_shft.i.i513 = getelementptr inbounds %struct.cake_tin_data, ptr %131, i32 0, i32 19
  %144 = ptrtoint ptr %tin_rate_shft.i.i513 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv20.i.i512, ptr %tin_rate_shft.i.i513, align 8
  %conv21.i.i514 = zext i32 %add.i.i485 to i64
  %mul.i2.i515 = mul i64 %rate_ns.1.i.i508, %conv21.i.i514
  %sh_prom23.i.i516 = zext i8 %rate_shft.1.i.i509 to i64
  %shr24.i.i517 = lshr i64 %mul.i2.i515, %sh_prom23.i.i516
  %mul25.i.i518 = mul i64 %shr24.i.i517, 3
  %div81.i.i519 = lshr i64 %mul25.i.i518, 1
  %145 = tail call i64 @llvm.umax.i64(i64 %div81.i.i519, i64 %mul.i.i492) #15
  %target.i.i520 = getelementptr inbounds %struct.cake_tin_data, ptr %131, i32 0, i32 6, i32 1
  %146 = ptrtoint ptr %target.i.i520 to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %145, ptr %target.i.i520, align 8
  %add.i3.i521 = sub i64 %mul.i1.i494, %mul.i.i492
  %sub.i.i522 = add i64 %add.i3.i521, %145
  %mul37.i.i523 = shl i64 %145, 1
  %147 = tail call i64 @llvm.umax.i64(i64 %sub.i.i522, i64 %mul37.i.i523) #15
  %cparams.i.i524 = getelementptr inbounds %struct.cake_tin_data, ptr %131, i32 0, i32 6
  %148 = ptrtoint ptr %cparams.i.i524 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %147, ptr %cparams.i.i524, align 8
  %mtu_time.i.i525 = getelementptr inbounds %struct.cake_tin_data, ptr %131, i32 0, i32 6, i32 2
  %149 = ptrtoint ptr %mtu_time.i.i525 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %shr24.i.i517, ptr %mtu_time.i.i525, align 8
  %p_inc.i.i526 = getelementptr inbounds %struct.cake_tin_data, ptr %131, i32 0, i32 6, i32 3
  %150 = ptrtoint ptr %p_inc.i.i526 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 16777216, ptr %p_inc.i.i526, align 8
  %p_dec.i.i527 = getelementptr inbounds %struct.cake_tin_data, ptr %131, i32 0, i32 6, i32 4
  %151 = ptrtoint ptr %p_dec.i.i527 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 1048576, ptr %p_dec.i.i527, align 4
  %152 = ptrtoint ptr %tins.i490 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %tins.i490, align 8
  %shr.i528 = lshr i64 %126, 4
  %154 = ptrtoint ptr %target.i491 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %target.i491, align 8
  %mul.i4.i = mul i64 %155, 1000
  %156 = ptrtoint ptr %interval.i493 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %interval.i493, align 8
  %mul.i5.i = mul i64 %157, 1000
  %flow_quantum.i6.i = getelementptr %struct.cake_tin_data, ptr %153, i32 1, i32 5
  %158 = ptrtoint ptr %flow_quantum.i6.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 1514, ptr %flow_quantum.i6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %126)
  %tobool.not.i7.i = icmp ult i64 %126, 16
  br i1 %tobool.not.i7.i, label %cake_set_rate.exit.i529.cake_set_rate.exit39.i_crit_edge, label %if.then.i12.i

cake_set_rate.exit.i529.cake_set_rate.exit39.i_crit_edge: ; preds = %cake_set_rate.exit.i529
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit39.i

if.then.i12.i:                                    ; preds = %cake_set_rate.exit.i529
  call void @__sanitizer_cov_trace_const_cmp8(i64 99221504, i64 %126)
  %cmp.i8.i = icmp ult i64 %126, 99221504
  %shr.i9.i = lshr i64 %126, 16
  %159 = tail call i64 @llvm.umax.i64(i64 %shr.i9.i, i64 300) #15
  %160 = trunc i64 %159 to i16
  %161 = select i1 %cmp.i8.i, i16 %160, i16 1514
  %162 = ptrtoint ptr %flow_quantum.i6.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %flow_quantum.i6.i, align 8
  %163 = tail call i64 @llvm.umax.i64(i64 %shr.i528, i64 64) #15
  %call.i10.i = tail call i64 @div64_u64(i64 noundef -1266874889709551616, i64 noundef %163) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 17179869184, i64 %call.i10.i)
  %tobool17.not83.i11.i = icmp ult i64 %call.i10.i, 17179869184
  br i1 %tobool17.not83.i11.i, label %if.then.i12.i.cake_set_rate.exit39.i_crit_edge, label %if.then.i12.i.while.body.i18.i_crit_edge

if.then.i12.i.while.body.i18.i_crit_edge:         ; preds = %if.then.i12.i
  br label %while.body.i18.i

if.then.i12.i.cake_set_rate.exit39.i_crit_edge:   ; preds = %if.then.i12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit39.i

while.body.i18.i:                                 ; preds = %while.body.i18.i.while.body.i18.i_crit_edge, %if.then.i12.i.while.body.i18.i_crit_edge
  %rate_shft.085.i13.i = phi i8 [ %dec.i16.i, %while.body.i18.i.while.body.i18.i_crit_edge ], [ 34, %if.then.i12.i.while.body.i18.i_crit_edge ]
  %rate_ns.084.i14.i = phi i64 [ %shr19.i15.i, %while.body.i18.i.while.body.i18.i_crit_edge ], [ %call.i10.i, %if.then.i12.i.while.body.i18.i_crit_edge ]
  %shr19.i15.i = lshr i64 %rate_ns.084.i14.i, 1
  %dec.i16.i = add nsw i8 %rate_shft.085.i13.i, -1
  %tobool17.not.i17.i = icmp ult i64 %rate_ns.084.i14.i, 34359738368
  br i1 %tobool17.not.i17.i, label %while.body.i18.i.cake_set_rate.exit39.i_crit_edge, label %while.body.i18.i.while.body.i18.i_crit_edge

while.body.i18.i.while.body.i18.i_crit_edge:      ; preds = %while.body.i18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i18.i

while.body.i18.i.cake_set_rate.exit39.i_crit_edge: ; preds = %while.body.i18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit39.i

cake_set_rate.exit39.i:                           ; preds = %while.body.i18.i.cake_set_rate.exit39.i_crit_edge, %if.then.i12.i.cake_set_rate.exit39.i_crit_edge, %cake_set_rate.exit.i529.cake_set_rate.exit39.i_crit_edge
  %rate_ns.1.i19.i = phi i64 [ 0, %cake_set_rate.exit.i529.cake_set_rate.exit39.i_crit_edge ], [ %call.i10.i, %if.then.i12.i.cake_set_rate.exit39.i_crit_edge ], [ %shr19.i15.i, %while.body.i18.i.cake_set_rate.exit39.i_crit_edge ]
  %rate_shft.1.i20.i = phi i8 [ 0, %cake_set_rate.exit.i529.cake_set_rate.exit39.i_crit_edge ], [ 34, %if.then.i12.i.cake_set_rate.exit39.i_crit_edge ], [ %dec.i16.i, %while.body.i18.i.cake_set_rate.exit39.i_crit_edge ]
  %tin_rate_bps.i21.i = getelementptr %struct.cake_tin_data, ptr %153, i32 1, i32 18
  %164 = ptrtoint ptr %tin_rate_bps.i21.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %shr.i528, ptr %tin_rate_bps.i21.i, align 8
  %tin_rate_ns.i22.i = getelementptr %struct.cake_tin_data, ptr %153, i32 1, i32 17
  %165 = ptrtoint ptr %tin_rate_ns.i22.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %rate_ns.1.i19.i, ptr %tin_rate_ns.i22.i, align 8
  %conv20.i23.i = zext i8 %rate_shft.1.i20.i to i16
  %tin_rate_shft.i24.i = getelementptr %struct.cake_tin_data, ptr %153, i32 1, i32 19
  %166 = ptrtoint ptr %tin_rate_shft.i24.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv20.i23.i, ptr %tin_rate_shft.i24.i, align 8
  %mul.i26.i = mul i64 %rate_ns.1.i19.i, %conv21.i.i514
  %sh_prom23.i27.i = zext i8 %rate_shft.1.i20.i to i64
  %shr24.i28.i = lshr i64 %mul.i26.i, %sh_prom23.i27.i
  %mul25.i29.i = mul i64 %shr24.i28.i, 3
  %div81.i30.i = lshr i64 %mul25.i29.i, 1
  %167 = tail call i64 @llvm.umax.i64(i64 %div81.i30.i, i64 %mul.i4.i) #15
  %target.i31.i = getelementptr %struct.cake_tin_data, ptr %153, i32 1, i32 6, i32 1
  %168 = ptrtoint ptr %target.i31.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %167, ptr %target.i31.i, align 8
  %add.i32.i = sub i64 %mul.i5.i, %mul.i4.i
  %sub.i33.i = add i64 %add.i32.i, %167
  %mul37.i34.i = shl i64 %167, 1
  %169 = tail call i64 @llvm.umax.i64(i64 %sub.i33.i, i64 %mul37.i34.i) #15
  %cparams.i35.i = getelementptr %struct.cake_tin_data, ptr %153, i32 1, i32 6
  %170 = ptrtoint ptr %cparams.i35.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %169, ptr %cparams.i35.i, align 8
  %mtu_time.i36.i = getelementptr %struct.cake_tin_data, ptr %153, i32 1, i32 6, i32 2
  %171 = ptrtoint ptr %mtu_time.i36.i to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %shr24.i28.i, ptr %mtu_time.i36.i, align 8
  %p_inc.i37.i = getelementptr %struct.cake_tin_data, ptr %153, i32 1, i32 6, i32 3
  %172 = ptrtoint ptr %p_inc.i37.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 16777216, ptr %p_inc.i37.i, align 8
  %p_dec.i38.i = getelementptr %struct.cake_tin_data, ptr %153, i32 1, i32 6, i32 4
  %173 = ptrtoint ptr %p_dec.i38.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 1048576, ptr %p_dec.i38.i, align 4
  %174 = ptrtoint ptr %tins.i490 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %tins.i490, align 8
  %shr13.i = lshr i64 %126, 1
  %176 = ptrtoint ptr %target.i491 to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %target.i491, align 8
  %mul.i40.i = mul i64 %177, 1000
  %178 = ptrtoint ptr %interval.i493 to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %interval.i493, align 8
  %mul.i41.i = mul i64 %179, 1000
  %flow_quantum.i42.i = getelementptr %struct.cake_tin_data, ptr %175, i32 2, i32 5
  %180 = ptrtoint ptr %flow_quantum.i42.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 1514, ptr %flow_quantum.i42.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %126)
  %tobool.not.i43.i = icmp ult i64 %126, 2
  br i1 %tobool.not.i43.i, label %cake_set_rate.exit39.i.cake_set_rate.exit75.i_crit_edge, label %if.then.i48.i

cake_set_rate.exit39.i.cake_set_rate.exit75.i_crit_edge: ; preds = %cake_set_rate.exit39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit75.i

if.then.i48.i:                                    ; preds = %cake_set_rate.exit39.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 12402688, i64 %126)
  %cmp.i44.i = icmp ult i64 %126, 12402688
  %shr.i45.i = lshr i64 %126, 13
  %181 = tail call i64 @llvm.umax.i64(i64 %shr.i45.i, i64 300) #15
  %182 = trunc i64 %181 to i16
  %183 = select i1 %cmp.i44.i, i16 %182, i16 1514
  %184 = ptrtoint ptr %flow_quantum.i42.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %183, ptr %flow_quantum.i42.i, align 8
  %185 = tail call i64 @llvm.umax.i64(i64 %shr13.i, i64 64) #15
  %call.i46.i = tail call i64 @div64_u64(i64 noundef -1266874889709551616, i64 noundef %185) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 17179869184, i64 %call.i46.i)
  %tobool17.not83.i47.i = icmp ult i64 %call.i46.i, 17179869184
  br i1 %tobool17.not83.i47.i, label %if.then.i48.i.cake_set_rate.exit75.i_crit_edge, label %if.then.i48.i.while.body.i54.i_crit_edge

if.then.i48.i.while.body.i54.i_crit_edge:         ; preds = %if.then.i48.i
  br label %while.body.i54.i

if.then.i48.i.cake_set_rate.exit75.i_crit_edge:   ; preds = %if.then.i48.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit75.i

while.body.i54.i:                                 ; preds = %while.body.i54.i.while.body.i54.i_crit_edge, %if.then.i48.i.while.body.i54.i_crit_edge
  %rate_shft.085.i49.i = phi i8 [ %dec.i52.i, %while.body.i54.i.while.body.i54.i_crit_edge ], [ 34, %if.then.i48.i.while.body.i54.i_crit_edge ]
  %rate_ns.084.i50.i = phi i64 [ %shr19.i51.i, %while.body.i54.i.while.body.i54.i_crit_edge ], [ %call.i46.i, %if.then.i48.i.while.body.i54.i_crit_edge ]
  %shr19.i51.i = lshr i64 %rate_ns.084.i50.i, 1
  %dec.i52.i = add nsw i8 %rate_shft.085.i49.i, -1
  %tobool17.not.i53.i = icmp ult i64 %rate_ns.084.i50.i, 34359738368
  br i1 %tobool17.not.i53.i, label %while.body.i54.i.cake_set_rate.exit75.i_crit_edge, label %while.body.i54.i.while.body.i54.i_crit_edge

while.body.i54.i.while.body.i54.i_crit_edge:      ; preds = %while.body.i54.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i54.i

while.body.i54.i.cake_set_rate.exit75.i_crit_edge: ; preds = %while.body.i54.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit75.i

cake_set_rate.exit75.i:                           ; preds = %while.body.i54.i.cake_set_rate.exit75.i_crit_edge, %if.then.i48.i.cake_set_rate.exit75.i_crit_edge, %cake_set_rate.exit39.i.cake_set_rate.exit75.i_crit_edge
  %rate_ns.1.i55.i = phi i64 [ 0, %cake_set_rate.exit39.i.cake_set_rate.exit75.i_crit_edge ], [ %call.i46.i, %if.then.i48.i.cake_set_rate.exit75.i_crit_edge ], [ %shr19.i51.i, %while.body.i54.i.cake_set_rate.exit75.i_crit_edge ]
  %rate_shft.1.i56.i = phi i8 [ 0, %cake_set_rate.exit39.i.cake_set_rate.exit75.i_crit_edge ], [ 34, %if.then.i48.i.cake_set_rate.exit75.i_crit_edge ], [ %dec.i52.i, %while.body.i54.i.cake_set_rate.exit75.i_crit_edge ]
  %tin_rate_bps.i57.i = getelementptr %struct.cake_tin_data, ptr %175, i32 2, i32 18
  %186 = ptrtoint ptr %tin_rate_bps.i57.i to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 %shr13.i, ptr %tin_rate_bps.i57.i, align 8
  %tin_rate_ns.i58.i = getelementptr %struct.cake_tin_data, ptr %175, i32 2, i32 17
  %187 = ptrtoint ptr %tin_rate_ns.i58.i to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %rate_ns.1.i55.i, ptr %tin_rate_ns.i58.i, align 8
  %conv20.i59.i = zext i8 %rate_shft.1.i56.i to i16
  %tin_rate_shft.i60.i = getelementptr %struct.cake_tin_data, ptr %175, i32 2, i32 19
  %188 = ptrtoint ptr %tin_rate_shft.i60.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %conv20.i59.i, ptr %tin_rate_shft.i60.i, align 8
  %mul.i62.i = mul i64 %rate_ns.1.i55.i, %conv21.i.i514
  %sh_prom23.i63.i = zext i8 %rate_shft.1.i56.i to i64
  %shr24.i64.i = lshr i64 %mul.i62.i, %sh_prom23.i63.i
  %mul25.i65.i = mul i64 %shr24.i64.i, 3
  %div81.i66.i = lshr i64 %mul25.i65.i, 1
  %189 = tail call i64 @llvm.umax.i64(i64 %div81.i66.i, i64 %mul.i40.i) #15
  %target.i67.i = getelementptr %struct.cake_tin_data, ptr %175, i32 2, i32 6, i32 1
  %190 = ptrtoint ptr %target.i67.i to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %189, ptr %target.i67.i, align 8
  %add.i68.i = sub i64 %mul.i41.i, %mul.i40.i
  %sub.i69.i = add i64 %add.i68.i, %189
  %mul37.i70.i = shl i64 %189, 1
  %191 = tail call i64 @llvm.umax.i64(i64 %sub.i69.i, i64 %mul37.i70.i) #15
  %cparams.i71.i = getelementptr %struct.cake_tin_data, ptr %175, i32 2, i32 6
  %192 = ptrtoint ptr %cparams.i71.i to i32
  call void @__asan_store8_noabort(i32 %192)
  store i64 %191, ptr %cparams.i71.i, align 8
  %mtu_time.i72.i = getelementptr %struct.cake_tin_data, ptr %175, i32 2, i32 6, i32 2
  %193 = ptrtoint ptr %mtu_time.i72.i to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %shr24.i64.i, ptr %mtu_time.i72.i, align 8
  %p_inc.i73.i = getelementptr %struct.cake_tin_data, ptr %175, i32 2, i32 6, i32 3
  %194 = ptrtoint ptr %p_inc.i73.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 16777216, ptr %p_inc.i73.i, align 8
  %p_dec.i74.i = getelementptr %struct.cake_tin_data, ptr %175, i32 2, i32 6, i32 4
  %195 = ptrtoint ptr %p_dec.i74.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 1048576, ptr %p_dec.i74.i, align 4
  %196 = ptrtoint ptr %tins.i490 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %tins.i490, align 8
  %shr20.i = lshr i64 %126, 2
  %198 = ptrtoint ptr %target.i491 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %target.i491, align 8
  %200 = ptrtoint ptr %interval.i493 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %interval.i493, align 8
  %flow_quantum.i78.i = getelementptr %struct.cake_tin_data, ptr %197, i32 3, i32 5
  %202 = ptrtoint ptr %flow_quantum.i78.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 1514, ptr %flow_quantum.i78.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %126)
  %tobool.not.i79.i = icmp ult i64 %126, 4
  br i1 %tobool.not.i79.i, label %cake_set_rate.exit75.i.cake_config_diffserv4.exit_crit_edge, label %if.then.i84.i

cake_set_rate.exit75.i.cake_config_diffserv4.exit_crit_edge: ; preds = %cake_set_rate.exit75.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_config_diffserv4.exit

if.then.i84.i:                                    ; preds = %cake_set_rate.exit75.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 24805376, i64 %126)
  %cmp.i80.i = icmp ult i64 %126, 24805376
  %shr.i81.i = lshr i64 %126, 14
  %203 = tail call i64 @llvm.umax.i64(i64 %shr.i81.i, i64 300) #15
  %204 = trunc i64 %203 to i16
  %205 = select i1 %cmp.i80.i, i16 %204, i16 1514
  %206 = ptrtoint ptr %flow_quantum.i78.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %205, ptr %flow_quantum.i78.i, align 8
  %207 = tail call i64 @llvm.umax.i64(i64 %shr20.i, i64 64) #15
  %call.i82.i = tail call i64 @div64_u64(i64 noundef -1266874889709551616, i64 noundef %207) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 17179869184, i64 %call.i82.i)
  %tobool17.not83.i83.i = icmp ult i64 %call.i82.i, 17179869184
  br i1 %tobool17.not83.i83.i, label %if.then.i84.i.cake_config_diffserv4.exit_crit_edge, label %if.then.i84.i.while.body.i90.i_crit_edge

if.then.i84.i.while.body.i90.i_crit_edge:         ; preds = %if.then.i84.i
  br label %while.body.i90.i

if.then.i84.i.cake_config_diffserv4.exit_crit_edge: ; preds = %if.then.i84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_config_diffserv4.exit

while.body.i90.i:                                 ; preds = %while.body.i90.i.while.body.i90.i_crit_edge, %if.then.i84.i.while.body.i90.i_crit_edge
  %rate_shft.085.i85.i = phi i8 [ %dec.i88.i, %while.body.i90.i.while.body.i90.i_crit_edge ], [ 34, %if.then.i84.i.while.body.i90.i_crit_edge ]
  %rate_ns.084.i86.i = phi i64 [ %shr19.i87.i, %while.body.i90.i.while.body.i90.i_crit_edge ], [ %call.i82.i, %if.then.i84.i.while.body.i90.i_crit_edge ]
  %shr19.i87.i = lshr i64 %rate_ns.084.i86.i, 1
  %dec.i88.i = add nsw i8 %rate_shft.085.i85.i, -1
  %tobool17.not.i89.i = icmp ult i64 %rate_ns.084.i86.i, 34359738368
  br i1 %tobool17.not.i89.i, label %while.body.i90.i.cake_config_diffserv4.exit_crit_edge, label %while.body.i90.i.while.body.i90.i_crit_edge

while.body.i90.i.while.body.i90.i_crit_edge:      ; preds = %while.body.i90.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i90.i

while.body.i90.i.cake_config_diffserv4.exit_crit_edge: ; preds = %while.body.i90.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_config_diffserv4.exit

cake_config_diffserv4.exit:                       ; preds = %while.body.i90.i.cake_config_diffserv4.exit_crit_edge, %if.then.i84.i.cake_config_diffserv4.exit_crit_edge, %cake_set_rate.exit75.i.cake_config_diffserv4.exit_crit_edge
  %rate_ns.1.i91.i = phi i64 [ 0, %cake_set_rate.exit75.i.cake_config_diffserv4.exit_crit_edge ], [ %call.i82.i, %if.then.i84.i.cake_config_diffserv4.exit_crit_edge ], [ %shr19.i87.i, %while.body.i90.i.cake_config_diffserv4.exit_crit_edge ]
  %rate_shft.1.i92.i = phi i8 [ 0, %cake_set_rate.exit75.i.cake_config_diffserv4.exit_crit_edge ], [ 34, %if.then.i84.i.cake_config_diffserv4.exit_crit_edge ], [ %dec.i88.i, %while.body.i90.i.cake_config_diffserv4.exit_crit_edge ]
  %mul.i77.i = mul i64 %201, 1000
  %mul.i76.i = mul i64 %199, 1000
  %tin_rate_bps.i93.i = getelementptr %struct.cake_tin_data, ptr %197, i32 3, i32 18
  %208 = ptrtoint ptr %tin_rate_bps.i93.i to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %shr20.i, ptr %tin_rate_bps.i93.i, align 8
  %tin_rate_ns.i94.i = getelementptr %struct.cake_tin_data, ptr %197, i32 3, i32 17
  %209 = ptrtoint ptr %tin_rate_ns.i94.i to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %rate_ns.1.i91.i, ptr %tin_rate_ns.i94.i, align 8
  %conv20.i95.i = zext i8 %rate_shft.1.i92.i to i16
  %tin_rate_shft.i96.i = getelementptr %struct.cake_tin_data, ptr %197, i32 3, i32 19
  %210 = ptrtoint ptr %tin_rate_shft.i96.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %conv20.i95.i, ptr %tin_rate_shft.i96.i, align 8
  %mul.i98.i = mul i64 %rate_ns.1.i91.i, %conv21.i.i514
  %sh_prom23.i99.i = zext i8 %rate_shft.1.i92.i to i64
  %shr24.i100.i = lshr i64 %mul.i98.i, %sh_prom23.i99.i
  %mul25.i101.i = mul i64 %shr24.i100.i, 3
  %div81.i102.i = lshr i64 %mul25.i101.i, 1
  %211 = tail call i64 @llvm.umax.i64(i64 %div81.i102.i, i64 %mul.i76.i) #15
  %target.i103.i = getelementptr %struct.cake_tin_data, ptr %197, i32 3, i32 6, i32 1
  %212 = ptrtoint ptr %target.i103.i to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %211, ptr %target.i103.i, align 8
  %add.i104.i = sub i64 %mul.i77.i, %mul.i76.i
  %sub.i105.i = add i64 %add.i104.i, %211
  %mul37.i106.i = shl i64 %211, 1
  %213 = tail call i64 @llvm.umax.i64(i64 %sub.i105.i, i64 %mul37.i106.i) #15
  %cparams.i107.i = getelementptr %struct.cake_tin_data, ptr %197, i32 3, i32 6
  %214 = ptrtoint ptr %cparams.i107.i to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 %213, ptr %cparams.i107.i, align 8
  %mtu_time.i108.i = getelementptr %struct.cake_tin_data, ptr %197, i32 3, i32 6, i32 2
  %215 = ptrtoint ptr %mtu_time.i108.i to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %shr24.i100.i, ptr %mtu_time.i108.i, align 8
  %p_inc.i109.i = getelementptr %struct.cake_tin_data, ptr %197, i32 3, i32 6, i32 3
  %216 = ptrtoint ptr %p_inc.i109.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 16777216, ptr %p_inc.i109.i, align 8
  %p_dec.i110.i = getelementptr %struct.cake_tin_data, ptr %197, i32 3, i32 6, i32 4
  %217 = ptrtoint ptr %p_dec.i110.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 1048576, ptr %p_dec.i110.i, align 4
  %218 = ptrtoint ptr %tins.i490 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %tins.i490, align 8
  %tin_quantum.i530 = getelementptr inbounds %struct.cake_tin_data, ptr %219, i32 0, i32 20
  %220 = ptrtoint ptr %tin_quantum.i530 to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 1024, ptr %tin_quantum.i530, align 2
  %221 = load ptr, ptr %tins.i490, align 8
  %tin_quantum31.i = getelementptr %struct.cake_tin_data, ptr %221, i32 1, i32 20
  %222 = ptrtoint ptr %tin_quantum31.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 64, ptr %tin_quantum31.i, align 2
  %223 = load ptr, ptr %tins.i490, align 8
  %tin_quantum36.i = getelementptr %struct.cake_tin_data, ptr %223, i32 2, i32 20
  %224 = ptrtoint ptr %tin_quantum36.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 512, ptr %tin_quantum36.i, align 2
  %225 = load ptr, ptr %tins.i490, align 8
  %tin_quantum41.i = getelementptr %struct.cake_tin_data, ptr %225, i32 3, i32 20
  %226 = ptrtoint ptr %tin_quantum41.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 256, ptr %tin_quantum41.i, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %dev_queue.i.i532 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %227 = ptrtoint ptr %dev_queue.i.i532 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev_queue.i.i532, align 8
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 128
  %mtu.i.i533 = getelementptr inbounds %struct.net_device, ptr %230, i32 0, i32 20
  %231 = ptrtoint ptr %mtu.i.i533 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %mtu.i.i533, align 4
  %hard_header_len.i.i534 = getelementptr inbounds %struct.net_device, ptr %230, i32 0, i32 19
  %233 = ptrtoint ptr %hard_header_len.i.i534 to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %hard_header_len.i.i534, align 2
  %conv.i.i535 = zext i16 %234 to i32
  %add.i.i536 = add i32 %232, %conv.i.i535
  %rate_bps.i537 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 13
  %235 = ptrtoint ptr %rate_bps.i537 to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %rate_bps.i537, align 8
  %tin_cnt.i538 = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 5
  %237 = ptrtoint ptr %tin_cnt.i538 to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 3, ptr %tin_cnt.i538, align 2
  %tin_index.i539 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 16, i32 2, i32 0, i32 0, i32 4, i32 6
  %238 = ptrtoint ptr %tin_index.i539 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr @diffserv3, ptr %tin_index.i539, align 8
  %tin_order.i540 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 16, i32 2, i32 0, i32 0, i32 4, i32 7
  %239 = ptrtoint ptr %tin_order.i540 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr @bulk_order, ptr %tin_order.i540, align 4
  %tins.i541 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %240 = ptrtoint ptr %tins.i541 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %tins.i541, align 8
  %target.i542 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 16
  %242 = ptrtoint ptr %target.i542 to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %target.i542, align 8
  %mul.i.i543 = mul i64 %243, 1000
  %interval.i544 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 8
  %244 = ptrtoint ptr %interval.i544 to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %interval.i544, align 8
  %mul.i1.i545 = mul i64 %245, 1000
  %flow_quantum.i.i546 = getelementptr inbounds %struct.cake_tin_data, ptr %241, i32 0, i32 5
  %246 = ptrtoint ptr %flow_quantum.i.i546 to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 1514, ptr %flow_quantum.i.i546, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %236)
  %tobool.not.i.i547 = icmp eq i64 %236, 0
  br i1 %tobool.not.i.i547, label %sw.default.cake_set_rate.exit.i584_crit_edge, label %if.then.i.i552

sw.default.cake_set_rate.exit.i584_crit_edge:     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit.i584

if.then.i.i552:                                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_const_cmp8(i64 6201344, i64 %236)
  %cmp.i.i548 = icmp ult i64 %236, 6201344
  %shr.i.i549 = lshr i64 %236, 12
  %247 = tail call i64 @llvm.umax.i64(i64 %shr.i.i549, i64 300) #15
  %248 = trunc i64 %247 to i16
  %249 = select i1 %cmp.i.i548, i16 %248, i16 1514
  %250 = ptrtoint ptr %flow_quantum.i.i546 to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %249, ptr %flow_quantum.i.i546, align 8
  %251 = tail call i64 @llvm.umax.i64(i64 %236, i64 64) #15
  %call.i.i550 = tail call i64 @div64_u64(i64 noundef -1266874889709551616, i64 noundef %251) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 17179869184, i64 %call.i.i550)
  %tobool17.not83.i.i551 = icmp ult i64 %call.i.i550, 17179869184
  br i1 %tobool17.not83.i.i551, label %if.then.i.i552.cake_set_rate.exit.i584_crit_edge, label %if.then.i.i552.while.body.i.i558_crit_edge

if.then.i.i552.while.body.i.i558_crit_edge:       ; preds = %if.then.i.i552
  br label %while.body.i.i558

if.then.i.i552.cake_set_rate.exit.i584_crit_edge: ; preds = %if.then.i.i552
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit.i584

while.body.i.i558:                                ; preds = %while.body.i.i558.while.body.i.i558_crit_edge, %if.then.i.i552.while.body.i.i558_crit_edge
  %rate_shft.085.i.i553 = phi i8 [ %dec.i.i556, %while.body.i.i558.while.body.i.i558_crit_edge ], [ 34, %if.then.i.i552.while.body.i.i558_crit_edge ]
  %rate_ns.084.i.i554 = phi i64 [ %shr19.i.i555, %while.body.i.i558.while.body.i.i558_crit_edge ], [ %call.i.i550, %if.then.i.i552.while.body.i.i558_crit_edge ]
  %shr19.i.i555 = lshr i64 %rate_ns.084.i.i554, 1
  %dec.i.i556 = add nsw i8 %rate_shft.085.i.i553, -1
  %tobool17.not.i.i557 = icmp ult i64 %rate_ns.084.i.i554, 34359738368
  br i1 %tobool17.not.i.i557, label %while.body.i.i558.cake_set_rate.exit.i584_crit_edge, label %while.body.i.i558.while.body.i.i558_crit_edge

while.body.i.i558.while.body.i.i558_crit_edge:    ; preds = %while.body.i.i558
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i558

while.body.i.i558.cake_set_rate.exit.i584_crit_edge: ; preds = %while.body.i.i558
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit.i584

cake_set_rate.exit.i584:                          ; preds = %while.body.i.i558.cake_set_rate.exit.i584_crit_edge, %if.then.i.i552.cake_set_rate.exit.i584_crit_edge, %sw.default.cake_set_rate.exit.i584_crit_edge
  %rate_ns.1.i.i559 = phi i64 [ 0, %sw.default.cake_set_rate.exit.i584_crit_edge ], [ %call.i.i550, %if.then.i.i552.cake_set_rate.exit.i584_crit_edge ], [ %shr19.i.i555, %while.body.i.i558.cake_set_rate.exit.i584_crit_edge ]
  %rate_shft.1.i.i560 = phi i8 [ 0, %sw.default.cake_set_rate.exit.i584_crit_edge ], [ 34, %if.then.i.i552.cake_set_rate.exit.i584_crit_edge ], [ %dec.i.i556, %while.body.i.i558.cake_set_rate.exit.i584_crit_edge ]
  %tin_rate_bps.i.i561 = getelementptr inbounds %struct.cake_tin_data, ptr %241, i32 0, i32 18
  %252 = ptrtoint ptr %tin_rate_bps.i.i561 to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 %236, ptr %tin_rate_bps.i.i561, align 8
  %tin_rate_ns.i.i562 = getelementptr inbounds %struct.cake_tin_data, ptr %241, i32 0, i32 17
  %253 = ptrtoint ptr %tin_rate_ns.i.i562 to i32
  call void @__asan_store8_noabort(i32 %253)
  store i64 %rate_ns.1.i.i559, ptr %tin_rate_ns.i.i562, align 8
  %conv20.i.i563 = zext i8 %rate_shft.1.i.i560 to i16
  %tin_rate_shft.i.i564 = getelementptr inbounds %struct.cake_tin_data, ptr %241, i32 0, i32 19
  %254 = ptrtoint ptr %tin_rate_shft.i.i564 to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %conv20.i.i563, ptr %tin_rate_shft.i.i564, align 8
  %conv21.i.i565 = zext i32 %add.i.i536 to i64
  %mul.i2.i566 = mul i64 %rate_ns.1.i.i559, %conv21.i.i565
  %sh_prom23.i.i567 = zext i8 %rate_shft.1.i.i560 to i64
  %shr24.i.i568 = lshr i64 %mul.i2.i566, %sh_prom23.i.i567
  %mul25.i.i569 = mul i64 %shr24.i.i568, 3
  %div81.i.i570 = lshr i64 %mul25.i.i569, 1
  %255 = tail call i64 @llvm.umax.i64(i64 %div81.i.i570, i64 %mul.i.i543) #15
  %target.i.i571 = getelementptr inbounds %struct.cake_tin_data, ptr %241, i32 0, i32 6, i32 1
  %256 = ptrtoint ptr %target.i.i571 to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 %255, ptr %target.i.i571, align 8
  %add.i3.i572 = sub i64 %mul.i1.i545, %mul.i.i543
  %sub.i.i573 = add i64 %add.i3.i572, %255
  %mul37.i.i574 = shl i64 %255, 1
  %257 = tail call i64 @llvm.umax.i64(i64 %sub.i.i573, i64 %mul37.i.i574) #15
  %cparams.i.i575 = getelementptr inbounds %struct.cake_tin_data, ptr %241, i32 0, i32 6
  %258 = ptrtoint ptr %cparams.i.i575 to i32
  call void @__asan_store8_noabort(i32 %258)
  store i64 %257, ptr %cparams.i.i575, align 8
  %mtu_time.i.i576 = getelementptr inbounds %struct.cake_tin_data, ptr %241, i32 0, i32 6, i32 2
  %259 = ptrtoint ptr %mtu_time.i.i576 to i32
  call void @__asan_store8_noabort(i32 %259)
  store i64 %shr24.i.i568, ptr %mtu_time.i.i576, align 8
  %p_inc.i.i577 = getelementptr inbounds %struct.cake_tin_data, ptr %241, i32 0, i32 6, i32 3
  %260 = ptrtoint ptr %p_inc.i.i577 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 16777216, ptr %p_inc.i.i577, align 8
  %p_dec.i.i578 = getelementptr inbounds %struct.cake_tin_data, ptr %241, i32 0, i32 6, i32 4
  %261 = ptrtoint ptr %p_dec.i.i578 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 1048576, ptr %p_dec.i.i578, align 4
  %262 = ptrtoint ptr %tins.i541 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %tins.i541, align 8
  %shr.i579 = lshr i64 %236, 4
  %264 = ptrtoint ptr %target.i542 to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %target.i542, align 8
  %mul.i4.i580 = mul i64 %265, 1000
  %266 = ptrtoint ptr %interval.i544 to i32
  call void @__asan_load8_noabort(i32 %266)
  %267 = load i64, ptr %interval.i544, align 8
  %mul.i5.i581 = mul i64 %267, 1000
  %flow_quantum.i6.i582 = getelementptr %struct.cake_tin_data, ptr %263, i32 1, i32 5
  %268 = ptrtoint ptr %flow_quantum.i6.i582 to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 1514, ptr %flow_quantum.i6.i582, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %236)
  %tobool.not.i7.i583 = icmp ult i64 %236, 16
  br i1 %tobool.not.i7.i583, label %cake_set_rate.exit.i584.cake_set_rate.exit39.i618_crit_edge, label %if.then.i12.i589

cake_set_rate.exit.i584.cake_set_rate.exit39.i618_crit_edge: ; preds = %cake_set_rate.exit.i584
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit39.i618

if.then.i12.i589:                                 ; preds = %cake_set_rate.exit.i584
  call void @__sanitizer_cov_trace_const_cmp8(i64 99221504, i64 %236)
  %cmp.i8.i585 = icmp ult i64 %236, 99221504
  %shr.i9.i586 = lshr i64 %236, 16
  %269 = tail call i64 @llvm.umax.i64(i64 %shr.i9.i586, i64 300) #15
  %270 = trunc i64 %269 to i16
  %271 = select i1 %cmp.i8.i585, i16 %270, i16 1514
  %272 = ptrtoint ptr %flow_quantum.i6.i582 to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %271, ptr %flow_quantum.i6.i582, align 8
  %273 = tail call i64 @llvm.umax.i64(i64 %shr.i579, i64 64) #15
  %call.i10.i587 = tail call i64 @div64_u64(i64 noundef -1266874889709551616, i64 noundef %273) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 17179869184, i64 %call.i10.i587)
  %tobool17.not83.i11.i588 = icmp ult i64 %call.i10.i587, 17179869184
  br i1 %tobool17.not83.i11.i588, label %if.then.i12.i589.cake_set_rate.exit39.i618_crit_edge, label %if.then.i12.i589.while.body.i18.i595_crit_edge

if.then.i12.i589.while.body.i18.i595_crit_edge:   ; preds = %if.then.i12.i589
  br label %while.body.i18.i595

if.then.i12.i589.cake_set_rate.exit39.i618_crit_edge: ; preds = %if.then.i12.i589
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit39.i618

while.body.i18.i595:                              ; preds = %while.body.i18.i595.while.body.i18.i595_crit_edge, %if.then.i12.i589.while.body.i18.i595_crit_edge
  %rate_shft.085.i13.i590 = phi i8 [ %dec.i16.i593, %while.body.i18.i595.while.body.i18.i595_crit_edge ], [ 34, %if.then.i12.i589.while.body.i18.i595_crit_edge ]
  %rate_ns.084.i14.i591 = phi i64 [ %shr19.i15.i592, %while.body.i18.i595.while.body.i18.i595_crit_edge ], [ %call.i10.i587, %if.then.i12.i589.while.body.i18.i595_crit_edge ]
  %shr19.i15.i592 = lshr i64 %rate_ns.084.i14.i591, 1
  %dec.i16.i593 = add nsw i8 %rate_shft.085.i13.i590, -1
  %tobool17.not.i17.i594 = icmp ult i64 %rate_ns.084.i14.i591, 34359738368
  br i1 %tobool17.not.i17.i594, label %while.body.i18.i595.cake_set_rate.exit39.i618_crit_edge, label %while.body.i18.i595.while.body.i18.i595_crit_edge

while.body.i18.i595.while.body.i18.i595_crit_edge: ; preds = %while.body.i18.i595
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i18.i595

while.body.i18.i595.cake_set_rate.exit39.i618_crit_edge: ; preds = %while.body.i18.i595
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_set_rate.exit39.i618

cake_set_rate.exit39.i618:                        ; preds = %while.body.i18.i595.cake_set_rate.exit39.i618_crit_edge, %if.then.i12.i589.cake_set_rate.exit39.i618_crit_edge, %cake_set_rate.exit.i584.cake_set_rate.exit39.i618_crit_edge
  %rate_ns.1.i19.i596 = phi i64 [ 0, %cake_set_rate.exit.i584.cake_set_rate.exit39.i618_crit_edge ], [ %call.i10.i587, %if.then.i12.i589.cake_set_rate.exit39.i618_crit_edge ], [ %shr19.i15.i592, %while.body.i18.i595.cake_set_rate.exit39.i618_crit_edge ]
  %rate_shft.1.i20.i597 = phi i8 [ 0, %cake_set_rate.exit.i584.cake_set_rate.exit39.i618_crit_edge ], [ 34, %if.then.i12.i589.cake_set_rate.exit39.i618_crit_edge ], [ %dec.i16.i593, %while.body.i18.i595.cake_set_rate.exit39.i618_crit_edge ]
  %tin_rate_bps.i21.i598 = getelementptr %struct.cake_tin_data, ptr %263, i32 1, i32 18
  %274 = ptrtoint ptr %tin_rate_bps.i21.i598 to i32
  call void @__asan_store8_noabort(i32 %274)
  store i64 %shr.i579, ptr %tin_rate_bps.i21.i598, align 8
  %tin_rate_ns.i22.i599 = getelementptr %struct.cake_tin_data, ptr %263, i32 1, i32 17
  %275 = ptrtoint ptr %tin_rate_ns.i22.i599 to i32
  call void @__asan_store8_noabort(i32 %275)
  store i64 %rate_ns.1.i19.i596, ptr %tin_rate_ns.i22.i599, align 8
  %conv20.i23.i600 = zext i8 %rate_shft.1.i20.i597 to i16
  %tin_rate_shft.i24.i601 = getelementptr %struct.cake_tin_data, ptr %263, i32 1, i32 19
  %276 = ptrtoint ptr %tin_rate_shft.i24.i601 to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 %conv20.i23.i600, ptr %tin_rate_shft.i24.i601, align 8
  %mul.i26.i602 = mul i64 %rate_ns.1.i19.i596, %conv21.i.i565
  %sh_prom23.i27.i603 = zext i8 %rate_shft.1.i20.i597 to i64
  %shr24.i28.i604 = lshr i64 %mul.i26.i602, %sh_prom23.i27.i603
  %mul25.i29.i605 = mul i64 %shr24.i28.i604, 3
  %div81.i30.i606 = lshr i64 %mul25.i29.i605, 1
  %277 = tail call i64 @llvm.umax.i64(i64 %div81.i30.i606, i64 %mul.i4.i580) #15
  %target.i31.i607 = getelementptr %struct.cake_tin_data, ptr %263, i32 1, i32 6, i32 1
  %278 = ptrtoint ptr %target.i31.i607 to i32
  call void @__asan_store8_noabort(i32 %278)
  store i64 %277, ptr %target.i31.i607, align 8
  %add.i32.i608 = sub i64 %mul.i5.i581, %mul.i4.i580
  %sub.i33.i609 = add i64 %add.i32.i608, %277
  %mul37.i34.i610 = shl i64 %277, 1
  %279 = tail call i64 @llvm.umax.i64(i64 %sub.i33.i609, i64 %mul37.i34.i610) #15
  %cparams.i35.i611 = getelementptr %struct.cake_tin_data, ptr %263, i32 1, i32 6
  %280 = ptrtoint ptr %cparams.i35.i611 to i32
  call void @__asan_store8_noabort(i32 %280)
  store i64 %279, ptr %cparams.i35.i611, align 8
  %mtu_time.i36.i612 = getelementptr %struct.cake_tin_data, ptr %263, i32 1, i32 6, i32 2
  %281 = ptrtoint ptr %mtu_time.i36.i612 to i32
  call void @__asan_store8_noabort(i32 %281)
  store i64 %shr24.i28.i604, ptr %mtu_time.i36.i612, align 8
  %p_inc.i37.i613 = getelementptr %struct.cake_tin_data, ptr %263, i32 1, i32 6, i32 3
  %282 = ptrtoint ptr %p_inc.i37.i613 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 16777216, ptr %p_inc.i37.i613, align 8
  %p_dec.i38.i614 = getelementptr %struct.cake_tin_data, ptr %263, i32 1, i32 6, i32 4
  %283 = ptrtoint ptr %p_dec.i38.i614 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 1048576, ptr %p_dec.i38.i614, align 4
  %284 = ptrtoint ptr %tins.i541 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %tins.i541, align 8
  %shr13.i615 = lshr i64 %236, 2
  %286 = ptrtoint ptr %target.i542 to i32
  call void @__asan_load8_noabort(i32 %286)
  %287 = load i64, ptr %target.i542, align 8
  %288 = ptrtoint ptr %interval.i544 to i32
  call void @__asan_load8_noabort(i32 %288)
  %289 = load i64, ptr %interval.i544, align 8
  %flow_quantum.i42.i616 = getelementptr %struct.cake_tin_data, ptr %285, i32 2, i32 5
  %290 = ptrtoint ptr %flow_quantum.i42.i616 to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 1514, ptr %flow_quantum.i42.i616, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %236)
  %tobool.not.i43.i617 = icmp ult i64 %236, 4
  br i1 %tobool.not.i43.i617, label %cake_set_rate.exit39.i618.cake_config_diffserv3.exit_crit_edge, label %if.then.i48.i623

cake_set_rate.exit39.i618.cake_config_diffserv3.exit_crit_edge: ; preds = %cake_set_rate.exit39.i618
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_config_diffserv3.exit

if.then.i48.i623:                                 ; preds = %cake_set_rate.exit39.i618
  call void @__sanitizer_cov_trace_const_cmp8(i64 24805376, i64 %236)
  %cmp.i44.i619 = icmp ult i64 %236, 24805376
  %shr.i45.i620 = lshr i64 %236, 14
  %291 = tail call i64 @llvm.umax.i64(i64 %shr.i45.i620, i64 300) #15
  %292 = trunc i64 %291 to i16
  %293 = select i1 %cmp.i44.i619, i16 %292, i16 1514
  %294 = ptrtoint ptr %flow_quantum.i42.i616 to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 %293, ptr %flow_quantum.i42.i616, align 8
  %295 = tail call i64 @llvm.umax.i64(i64 %shr13.i615, i64 64) #15
  %call.i46.i621 = tail call i64 @div64_u64(i64 noundef -1266874889709551616, i64 noundef %295) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 17179869184, i64 %call.i46.i621)
  %tobool17.not83.i47.i622 = icmp ult i64 %call.i46.i621, 17179869184
  br i1 %tobool17.not83.i47.i622, label %if.then.i48.i623.cake_config_diffserv3.exit_crit_edge, label %if.then.i48.i623.while.body.i54.i629_crit_edge

if.then.i48.i623.while.body.i54.i629_crit_edge:   ; preds = %if.then.i48.i623
  br label %while.body.i54.i629

if.then.i48.i623.cake_config_diffserv3.exit_crit_edge: ; preds = %if.then.i48.i623
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_config_diffserv3.exit

while.body.i54.i629:                              ; preds = %while.body.i54.i629.while.body.i54.i629_crit_edge, %if.then.i48.i623.while.body.i54.i629_crit_edge
  %rate_shft.085.i49.i624 = phi i8 [ %dec.i52.i627, %while.body.i54.i629.while.body.i54.i629_crit_edge ], [ 34, %if.then.i48.i623.while.body.i54.i629_crit_edge ]
  %rate_ns.084.i50.i625 = phi i64 [ %shr19.i51.i626, %while.body.i54.i629.while.body.i54.i629_crit_edge ], [ %call.i46.i621, %if.then.i48.i623.while.body.i54.i629_crit_edge ]
  %shr19.i51.i626 = lshr i64 %rate_ns.084.i50.i625, 1
  %dec.i52.i627 = add nsw i8 %rate_shft.085.i49.i624, -1
  %tobool17.not.i53.i628 = icmp ult i64 %rate_ns.084.i50.i625, 34359738368
  br i1 %tobool17.not.i53.i628, label %while.body.i54.i629.cake_config_diffserv3.exit_crit_edge, label %while.body.i54.i629.while.body.i54.i629_crit_edge

while.body.i54.i629.while.body.i54.i629_crit_edge: ; preds = %while.body.i54.i629
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i54.i629

while.body.i54.i629.cake_config_diffserv3.exit_crit_edge: ; preds = %while.body.i54.i629
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_config_diffserv3.exit

cake_config_diffserv3.exit:                       ; preds = %while.body.i54.i629.cake_config_diffserv3.exit_crit_edge, %if.then.i48.i623.cake_config_diffserv3.exit_crit_edge, %cake_set_rate.exit39.i618.cake_config_diffserv3.exit_crit_edge
  %rate_ns.1.i55.i630 = phi i64 [ 0, %cake_set_rate.exit39.i618.cake_config_diffserv3.exit_crit_edge ], [ %call.i46.i621, %if.then.i48.i623.cake_config_diffserv3.exit_crit_edge ], [ %shr19.i51.i626, %while.body.i54.i629.cake_config_diffserv3.exit_crit_edge ]
  %rate_shft.1.i56.i631 = phi i8 [ 0, %cake_set_rate.exit39.i618.cake_config_diffserv3.exit_crit_edge ], [ 34, %if.then.i48.i623.cake_config_diffserv3.exit_crit_edge ], [ %dec.i52.i627, %while.body.i54.i629.cake_config_diffserv3.exit_crit_edge ]
  %mul.i41.i632 = mul i64 %289, 1000
  %mul.i40.i633 = mul i64 %287, 1000
  %tin_rate_bps.i57.i634 = getelementptr %struct.cake_tin_data, ptr %285, i32 2, i32 18
  %296 = ptrtoint ptr %tin_rate_bps.i57.i634 to i32
  call void @__asan_store8_noabort(i32 %296)
  store i64 %shr13.i615, ptr %tin_rate_bps.i57.i634, align 8
  %tin_rate_ns.i58.i635 = getelementptr %struct.cake_tin_data, ptr %285, i32 2, i32 17
  %297 = ptrtoint ptr %tin_rate_ns.i58.i635 to i32
  call void @__asan_store8_noabort(i32 %297)
  store i64 %rate_ns.1.i55.i630, ptr %tin_rate_ns.i58.i635, align 8
  %conv20.i59.i636 = zext i8 %rate_shft.1.i56.i631 to i16
  %tin_rate_shft.i60.i637 = getelementptr %struct.cake_tin_data, ptr %285, i32 2, i32 19
  %298 = ptrtoint ptr %tin_rate_shft.i60.i637 to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %conv20.i59.i636, ptr %tin_rate_shft.i60.i637, align 8
  %mul.i62.i638 = mul i64 %rate_ns.1.i55.i630, %conv21.i.i565
  %sh_prom23.i63.i639 = zext i8 %rate_shft.1.i56.i631 to i64
  %shr24.i64.i640 = lshr i64 %mul.i62.i638, %sh_prom23.i63.i639
  %mul25.i65.i641 = mul i64 %shr24.i64.i640, 3
  %div81.i66.i642 = lshr i64 %mul25.i65.i641, 1
  %299 = tail call i64 @llvm.umax.i64(i64 %div81.i66.i642, i64 %mul.i40.i633) #15
  %target.i67.i643 = getelementptr %struct.cake_tin_data, ptr %285, i32 2, i32 6, i32 1
  %300 = ptrtoint ptr %target.i67.i643 to i32
  call void @__asan_store8_noabort(i32 %300)
  store i64 %299, ptr %target.i67.i643, align 8
  %add.i68.i644 = sub i64 %mul.i41.i632, %mul.i40.i633
  %sub.i69.i645 = add i64 %add.i68.i644, %299
  %mul37.i70.i646 = shl i64 %299, 1
  %301 = tail call i64 @llvm.umax.i64(i64 %sub.i69.i645, i64 %mul37.i70.i646) #15
  %cparams.i71.i647 = getelementptr %struct.cake_tin_data, ptr %285, i32 2, i32 6
  %302 = ptrtoint ptr %cparams.i71.i647 to i32
  call void @__asan_store8_noabort(i32 %302)
  store i64 %301, ptr %cparams.i71.i647, align 8
  %mtu_time.i72.i648 = getelementptr %struct.cake_tin_data, ptr %285, i32 2, i32 6, i32 2
  %303 = ptrtoint ptr %mtu_time.i72.i648 to i32
  call void @__asan_store8_noabort(i32 %303)
  store i64 %shr24.i64.i640, ptr %mtu_time.i72.i648, align 8
  %p_inc.i73.i649 = getelementptr %struct.cake_tin_data, ptr %285, i32 2, i32 6, i32 3
  %304 = ptrtoint ptr %p_inc.i73.i649 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 16777216, ptr %p_inc.i73.i649, align 8
  %p_dec.i74.i650 = getelementptr %struct.cake_tin_data, ptr %285, i32 2, i32 6, i32 4
  %305 = ptrtoint ptr %p_dec.i74.i650 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 1048576, ptr %p_dec.i74.i650, align 4
  %306 = ptrtoint ptr %tins.i541 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %tins.i541, align 8
  %tin_quantum.i651 = getelementptr inbounds %struct.cake_tin_data, ptr %307, i32 0, i32 20
  %308 = ptrtoint ptr %tin_quantum.i651 to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 1024, ptr %tin_quantum.i651, align 2
  %309 = load ptr, ptr %tins.i541, align 8
  %tin_quantum24.i = getelementptr %struct.cake_tin_data, ptr %309, i32 1, i32 20
  %310 = ptrtoint ptr %tin_quantum24.i to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 64, ptr %tin_quantum24.i, align 2
  %311 = load ptr, ptr %tins.i541, align 8
  %tin_quantum29.i = getelementptr %struct.cake_tin_data, ptr %311, i32 2, i32 20
  %312 = ptrtoint ptr %tin_quantum29.i to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 256, ptr %tin_quantum29.i, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %cake_config_diffserv3.exit, %cake_config_diffserv4.exit, %cake_set_rate.exit.i479.sw.epilog_crit_edge, %cake_set_rate.exit.i.sw.epilog_crit_edge, %cake_config_besteffort.exit
  %tin_cnt = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 5
  %313 = ptrtoint ptr %tin_cnt to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %tin_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %314)
  %cmp655 = icmp ult i16 %314, 8
  br i1 %cmp655, label %for.body.lr.ph, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %tins = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %conv10 = zext i16 %314 to i32
  tail call fastcc void @cake_clear_tin(ptr noundef %sch, i16 noundef zeroext %314)
  %315 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %tins, align 8
  %mtu_time = getelementptr inbounds %struct.cake_tin_data, ptr %316, i32 0, i32 6, i32 2
  %317 = ptrtoint ptr %mtu_time to i32
  call void @__asan_load8_noabort(i32 %317)
  %318 = load i64, ptr %mtu_time, align 8
  %mtu_time16 = getelementptr %struct.cake_tin_data, ptr %316, i32 %conv10, i32 6, i32 2
  %319 = ptrtoint ptr %mtu_time16 to i32
  call void @__asan_store8_noabort(i32 %319)
  store i64 %318, ptr %mtu_time16, align 8
  %inc = add nuw nsw i32 %conv10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body.lr.ph.for.end_crit_edge, label %for.body.1

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.1:                                       ; preds = %for.body.lr.ph
  %conv12.1 = trunc i32 %inc to i16
  tail call fastcc void @cake_clear_tin(ptr noundef %sch, i16 noundef zeroext %conv12.1)
  %320 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %tins, align 8
  %mtu_time.1 = getelementptr inbounds %struct.cake_tin_data, ptr %321, i32 0, i32 6, i32 2
  %322 = ptrtoint ptr %mtu_time.1 to i32
  call void @__asan_load8_noabort(i32 %322)
  %323 = load i64, ptr %mtu_time.1, align 8
  %mtu_time16.1 = getelementptr %struct.cake_tin_data, ptr %321, i32 %inc, i32 6, i32 2
  %324 = ptrtoint ptr %mtu_time16.1 to i32
  call void @__asan_store8_noabort(i32 %324)
  store i64 %323, ptr %mtu_time16.1, align 8
  %inc.1 = add nuw nsw i32 %conv10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.1)
  %exitcond.not.1 = icmp eq i32 %inc.1, 8
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %conv12.2 = trunc i32 %inc.1 to i16
  tail call fastcc void @cake_clear_tin(ptr noundef %sch, i16 noundef zeroext %conv12.2)
  %325 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %tins, align 8
  %mtu_time.2 = getelementptr inbounds %struct.cake_tin_data, ptr %326, i32 0, i32 6, i32 2
  %327 = ptrtoint ptr %mtu_time.2 to i32
  call void @__asan_load8_noabort(i32 %327)
  %328 = load i64, ptr %mtu_time.2, align 8
  %mtu_time16.2 = getelementptr %struct.cake_tin_data, ptr %326, i32 %inc.1, i32 6, i32 2
  %329 = ptrtoint ptr %mtu_time16.2 to i32
  call void @__asan_store8_noabort(i32 %329)
  store i64 %328, ptr %mtu_time16.2, align 8
  %inc.2 = add nuw nsw i32 %conv10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.2)
  %exitcond.not.2 = icmp eq i32 %inc.2, 8
  br i1 %exitcond.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %conv12.3 = trunc i32 %inc.2 to i16
  tail call fastcc void @cake_clear_tin(ptr noundef %sch, i16 noundef zeroext %conv12.3)
  %330 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %tins, align 8
  %mtu_time.3 = getelementptr inbounds %struct.cake_tin_data, ptr %331, i32 0, i32 6, i32 2
  %332 = ptrtoint ptr %mtu_time.3 to i32
  call void @__asan_load8_noabort(i32 %332)
  %333 = load i64, ptr %mtu_time.3, align 8
  %mtu_time16.3 = getelementptr %struct.cake_tin_data, ptr %331, i32 %inc.2, i32 6, i32 2
  %334 = ptrtoint ptr %mtu_time16.3 to i32
  call void @__asan_store8_noabort(i32 %334)
  store i64 %333, ptr %mtu_time16.3, align 8
  %inc.3 = add nuw nsw i32 %conv10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.3)
  %exitcond.not.3 = icmp eq i32 %inc.3, 8
  br i1 %exitcond.not.3, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %conv12.4 = trunc i32 %inc.3 to i16
  tail call fastcc void @cake_clear_tin(ptr noundef %sch, i16 noundef zeroext %conv12.4)
  %335 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %tins, align 8
  %mtu_time.4 = getelementptr inbounds %struct.cake_tin_data, ptr %336, i32 0, i32 6, i32 2
  %337 = ptrtoint ptr %mtu_time.4 to i32
  call void @__asan_load8_noabort(i32 %337)
  %338 = load i64, ptr %mtu_time.4, align 8
  %mtu_time16.4 = getelementptr %struct.cake_tin_data, ptr %336, i32 %inc.3, i32 6, i32 2
  %339 = ptrtoint ptr %mtu_time16.4 to i32
  call void @__asan_store8_noabort(i32 %339)
  store i64 %338, ptr %mtu_time16.4, align 8
  %inc.4 = add nuw nsw i32 %conv10, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.4)
  %exitcond.not.4 = icmp eq i32 %inc.4, 8
  br i1 %exitcond.not.4, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %conv12.5 = trunc i32 %inc.4 to i16
  tail call fastcc void @cake_clear_tin(ptr noundef %sch, i16 noundef zeroext %conv12.5)
  %340 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %tins, align 8
  %mtu_time.5 = getelementptr inbounds %struct.cake_tin_data, ptr %341, i32 0, i32 6, i32 2
  %342 = ptrtoint ptr %mtu_time.5 to i32
  call void @__asan_load8_noabort(i32 %342)
  %343 = load i64, ptr %mtu_time.5, align 8
  %mtu_time16.5 = getelementptr %struct.cake_tin_data, ptr %341, i32 %inc.4, i32 6, i32 2
  %344 = ptrtoint ptr %mtu_time16.5 to i32
  call void @__asan_store8_noabort(i32 %344)
  store i64 %343, ptr %mtu_time16.5, align 8
  %inc.5 = add nuw nsw i32 %conv10, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.5)
  %exitcond.not.5 = icmp eq i32 %inc.5, 8
  br i1 %exitcond.not.5, label %for.body.5.for.end_crit_edge, label %for.body.6

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  %conv12.6 = trunc i32 %inc.5 to i16
  tail call fastcc void @cake_clear_tin(ptr noundef %sch, i16 noundef zeroext %conv12.6)
  %345 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %tins, align 8
  %mtu_time.6 = getelementptr inbounds %struct.cake_tin_data, ptr %346, i32 0, i32 6, i32 2
  %347 = ptrtoint ptr %mtu_time.6 to i32
  call void @__asan_load8_noabort(i32 %347)
  %348 = load i64, ptr %mtu_time.6, align 8
  %mtu_time16.6 = getelementptr %struct.cake_tin_data, ptr %346, i32 %inc.5, i32 6, i32 2
  %349 = ptrtoint ptr %mtu_time16.6 to i32
  call void @__asan_store8_noabort(i32 %349)
  store i64 %348, ptr %mtu_time16.6, align 8
  %inc.6 = add nuw nsw i32 %conv10, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.6)
  %exitcond.not.6 = icmp eq i32 %inc.6, 8
  br i1 %exitcond.not.6, label %for.body.6.for.end_crit_edge, label %for.body.7

for.body.6.for.end_crit_edge:                     ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.7:                                       ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #17
  %conv12.7 = trunc i32 %inc.6 to i16
  tail call fastcc void @cake_clear_tin(ptr noundef %sch, i16 noundef zeroext %conv12.7)
  %350 = ptrtoint ptr %tins to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %tins, align 8
  %mtu_time.7 = getelementptr inbounds %struct.cake_tin_data, ptr %351, i32 0, i32 6, i32 2
  %352 = ptrtoint ptr %mtu_time.7 to i32
  call void @__asan_load8_noabort(i32 %352)
  %353 = load i64, ptr %mtu_time.7, align 8
  %mtu_time16.7 = getelementptr %struct.cake_tin_data, ptr %351, i32 %inc.6, i32 6, i32 2
  %354 = ptrtoint ptr %mtu_time16.7 to i32
  call void @__asan_store8_noabort(i32 %354)
  store i64 %353, ptr %mtu_time16.7, align 8
  br label %for.end

for.end:                                          ; preds = %for.body.7, %for.body.6.for.end_crit_edge, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %tins17 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %355 = ptrtoint ptr %tins17 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %tins17, align 8
  %tin_rate_ns = getelementptr inbounds %struct.cake_tin_data, ptr %356, i32 0, i32 17
  %357 = ptrtoint ptr %tin_rate_ns to i32
  call void @__asan_load8_noabort(i32 %357)
  %358 = load i64, ptr %tin_rate_ns, align 8
  %rate_ns = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 11
  %359 = ptrtoint ptr %rate_ns to i32
  call void @__asan_store8_noabort(i32 %359)
  store i64 %358, ptr %rate_ns, align 8
  %tin_rate_shft = getelementptr inbounds %struct.cake_tin_data, ptr %356, i32 0, i32 19
  %360 = ptrtoint ptr %tin_rate_shft to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %tin_rate_shft, align 8
  %rate_shft = getelementptr inbounds %struct.cake_sched_data, ptr %privdata.i, i32 0, i32 12
  %362 = ptrtoint ptr %rate_shft to i32
  call void @__asan_store2_noabort(i32 %362)
  store i16 %361, ptr %rate_shft, align 2
  %buffer_config_limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 36
  %363 = ptrtoint ptr %buffer_config_limit to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %buffer_config_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %tobool.not = icmp eq i32 %364, 0
  br i1 %tobool.not, label %if.else, label %for.end.if.end224_crit_edge

for.end.if.end224_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end224

if.else:                                          ; preds = %for.end
  %rate_bps = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 13
  %365 = ptrtoint ptr %rate_bps to i32
  call void @__asan_load8_noabort(i32 %365)
  %366 = load i64, ptr %rate_bps, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %366)
  %tobool22.not = icmp eq i64 %366, 0
  br i1 %tobool22.not, label %if.else.if.end224_crit_edge, label %if.end210

if.else.if.end224_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end224

if.end210:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %interval = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 8
  %367 = ptrtoint ptr %interval to i32
  call void @__asan_load8_noabort(i32 %367)
  %368 = load i64, ptr %interval, align 8
  %mul = mul i64 %368, %366
  %369 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul) #20, !srcloc !77
  %370 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul, i64 %369, i32 0) #20, !srcloc !76
  %asmresult10.i = extractvalue { i64, i32 } %370, 0
  %div190365 = lshr i64 %asmresult10.i, 16
  %extract.t366 = trunc i64 %div190365 to i32
  %371 = tail call i32 @llvm.umax.i32(i32 %extract.t366, i32 4194304)
  br label %if.end224

if.end224:                                        ; preds = %if.end210, %if.else.if.end224_crit_edge, %for.end.if.end224_crit_edge
  %.sink = phi i32 [ %371, %if.end210 ], [ %364, %for.end.if.end224_crit_edge ], [ -1, %if.else.if.end224_crit_edge ]
  %buffer_limit220 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 32
  %372 = ptrtoint ptr %buffer_limit220 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %.sink, ptr %buffer_limit220, align 8
  %flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %373 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %flags, align 8
  %and225 = and i32 %374, -5
  store i32 %and225, ptr %flags, align 8
  %buffer_limit226 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 32
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %375 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %limit, align 4
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %377 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %dev_queue.i, align 8
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %378, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %380, i32 0, i32 20
  %381 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %380, i32 0, i32 19
  %383 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %383)
  %384 = load i16, ptr %hard_header_len.i, align 2
  %conv.i653 = zext i16 %384 to i32
  %add.i = add i32 %382, %conv.i653
  %mul229 = mul i32 %add.i, %376
  %385 = ptrtoint ptr %buffer_config_limit to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %buffer_config_limit, align 4
  %387 = tail call i32 @llvm.umax.i32(i32 %mul229, i32 %386)
  %388 = tail call i32 @llvm.umin.i32(i32 %.sink, i32 %387)
  %389 = ptrtoint ptr %buffer_limit226 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %388, ptr %buffer_limit226, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_classify(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @cake_handle_diffserv(ptr noundef %skb, i1 noundef zeroext %wash) unnamed_addr #2 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  %buf_ = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf_) #15
  %6 = ptrtoint ptr %buf_ to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %buf_, align 2, !annotation !64
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %7 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %9 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %10 to i32
  %11 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %8, label %entry.skb_protocol.exit_crit_edge [
    i16 -30552, label %entry.if.then.i.i.i_crit_edge
    i16 -32512, label %entry.if.then.i.i.i_crit_edge193
  ]

entry.if.then.i.i.i_crit_edge193:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i

entry.skb_protocol.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %entry.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge193
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i.i.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %10)
  %cmp.i.i.i = icmp ult i16 %10, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !66

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 598, i32 noundef 9, ptr noundef null) #15
  br label %sw.default

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %12 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #15
  %13 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !64
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %12, align 2, !annotation !64
  %15 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %19 = add i32 %vlan_depth.1.i.i.i, %18
  %sub.i4.i.i.i.i = sub i32 %16, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp slt i32 %sub.i4.i.i.i.i, 4
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.i, !prof !66

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %21, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !66
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %22 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !66
  br i1 %22, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !66

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #15
  br label %sw.default

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #15
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %24, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge194
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge194: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge194
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %entry.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ %8, %entry.skb_protocol.exit_crit_edge ], [ %24, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %26 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %retval.2.i.i.i, label %skb_protocol.exit.sw.default_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb21
    i16 2054, label %skb_protocol.exit.cleanup58_crit_edge
  ]

skb_protocol.exit.cleanup58_crit_edge:            ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

skb_protocol.exit.sw.default_crit_edge:           ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default

sw.bb:                                            ; preds = %skb_protocol.exit
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %29 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i, align 8
  %31 = add i32 %sub.ptr.sub.i, %30
  %sub.i4.i = sub i32 %28, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !66

if.end.i.i:                                       ; preds = %sw.bb
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup58_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup58_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %buf_, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup58_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false.i.i.cleanup58_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

skb_header_pointer.exit:                          ; preds = %sw.bb
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i88 = getelementptr i8, ptr %33, i32 %sub.ptr.sub.i
  %tobool.not = icmp eq ptr %add.ptr.i.i88, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup58_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge, !prof !66

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_header_pointer.exit.cleanup58_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i172 = phi ptr [ %add.ptr.i.i88, %skb_header_pointer.exit.if.end_crit_edge ], [ %buf_, %lor.lhs.false.i.i.if.end_crit_edge ]
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i172, i32 0, i32 1
  %34 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tos.i, align 1
  %36 = lshr i8 %35, 2
  %wash.not = xor i1 %wash, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %35)
  %tobool12.not = icmp ult i8 %35, 4
  %or.cond = select i1 %wash.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %if.end.cleanup58_crit_edge, label %if.then13

if.end.cleanup58_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

if.then13:                                        ; preds = %if.end
  %add = add i32 %sub.ptr.sub.i, 20
  %37 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i.i, align 4
  %39 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %38, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then13.lor.lhs.false_crit_edge, !prof !66

if.then13.lor.lhs.false_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

if.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add)
  %cmp3.i = icmp ult i32 %38, %add
  br i1 %cmp3.i, label %if.end.i.cleanup58_crit_edge, label %pskb_may_pull.exit, !prof !66

if.end.i.cleanup58_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #15
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup58_crit_edge, label %pskb_may_pull.exit.lor.lhs.false_crit_edge

pskb_may_pull.exit.lor.lhs.false_crit_edge:       ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

pskb_may_pull.exit.cleanup58_crit_edge:           ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

lor.lhs.false:                                    ; preds = %pskb_may_pull.exit.lor.lhs.false_crit_edge, %if.then13.lor.lhs.false_crit_edge
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %41 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %lor.lhs.false.if.end18_crit_edge, label %skb_cloned.exit.i

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

skb_cloned.exit.i:                                ; preds = %lor.lhs.false
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %42 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #15
  %44 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %45, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.end18_crit_edge, label %land.lhs.true.i

skb_cloned.exit.i.if.end18_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

land.lhs.true.i:                                  ; preds = %skb_cloned.exit.i
  %46 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i91 = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i91, label %land.lhs.true.i.skb_clone_writable.exit.i_crit_edge, label %skb_header_cloned.exit.i.i

land.lhs.true.i.skb_clone_writable.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_clone_writable.exit.i

skb_header_cloned.exit.i.i:                       ; preds = %land.lhs.true.i
  %47 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %48, i32 0, i32 10
  %call.i.i.i.i.i92 = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #15
  %49 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %50, 65535
  %shr.i.i.i = ashr i32 %50, 16
  %sub.i.i.i93 = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i93)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i93, 1
  br i1 %cmp.i.not.i.i, label %skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge, label %skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge

skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_try_make_writable.exit

skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_clone_writable.exit.i

skb_clone_writable.exit.i:                        ; preds = %skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge, %land.lhs.true.i.skb_clone_writable.exit.i_crit_edge
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i, align 4
  %53 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i.i.i = add i32 %add, %sub.ptr.lhs.cast.i.i.i
  %add.i.i = sub i32 %sub.ptr.sub.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %hdr_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 9
  %55 = ptrtoint ptr %hdr_len.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %hdr_len.i.i, align 2
  %conv.i.i94 = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i94)
  %cmp.i7.not.i = icmp ugt i32 %add.i.i, %conv.i.i94
  br i1 %cmp.i7.not.i, label %skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge, label %skb_clone_writable.exit.i.if.end18_crit_edge

skb_clone_writable.exit.i.if.end18_crit_edge:     ; preds = %skb_clone_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge: ; preds = %skb_clone_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_try_make_writable.exit

skb_try_make_writable.exit:                       ; preds = %skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge, %skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge
  %call3.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i.not = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i.not, label %skb_try_make_writable.exit.if.end18_crit_edge, label %skb_try_make_writable.exit.cleanup58_crit_edge

skb_try_make_writable.exit.cleanup58_crit_edge:   ; preds = %skb_try_make_writable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

skb_try_make_writable.exit.if.end18_crit_edge:    ; preds = %skb_try_make_writable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.end18:                                         ; preds = %skb_try_make_writable.exit.if.end18_crit_edge, %skb_clone_writable.exit.i.if.end18_crit_edge, %skb_cloned.exit.i.if.end18_crit_edge, %lor.lhs.false.if.end18_crit_edge
  %57 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %head.i.i, align 8
  %59 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i97 = zext i16 %60 to i32
  %add.ptr.i.i98 = getelementptr i8, ptr %58, i32 %conv.i.i97
  %check1.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i98, i32 0, i32 7
  %61 = ptrtoint ptr %check1.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %check1.i, align 2
  %conv.i = zext i16 %62 to i32
  %tos.i99 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i98, i32 0, i32 1
  %63 = ptrtoint ptr %tos.i99 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %tos.i99, align 1
  %conv2.i = zext i8 %64 to i32
  %add.i = add nuw nsw i32 %conv2.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i)
  %tobool.not.i = icmp ult i32 %add.i, 65535
  %add8.i = add nuw nsw i32 %add.i, 1
  %and10.i = and i32 %add8.i, 65535
  %check.0.i = select i1 %tobool.not.i, i32 %add.i, i32 %and10.i
  %and.i = and i8 %64, 3
  %conv11.i = zext i8 %and.i to i32
  %sub.i100 = sub nsw i32 %check.0.i, %conv11.i
  %shr12.i = lshr i32 %sub.i100, 16
  %add13.i = add nsw i32 %shr12.i, %sub.i100
  %conv14.i = trunc i32 %add13.i to i16
  %65 = ptrtoint ptr %check1.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv14.i, ptr %check1.i, align 2
  %66 = ptrtoint ptr %tos.i99 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %and.i, ptr %tos.i99, align 1
  br label %cleanup58

sw.bb21:                                          ; preds = %skb_protocol.exit
  %len.i.i101 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %67 = ptrtoint ptr %len.i.i101 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len.i.i101, align 4
  %data_len.i.i102 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %69 = ptrtoint ptr %data_len.i.i102 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data_len.i.i102, align 8
  %71 = add i32 %sub.ptr.sub.i, %70
  %sub.i4.i103 = sub i32 %68, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i103)
  %cmp.not.i.i104 = icmp slt i32 %sub.i4.i103, 2
  br i1 %cmp.not.i.i104, label %if.end.i.i109, label %skb_header_pointer.exit115, !prof !66

if.end.i.i109:                                    ; preds = %sw.bb21
  %tobool2.not.i.i108 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i108, label %if.end.i.i109.cleanup58_crit_edge, label %lor.lhs.false.i.i113

if.end.i.i109.cleanup58_crit_edge:                ; preds = %if.end.i.i109
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

lor.lhs.false.i.i113:                             ; preds = %if.end.i.i109
  %call.i.i110 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %buf_, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110)
  %cmp3.i.i111 = icmp slt i32 %call.i.i110, 0
  br i1 %cmp3.i.i111, label %lor.lhs.false.i.i113.cleanup58_crit_edge, label %lor.lhs.false.i.i113.if.end33_crit_edge

lor.lhs.false.i.i113.if.end33_crit_edge:          ; preds = %lor.lhs.false.i.i113
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

lor.lhs.false.i.i113.cleanup58_crit_edge:         ; preds = %lor.lhs.false.i.i113
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

skb_header_pointer.exit115:                       ; preds = %sw.bb21
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i106 = getelementptr i8, ptr %73, i32 %sub.ptr.sub.i
  %tobool23.not = icmp eq ptr %add.ptr.i.i106, null
  br i1 %tobool23.not, label %skb_header_pointer.exit115.cleanup58_crit_edge, label %skb_header_pointer.exit115.if.end33_crit_edge, !prof !66

skb_header_pointer.exit115.if.end33_crit_edge:    ; preds = %skb_header_pointer.exit115
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

skb_header_pointer.exit115.cleanup58_crit_edge:   ; preds = %skb_header_pointer.exit115
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

if.end33:                                         ; preds = %skb_header_pointer.exit115.if.end33_crit_edge, %lor.lhs.false.i.i113.if.end33_crit_edge
  %retval.0.i.i114183 = phi ptr [ %add.ptr.i.i106, %skb_header_pointer.exit115.if.end33_crit_edge ], [ %buf_, %lor.lhs.false.i.i113.if.end33_crit_edge ]
  %74 = ptrtoint ptr %retval.0.i.i114183 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %retval.0.i.i114183, align 2
  %76 = lshr i16 %75, 4
  %conv1.i = trunc i16 %76 to i8
  %77 = lshr i8 %conv1.i, 2
  %wash.not85 = xor i1 %wash, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv1.i)
  %tobool42.not = icmp ult i8 %conv1.i, 4
  %or.cond86 = select i1 %wash.not85, i1 true, i1 %tobool42.not
  br i1 %or.cond86, label %if.end33.cleanup58_crit_edge, label %if.then43

if.end33.cleanup58_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

if.then43:                                        ; preds = %if.end33
  %add45 = add i32 %sub.ptr.sub.i, 40
  %78 = ptrtoint ptr %len.i.i101 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i.i101, align 4
  %80 = ptrtoint ptr %data_len.i.i102 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %data_len.i.i102, align 8
  %sub.i.i118 = sub i32 %79, %81
  call void @__sanitizer_cov_trace_cmp4(i32 %add45, i32 %sub.i.i118)
  %cmp.not.i119 = icmp ugt i32 %add45, %sub.i.i118
  br i1 %cmp.not.i119, label %if.end.i121, label %if.then43.lor.lhs.false47_crit_edge, !prof !66

if.then43.lor.lhs.false47_crit_edge:              ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false47

if.end.i121:                                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %add45)
  %cmp3.i120 = icmp ult i32 %79, %add45
  br i1 %cmp3.i120, label %if.end.i121.cleanup58_crit_edge, label %pskb_may_pull.exit127, !prof !66

if.end.i121.cleanup58_crit_edge:                  ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

pskb_may_pull.exit127:                            ; preds = %if.end.i121
  %sub.i122 = sub i32 %add45, %sub.i.i118
  %call13.i123 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i122) #15
  %cmp14.i124.not = icmp eq ptr %call13.i123, null
  br i1 %cmp14.i124.not, label %pskb_may_pull.exit127.cleanup58_crit_edge, label %pskb_may_pull.exit127.lor.lhs.false47_crit_edge

pskb_may_pull.exit127.lor.lhs.false47_crit_edge:  ; preds = %pskb_may_pull.exit127
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false47

pskb_may_pull.exit127.cleanup58_crit_edge:        ; preds = %pskb_may_pull.exit127
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

lor.lhs.false47:                                  ; preds = %pskb_may_pull.exit127.lor.lhs.false47_crit_edge, %if.then43.lor.lhs.false47_crit_edge
  %cloned.i.i128 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %82 = ptrtoint ptr %cloned.i.i128 to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load.i.i129 = load i8, ptr %cloned.i.i128, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i129)
  %tobool.not.i.i130 = icmp sgt i8 %bf.load.i.i129, -1
  br i1 %tobool.not.i.i130, label %lor.lhs.false47.if.end51_crit_edge, label %skb_cloned.exit.i136

lor.lhs.false47.if.end51_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

skb_cloned.exit.i136:                             ; preds = %lor.lhs.false47
  %end.i.i.i131 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %83 = ptrtoint ptr %end.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %end.i.i.i131, align 4
  %dataref.i.i132 = getelementptr inbounds %struct.skb_shared_info, ptr %84, i32 0, i32 10
  %call.i.i.i.i133 = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i132, i32 noundef 4) #15
  %85 = ptrtoint ptr %dataref.i.i132 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %dataref.i.i132, align 4
  %and.i.i134 = and i32 %86, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i134)
  %cmp.i.not.i135 = icmp eq i32 %and.i.i134, 1
  br i1 %cmp.i.not.i135, label %skb_cloned.exit.i136.if.end51_crit_edge, label %land.lhs.true.i139

skb_cloned.exit.i136.if.end51_crit_edge:          ; preds = %skb_cloned.exit.i136
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

land.lhs.true.i139:                               ; preds = %skb_cloned.exit.i136
  %87 = ptrtoint ptr %cloned.i.i128 to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load.i.i.i137 = load i8, ptr %cloned.i.i128, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i137)
  %tobool.not.i.i.i138 = icmp sgt i8 %bf.load.i.i.i137, -1
  br i1 %tobool.not.i.i.i138, label %land.lhs.true.i139.skb_clone_writable.exit.i156_crit_edge, label %skb_header_cloned.exit.i.i146

land.lhs.true.i139.skb_clone_writable.exit.i156_crit_edge: ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_clone_writable.exit.i156

skb_header_cloned.exit.i.i146:                    ; preds = %land.lhs.true.i139
  %88 = ptrtoint ptr %end.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %end.i.i.i131, align 4
  %dataref1.i.i.i140 = getelementptr inbounds %struct.skb_shared_info, ptr %89, i32 0, i32 10
  %call.i.i.i.i.i141 = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i140, i32 noundef 4) #15
  %90 = ptrtoint ptr %dataref1.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %dataref1.i.i.i140, align 4
  %and.i.i.i142 = and i32 %91, 65535
  %shr.i.i.i143 = ashr i32 %91, 16
  %sub.i.i.i144 = sub nsw i32 %and.i.i.i142, %shr.i.i.i143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i144)
  %cmp.i.not.i.i145 = icmp eq i32 %sub.i.i.i144, 1
  br i1 %cmp.i.not.i.i145, label %skb_header_cloned.exit.i.i146.skb_clone_writable.exit.i156_crit_edge, label %skb_header_cloned.exit.i.i146.skb_try_make_writable.exit161_crit_edge

skb_header_cloned.exit.i.i146.skb_try_make_writable.exit161_crit_edge: ; preds = %skb_header_cloned.exit.i.i146
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_try_make_writable.exit161

skb_header_cloned.exit.i.i146.skb_clone_writable.exit.i156_crit_edge: ; preds = %skb_header_cloned.exit.i.i146
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_clone_writable.exit.i156

skb_clone_writable.exit.i156:                     ; preds = %skb_header_cloned.exit.i.i146.skb_clone_writable.exit.i156_crit_edge, %land.lhs.true.i139.skb_clone_writable.exit.i156_crit_edge
  %92 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i, align 4
  %94 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i149 = ptrtoint ptr %93 to i32
  %sub.ptr.rhs.cast.i.i.i150 = ptrtoint ptr %95 to i32
  %sub.ptr.sub.i.i.i151 = add i32 %add45, %sub.ptr.lhs.cast.i.i.i149
  %add.i.i152 = sub i32 %sub.ptr.sub.i.i.i151, %sub.ptr.rhs.cast.i.i.i150
  %hdr_len.i.i153 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 9
  %96 = ptrtoint ptr %hdr_len.i.i153 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %hdr_len.i.i153, align 2
  %conv.i.i154 = zext i16 %97 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i152, i32 %conv.i.i154)
  %cmp.i7.not.i155 = icmp ugt i32 %add.i.i152, %conv.i.i154
  br i1 %cmp.i7.not.i155, label %skb_clone_writable.exit.i156.skb_try_make_writable.exit161_crit_edge, label %skb_clone_writable.exit.i156.if.end51_crit_edge

skb_clone_writable.exit.i156.if.end51_crit_edge:  ; preds = %skb_clone_writable.exit.i156
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

skb_clone_writable.exit.i156.skb_try_make_writable.exit161_crit_edge: ; preds = %skb_clone_writable.exit.i156
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_try_make_writable.exit161

skb_try_make_writable.exit161:                    ; preds = %skb_clone_writable.exit.i156.skb_try_make_writable.exit161_crit_edge, %skb_header_cloned.exit.i.i146.skb_try_make_writable.exit161_crit_edge
  %call3.i157 = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i157)
  %tobool4.i158.not = icmp eq i32 %call3.i157, 0
  br i1 %tobool4.i158.not, label %skb_try_make_writable.exit161.if.end51_crit_edge, label %skb_try_make_writable.exit161.cleanup58_crit_edge

skb_try_make_writable.exit161.cleanup58_crit_edge: ; preds = %skb_try_make_writable.exit161
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup58

skb_try_make_writable.exit161.if.end51_crit_edge: ; preds = %skb_try_make_writable.exit161
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.end51:                                         ; preds = %skb_try_make_writable.exit161.if.end51_crit_edge, %skb_clone_writable.exit.i156.if.end51_crit_edge, %skb_cloned.exit.i136.if.end51_crit_edge, %lor.lhs.false47.if.end51_crit_edge
  %98 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %head.i.i, align 8
  %100 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i164 = zext i16 %101 to i32
  %add.ptr.i.i165 = getelementptr i8, ptr %99, i32 %conv.i.i164
  %102 = ptrtoint ptr %add.ptr.i.i165 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %add.ptr.i.i165, align 2
  %104 = and i16 %103, -4033
  store i16 %104, ptr %add.ptr.i.i165, align 2
  br label %cleanup58

sw.default:                                       ; preds = %skb_protocol.exit.sw.default_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i
  br label %cleanup58

cleanup58:                                        ; preds = %sw.default, %if.end51, %skb_try_make_writable.exit161.cleanup58_crit_edge, %pskb_may_pull.exit127.cleanup58_crit_edge, %if.end.i121.cleanup58_crit_edge, %if.end33.cleanup58_crit_edge, %skb_header_pointer.exit115.cleanup58_crit_edge, %lor.lhs.false.i.i113.cleanup58_crit_edge, %if.end.i.i109.cleanup58_crit_edge, %if.end18, %skb_try_make_writable.exit.cleanup58_crit_edge, %pskb_may_pull.exit.cleanup58_crit_edge, %if.end.i.cleanup58_crit_edge, %if.end.cleanup58_crit_edge, %skb_header_pointer.exit.cleanup58_crit_edge, %lor.lhs.false.i.i.cleanup58_crit_edge, %if.end.i.i.cleanup58_crit_edge, %skb_protocol.exit.cleanup58_crit_edge
  %retval.2 = phi i8 [ 0, %sw.default ], [ 0, %skb_header_pointer.exit.cleanup58_crit_edge ], [ 0, %pskb_may_pull.exit.cleanup58_crit_edge ], [ 0, %skb_try_make_writable.exit.cleanup58_crit_edge ], [ %36, %if.end18 ], [ %36, %if.end.cleanup58_crit_edge ], [ 0, %skb_header_pointer.exit115.cleanup58_crit_edge ], [ 0, %pskb_may_pull.exit127.cleanup58_crit_edge ], [ 0, %skb_try_make_writable.exit161.cleanup58_crit_edge ], [ %77, %if.end51 ], [ %77, %if.end33.cleanup58_crit_edge ], [ 56, %skb_protocol.exit.cleanup58_crit_edge ], [ 0, %if.end.i.i.cleanup58_crit_edge ], [ 0, %lor.lhs.false.i.i.cleanup58_crit_edge ], [ 0, %if.end.i.cleanup58_crit_edge ], [ 0, %if.end.i.i109.cleanup58_crit_edge ], [ 0, %lor.lhs.false.i.i113.cleanup58_crit_edge ], [ 0, %if.end.i121.cleanup58_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf_) #15
  ret i8 %retval.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %offset, i32 noundef %len, ptr noundef %buffer) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %4 = add i32 %3, %offset
  %sub.i4 = sub i32 %1, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4, i32 %len)
  %cmp.not.i = icmp slt i32 %sub.i4, %len
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !66

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %offset
  br label %__skb_header_pointer.exit

if.end.i:                                         ; preds = %entry
  %tobool2.not.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i, label %if.end.i.__skb_header_pointer.exit_crit_edge, label %lor.lhs.false.i

if.end.i.__skb_header_pointer.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__skb_header_pointer.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef %buffer, i32 noundef %len) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp3.i, ptr null, ptr %buffer, !prof !66
  br label %__skb_header_pointer.exit

__skb_header_pointer.exit:                        ; preds = %lor.lhs.false.i, %if.end.i.__skb_header_pointer.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end.i.__skb_header_pointer.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_hash_from_keys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_get_tuple_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_schedule_range_ns(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cake_get_tcphdr(ptr noundef %skb, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  %_ipv6h = alloca %struct.ipv6hdr, align 4
  %_tcph = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_ipv6h) #15
  %6 = call ptr @memset(ptr %_ipv6h, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #15
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %12 = add i32 %sub.ptr.sub.i, %11
  %sub.i4.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 40
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !66

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %_ipv6h, i32 noundef 40) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %entry
  %add.ptr.i.i2 = getelementptr i8, ptr %5, i32 %sub.ptr.sub.i
  %tobool.not = icmp eq ptr %add.ptr.i.i2, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i53 = phi ptr [ %add.ptr.i.i2, %skb_header_pointer.exit.if.end_crit_edge ], [ %_ipv6h, %lor.lhs.false.i.i.if.end_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i.i53 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %retval.0.i.i53, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %trunc = trunc i8 %bf.lshr to i4
  %14 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.27)
  switch i4 %trunc, label %if.end.cleanup_crit_edge [
    i4 4, label %if.then3
    i4 6, label %if.then31
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %bf.clear = shl i8 %bf.load, 2
  %15 = and i8 %bf.clear, 60
  %mul = zext i8 %15 to i32
  %add = add i32 %sub.ptr.sub.i, %mul
  %protocol = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i53, i32 0, i32 6
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %protocol, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %17, label %if.then3.cleanup_crit_edge [
    i8 41, label %if.then9
    i8 6, label %if.then3.if.end41_crit_edge
  ]

if.then3.if.end41_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then9:                                         ; preds = %if.then3
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i, align 4
  %21 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i, align 8
  %23 = add i32 %add, %22
  %sub.i4.i5 = sub i32 %20, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i5)
  %cmp.not.i.i6 = icmp slt i32 %sub.i4.i5, 40
  br i1 %cmp.not.i.i6, label %if.end.i.i11, label %skb_header_pointer.exit17, !prof !66

if.end.i.i11:                                     ; preds = %if.then9
  %tobool2.not.i.i10 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i10, label %if.end.i.i11.cleanup_crit_edge, label %lor.lhs.false.i.i15

if.end.i.i11.cleanup_crit_edge:                   ; preds = %if.end.i.i11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i.i15:                              ; preds = %if.end.i.i11
  %call.i.i12 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %_ipv6h, i32 noundef 40) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %cmp3.i.i13 = icmp slt i32 %call.i.i12, 0
  br i1 %cmp3.i.i13, label %lor.lhs.false.i.i15.cleanup_crit_edge, label %lor.lhs.false.i.i15.lor.lhs.false_crit_edge

lor.lhs.false.i.i15.lor.lhs.false_crit_edge:      ; preds = %lor.lhs.false.i.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

lor.lhs.false.i.i15.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

skb_header_pointer.exit17:                        ; preds = %if.then9
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %25, i32 %add
  %tobool11.not = icmp eq ptr %add.ptr.i.i8, null
  br i1 %tobool11.not, label %skb_header_pointer.exit17.cleanup_crit_edge, label %skb_header_pointer.exit17.lor.lhs.false_crit_edge

skb_header_pointer.exit17.lor.lhs.false_crit_edge: ; preds = %skb_header_pointer.exit17
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

skb_header_pointer.exit17.cleanup_crit_edge:      ; preds = %skb_header_pointer.exit17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %skb_header_pointer.exit17.lor.lhs.false_crit_edge, %lor.lhs.false.i.i15.lor.lhs.false_crit_edge
  %retval.0.i.i1660 = phi ptr [ %add.ptr.i.i8, %skb_header_pointer.exit17.lor.lhs.false_crit_edge ], [ %_ipv6h, %lor.lhs.false.i.i15.lor.lhs.false_crit_edge ]
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i1660, i32 0, i32 3
  %26 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nexthdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %27)
  %cmp13.not = icmp eq i8 %27, 6
  br i1 %cmp13.not, label %if.end16, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %add17 = add i32 %add, 40
  br label %if.end41

if.then31:                                        ; preds = %if.end
  %nexthdr32 = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i53, i32 0, i32 3
  %28 = ptrtoint ptr %nexthdr32 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nexthdr32, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %29)
  %cmp34.not = icmp eq i8 %29, 6
  br i1 %cmp34.not, label %if.end37, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end37:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  %add38 = add i32 %sub.ptr.sub.i, 40
  br label %if.end41

if.end41:                                         ; preds = %if.end37, %if.end16, %if.then3.if.end41_crit_edge
  %offset.0 = phi i32 [ %add17, %if.end16 ], [ %add38, %if.end37 ], [ %add, %if.then3.if.end41_crit_edge ]
  %30 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i.i, align 4
  %32 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i.i, align 8
  %34 = add i32 %offset.0, %33
  %sub.i4.i20 = sub i32 %31, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i20)
  %cmp.not.i.i21 = icmp slt i32 %sub.i4.i20, 20
  br i1 %cmp.not.i.i21, label %if.end.i.i26, label %skb_header_pointer.exit32, !prof !66

if.end.i.i26:                                     ; preds = %if.end41
  %tobool2.not.i.i25 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i25, label %if.end.i.i26.cleanup_crit_edge, label %lor.lhs.false.i.i30

if.end.i.i26.cleanup_crit_edge:                   ; preds = %if.end.i.i26
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i.i30:                              ; preds = %if.end.i.i26
  %call.i.i27 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset.0, ptr noundef nonnull %_tcph, i32 noundef 20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27)
  %cmp3.i.i28 = icmp slt i32 %call.i.i27, 0
  br i1 %cmp3.i.i28, label %lor.lhs.false.i.i30.cleanup_crit_edge, label %lor.lhs.false.i.i30.lor.lhs.false44_crit_edge

lor.lhs.false.i.i30.lor.lhs.false44_crit_edge:    ; preds = %lor.lhs.false.i.i30
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false44

lor.lhs.false.i.i30.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i30
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

skb_header_pointer.exit32:                        ; preds = %if.end41
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %36, i32 %offset.0
  %tobool43.not = icmp eq ptr %add.ptr.i.i23, null
  br i1 %tobool43.not, label %skb_header_pointer.exit32.cleanup_crit_edge, label %skb_header_pointer.exit32.lor.lhs.false44_crit_edge

skb_header_pointer.exit32.lor.lhs.false44_crit_edge: ; preds = %skb_header_pointer.exit32
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false44

skb_header_pointer.exit32.cleanup_crit_edge:      ; preds = %skb_header_pointer.exit32
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false44:                                  ; preds = %skb_header_pointer.exit32.lor.lhs.false44_crit_edge, %lor.lhs.false.i.i30.lor.lhs.false44_crit_edge
  %retval.0.i.i3167 = phi ptr [ %add.ptr.i.i23, %skb_header_pointer.exit32.lor.lhs.false44_crit_edge ], [ %_tcph, %lor.lhs.false.i.i30.lor.lhs.false44_crit_edge ]
  %doff = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i3167, i32 0, i32 4
  %37 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load45 = load i16, ptr %doff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %bf.load45)
  %cmp48 = icmp ult i16 %bf.load45, 20480
  br i1 %cmp48, label %lor.lhs.false44.cleanup_crit_edge, label %if.end51

lor.lhs.false44.cleanup_crit_edge:                ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false44
  %38 = lshr i16 %bf.load45, 10
  %39 = and i16 %38, 60
  %mul.i = zext i16 %39 to i32
  %40 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i.i, align 4
  %42 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_len.i.i, align 8
  %44 = add i32 %offset.0, %43
  %sub.i4.i35 = sub i32 %41, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i35, i32 %mul.i)
  %cmp.not.i.i36 = icmp slt i32 %sub.i4.i35, %mul.i
  br i1 %cmp.not.i.i36, label %if.end.i.i41, label %if.then.i.i39, !prof !66

if.then.i.i39:                                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %46, i32 %offset.0
  br label %cleanup

if.end.i.i41:                                     ; preds = %if.end51
  %tobool2.not.i.i40 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i40, label %if.end.i.i41.cleanup_crit_edge, label %lor.lhs.false.i.i45

if.end.i.i41.cleanup_crit_edge:                   ; preds = %if.end.i.i41
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i.i45:                              ; preds = %if.end.i.i41
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i42 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset.0, ptr noundef %buf, i32 noundef %mul.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42)
  %cmp3.i.i43 = icmp slt i32 %call.i.i42, 0
  %spec.select.i.i44 = select i1 %cmp3.i.i43, ptr null, ptr %buf, !prof !66
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false.i.i45, %if.end.i.i41.cleanup_crit_edge, %if.then.i.i39, %lor.lhs.false44.cleanup_crit_edge, %skb_header_pointer.exit32.cleanup_crit_edge, %lor.lhs.false.i.i30.cleanup_crit_edge, %if.end.i.i26.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %skb_header_pointer.exit17.cleanup_crit_edge, %lor.lhs.false.i.i15.cleanup_crit_edge, %if.end.i.i11.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %skb_header_pointer.exit.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %skb_header_pointer.exit17.cleanup_crit_edge ], [ null, %if.then3.cleanup_crit_edge ], [ null, %if.then31.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %lor.lhs.false44.cleanup_crit_edge ], [ null, %skb_header_pointer.exit32.cleanup_crit_edge ], [ %add.ptr.i.i38, %if.then.i.i39 ], [ null, %if.end.i.i41.cleanup_crit_edge ], [ %spec.select.i.i44, %lor.lhs.false.i.i45 ], [ null, %if.end.i.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.i.cleanup_crit_edge ], [ null, %if.end.i.i11.cleanup_crit_edge ], [ null, %lor.lhs.false.i.i15.cleanup_crit_edge ], [ null, %if.end.i.i26.cleanup_crit_edge ], [ null, %lor.lhs.false.i.i30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ipv6h) #15
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cake_get_iphdr(ptr noundef %skb, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %10 = add i32 %9, %sub.ptr.sub.i
  %sub.i4.i = sub i32 %7, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !66

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i42 = getelementptr i8, ptr %5, i32 %sub.ptr.sub.i
  br label %skb_header_pointer.exit

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i, ptr noundef %buf, i32 noundef 20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.skb_header_pointer.exit_crit_edge

lor.lhs.false.i.i.skb_header_pointer.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_header_pointer.exit

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %lor.lhs.false.i.i.skb_header_pointer.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i.i42, %if.then.i.i ], [ %buf, %lor.lhs.false.i.i.skb_header_pointer.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit
  %11 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %retval.0.i.i, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %protocol = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %13)
  %cmp4 = icmp eq i8 %13, 41
  br i1 %cmp4, label %if.then6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %bf.clear = shl i8 %bf.load, 2
  %14 = and i8 %bf.clear, 60
  %mul = zext i8 %14 to i32
  %add = add i32 %sub.ptr.sub.i, %mul
  %15 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i, align 4
  %17 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i, align 8
  %19 = add i32 %add, %18
  %sub.i4.i45 = sub i32 %16, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i45)
  %cmp.not.i.i46 = icmp slt i32 %sub.i4.i45, 40
  br i1 %cmp.not.i.i46, label %if.end.i.i51, label %if.then.i.i49, !prof !66

if.then.i.i49:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %21, i32 %add
  br label %cleanup

if.end.i.i51:                                     ; preds = %if.then6
  %tobool2.not.i.i50 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i50, label %if.end.i.i51.cleanup_crit_edge, label %lor.lhs.false.i.i55

if.end.i.i51.cleanup_crit_edge:                   ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i.i55:                              ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i52 = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef %buf, i32 noundef 40) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52)
  %cmp3.i.i53 = icmp slt i32 %call.i.i52, 0
  %spec.select.i.i54 = select i1 %cmp3.i.i53, ptr null, ptr %buf, !prof !66
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %bf.lshr11 = lshr i8 %bf.load, 4
  %trunc = trunc i8 %bf.lshr11 to i4
  %22 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.29)
  switch i4 %trunc, label %if.end26 [
    i4 4, label %if.else.cleanup_crit_edge
    i4 6, label %if.then22
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then22:                                        ; preds = %if.else
  %23 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.i, align 4
  %25 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i, align 8
  %27 = add i32 %sub.ptr.sub.i, %26
  %sub.i4.i60 = sub i32 %24, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i60)
  %cmp.not.i.i61 = icmp slt i32 %sub.i4.i60, 40
  br i1 %cmp.not.i.i61, label %if.end.i.i66, label %if.then.i.i64, !prof !66

if.then.i.i64:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %29, i32 %sub.ptr.sub.i
  br label %cleanup

if.end.i.i66:                                     ; preds = %if.then22
  %tobool2.not.i.i65 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i65, label %if.end.i.i66.cleanup_crit_edge, label %lor.lhs.false.i.i70

if.end.i.i66.cleanup_crit_edge:                   ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i.i70:                              ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i67 = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i, ptr noundef %buf, i32 noundef 40) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %cmp3.i.i68 = icmp slt i32 %call.i.i67, 0
  %spec.select.i.i69 = select i1 %cmp3.i.i68, ptr null, ptr %buf, !prof !66
  br label %cleanup

if.end26:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %lor.lhs.false.i.i70, %if.end.i.i66.cleanup_crit_edge, %if.then.i.i64, %if.else.cleanup_crit_edge, %lor.lhs.false.i.i55, %if.end.i.i51.cleanup_crit_edge, %if.then.i.i49, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end26 ], [ null, %skb_header_pointer.exit.cleanup_crit_edge ], [ %retval.0.i.i, %if.else.cleanup_crit_edge ], [ %add.ptr.i.i48, %if.then.i.i49 ], [ null, %if.end.i.i51.cleanup_crit_edge ], [ %spec.select.i.i54, %lor.lhs.false.i.i55 ], [ %add.ptr.i.i63, %if.then.i.i64 ], [ null, %if.end.i.i66.cleanup_crit_edge ], [ %spec.select.i.i69, %lor.lhs.false.i.i70 ], [ null, %if.end.i.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cake_tcph_sack_compare(ptr noundef readonly %tcph_a, ptr noundef readonly %tcph_b) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_seq = getelementptr inbounds %struct.tcphdr, ptr %tcph_a, i32 0, i32 3
  %0 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ack_seq, align 4
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %tcph_a, i32 0, i32 4
  %2 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %3 = lshr i16 %bf.load.i.i, 10
  %4 = and i16 %3, 60
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %4)
  %cmp52.i = icmp ugt i16 %4, 20
  br i1 %cmp52.i, label %while.body.preheader.i, label %entry.cake_get_tcpopt.exit_crit_edge

entry.cake_get_tcpopt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_get_tcpopt.exit

while.body.preheader.i:                           ; preds = %entry
  %add.ptr.i = getelementptr %struct.tcphdr, ptr %tcph_a, i32 1
  %mul.i.i = zext i16 %4 to i32
  %sub.i = add nsw i32 %mul.i.i, -20
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.preheader.i
  %ptr.054.i = phi ptr [ %ptr.1.i, %cleanup.i.while.body.i_crit_edge ], [ %add.ptr.i, %while.body.preheader.i ]
  %length.053.i = phi i32 [ %length.1.i, %cleanup.i.while.body.i_crit_edge ], [ %sub.i, %while.body.preheader.i ]
  %incdec.ptr.i = getelementptr i8, ptr %ptr.054.i, i32 1
  %5 = ptrtoint ptr %ptr.054.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ptr.054.i, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %6, label %if.end6.i [
    i8 0, label %while.body.i.cake_get_tcpopt.exit_crit_edge
    i8 1, label %if.then5.i
  ]

while.body.i.cake_get_tcpopt.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_get_tcpopt.exit

if.then5.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %dec.i = add i32 %length.053.i, -1
  br label %cleanup.i

if.end6.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length.053.i)
  %cmp7.i = icmp ult i32 %length.053.i, 2
  br i1 %cmp7.i, label %if.end6.i.cake_get_tcpopt.exit_crit_edge, label %if.end10.i

if.end6.i.cake_get_tcpopt.exit_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_get_tcpopt.exit

if.end10.i:                                       ; preds = %if.end6.i
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr.i, align 1
  %conv12.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp13.i = icmp ult i8 %9, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %length.053.i, i32 %conv12.i)
  %cmp15.i = icmp ult i32 %length.053.i, %conv12.i
  %or.cond.i = select i1 %cmp13.i, i1 true, i1 %cmp15.i
  br i1 %or.cond.i, label %if.end10.i.cake_get_tcpopt.exit_crit_edge, label %if.end18.i

if.end10.i.cake_get_tcpopt.exit_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_get_tcpopt.exit

if.end18.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %cmp19.i = icmp eq i8 %6, 5
  br i1 %cmp19.i, label %cleanup.thread47.i, label %if.end22.i

cleanup.thread47.i:                               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv12.i.le = zext i8 %9 to i32
  %incdec.ptr11.le.i = getelementptr i8, ptr %ptr.054.i, i32 2
  %phi.bo = add nsw i32 %conv12.i.le, -2
  br label %cake_get_tcpopt.exit

if.end22.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr24.i = getelementptr i8, ptr %ptr.054.i, i32 %conv12.i
  %sub25.i = sub nsw i32 %length.053.i, %conv12.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end22.i, %if.then5.i
  %length.1.i = phi i32 [ %dec.i, %if.then5.i ], [ %sub25.i, %if.end22.i ]
  %ptr.1.i = phi ptr [ %incdec.ptr.i, %if.then5.i ], [ %add.ptr24.i, %if.end22.i ]
  %cmp.i = icmp sgt i32 %length.1.i, 0
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cake_get_tcpopt.exit_crit_edge

cleanup.i.cake_get_tcpopt.exit_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_get_tcpopt.exit

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

cake_get_tcpopt.exit:                             ; preds = %cleanup.i.cake_get_tcpopt.exit_crit_edge, %cleanup.thread47.i, %if.end10.i.cake_get_tcpopt.exit_crit_edge, %if.end6.i.cake_get_tcpopt.exit_crit_edge, %while.body.i.cake_get_tcpopt.exit_crit_edge, %entry.cake_get_tcpopt.exit_crit_edge
  %oplen_a.0 = phi i32 [ %phi.bo, %cleanup.thread47.i ], [ -3, %entry.cake_get_tcpopt.exit_crit_edge ], [ -3, %cleanup.i.cake_get_tcpopt.exit_crit_edge ], [ -3, %if.end10.i.cake_get_tcpopt.exit_crit_edge ], [ -3, %if.end6.i.cake_get_tcpopt.exit_crit_edge ], [ -3, %while.body.i.cake_get_tcpopt.exit_crit_edge ]
  %retval.2.i = phi ptr [ %incdec.ptr11.le.i, %cleanup.thread47.i ], [ null, %entry.cake_get_tcpopt.exit_crit_edge ], [ null, %cleanup.i.cake_get_tcpopt.exit_crit_edge ], [ null, %if.end10.i.cake_get_tcpopt.exit_crit_edge ], [ null, %if.end6.i.cake_get_tcpopt.exit_crit_edge ], [ null, %while.body.i.cake_get_tcpopt.exit_crit_edge ]
  %doff.i.i105 = getelementptr inbounds %struct.tcphdr, ptr %tcph_b, i32 0, i32 4
  %10 = ptrtoint ptr %doff.i.i105 to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i.i106 = load i16, ptr %doff.i.i105, align 4
  %11 = lshr i16 %bf.load.i.i106, 10
  %12 = and i16 %11, 60
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %12)
  %cmp52.i107 = icmp ugt i16 %12, 20
  br i1 %cmp52.i107, label %while.body.preheader.i111, label %cake_get_tcpopt.exit.cake_get_tcpopt.exit139_crit_edge

cake_get_tcpopt.exit.cake_get_tcpopt.exit139_crit_edge: ; preds = %cake_get_tcpopt.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_get_tcpopt.exit139

while.body.preheader.i111:                        ; preds = %cake_get_tcpopt.exit
  %add.ptr.i108 = getelementptr %struct.tcphdr, ptr %tcph_b, i32 1
  %mul.i.i109 = zext i16 %12 to i32
  %sub.i110 = add nsw i32 %mul.i.i109, -20
  br label %while.body.i116

while.body.i116:                                  ; preds = %cleanup.i137.while.body.i116_crit_edge, %while.body.preheader.i111
  %ptr.054.i112 = phi ptr [ %ptr.1.i135, %cleanup.i137.while.body.i116_crit_edge ], [ %add.ptr.i108, %while.body.preheader.i111 ]
  %length.053.i113 = phi i32 [ %length.1.i134, %cleanup.i137.while.body.i116_crit_edge ], [ %sub.i110, %while.body.preheader.i111 ]
  %incdec.ptr.i114 = getelementptr i8, ptr %ptr.054.i112, i32 1
  %13 = ptrtoint ptr %ptr.054.i112 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ptr.054.i112, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %14, label %if.end6.i120 [
    i8 0, label %while.body.i116.cake_get_tcpopt.exit139_crit_edge
    i8 1, label %if.then5.i118
  ]

while.body.i116.cake_get_tcpopt.exit139_crit_edge: ; preds = %while.body.i116
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_get_tcpopt.exit139

if.then5.i118:                                    ; preds = %while.body.i116
  call void @__sanitizer_cov_trace_pc() #17
  %dec.i117 = add i32 %length.053.i113, -1
  br label %cleanup.i137

if.end6.i120:                                     ; preds = %while.body.i116
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length.053.i113)
  %cmp7.i119 = icmp ult i32 %length.053.i113, 2
  br i1 %cmp7.i119, label %if.end6.i120.cake_get_tcpopt.exit139_crit_edge, label %if.end10.i125

if.end6.i120.cake_get_tcpopt.exit139_crit_edge:   ; preds = %if.end6.i120
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_get_tcpopt.exit139

if.end10.i125:                                    ; preds = %if.end6.i120
  %16 = ptrtoint ptr %incdec.ptr.i114 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.i114, align 1
  %conv12.i121 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp13.i122 = icmp ult i8 %17, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %length.053.i113, i32 %conv12.i121)
  %cmp15.i123 = icmp ult i32 %length.053.i113, %conv12.i121
  %or.cond.i124 = select i1 %cmp13.i122, i1 true, i1 %cmp15.i123
  br i1 %or.cond.i124, label %if.end10.i125.cake_get_tcpopt.exit139_crit_edge, label %if.end18.i127

if.end10.i125.cake_get_tcpopt.exit139_crit_edge:  ; preds = %if.end10.i125
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_get_tcpopt.exit139

if.end18.i127:                                    ; preds = %if.end10.i125
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %14)
  %cmp19.i126 = icmp eq i8 %14, 5
  br i1 %cmp19.i126, label %cleanup.thread47.i130, label %if.end22.i133

cleanup.thread47.i130:                            ; preds = %if.end18.i127
  call void @__sanitizer_cov_trace_pc() #17
  %conv12.i121.le = zext i8 %17 to i32
  %incdec.ptr11.le.i129 = getelementptr i8, ptr %ptr.054.i112, i32 2
  %phi.bo188 = add nsw i32 %conv12.i121.le, -2
  br label %cake_get_tcpopt.exit139

if.end22.i133:                                    ; preds = %if.end18.i127
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr24.i131 = getelementptr i8, ptr %ptr.054.i112, i32 %conv12.i121
  %sub25.i132 = sub nsw i32 %length.053.i113, %conv12.i121
  br label %cleanup.i137

cleanup.i137:                                     ; preds = %if.end22.i133, %if.then5.i118
  %length.1.i134 = phi i32 [ %dec.i117, %if.then5.i118 ], [ %sub25.i132, %if.end22.i133 ]
  %ptr.1.i135 = phi ptr [ %incdec.ptr.i114, %if.then5.i118 ], [ %add.ptr24.i131, %if.end22.i133 ]
  %cmp.i136 = icmp sgt i32 %length.1.i134, 0
  br i1 %cmp.i136, label %cleanup.i137.while.body.i116_crit_edge, label %cleanup.i137.cake_get_tcpopt.exit139_crit_edge

cleanup.i137.cake_get_tcpopt.exit139_crit_edge:   ; preds = %cleanup.i137
  call void @__sanitizer_cov_trace_pc() #17
  br label %cake_get_tcpopt.exit139

cleanup.i137.while.body.i116_crit_edge:           ; preds = %cleanup.i137
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i116

cake_get_tcpopt.exit139:                          ; preds = %cleanup.i137.cake_get_tcpopt.exit139_crit_edge, %cleanup.thread47.i130, %if.end10.i125.cake_get_tcpopt.exit139_crit_edge, %if.end6.i120.cake_get_tcpopt.exit139_crit_edge, %while.body.i116.cake_get_tcpopt.exit139_crit_edge, %cake_get_tcpopt.exit.cake_get_tcpopt.exit139_crit_edge
  %oplen_b.0 = phi i32 [ %phi.bo188, %cleanup.thread47.i130 ], [ -3, %cake_get_tcpopt.exit.cake_get_tcpopt.exit139_crit_edge ], [ -3, %cleanup.i137.cake_get_tcpopt.exit139_crit_edge ], [ -3, %if.end10.i125.cake_get_tcpopt.exit139_crit_edge ], [ -3, %if.end6.i120.cake_get_tcpopt.exit139_crit_edge ], [ -3, %while.body.i116.cake_get_tcpopt.exit139_crit_edge ]
  %retval.2.i138 = phi ptr [ %incdec.ptr11.le.i129, %cleanup.thread47.i130 ], [ null, %cake_get_tcpopt.exit.cake_get_tcpopt.exit139_crit_edge ], [ null, %cleanup.i137.cake_get_tcpopt.exit139_crit_edge ], [ null, %if.end10.i125.cake_get_tcpopt.exit139_crit_edge ], [ null, %if.end6.i120.cake_get_tcpopt.exit139_crit_edge ], [ null, %while.body.i116.cake_get_tcpopt.exit139_crit_edge ]
  %tobool.not = icmp eq ptr %retval.2.i, null
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %oplen_a.0)
  %cmp = icmp ugt i32 %oplen_a.0, 7
  %or.cond183 = select i1 %tobool.not.not, i1 %cmp, i1 false
  %tobool4.not = icmp eq ptr %retval.2.i138, null
  br i1 %or.cond183, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %cake_get_tcpopt.exit139
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %oplen_b.0)
  %cmp5 = icmp ult i32 %oplen_b.0, 8
  %or.cond = select i1 %tobool4.not, i1 true, i1 %cmp5
  br i1 %or.cond, label %land.lhs.true3.cleanup68_crit_edge, label %land.lhs.true3.if.end24_crit_edge

land.lhs.true3.if.end24_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

land.lhs.true3.cleanup68_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup68

if.else:                                          ; preds = %cake_get_tcpopt.exit139
  %tobool6.not.not = xor i1 %tobool4.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %oplen_b.0)
  %cmp8 = icmp ugt i32 %oplen_b.0, 7
  %or.cond189 = select i1 %tobool6.not.not, i1 %cmp8, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %oplen_a.0)
  %cmp12 = icmp ult i32 %oplen_a.0, 8
  %or.cond184 = select i1 %tobool.not, i1 true, i1 %cmp12
  br i1 %or.cond189, label %land.lhs.true9, label %if.else14

land.lhs.true9:                                   ; preds = %if.else
  br i1 %or.cond184, label %land.lhs.true9.cleanup68_crit_edge, label %land.lhs.true9.if.end24_crit_edge

land.lhs.true9.if.end24_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

land.lhs.true9.cleanup68_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup68

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %oplen_b.0)
  %cmp21 = icmp ult i32 %oplen_b.0, 8
  %or.cond186 = select i1 %tobool4.not, i1 true, i1 %cmp21
  %or.cond187 = select i1 %or.cond184, i1 %or.cond186, i1 false
  br i1 %or.cond187, label %if.else14.cleanup68_crit_edge, label %if.else14.if.end24_crit_edge

if.else14.if.end24_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.else14.cleanup68_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup68

if.end24:                                         ; preds = %if.else14.if.end24_crit_edge, %land.lhs.true9.if.end24_crit_edge, %land.lhs.true3.if.end24_crit_edge
  br i1 %cmp, label %while.body.lr.ph, label %if.end24.while.end66_crit_edge

if.end24.while.end66_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end66

while.body.lr.ph:                                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %oplen_b.0)
  %cmp33197 = icmp ugt i32 %oplen_b.0, 7
  br label %while.body

while.body:                                       ; preds = %cleanup59.while.body_crit_edge, %while.body.lr.ph
  %first.0.off0208 = phi i1 [ true, %while.body.lr.ph ], [ false, %cleanup59.while.body_crit_edge ]
  %bytes_b.0207 = phi i32 [ 0, %while.body.lr.ph ], [ %bytes_b.2, %cleanup59.while.body_crit_edge ]
  %bytes_a.0206 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup59.while.body_crit_edge ]
  %sack_a.0205 = phi ptr [ %retval.2.i, %while.body.lr.ph ], [ %incdec.ptr58, %cleanup59.while.body_crit_edge ]
  %oplen_a.1204 = phi i32 [ %oplen_a.0, %while.body.lr.ph ], [ %sub57, %cleanup59.while.body_crit_edge ]
  %18 = ptrtoint ptr %sack_a.0205 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %sack_a.0205, align 1
  %end_seq = getelementptr inbounds %struct.tcp_sack_block_wire, ptr %sack_a.0205, i32 0, i32 1
  %20 = ptrtoint ptr %end_seq to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %end_seq, align 1
  %sub.i140 = sub i32 %19, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i140)
  %cmp.i141 = icmp slt i32 %sub.i140, 0
  br i1 %cmp.i141, label %while.body.cleanup68_crit_edge, label %if.end30

while.body.cleanup68_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup68

if.end30:                                         ; preds = %while.body
  %sub31 = sub i32 %bytes_a.0206, %19
  %add = add i32 %sub31, %21
  br i1 %cmp33197, label %if.end30.while.body34_crit_edge, label %if.end30.cleanup68_crit_edge

if.end30.cleanup68_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup68

if.end30.while.body34_crit_edge:                  ; preds = %if.end30
  br label %while.body34

while.body34:                                     ; preds = %cleanup.while.body34_crit_edge, %if.end30.while.body34_crit_edge
  %found.0.off0201 = phi i1 [ %found.1.off0, %cleanup.while.body34_crit_edge ], [ false, %if.end30.while.body34_crit_edge ]
  %oplen_tmp.0200 = phi i32 [ %sub52, %cleanup.while.body34_crit_edge ], [ %oplen_b.0, %if.end30.while.body34_crit_edge ]
  %sack_tmp.0199 = phi ptr [ %incdec.ptr, %cleanup.while.body34_crit_edge ], [ %retval.2.i138, %if.end30.while.body34_crit_edge ]
  %bytes_b.1198 = phi i32 [ %bytes_b.2, %cleanup.while.body34_crit_edge ], [ %bytes_b.0207, %if.end30.while.body34_crit_edge ]
  %22 = ptrtoint ptr %sack_tmp.0199 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %sack_tmp.0199, align 1
  %end_seq37 = getelementptr inbounds %struct.tcp_sack_block_wire, ptr %sack_tmp.0199, i32 0, i32 1
  %24 = ptrtoint ptr %end_seq37 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %end_seq37, align 1
  %sub41 = sub i32 %25, %23
  %add42 = select i1 %first.0.off0208, i32 %sub41, i32 0
  %bytes_b.2 = add i32 %add42, %bytes_b.1198
  %sub.i142 = sub i32 %19, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i142)
  %cmp.i143 = icmp slt i32 %sub.i142, 0
  br i1 %cmp.i143, label %while.body34.cleanup_crit_edge, label %land.lhs.true45

while.body34.cleanup_crit_edge:                   ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true45:                                  ; preds = %while.body34
  %sub.i144 = sub i32 %25, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i144)
  %cmp.i145 = icmp slt i32 %sub.i144, 0
  %brmerge = or i1 %first.0.off0208, %cmp.i145
  %not.cmp.i145 = xor i1 %cmp.i145, true
  %found.0.off0.mux = select i1 %not.cmp.i145, i1 true, i1 %found.0.off0201
  br i1 %brmerge, label %land.lhs.true45.cleanup_crit_edge, label %land.lhs.true45.cleanup59_crit_edge

land.lhs.true45.cleanup59_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

land.lhs.true45.cleanup_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true45.cleanup_crit_edge, %while.body34.cleanup_crit_edge
  %found.1.off0 = phi i1 [ %found.0.off0201, %while.body34.cleanup_crit_edge ], [ %found.0.off0.mux, %land.lhs.true45.cleanup_crit_edge ]
  %sub52 = add i32 %oplen_tmp.0200, -8
  %incdec.ptr = getelementptr %struct.tcp_sack_block_wire, ptr %sack_tmp.0199, i32 1
  %cmp33 = icmp ugt i32 %sub52, 7
  br i1 %cmp33, label %cleanup.while.body34_crit_edge, label %while.end

cleanup.while.body34_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body34

while.end:                                        ; preds = %cleanup
  br i1 %found.1.off0, label %while.end.cleanup59_crit_edge, label %while.end.cleanup68_crit_edge

while.end.cleanup68_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup68

while.end.cleanup59_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

cleanup59:                                        ; preds = %while.end.cleanup59_crit_edge, %land.lhs.true45.cleanup59_crit_edge
  %sub57 = add i32 %oplen_a.1204, -8
  %incdec.ptr58 = getelementptr %struct.tcp_sack_block_wire, ptr %sack_a.0205, i32 1
  %cmp25 = icmp ugt i32 %sub57, 7
  br i1 %cmp25, label %cleanup59.while.body_crit_edge, label %cleanup59.while.end66_crit_edge

cleanup59.while.end66_crit_edge:                  ; preds = %cleanup59
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end66

cleanup59.while.body_crit_edge:                   ; preds = %cleanup59
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end66:                                      ; preds = %cleanup59.while.end66_crit_edge, %if.end24.while.end66_crit_edge
  %bytes_a.0.lcssa = phi i32 [ 0, %if.end24.while.end66_crit_edge ], [ %add, %cleanup59.while.end66_crit_edge ]
  %bytes_b.0.lcssa = phi i32 [ 0, %if.end24.while.end66_crit_edge ], [ %bytes_b.2, %cleanup59.while.end66_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes_b.0.lcssa, i32 %bytes_a.0.lcssa)
  %cmp67 = icmp ugt i32 %bytes_b.0.lcssa, %bytes_a.0.lcssa
  %cond = zext i1 %cmp67 to i32
  br label %cleanup68

cleanup68:                                        ; preds = %while.end66, %while.end.cleanup68_crit_edge, %if.end30.cleanup68_crit_edge, %while.body.cleanup68_crit_edge, %if.else14.cleanup68_crit_edge, %land.lhs.true9.cleanup68_crit_edge, %land.lhs.true3.cleanup68_crit_edge
  %retval.2 = phi i32 [ %cond, %while.end66 ], [ -1, %land.lhs.true3.cleanup68_crit_edge ], [ 1, %land.lhs.true9.cleanup68_crit_edge ], [ 0, %if.else14.cleanup68_crit_edge ], [ -1, %while.body.cleanup68_crit_edge ], [ -1, %while.end.cleanup68_crit_edge ], [ -1, %if.end30.cleanup68_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cake_clear_tin(ptr nocapture noundef %sch, i16 noundef zeroext %tin) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %cur_tin = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 40
  %0 = ptrtoint ptr %cur_tin to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %tin, ptr %cur_tin, align 8
  %cur_flow = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 42
  %tins.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %1 = ptrtoint ptr %cur_flow to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %cur_flow, align 2
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %buffer_used.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 15, i32 24
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %overflow_timeout.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 33, i32 3
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %entry
  %2 = ptrtoint ptr %tins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tins.i, align 8
  %4 = ptrtoint ptr %cur_tin to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cur_tin, align 8
  %idxprom.i10 = zext i16 %5 to i32
  %arrayidx.i11 = getelementptr %struct.cake_tin_data, ptr %3, i32 %idxprom.i10
  %6 = ptrtoint ptr %cur_flow to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cur_flow, align 2
  %idxprom1.i12 = zext i16 %7 to i32
  %arrayidx2.i13 = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx.i11, i32 0, i32 %idxprom1.i12
  %8 = ptrtoint ptr %arrayidx2.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.i13, align 8
  %tobool.not.i14 = icmp eq ptr %9, null
  br i1 %tobool.not.i14, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.dequeue_head.exit.i_crit_edge

while.cond.preheader.dequeue_head.exit.i_crit_edge: ; preds = %while.cond.preheader
  br label %dequeue_head.exit.i

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

dequeue_head.exit.i:                              ; preds = %while.body.dequeue_head.exit.i_crit_edge, %while.cond.preheader.dequeue_head.exit.i_crit_edge
  %10 = phi ptr [ %44, %while.body.dequeue_head.exit.i_crit_edge ], [ %9, %while.cond.preheader.dequeue_head.exit.i_crit_edge ]
  %arrayidx2.i16 = phi ptr [ %arrayidx2.i, %while.body.dequeue_head.exit.i_crit_edge ], [ %arrayidx2.i13, %while.cond.preheader.dequeue_head.exit.i_crit_edge ]
  %idxprom.i15 = phi i32 [ %idxprom.i, %while.body.dequeue_head.exit.i_crit_edge ], [ %idxprom.i10, %while.cond.preheader.dequeue_head.exit.i_crit_edge ]
  %11 = phi ptr [ %38, %while.body.dequeue_head.exit.i_crit_edge ], [ %3, %while.cond.preheader.dequeue_head.exit.i_crit_edge ]
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 8
  %14 = ptrtoint ptr %arrayidx2.i16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %arrayidx2.i16, align 8
  store ptr null, ptr %10, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3
  %15 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cb.i.i.i, align 4
  %17 = ptrtoint ptr %cur_flow to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cur_flow, align 2
  %idxprom6.i = zext i16 %18 to i32
  %arrayidx7.i = getelementptr %struct.cake_tin_data, ptr %11, i32 %idxprom.i15, i32 1, i32 %idxprom6.i
  %19 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx7.i, align 4
  %sub.i = sub i32 %20, %16
  store i32 %sub.i, ptr %arrayidx7.i, align 4
  %tin_backlog.i = getelementptr %struct.cake_tin_data, ptr %11, i32 %idxprom.i15, i32 22
  %21 = ptrtoint ptr %tin_backlog.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tin_backlog.i, align 8
  %sub8.i = sub i32 %22, %16
  store i32 %sub8.i, ptr %tin_backlog.i, align 8
  %23 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %backlog.i, align 4
  %sub9.i = sub i32 %24, %16
  store i32 %sub9.i, ptr %backlog.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 20
  %25 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %truesize.i, align 8
  %27 = ptrtoint ptr %buffer_used.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buffer_used.i, align 8
  %sub10.i = sub i32 %28, %26
  store i32 %sub10.i, ptr %buffer_used.i, align 8
  %29 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qlen.i, align 8
  %dec.i = add i32 %30, -1
  store i32 %dec.i, ptr %qlen.i, align 8
  %31 = ptrtoint ptr %overflow_timeout.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %overflow_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool12.not.i = icmp eq i16 %32, 0
  br i1 %tobool12.not.i, label %dequeue_head.exit.i.while.body_crit_edge, label %if.then13.i

dequeue_head.exit.i.while.body_crit_edge:         ; preds = %dequeue_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.then13.i:                                      ; preds = %dequeue_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %cur_flow to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cur_flow, align 2
  %idxprom15.i = zext i16 %34 to i32
  %arrayidx16.i = getelementptr %struct.cake_tin_data, ptr %11, i32 %idxprom.i15, i32 3, i32 %idxprom15.i
  %35 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx16.i, align 2
  tail call fastcc void @cake_heapify(ptr noundef %privdata.i, i16 noundef zeroext %36) #15
  br label %while.body

while.body:                                       ; preds = %if.then13.i, %dequeue_head.exit.i.while.body_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #15
  %37 = ptrtoint ptr %tins.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tins.i, align 8
  %39 = ptrtoint ptr %cur_tin to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %cur_tin, align 8
  %idxprom.i = zext i16 %40 to i32
  %arrayidx.i = getelementptr %struct.cake_tin_data, ptr %38, i32 %idxprom.i
  %41 = ptrtoint ptr %cur_flow to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %cur_flow, align 2
  %idxprom1.i = zext i16 %42 to i32
  %arrayidx2.i = getelementptr [1024 x %struct.cake_flow], ptr %arrayidx.i, i32 0, i32 %idxprom1.i
  %43 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx2.i, align 8
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %while.body.for.inc_crit_edge, label %while.body.dequeue_head.exit.i_crit_edge

while.body.dequeue_head.exit.i_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %dequeue_head.exit.i

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %45 = ptrtoint ptr %cur_flow to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cur_flow, align 2
  %inc = add i16 %46, 1
  store i16 %inc, ptr %cur_flow, align 2
  %cmp = icmp ult i16 %inc, 1024
  br i1 %cmp, label %for.inc.while.cond.preheader_crit_edge, label %for.end

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cake_heapify(ptr nocapture noundef %q, i16 noundef zeroext %i) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tins.i = getelementptr inbounds %struct.cake_sched_data, ptr %q, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %i)
  %cmp81 = icmp ult i16 %i, 8192
  br i1 %cmp81, label %while.body.preheader, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %0 = ptrtoint ptr %tins.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tins.i, align 8
  %idxprom.i = zext i16 %i to i32
  %arrayidx.i = getelementptr %struct.cake_sched_data, ptr %q, i32 0, i32 3, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %ii.sroa.0.0.copyload.i = load i16, ptr %arrayidx.i, align 2
  %bf.lshr.i = lshr i16 %ii.sroa.0.0.copyload.i, 13
  %idxprom1.i = zext i16 %bf.lshr.i to i32
  %bf.lshr4.i = lshr i16 %ii.sroa.0.0.copyload.i, 3
  %bf.clear.i = and i16 %bf.lshr4.i, 1023
  %idxprom5.i = zext i16 %bf.clear.i to i32
  %arrayidx6.i = getelementptr %struct.cake_tin_data, ptr %1, i32 %idxprom1.i, i32 1, i32 %idxprom5.i
  %3 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx6.i, align 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %m.084 = phi i32 [ %m.4, %cleanup.while.body_crit_edge ], [ %idxprom.i, %while.body.preheader ]
  %mb.083 = phi i32 [ %mb.4, %cleanup.while.body_crit_edge ], [ %4, %while.body.preheader ]
  %i.addr.082 = phi i16 [ %conv26, %cleanup.while.body_crit_edge ], [ %i, %while.body.preheader ]
  %add = shl nuw nsw i32 %m.084, 1
  %add2 = or i32 %add, 1
  %add3 = add nuw nsw i32 %add, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add2)
  %cmp4 = icmp ult i32 %add2, 8192
  br i1 %cmp4, label %if.then, label %while.body.if.end11_crit_edge

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i53 = getelementptr %struct.cake_sched_data, ptr %q, i32 0, i32 3, i32 %add2
  %5 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load2_noabort(i32 %5)
  %ii.sroa.0.0.copyload.i54 = load i16, ptr %arrayidx.i53, align 2
  %6 = ptrtoint ptr %tins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tins.i, align 8
  %bf.lshr.i56 = lshr i16 %ii.sroa.0.0.copyload.i54, 13
  %idxprom1.i57 = zext i16 %bf.lshr.i56 to i32
  %bf.lshr4.i58 = lshr i16 %ii.sroa.0.0.copyload.i54, 3
  %bf.clear.i59 = and i16 %bf.lshr4.i58, 1023
  %idxprom5.i60 = zext i16 %bf.clear.i59 to i32
  %arrayidx6.i61 = getelementptr %struct.cake_tin_data, ptr %7, i32 %idxprom1.i57, i32 1, i32 %idxprom5.i60
  %8 = ptrtoint ptr %arrayidx6.i61 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6.i61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mb.083)
  %cmp8 = icmp ugt i32 %9, %mb.083
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 %mb.083)
  %spec.select49 = select i1 %cmp8, i32 %add2, i32 %m.084
  br label %if.end11

if.end11:                                         ; preds = %if.then, %while.body.if.end11_crit_edge
  %mb.2 = phi i32 [ %10, %if.then ], [ %mb.083, %while.body.if.end11_crit_edge ]
  %m.2 = phi i32 [ %spec.select49, %if.then ], [ %m.084, %while.body.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %m.084)
  %cmp12 = icmp ult i32 %m.084, 4095
  br i1 %cmp12, label %if.then14, label %if.end11.if.end21_crit_edge

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %idxprom.i62 = and i32 %add3, 65534
  %arrayidx.i63 = getelementptr %struct.cake_sched_data, ptr %q, i32 0, i32 3, i32 %idxprom.i62
  %11 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load2_noabort(i32 %11)
  %ii.sroa.0.0.copyload.i64 = load i16, ptr %arrayidx.i63, align 2
  %12 = ptrtoint ptr %tins.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tins.i, align 8
  %bf.lshr.i66 = lshr i16 %ii.sroa.0.0.copyload.i64, 13
  %idxprom1.i67 = zext i16 %bf.lshr.i66 to i32
  %bf.lshr4.i68 = lshr i16 %ii.sroa.0.0.copyload.i64, 3
  %bf.clear.i69 = and i16 %bf.lshr4.i68, 1023
  %idxprom5.i70 = zext i16 %bf.clear.i69 to i32
  %arrayidx6.i71 = getelementptr %struct.cake_tin_data, ptr %13, i32 %idxprom1.i67, i32 1, i32 %idxprom5.i70
  %14 = ptrtoint ptr %arrayidx6.i71 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6.i71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %mb.2)
  %cmp17 = icmp ugt i32 %15, %mb.2
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 %mb.2)
  %spec.select51 = select i1 %cmp17, i32 %add3, i32 %m.2
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.end11.if.end21_crit_edge
  %mb.4 = phi i32 [ %16, %if.then14 ], [ %mb.2, %if.end11.if.end21_crit_edge ]
  %m.4 = phi i32 [ %spec.select51, %if.then14 ], [ %m.2, %if.end11.if.end21_crit_edge ]
  %conv22 = zext i16 %i.addr.082 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %m.4, i32 %conv22)
  %cmp23.not = icmp eq i32 %m.4, %conv22
  br i1 %cmp23.not, label %if.end21.while.end_crit_edge, label %cleanup

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

cleanup:                                          ; preds = %if.end21
  %conv26 = trunc i32 %m.4 to i16
  %arrayidx.i73 = getelementptr %struct.cake_sched_data, ptr %q, i32 0, i32 3, i32 %conv22
  %17 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load2_noabort(i32 %17)
  %ii.sroa.0.0.copyload.i74 = load i16, ptr %arrayidx.i73, align 2
  %idxprom2.i = and i32 %m.4, 65535
  %arrayidx3.i = getelementptr %struct.cake_sched_data, ptr %q, i32 0, i32 3, i32 %idxprom2.i
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %jj.sroa.0.0.copyload.i = load i16, ptr %arrayidx3.i, align 2
  store i16 %jj.sroa.0.0.copyload.i, ptr %arrayidx.i73, align 2
  store i16 %ii.sroa.0.0.copyload.i74, ptr %arrayidx3.i, align 2
  %19 = ptrtoint ptr %tins.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tins.i, align 8
  %bf.lshr.i76 = lshr i16 %ii.sroa.0.0.copyload.i74, 13
  %idxprom10.i = zext i16 %bf.lshr.i76 to i32
  %bf.lshr13.i = lshr i16 %ii.sroa.0.0.copyload.i74, 3
  %bf.clear.i77 = and i16 %bf.lshr13.i, 1023
  %idxprom14.i = zext i16 %bf.clear.i77 to i32
  %arrayidx15.i = getelementptr %struct.cake_tin_data, ptr %20, i32 %idxprom10.i, i32 3, i32 %idxprom14.i
  %21 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv26, ptr %arrayidx15.i, align 2
  %22 = load ptr, ptr %tins.i, align 8
  %bf.lshr18.i = lshr i16 %jj.sroa.0.0.copyload.i, 13
  %idxprom19.i = zext i16 %bf.lshr18.i to i32
  %bf.lshr23.i = lshr i16 %jj.sroa.0.0.copyload.i, 3
  %bf.clear24.i = and i16 %bf.lshr23.i, 1023
  %idxprom25.i = zext i16 %bf.clear24.i to i32
  %arrayidx26.i = getelementptr %struct.cake_tin_data, ptr %22, i32 %idxprom19.i, i32 3, i32 %idxprom25.i
  %23 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %i.addr.082, ptr %arrayidx26.i, align 2
  %cmp = icmp ult i32 %m.4, 8192
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end21.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_block_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !21, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_sch_cake__735_3118_cake_module_init6, !1, !"__initcall__kmod_sch_cake__735_3118_cake_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_cake.c", i32 3118, i32 1}
!2 = !{ptr @__exitcall_cake_module_exit, !3, !"__exitcall_cake_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_cake.c", i32 3119, i32 1}
!4 = !{ptr @__UNIQUE_ID_author736, !5, !"__UNIQUE_ID_author736", i1 false, i1 false}
!5 = !{!"../net/sched/sch_cake.c", i32 3120, i32 1}
!6 = !{ptr @__UNIQUE_ID_file737, !7, !"__UNIQUE_ID_file737", i1 false, i1 false}
!7 = !{!"../net/sched/sch_cake.c", i32 3121, i32 1}
!8 = !{ptr @__UNIQUE_ID_license738, !7, !"__UNIQUE_ID_license738", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description739, !10, !"__UNIQUE_ID_description739", i1 false, i1 false}
!10 = !{!"../net/sched/sch_cake.c", i32 3122, i32 1}
!11 = !{ptr @cake_qdisc_ops, !12, !"cake_qdisc_ops", i1 false, i1 false}
!12 = !{!"../net/sched/sch_cake.c", i32 3092, i32 25}
!13 = !{ptr @cake_class_ops, !14, !"cake_class_ops", i1 false, i1 false}
!14 = !{!"../net/sched/sch_cake.c", i32 3081, i32 37}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/net/netlink.h", i32 991, i32 3}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/sched/sch_cake.c", i32 1663, i32 11}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!27 = !{ptr @besteffort, !28, !"besteffort", i1 false, i1 false}
!28 = !{!"../net/sched/sch_cake.c", i32 347, i32 17}
!29 = !{ptr @normal_order, !30, !"normal_order", i1 false, i1 false}
!30 = !{!"../net/sched/sch_cake.c", i32 360, i32 17}
!31 = distinct !{null, !32, !"MIN_RATE", i1 false, i1 false}
!32 = !{!"../net/sched/sch_cake.c", i32 2259, i32 19}
!33 = !{ptr @precedence, !34, !"precedence", i1 false, i1 false}
!34 = !{!"../net/sched/sch_cake.c", i32 303, i32 17}
!35 = !{ptr @diffserv8, !36, !"diffserv8", i1 false, i1 false}
!36 = !{!"../net/sched/sch_cake.c", i32 314, i32 17}
!37 = !{ptr @diffserv4, !38, !"diffserv4", i1 false, i1 false}
!38 = !{!"../net/sched/sch_cake.c", i32 325, i32 17}
!39 = !{ptr @bulk_order, !40, !"bulk_order", i1 false, i1 false}
!40 = !{!"../net/sched/sch_cake.c", i32 361, i32 17}
!41 = !{ptr @diffserv3, !42, !"diffserv3", i1 false, i1 false}
!42 = !{!"../net/sched/sch_cake.c", i32 336, i32 17}
!43 = distinct !{null, !44, !"a", i1 false, i1 false}
!44 = !{!"../net/sched/sch_cake.c", i32 1417, i32 19}
!45 = !{ptr @quantum_div, !46, !"quantum_div", i1 false, i1 false}
!46 = !{!"../net/sched/sch_cake.c", i32 299, i32 12}
!47 = !{ptr @cobalt_rec_inv_sqrt_cache, !48, !"cobalt_rec_inv_sqrt_cache", i1 false, i1 false}
!48 = !{!"../net/sched/sch_cake.c", i32 364, i32 12}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!51 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @cake_policy, !53, !"cake_policy", i1 false, i1 false}
!53 = !{!"../net/sched/sch_cake.c", i32 2233, i32 32}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"auto-init"}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i8 0, i8 2}
!68 = !{i64 2149943105}
!69 = !{i64 2149948037}
!70 = !{i64 2149969749}
!71 = !{i64 2149974641}
!72 = !{i64 2150051098}
!73 = !{i64 2150051423}
!74 = !{i32 0, i32 33}
!75 = !{i64 779827, i64 779854, i64 779876, i64 779904}
!76 = !{i64 780235, i64 780262, i64 780295, i64 780316, i64 780343, i64 780369}
!77 = !{i64 779540, i64 779567}
