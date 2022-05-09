; ModuleID = '/llk/IR_all_yes/net/bridge/br_mrp_netlink.c_pt.bc'
source_filename = "../net/bridge/br_mrp_netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.br_mrp_instance = type { i32, i32, i32, i16 }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.143, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.list_head = type { ptr, ptr }
%union.anon.143 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.144, %union.anon.145, i16, i16 }
%union.anon.144 = type { %struct.in6_addr }
%union.anon.145 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.hlist_head = type { ptr }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.br_mrp_ring_state = type { i32, i32 }
%struct.br_mrp_ring_role = type { i32, i32 }
%struct.br_mrp_start_test = type { i32, i32, i32, i32, i32 }
%struct.br_mrp_in_state = type { i32, i16 }
%struct.br_mrp_in_role = type { i32, i32, i32, i16 }
%struct.br_mrp_start_in_test = type { i32, i32, i32, i16 }
%struct.sk_buff = type { %union.anon.3, %union.anon.6, %union.anon.113, [48 x i8], %union.anon.114, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.116, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.113 = type { i64 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, ptr }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.118, i32, i32, i32, i16, i16, %union.anon.120, i32, %union.anon.121, %union.anon.122, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.118 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.br_mrp = type { %struct.hlist_node, ptr, ptr, ptr, i32, i16, i16, i32, i8, i32, i32, i32, i8, i32, i32, %struct.delayed_work, i32, i32, i32, i32, i8, %struct.delayed_work, i32, i32, i32, i32, i32, %struct.callback_head }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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

@br_mrp_parse.__msg = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"bridge: MRP can't be enabled if STP is already enabled\00", [41 x i8] zeroinitializer }, align 32
@br_mrp_policy = internal constant { [11 x %struct.nla_policy], [40 x i8] } { [11 x %struct.nla_policy] [%struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@br_mrp_fill_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/bridge/br_mrp_netlink.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@br_mrp_fill_info.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@br_mrp_fill_info.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mrp_fill_info.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@br_mrp_instance_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@br_mrp_instance_parse.__msg = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"bridge: Missing attribute: RING_ID or P_IFINDEX or S_IFINDEX\00", [35 x i8] zeroinitializer }, align 32
@br_mrp_port_state_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@br_mrp_port_state_parse.__msg = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bridge: Missing attribute: STATE\00", [63 x i8] zeroinitializer }, align 32
@br_mrp_port_role_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@br_mrp_port_role_parse.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bridge: Missing attribute: ROLE\00", [32 x i8] zeroinitializer }, align 32
@br_mrp_ring_state_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@br_mrp_ring_state_parse.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bridge: Missing attribute: RING_ID or STATE\00", [52 x i8] zeroinitializer }, align 32
@br_mrp_ring_role_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@br_mrp_ring_role_parse.__msg = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bridge: Missing attribute: RING_ID or ROLE\00", [53 x i8] zeroinitializer }, align 32
@br_mrp_start_test_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@br_mrp_start_test_parse.__msg = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"bridge: Missing attribute: RING_ID or INTERVAL or MAX_MISS or PERIOD\00", [59 x i8] zeroinitializer }, align 32
@br_mrp_in_state_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@br_mrp_in_state_parse.__msg = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bridge: Missing attribute: IN_ID or STATE\00", [54 x i8] zeroinitializer }, align 32
@br_mrp_in_role_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@br_mrp_in_role_parse.__msg = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"bridge: Missing attribute: RING_ID or ROLE or IN_ID or I_IFINDEX\00", [63 x i8] zeroinitializer }, align 32
@br_mrp_start_in_test_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@br_mrp_start_in_test_parse.__msg = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"bridge: Missing attribute: RING_ID or INTERVAL or MAX_MISS or PERIOD\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@br_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_private.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 369, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"br_mrp_policy\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 9, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 456, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 467, i32 7 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1208, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"br_mrp_instance_policy\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 23, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 46, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [25 x i8] c"br_mrp_port_state_policy\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 70, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 89, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [24 x i8] c"br_mrp_port_role_policy\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 99, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 118, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [25 x i8] c"br_mrp_ring_state_policy\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 128, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 148, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [24 x i8] c"br_mrp_ring_role_policy\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 162, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 182, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [25 x i8] c"br_mrp_start_test_policy\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 196, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 221, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [23 x i8] c"br_mrp_in_state_policy\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 242, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 262, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [22 x i8] c"br_mrp_in_role_policy\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 276, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 300, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [28 x i8] c"br_mrp_start_in_test_policy\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 316, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.78 = private constant [31 x i8] c"../net/bridge/br_mrp_netlink.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 341, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 991, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 416, i32 9 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @br_mrp_parse.__msg, ptr @br_mrp_policy, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @nla_parse_nested.__msg, ptr @br_mrp_instance_policy, ptr @br_mrp_instance_parse.__msg, ptr @br_mrp_port_state_policy, ptr @br_mrp_port_state_parse.__msg, ptr @br_mrp_port_role_policy, ptr @br_mrp_port_role_parse.__msg, ptr @br_mrp_ring_state_policy, ptr @br_mrp_ring_state_parse.__msg, ptr @br_mrp_ring_role_policy, ptr @br_mrp_ring_role_parse.__msg, ptr @br_mrp_start_test_policy, ptr @br_mrp_start_test_parse.__msg, ptr @br_mrp_in_state_policy, ptr @br_mrp_in_state_parse.__msg, ptr @br_mrp_in_role_policy, ptr @br_mrp_in_role_parse.__msg, ptr @br_mrp_start_in_test_policy, ptr @br_mrp_start_in_test_parse.__msg, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_parse.__msg to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_policy to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_instance_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_instance_parse.__msg to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_port_state_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_port_state_parse.__msg to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_port_role_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_port_role_parse.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_ring_state_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_ring_state_parse.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_ring_role_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_ring_role_parse.__msg to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_start_test_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_start_test_parse.__msg to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_in_state_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_in_state_parse.__msg to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_in_role_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_in_role_parse.__msg to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_start_in_test_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mrp_start_in_test_parse.__msg to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_parse(ptr noundef %br, ptr noundef %p, ptr noundef %attr, i32 noundef %cmd, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %tb.i162 = alloca [2 x ptr], align 4
  %tb.i143 = alloca [2 x ptr], align 4
  %tb.i = alloca [5 x ptr], align 4
  %inst.i = alloca %struct.br_mrp_instance, align 4
  %tb = alloca [11 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tb) #3
  %0 = call ptr @memset(ptr %tb, i32 255, i32 44)
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %br.addr.0 = phi ptr [ %2, %if.then ], [ %br, %entry.if.end_crit_edge ]
  %stp_enabled = getelementptr inbounds %struct.net_bridge, ptr %br.addr.0, i32 0, i32 28
  %3 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_mrp_parse.__msg) #3
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @br_mrp_parse.__msg, ptr %extack, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %tobool.not.i = icmp sgt i16 %7, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end6
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %9 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %attr, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %10 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %if.end6
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %12 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 10, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @br_mrp_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not, label %if.end9, label %nla_parse_nested.exit.cleanup_crit_edge

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %nla_parse_nested.exit
  %arrayidx = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.end9.if.end17_crit_edge, label %if.then11

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then11:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb.i) #3
  %15 = getelementptr inbounds [5 x ptr], ptr %tb.i, i32 0, i32 1
  %16 = getelementptr inbounds [5 x ptr], ptr %tb.i, i32 0, i32 2
  %17 = getelementptr inbounds [5 x ptr], ptr %tb.i, i32 0, i32 3
  %18 = getelementptr inbounds [5 x ptr], ptr %tb.i, i32 0, i32 4
  %19 = call ptr @memset(ptr %tb.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inst.i) #3
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %14, i32 0, i32 1
  %20 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nla_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %21)
  %tobool.not.i.i = icmp sgt i16 %21, -1
  br i1 %tobool.not.i.i, label %do.body.i.i, label %nla_parse_nested.exit.i

do.body.i.i:                                      ; preds = %if.then11
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.br_mrp_instance_parse.exit.thread_crit_edge, label %if.then2.i.i

do.body.i.i.br_mrp_instance_parse.exit.thread_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mrp_instance_parse.exit.thread

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %23 = ptrtoint ptr %bad_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %14, ptr %bad_attr.i.i, align 4
  %policy3.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %24 = ptrtoint ptr %policy3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %policy3.i.i, align 4
  br label %br_mrp_instance_parse.exit.thread

nla_parse_nested.exit.i:                          ; preds = %if.then11
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 4
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %14, align 2
  %conv.i.i.i = zext i16 %26 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call6.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 4, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @br_mrp_instance_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i139 = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i139, label %if.end.i, label %nla_parse_nested.exit.i.br_mrp_instance_parse.exit.thread_crit_edge

nla_parse_nested.exit.i.br_mrp_instance_parse.exit.thread_crit_edge: ; preds = %nla_parse_nested.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mrp_instance_parse.exit.thread

if.end.i:                                         ; preds = %nla_parse_nested.exit.i
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %15, align 4
  %tobool1.not.i140 = icmp eq ptr %28, null
  br i1 %tobool1.not.i140, label %if.end.i.do.body.i141_crit_edge, label %lor.lhs.false.i

if.end.i.do.body.i141_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i141

lor.lhs.false.i:                                  ; preds = %if.end.i
  %29 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %16, align 4
  %tobool3.not.i = icmp eq ptr %30, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.do.body.i141_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.do.body.i141_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i141

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %31 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %17, align 4
  %tobool6.not.i = icmp eq ptr %32, null
  br i1 %tobool6.not.i, label %lor.lhs.false4.i.do.body.i141_crit_edge, label %if.end11.i

lor.lhs.false4.i.do.body.i141_crit_edge:          ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i141

do.body.i141:                                     ; preds = %lor.lhs.false4.i.do.body.i141_crit_edge, %lor.lhs.false.i.do.body.i141_crit_edge, %if.end.i.do.body.i141_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mrp_instance_parse.__msg) #3
  %tobool8.not.i = icmp eq ptr %extack, null
  br i1 %tobool8.not.i, label %do.body.i141.br_mrp_instance_parse.exit.thread_crit_edge, label %if.then9.i

do.body.i141.br_mrp_instance_parse.exit.thread_crit_edge: ; preds = %do.body.i141
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mrp_instance_parse.exit.thread

if.then9.i:                                       ; preds = %do.body.i141
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @br_mrp_instance_parse.__msg, ptr %extack, align 4
  br label %br_mrp_instance_parse.exit.thread

if.end11.i:                                       ; preds = %lor.lhs.false4.i
  %34 = getelementptr inbounds i8, ptr %inst.i, i32 12
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %34, align 4
  %add.ptr.i.i34.i = getelementptr i8, ptr %28, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i34.i, align 4
  %38 = ptrtoint ptr %inst.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %inst.i, align 4
  %add.ptr.i.i35.i = getelementptr i8, ptr %30, i32 4
  %39 = ptrtoint ptr %add.ptr.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i35.i, align 4
  %p_ifindex.i = getelementptr inbounds %struct.br_mrp_instance, ptr %inst.i, i32 0, i32 1
  %41 = ptrtoint ptr %p_ifindex.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %p_ifindex.i, align 4
  %add.ptr.i.i36.i = getelementptr i8, ptr %32, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i36.i, align 4
  %s_ifindex.i = getelementptr inbounds %struct.br_mrp_instance, ptr %inst.i, i32 0, i32 2
  %44 = ptrtoint ptr %s_ifindex.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %s_ifindex.i, align 4
  store i16 -32768, ptr %34, align 4
  %45 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %18, align 4
  %tobool19.not.i = icmp eq ptr %46, null
  br i1 %tobool19.not.i, label %if.end11.i.if.end24.i_crit_edge, label %if.then20.i

if.end11.i.if.end24.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24.i

if.then20.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i37.i = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i37.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr.i.i37.i, align 2
  %49 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %34, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %if.end11.i.if.end24.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %cmd)
  %cmp.i = icmp eq i32 %cmd, 19
  br i1 %cmp.i, label %if.then25.i, label %if.else.i

if.then25.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #5
  %call26.i = call i32 @br_mrp_add(ptr noundef %br.addr.0, ptr noundef nonnull %inst.i) #3
  br label %br_mrp_instance_parse.exit

if.else.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #5
  %call27.i = call i32 @br_mrp_del(ptr noundef %br.addr.0, ptr noundef nonnull %inst.i) #3
  br label %br_mrp_instance_parse.exit

br_mrp_instance_parse.exit.thread:                ; preds = %if.then9.i, %do.body.i141.br_mrp_instance_parse.exit.thread_crit_edge, %nla_parse_nested.exit.i.br_mrp_instance_parse.exit.thread_crit_edge, %if.then2.i.i, %do.body.i.i.br_mrp_instance_parse.exit.thread_crit_edge
  %retval.0.i142.ph = phi i32 [ -22, %do.body.i.i.br_mrp_instance_parse.exit.thread_crit_edge ], [ -22, %if.then2.i.i ], [ -22, %do.body.i141.br_mrp_instance_parse.exit.thread_crit_edge ], [ -22, %if.then9.i ], [ %call6.i.i, %nla_parse_nested.exit.i.br_mrp_instance_parse.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inst.i) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i) #3
  br label %cleanup

br_mrp_instance_parse.exit:                       ; preds = %if.else.i, %if.then25.i
  %retval.0.i142 = phi i32 [ %call26.i, %if.then25.i ], [ %call27.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inst.i) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i142)
  %tobool14.not = icmp eq i32 %retval.0.i142, 0
  br i1 %tobool14.not, label %br_mrp_instance_parse.exit.if.end17_crit_edge, label %br_mrp_instance_parse.exit.cleanup_crit_edge

br_mrp_instance_parse.exit.cleanup_crit_edge:     ; preds = %br_mrp_instance_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

br_mrp_instance_parse.exit.if.end17_crit_edge:    ; preds = %br_mrp_instance_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.end17:                                         ; preds = %br_mrp_instance_parse.exit.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %arrayidx18 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %51, null
  br i1 %tobool19.not, label %if.end17.if.end26_crit_edge, label %if.then20

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then20:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb.i143) #3
  %52 = ptrtoint ptr %tb.i143 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i143, align 4, !annotation !67
  %53 = getelementptr inbounds [2 x ptr], ptr %tb.i143, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 -1 to ptr), ptr %53, align 4, !annotation !67
  %nla_type.i.i144 = getelementptr inbounds %struct.nlattr, ptr %51, i32 0, i32 1
  %55 = ptrtoint ptr %nla_type.i.i144 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %nla_type.i.i144, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %56)
  %tobool.not.i.i145 = icmp sgt i16 %56, -1
  br i1 %tobool.not.i.i145, label %do.body.i.i147, label %nla_parse_nested.exit.i156

do.body.i.i147:                                   ; preds = %if.then20
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i.i146 = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i146, label %do.body.i.i147.br_mrp_port_state_parse.exit.thread_crit_edge, label %if.then2.i.i150

do.body.i.i147.br_mrp_port_state_parse.exit.thread_crit_edge: ; preds = %do.body.i.i147
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mrp_port_state_parse.exit.thread

if.then2.i.i150:                                  ; preds = %do.body.i.i147
  call void @__sanitizer_cov_trace_pc() #5
  %57 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i148 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %58 = ptrtoint ptr %bad_attr.i.i148 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %51, ptr %bad_attr.i.i148, align 4
  %policy3.i.i149 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %59 = ptrtoint ptr %policy3.i.i149 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %policy3.i.i149, align 4
  br label %br_mrp_port_state_parse.exit.thread

nla_parse_nested.exit.i156:                       ; preds = %if.then20
  %add.ptr.i.i.i151 = getelementptr i8, ptr %51, i32 4
  %60 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %51, align 2
  %conv.i.i.i152 = zext i16 %61 to i32
  %sub.i.i.i153 = add nsw i32 %conv.i.i.i152, -4
  %call6.i.i154 = call i32 @__nla_parse(ptr noundef nonnull %tb.i143, i32 noundef 1, ptr noundef %add.ptr.i.i.i151, i32 noundef %sub.i.i.i153, ptr noundef nonnull @br_mrp_port_state_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i154)
  %tobool.not.i155 = icmp eq i32 %call6.i.i154, 0
  br i1 %tobool.not.i155, label %if.end.i158, label %nla_parse_nested.exit.i156.br_mrp_port_state_parse.exit.thread_crit_edge

nla_parse_nested.exit.i156.br_mrp_port_state_parse.exit.thread_crit_edge: ; preds = %nla_parse_nested.exit.i156
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mrp_port_state_parse.exit.thread

if.end.i158:                                      ; preds = %nla_parse_nested.exit.i156
  %62 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %53, align 4
  %tobool1.not.i157 = icmp eq ptr %63, null
  br i1 %tobool1.not.i157, label %do.body.i160, label %br_mrp_port_state_parse.exit

do.body.i160:                                     ; preds = %if.end.i158
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mrp_port_state_parse.__msg) #3
  %tobool3.not.i159 = icmp eq ptr %extack, null
  br i1 %tobool3.not.i159, label %do.body.i160.br_mrp_port_state_parse.exit.thread_crit_edge, label %if.then4.i

do.body.i160.br_mrp_port_state_parse.exit.thread_crit_edge: ; preds = %do.body.i160
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mrp_port_state_parse.exit.thread

if.then4.i:                                       ; preds = %do.body.i160
  call void @__sanitizer_cov_trace_pc() #5
  %64 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @br_mrp_port_state_parse.__msg, ptr %extack, align 4
  br label %br_mrp_port_state_parse.exit.thread

br_mrp_port_state_parse.exit.thread:              ; preds = %if.then4.i, %do.body.i160.br_mrp_port_state_parse.exit.thread_crit_edge, %nla_parse_nested.exit.i156.br_mrp_port_state_parse.exit.thread_crit_edge, %if.then2.i.i150, %do.body.i.i147.br_mrp_port_state_parse.exit.thread_crit_edge
  %retval.0.i161.ph = phi i32 [ -22, %do.body.i.i147.br_mrp_port_state_parse.exit.thread_crit_edge ], [ -22, %if.then2.i.i150 ], [ -22, %do.body.i160.br_mrp_port_state_parse.exit.thread_crit_edge ], [ -22, %if.then4.i ], [ %call6.i.i154, %nla_parse_nested.exit.i156.br_mrp_port_state_parse.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i143) #3
  br label %cleanup

br_mrp_port_state_parse.exit:                     ; preds = %if.end.i158
  %add.ptr.i.i15.i = getelementptr i8, ptr %63, i32 4
  %65 = ptrtoint ptr %add.ptr.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr.i.i15.i, align 4
  %call9.i = call i32 @br_mrp_set_port_state(ptr noundef %p, i32 noundef %66) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i143) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool23.not = icmp eq i32 %call9.i, 0
  br i1 %tobool23.not, label %br_mrp_port_state_parse.exit.if.end26_crit_edge, label %br_mrp_port_state_parse.exit.cleanup_crit_edge

br_mrp_port_state_parse.exit.cleanup_crit_edge:   ; preds = %br_mrp_port_state_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

br_mrp_port_state_parse.exit.if.end26_crit_edge:  ; preds = %br_mrp_port_state_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.end26:                                         ; preds = %br_mrp_port_state_parse.exit.if.end26_crit_edge, %if.end17.if.end26_crit_edge
  %arrayidx27 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 3
  %67 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx27, align 4
  %tobool28.not = icmp eq ptr %68, null
  br i1 %tobool28.not, label %if.end26.if.end35_crit_edge, label %if.then29

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then29:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb.i162) #3
  %69 = ptrtoint ptr %tb.i162 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i162, align 4, !annotation !67
  %70 = getelementptr inbounds [2 x ptr], ptr %tb.i162, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 -1 to ptr), ptr %70, align 4, !annotation !67
  %nla_type.i.i163 = getelementptr inbounds %struct.nlattr, ptr %68, i32 0, i32 1
  %72 = ptrtoint ptr %nla_type.i.i163 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %nla_type.i.i163, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %73)
  %tobool.not.i.i164 = icmp sgt i16 %73, -1
  br i1 %tobool.not.i.i164, label %do.body.i.i166, label %nla_parse_nested.exit.i175

do.body.i.i166:                                   ; preds = %if.then29
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i.i165 = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i165, label %do.body.i.i166.br_mrp_port_role_parse.exit.thread_crit_edge, label %if.then2.i.i169

do.body.i.i166.br_mrp_port_role_parse.exit.thread_crit_edge: ; preds = %do.body.i.i166
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mrp_port_role_parse.exit.thread

if.then2.i.i169:                                  ; preds = %do.body.i.i166
  call void @__sanitizer_cov_trace_pc() #5
  %74 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i167 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %75 = ptrtoint ptr %bad_attr.i.i167 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %68, ptr %bad_attr.i.i167, align 4
  %policy3.i.i168 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %76 = ptrtoint ptr %policy3.i.i168 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %policy3.i.i168, align 4
  br label %br_mrp_port_role_parse.exit.thread

nla_parse_nested.exit.i175:                       ; preds = %if.then29
  %add.ptr.i.i.i170 = getelementptr i8, ptr %68, i32 4
  %77 = ptrtoint ptr %68 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %68, align 2
  %conv.i.i.i171 = zext i16 %78 to i32
  %sub.i.i.i172 = add nsw i32 %conv.i.i.i171, -4
  %call6.i.i173 = call i32 @__nla_parse(ptr noundef nonnull %tb.i162, i32 noundef 1, ptr noundef %add.ptr.i.i.i170, i32 noundef %sub.i.i.i172, ptr noundef nonnull @br_mrp_port_role_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i173)
  %tobool.not.i174 = icmp eq i32 %call6.i.i173, 0
  br i1 %tobool.not.i174, label %if.end.i177, label %nla_parse_nested.exit.i175.br_mrp_port_role_parse.exit.thread_crit_edge

nla_parse_nested.exit.i175.br_mrp_port_role_parse.exit.thread_crit_edge: ; preds = %nla_parse_nested.exit.i175
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mrp_port_role_parse.exit.thread

if.end.i177:                                      ; preds = %nla_parse_nested.exit.i175
  %79 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %70, align 4
  %tobool1.not.i176 = icmp eq ptr %80, null
  br i1 %tobool1.not.i176, label %do.body.i179, label %br_mrp_port_role_parse.exit

do.body.i179:                                     ; preds = %if.end.i177
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mrp_port_role_parse.__msg) #3
  %tobool3.not.i178 = icmp eq ptr %extack, null
  br i1 %tobool3.not.i178, label %do.body.i179.br_mrp_port_role_parse.exit.thread_crit_edge, label %if.then4.i180

do.body.i179.br_mrp_port_role_parse.exit.thread_crit_edge: ; preds = %do.body.i179
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mrp_port_role_parse.exit.thread

if.then4.i180:                                    ; preds = %do.body.i179
  call void @__sanitizer_cov_trace_pc() #5
  %81 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @br_mrp_port_role_parse.__msg, ptr %extack, align 4
  br label %br_mrp_port_role_parse.exit.thread

br_mrp_port_role_parse.exit.thread:               ; preds = %if.then4.i180, %do.body.i179.br_mrp_port_role_parse.exit.thread_crit_edge, %nla_parse_nested.exit.i175.br_mrp_port_role_parse.exit.thread_crit_edge, %if.then2.i.i169, %do.body.i.i166.br_mrp_port_role_parse.exit.thread_crit_edge
  %retval.0.i184.ph = phi i32 [ -22, %do.body.i.i166.br_mrp_port_role_parse.exit.thread_crit_edge ], [ -22, %if.then2.i.i169 ], [ -22, %do.body.i179.br_mrp_port_role_parse.exit.thread_crit_edge ], [ -22, %if.then4.i180 ], [ %call6.i.i173, %nla_parse_nested.exit.i175.br_mrp_port_role_parse.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i162) #3
  br label %cleanup

br_mrp_port_role_parse.exit:                      ; preds = %if.end.i177
  %add.ptr.i.i15.i181 = getelementptr i8, ptr %80, i32 4
  %82 = ptrtoint ptr %add.ptr.i.i15.i181 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i.i15.i181, align 4
  %call9.i182 = call i32 @br_mrp_set_port_role(ptr noundef %p, i32 noundef %83) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i162) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i182)
  %tobool32.not = icmp eq i32 %call9.i182, 0
  br i1 %tobool32.not, label %br_mrp_port_role_parse.exit.if.end35_crit_edge, label %br_mrp_port_role_parse.exit.cleanup_crit_edge

br_mrp_port_role_parse.exit.cleanup_crit_edge:    ; preds = %br_mrp_port_role_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

br_mrp_port_role_parse.exit.if.end35_crit_edge:   ; preds = %br_mrp_port_role_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.end35:                                         ; preds = %br_mrp_port_role_parse.exit.if.end35_crit_edge, %if.end26.if.end35_crit_edge
  %arrayidx36 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 4
  %84 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx36, align 4
  %tobool37.not = icmp eq ptr %85, null
  br i1 %tobool37.not, label %if.end35.if.end44_crit_edge, label %if.then38

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

if.then38:                                        ; preds = %if.end35
  %call40 = call fastcc i32 @br_mrp_ring_state_parse(ptr noundef %br.addr.0, ptr noundef nonnull %85, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then38.if.end44_crit_edge, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then38.if.end44_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

if.end44:                                         ; preds = %if.then38.if.end44_crit_edge, %if.end35.if.end44_crit_edge
  %arrayidx45 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 5
  %86 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx45, align 4
  %tobool46.not = icmp eq ptr %87, null
  br i1 %tobool46.not, label %if.end44.if.end53_crit_edge, label %if.then47

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

if.then47:                                        ; preds = %if.end44
  %call49 = call fastcc i32 @br_mrp_ring_role_parse(ptr noundef %br.addr.0, ptr noundef nonnull %87, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then47.if.end53_crit_edge, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then47.if.end53_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

if.end53:                                         ; preds = %if.then47.if.end53_crit_edge, %if.end44.if.end53_crit_edge
  %arrayidx54 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 6
  %88 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx54, align 4
  %tobool55.not = icmp eq ptr %89, null
  br i1 %tobool55.not, label %if.end53.if.end62_crit_edge, label %if.then56

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end62

if.then56:                                        ; preds = %if.end53
  %call58 = call fastcc i32 @br_mrp_start_test_parse(ptr noundef %br.addr.0, ptr noundef nonnull %89, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then56.if.end62_crit_edge, label %if.then56.cleanup_crit_edge

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then56.if.end62_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end62

if.end62:                                         ; preds = %if.then56.if.end62_crit_edge, %if.end53.if.end62_crit_edge
  %arrayidx63 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 9
  %90 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx63, align 4
  %tobool64.not = icmp eq ptr %91, null
  br i1 %tobool64.not, label %if.end62.if.end71_crit_edge, label %if.then65

if.end62.if.end71_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end71

if.then65:                                        ; preds = %if.end62
  %call67 = call fastcc i32 @br_mrp_in_state_parse(ptr noundef %br.addr.0, ptr noundef nonnull %91, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then65.if.end71_crit_edge, label %if.then65.cleanup_crit_edge

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then65.if.end71_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end71

if.end71:                                         ; preds = %if.then65.if.end71_crit_edge, %if.end62.if.end71_crit_edge
  %arrayidx72 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 8
  %92 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx72, align 4
  %tobool73.not = icmp eq ptr %93, null
  br i1 %tobool73.not, label %if.end71.if.end80_crit_edge, label %if.then74

if.end71.if.end80_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end80

if.then74:                                        ; preds = %if.end71
  %call76 = call fastcc i32 @br_mrp_in_role_parse(ptr noundef %br.addr.0, ptr noundef nonnull %93, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then74.if.end80_crit_edge, label %if.then74.cleanup_crit_edge

if.then74.cleanup_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then74.if.end80_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end80

if.end80:                                         ; preds = %if.then74.if.end80_crit_edge, %if.end71.if.end80_crit_edge
  %arrayidx81 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 10
  %94 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx81, align 4
  %tobool82.not = icmp eq ptr %95, null
  br i1 %tobool82.not, label %if.end80.if.end89_crit_edge, label %if.then83

if.end80.if.end89_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end89

if.then83:                                        ; preds = %if.end80
  %call85 = call fastcc i32 @br_mrp_start_in_test_parse(ptr noundef %br.addr.0, ptr noundef nonnull %95, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then83.if.end89_crit_edge, label %if.then83.cleanup_crit_edge

if.then83.cleanup_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then83.if.end89_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end89

if.end89:                                         ; preds = %if.then83.if.end89_crit_edge, %if.end80.if.end89_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.then83.cleanup_crit_edge, %if.then74.cleanup_crit_edge, %if.then65.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %br_mrp_port_role_parse.exit.cleanup_crit_edge, %br_mrp_port_role_parse.exit.thread, %br_mrp_port_state_parse.exit.cleanup_crit_edge, %br_mrp_port_state_parse.exit.thread, %br_mrp_instance_parse.exit.cleanup_crit_edge, %br_mrp_instance_parse.exit.thread, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end89 ], [ -22, %if.then4 ], [ -22, %do.body.cleanup_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ %retval.0.i142, %br_mrp_instance_parse.exit.cleanup_crit_edge ], [ %call9.i, %br_mrp_port_state_parse.exit.cleanup_crit_edge ], [ %call9.i182, %br_mrp_port_role_parse.exit.cleanup_crit_edge ], [ %call40, %if.then38.cleanup_crit_edge ], [ %call49, %if.then47.cleanup_crit_edge ], [ %call58, %if.then56.cleanup_crit_edge ], [ %call67, %if.then65.cleanup_crit_edge ], [ %call76, %if.then74.cleanup_crit_edge ], [ %call85, %if.then83.cleanup_crit_edge ], [ %retval.0.i142.ph, %br_mrp_instance_parse.exit.thread ], [ %retval.0.i161.ph, %br_mrp_port_state_parse.exit.thread ], [ %retval.0.i184.ph, %br_mrp_port_role_parse.exit.thread ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tb) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_mrp_ring_state_parse(ptr noundef %br, ptr noundef %attr, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %tb = alloca [3 x ptr], align 4
  %state = alloca %struct.br_mrp_ring_state, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb) #3
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !67
  %1 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !67
  %3 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state) #3
  %5 = getelementptr inbounds %struct.br_mrp_ring_state, ptr %state, i32 0, i32 1
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %tobool.not.i = icmp sgt i16 %7, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %9 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %attr, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %10 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %12 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @br_mrp_ring_state_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %if.end, label %nla_parse_nested.exit.cleanup_crit_edge

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %nla_parse_nested.exit
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %14, null
  br i1 %tobool1.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %tobool3.not = icmp eq ptr %16, null
  br i1 %tobool3.not, label %lor.lhs.false.do.body_crit_edge, label %if.end8

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mrp_ring_state_parse.__msg) #3
  %tobool5.not = icmp eq ptr %extack, null
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @br_mrp_ring_state_parse.__msg, ptr %extack, align 4
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i19 = getelementptr i8, ptr %14, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i19, align 4
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %state, align 8
  %add.ptr.i.i20 = getelementptr i8, ptr %16, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i20, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %5, align 4
  %call13 = call i32 @br_mrp_set_ring_state(ptr noundef %br, ptr noundef nonnull %state) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %do.body.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end8 ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.then6 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_mrp_ring_role_parse(ptr noundef %br, ptr noundef %attr, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %tb = alloca [3 x ptr], align 4
  %role = alloca %struct.br_mrp_ring_role, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb) #3
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !67
  %1 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !67
  %3 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %role) #3
  %5 = getelementptr inbounds %struct.br_mrp_ring_role, ptr %role, i32 0, i32 1
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %tobool.not.i = icmp sgt i16 %7, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %9 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %attr, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %10 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %12 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @br_mrp_ring_role_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %if.end, label %nla_parse_nested.exit.cleanup_crit_edge

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %nla_parse_nested.exit
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %14, null
  br i1 %tobool1.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %tobool3.not = icmp eq ptr %16, null
  br i1 %tobool3.not, label %lor.lhs.false.do.body_crit_edge, label %if.end8

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mrp_ring_role_parse.__msg) #3
  %tobool5.not = icmp eq ptr %extack, null
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @br_mrp_ring_role_parse.__msg, ptr %extack, align 4
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i19 = getelementptr i8, ptr %14, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i19, align 4
  %20 = ptrtoint ptr %role to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %role, align 8
  %add.ptr.i.i20 = getelementptr i8, ptr %16, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i20, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %5, align 4
  %call13 = call i32 @br_mrp_set_ring_role(ptr noundef %br, ptr noundef nonnull %role) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %do.body.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end8 ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.then6 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %role) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_mrp_start_test_parse(ptr noundef %br, ptr noundef %attr, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %tb = alloca [6 x ptr], align 4
  %test = alloca %struct.br_mrp_start_test, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb) #3
  %0 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 3
  %3 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 4
  %4 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 5
  %5 = call ptr @memset(ptr %tb, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %test) #3
  %6 = getelementptr inbounds %struct.br_mrp_start_test, ptr %test, i32 0, i32 1
  %7 = getelementptr inbounds %struct.br_mrp_start_test, ptr %test, i32 0, i32 2
  %8 = getelementptr inbounds %struct.br_mrp_start_test, ptr %test, i32 0, i32 3
  %9 = getelementptr inbounds %struct.br_mrp_start_test, ptr %test, i32 0, i32 4
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr, i32 0, i32 1
  %10 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %tobool.not.i = icmp sgt i16 %11, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %13 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %attr, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %14 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %15 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %16 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 5, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @br_mrp_start_test_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %if.end, label %nla_parse_nested.exit.cleanup_crit_edge

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %nla_parse_nested.exit
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %tobool1.not = icmp eq ptr %18, null
  br i1 %tobool1.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %tobool3.not = icmp eq ptr %20, null
  br i1 %tobool3.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false4

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 4
  %tobool6.not = icmp eq ptr %22, null
  br i1 %tobool6.not, label %lor.lhs.false4.do.body_crit_edge, label %lor.lhs.false7

lor.lhs.false4.do.body_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %tobool9.not = icmp eq ptr %24, null
  br i1 %tobool9.not, label %lor.lhs.false7.do.body_crit_edge, label %if.end14

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false7.do.body_crit_edge, %lor.lhs.false4.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mrp_start_test_parse.__msg) #3
  %tobool11.not = icmp eq ptr %extack, null
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %if.then12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @br_mrp_start_test_parse.__msg, ptr %extack, align 4
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false7
  %add.ptr.i.i36 = getelementptr i8, ptr %18, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i36, align 4
  %28 = ptrtoint ptr %test to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %test, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %20, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i37, align 4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %6, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %22, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i38, align 4
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %7, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %24, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i39, align 4
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %8, align 4
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %9, align 4
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %4, align 4
  %tobool24.not = icmp eq ptr %40, null
  br i1 %tobool24.not, label %if.end14.if.end29_crit_edge, label %if.then25

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i40 = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i40, align 4
  %43 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %9, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end14.if.end29_crit_edge
  %call30 = call i32 @br_mrp_start_test(ptr noundef %br, ptr noundef nonnull %test) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then12, %do.body.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end29 ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.then12 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %test) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_mrp_in_state_parse(ptr noundef %br, ptr noundef %attr, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %tb = alloca [3 x ptr], align 4
  %state = alloca %struct.br_mrp_in_state, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb) #3
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !67
  %1 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !67
  %3 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state) #3
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %tobool.not.i = icmp sgt i16 %6, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %8 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %attr, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %9 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %11 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @br_mrp_in_state_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %if.end, label %nla_parse_nested.exit.cleanup_crit_edge

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %nla_parse_nested.exit
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %13, null
  br i1 %tobool1.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %lor.lhs.false.do.body_crit_edge, label %if.end8

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mrp_in_state_parse.__msg) #3
  %tobool5.not = icmp eq ptr %extack, null
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @br_mrp_in_state_parse.__msg, ptr %extack, align 4
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %state, align 8
  %add.ptr.i.i19 = getelementptr i8, ptr %13, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i19, align 4
  %conv = trunc i32 %19 to i16
  %in_id = getelementptr inbounds %struct.br_mrp_in_state, ptr %state, i32 0, i32 1
  %20 = ptrtoint ptr %in_id to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %in_id, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %15, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i20, align 4
  store i32 %22, ptr %state, align 8
  %call13 = call i32 @br_mrp_set_in_state(ptr noundef %br, ptr noundef nonnull %state) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %do.body.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end8 ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.then6 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_mrp_in_role_parse(ptr noundef %br, ptr noundef %attr, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %tb = alloca [5 x ptr], align 4
  %role = alloca %struct.br_mrp_in_role, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb) #3
  %0 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 3
  %3 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 4
  %4 = call ptr @memset(ptr %tb, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %role) #3
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %tobool.not.i = icmp sgt i16 %6, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %8 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %attr, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %9 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %11 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @br_mrp_in_role_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %if.end, label %nla_parse_nested.exit.cleanup_crit_edge

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %nla_parse_nested.exit
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %0, align 4
  %tobool1.not = icmp eq ptr %13, null
  br i1 %tobool1.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false4

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %lor.lhs.false4.do.body_crit_edge, label %lor.lhs.false7

lor.lhs.false4.do.body_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %lor.lhs.false7.do.body_crit_edge, label %if.end14

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false7.do.body_crit_edge, %lor.lhs.false4.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mrp_in_role_parse.__msg) #3
  %tobool11.not = icmp eq ptr %extack, null
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %if.then12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @br_mrp_in_role_parse.__msg, ptr %extack, align 4
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #5
  %21 = getelementptr inbounds i8, ptr %role, i32 12
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %21, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %13, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i29, align 4
  %25 = ptrtoint ptr %role to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %role, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %15, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i30 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i.i30, align 2
  %in_id = getelementptr inbounds %struct.br_mrp_in_role, ptr %role, i32 0, i32 3
  %28 = ptrtoint ptr %in_id to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %in_id, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %17, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i31, align 4
  %i_ifindex = getelementptr inbounds %struct.br_mrp_in_role, ptr %role, i32 0, i32 2
  %31 = ptrtoint ptr %i_ifindex to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %i_ifindex, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %19, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i32, align 4
  %in_role = getelementptr inbounds %struct.br_mrp_in_role, ptr %role, i32 0, i32 1
  %34 = ptrtoint ptr %in_role to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %in_role, align 4
  %call23 = call i32 @br_mrp_set_in_role(ptr noundef %br, ptr noundef nonnull %role) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %do.body.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end14 ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.then12 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %role) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_mrp_start_in_test_parse(ptr noundef %br, ptr noundef %attr, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %tb = alloca [5 x ptr], align 4
  %test = alloca %struct.br_mrp_start_in_test, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb) #3
  %0 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 3
  %3 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 4
  %4 = call ptr @memset(ptr %tb, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %test) #3
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %tobool.not.i = icmp sgt i16 %6, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %8 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %attr, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %9 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %11 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @br_mrp_start_in_test_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %if.end, label %nla_parse_nested.exit.cleanup_crit_edge

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %nla_parse_nested.exit
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %0, align 4
  %tobool1.not = icmp eq ptr %13, null
  br i1 %tobool1.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false4

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %2, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %lor.lhs.false4.do.body_crit_edge, label %lor.lhs.false7

lor.lhs.false4.do.body_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %lor.lhs.false7.do.body_crit_edge, label %if.end14

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false7.do.body_crit_edge, %lor.lhs.false4.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mrp_start_in_test_parse.__msg) #3
  %tobool11.not = icmp eq ptr %extack, null
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %if.then12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @br_mrp_start_in_test_parse.__msg, ptr %extack, align 4
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #5
  %21 = getelementptr inbounds i8, ptr %test, i32 12
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %21, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %13, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i29, align 4
  %conv = trunc i32 %24 to i16
  %in_id = getelementptr inbounds %struct.br_mrp_start_in_test, ptr %test, i32 0, i32 3
  %25 = ptrtoint ptr %in_id to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv, ptr %in_id, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %15, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i30, align 4
  %28 = ptrtoint ptr %test to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %test, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %17, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i31, align 4
  %max_miss = getelementptr inbounds %struct.br_mrp_start_in_test, ptr %test, i32 0, i32 1
  %31 = ptrtoint ptr %max_miss to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %max_miss, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %19, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i32, align 4
  %period = getelementptr inbounds %struct.br_mrp_start_in_test, ptr %test, i32 0, i32 2
  %34 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %period, align 4
  %call23 = call i32 @br_mrp_start_in_test(ptr noundef %br, ptr noundef nonnull %test) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %do.body.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end14 ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.then12 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %test) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_fill_info(ptr noundef %skb, ptr noundef %br) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i244 = alloca i32, align 4
  %tmp.i242 = alloca i32, align 4
  %tmp.i240 = alloca i32, align 4
  %tmp.i238 = alloca i32, align 4
  %tmp.i236 = alloca i32, align 4
  %tmp.i234 = alloca i32, align 4
  %tmp.i232 = alloca i32, align 4
  %tmp.i230 = alloca i32, align 4
  %tmp.i228 = alloca i32, align 4
  %tmp.i226 = alloca i16, align 2
  %tmp.i224 = alloca i32, align 4
  %tmp.i222 = alloca i32, align 4
  %tmp.i220 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not265 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not265
  br i1 %tobool.not, label %entry.cleanup156_crit_edge, label %do.body

entry.cleanup156_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup156

do.body:                                          ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_any_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b214 = load i1, ptr @br_mrp_fill_info.__warned, align 1
  br i1 %.b214, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_mrp_fill_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 456, ptr noundef nonnull @.str.1) #3
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %mrp_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 47
  %2 = ptrtoint ptr %mrp_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %mrp.0268 = load volatile ptr, ptr %mrp_list, align 4
  %tobool16.not269 = icmp eq ptr %mrp.0268, null
  br i1 %tobool16.not269, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %mrp.0270 = phi ptr [ %mrp.0, %for.inc.for.body_crit_edge ], [ %mrp.0268, %do.end.for.body_crit_edge ]
  %3 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i, align 8
  %call1.i217 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i217)
  %cmp.i218 = icmp slt i32 %call1.i217, 0
  %tobool18.not266 = icmp eq ptr %4, null
  %tobool18.not = select i1 %cmp.i218, i1 true, i1 %tobool18.not266
  br i1 %tobool18.not, label %for.body.if.then.i.i255_crit_edge, label %if.end20

for.body.if.then.i.i255_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i255

if.end20:                                         ; preds = %for.body
  %ring_id = getelementptr inbounds %struct.br_mrp, ptr %mrp.0270, i32 0, i32 4
  %5 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ring_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #3
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.if.then.i.i_crit_edge

if.end20.if.then.i.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end24:                                         ; preds = %if.end20
  %p_port = getelementptr inbounds %struct.br_mrp, ptr %mrp.0270, i32 0, i32 1
  %8 = ptrtoint ptr %p_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %p_port, align 4
  %call30 = call i32 @rcu_read_lock_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %if.end24.do.end40_crit_edge

if.end24.do.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end40

land.lhs.true32:                                  ; preds = %if.end24
  %call33 = call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true32.do.end40_crit_edge, label %land.lhs.true35

land.lhs.true32.do.end40_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end40

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %.b208213 = load i1, ptr @br_mrp_fill_info.__warned.2, align 1
  br i1 %.b208213, label %land.lhs.true35.do.end40_crit_edge, label %if.then37

land.lhs.true35.do.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end40

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_mrp_fill_info.__warned.2, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 467, ptr noundef nonnull @.str.3) #3
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %land.lhs.true35.do.end40_crit_edge, %land.lhs.true32.do.end40_crit_edge, %if.end24.do.end40_crit_edge
  %tobool42.not = icmp eq ptr %9, null
  br i1 %tobool42.not, label %do.end40.if.end47_crit_edge, label %land.lhs.true43

do.end40.if.end47_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

land.lhs.true43:                                  ; preds = %do.end40
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i220) #3
  %14 = ptrtoint ptr %tmp.i220 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i220, align 4
  %call.i221 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i220) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i220) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %tobool45.not = icmp eq i32 %call.i221, 0
  br i1 %tobool45.not, label %land.lhs.true43.if.end47_crit_edge, label %land.lhs.true43.if.then.i.i_crit_edge

land.lhs.true43.if.then.i.i_crit_edge:            ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

land.lhs.true43.if.end47_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.end47:                                         ; preds = %land.lhs.true43.if.end47_crit_edge, %do.end40.if.end47_crit_edge
  %s_port = getelementptr inbounds %struct.br_mrp, ptr %mrp.0270, i32 0, i32 2
  %15 = ptrtoint ptr %s_port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %s_port, align 4
  %call53 = call i32 @rcu_read_lock_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true55, label %if.end47.do.end63_crit_edge

if.end47.do.end63_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end63

land.lhs.true55:                                  ; preds = %if.end47
  %call56 = call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.lhs.true55.do.end63_crit_edge, label %land.lhs.true58

land.lhs.true55.do.end63_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end63

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %.b209212 = load i1, ptr @br_mrp_fill_info.__warned.4, align 1
  br i1 %.b209212, label %land.lhs.true58.do.end63_crit_edge, label %if.then60

land.lhs.true58.do.end63_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end63

if.then60:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_mrp_fill_info.__warned.4, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 472, ptr noundef nonnull @.str.3) #3
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %land.lhs.true58.do.end63_crit_edge, %land.lhs.true55.do.end63_crit_edge, %if.end47.do.end63_crit_edge
  %tobool65.not = icmp eq ptr %16, null
  br i1 %tobool65.not, label %do.end63.if.end72_crit_edge, label %land.lhs.true66

do.end63.if.end72_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72

land.lhs.true66:                                  ; preds = %do.end63
  %dev67 = getelementptr inbounds %struct.net_bridge_port, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev67, align 4
  %ifindex68 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %ifindex68 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ifindex68, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i222) #3
  %21 = ptrtoint ptr %tmp.i222 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tmp.i222, align 4
  %call.i223 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i222) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i222) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool70.not = icmp eq i32 %call.i223, 0
  br i1 %tobool70.not, label %land.lhs.true66.if.end72_crit_edge, label %land.lhs.true66.if.then.i.i_crit_edge

land.lhs.true66.if.then.i.i_crit_edge:            ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

land.lhs.true66.if.end72_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72

if.end72:                                         ; preds = %land.lhs.true66.if.end72_crit_edge, %do.end63.if.end72_crit_edge
  %i_port = getelementptr inbounds %struct.br_mrp, ptr %mrp.0270, i32 0, i32 3
  %22 = ptrtoint ptr %i_port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %i_port, align 4
  %call78 = call i32 @rcu_read_lock_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true80, label %if.end72.do.end88_crit_edge

if.end72.do.end88_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end88

land.lhs.true80:                                  ; preds = %if.end72
  %call81 = call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %land.lhs.true80.do.end88_crit_edge, label %land.lhs.true83

land.lhs.true80.do.end88_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end88

land.lhs.true83:                                  ; preds = %land.lhs.true80
  %.b210211 = load i1, ptr @br_mrp_fill_info.__warned.5, align 1
  br i1 %.b210211, label %land.lhs.true83.do.end88_crit_edge, label %if.then85

land.lhs.true83.do.end88_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end88

if.then85:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_mrp_fill_info.__warned.5, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 477, ptr noundef nonnull @.str.3) #3
  br label %do.end88

do.end88:                                         ; preds = %if.then85, %land.lhs.true83.do.end88_crit_edge, %land.lhs.true80.do.end88_crit_edge, %if.end72.do.end88_crit_edge
  %tobool90.not = icmp eq ptr %23, null
  br i1 %tobool90.not, label %do.end88.if.end97_crit_edge, label %land.lhs.true91

do.end88.if.end97_crit_edge:                      ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end97

land.lhs.true91:                                  ; preds = %do.end88
  %dev92 = getelementptr inbounds %struct.net_bridge_port, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev92, align 4
  %ifindex93 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %ifindex93 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ifindex93, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i224) #3
  %28 = ptrtoint ptr %tmp.i224 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tmp.i224, align 4
  %call.i225 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i224) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i224) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %tobool95.not = icmp eq i32 %call.i225, 0
  br i1 %tobool95.not, label %land.lhs.true91.if.end97_crit_edge, label %land.lhs.true91.if.then.i.i_crit_edge

land.lhs.true91.if.then.i.i_crit_edge:            ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

land.lhs.true91.if.end97_crit_edge:               ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end97

if.end97:                                         ; preds = %land.lhs.true91.if.end97_crit_edge, %do.end88.if.end97_crit_edge
  %prio = getelementptr inbounds %struct.br_mrp, ptr %mrp.0270, i32 0, i32 6
  %29 = ptrtoint ptr %prio to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %prio, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i226) #3
  %31 = ptrtoint ptr %tmp.i226 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %tmp.i226, align 2
  %call.i227 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp.i226) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i226) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %tobool99.not = icmp eq i32 %call.i227, 0
  br i1 %tobool99.not, label %if.end101, label %if.end97.if.then.i.i_crit_edge

if.end97.if.then.i.i_crit_edge:                   ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end101:                                        ; preds = %if.end97
  %ring_state = getelementptr inbounds %struct.br_mrp, ptr %mrp.0270, i32 0, i32 9
  %32 = ptrtoint ptr %ring_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ring_state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i228) #3
  %34 = ptrtoint ptr %tmp.i228 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tmp.i228, align 4
  %call.i229 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i228) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i228) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %tobool103.not = icmp eq i32 %call.i229, 0
  br i1 %tobool103.not, label %if.end105, label %if.end101.if.then.i.i_crit_edge

if.end101.if.then.i.i_crit_edge:                  ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end105:                                        ; preds = %if.end101
  %ring_role = getelementptr inbounds %struct.br_mrp, ptr %mrp.0270, i32 0, i32 7
  %35 = ptrtoint ptr %ring_role to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ring_role, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i230) #3
  %37 = ptrtoint ptr %tmp.i230 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tmp.i230, align 4
  %call.i231 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i230) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i230) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231)
  %tobool107.not = icmp eq i32 %call.i231, 0
  br i1 %tobool107.not, label %if.end109, label %if.end105.if.then.i.i_crit_edge

if.end105.if.then.i.i_crit_edge:                  ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end109:                                        ; preds = %if.end105
  %test_interval = getelementptr inbounds %struct.br_mrp, ptr %mrp.0270, i32 0, i32 16
  %38 = ptrtoint ptr %test_interval to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %test_interval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i232) #3
  %40 = ptrtoint ptr %tmp.i232 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %tmp.i232, align 4
  %call.i233 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i232) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i232) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233)
  %tobool111.not = icmp eq i32 %call.i233, 0
  br i1 %tobool111.not, label %if.end113, label %if.end109.if.then.i.i_crit_edge

if.end109.if.then.i.i_crit_edge:                  ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end113:                                        ; preds = %if.end109
  %test_max_miss = getelementptr inbounds %struct.br_mrp, ptr %mrp.0270, i32 0, i32 19
  %41 = ptrtoint ptr %test_max_miss to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %test_max_miss, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i234) #3
  %43 = ptrtoint ptr %tmp.i234 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tmp.i234, align 4
  %call.i235 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i234) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i234) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool115.not = icmp eq i32 %call.i235, 0
  br i1 %tobool115.not, label %if.end117, label %if.end113.if.then.i.i_crit_edge

if.end113.if.then.i.i_crit_edge:                  ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end117:                                        ; preds = %if.end113
  %test_monitor = getelementptr inbounds %struct.br_mrp, ptr %mrp.0270, i32 0, i32 20
  %44 = ptrtoint ptr %test_monitor to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %test_monitor, align 4, !range !68
  %46 = zext i8 %45 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i236) #3
  %47 = ptrtoint ptr %tmp.i236 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tmp.i236, align 4
  %call.i237 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i236) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i236) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool120.not = icmp eq i32 %call.i237, 0
  br i1 %tobool120.not, label %if.end122, label %if.end117.if.then.i.i_crit_edge

if.end117.if.then.i.i_crit_edge:                  ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end122:                                        ; preds = %if.end117
  %in_state = getelementptr inbounds %struct.br_mrp, ptr %mrp.0270, i32 0, i32 13
  %48 = ptrtoint ptr %in_state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %in_state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i238) #3
  %50 = ptrtoint ptr %tmp.i238 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %tmp.i238, align 4
  %call.i239 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i238) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i238) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %tobool124.not = icmp eq i32 %call.i239, 0
  br i1 %tobool124.not, label %if.end126, label %if.end122.if.then.i.i_crit_edge

if.end122.if.then.i.i_crit_edge:                  ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end126:                                        ; preds = %if.end122
  %in_role = getelementptr inbounds %struct.br_mrp, ptr %mrp.0270, i32 0, i32 11
  %51 = ptrtoint ptr %in_role to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %in_role, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i240) #3
  %53 = ptrtoint ptr %tmp.i240 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %tmp.i240, align 4
  %call.i241 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i240) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i240) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %tobool128.not = icmp eq i32 %call.i241, 0
  br i1 %tobool128.not, label %if.end130, label %if.end126.if.then.i.i_crit_edge

if.end126.if.then.i.i_crit_edge:                  ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end130:                                        ; preds = %if.end126
  %in_test_interval = getelementptr inbounds %struct.br_mrp, ptr %mrp.0270, i32 0, i32 22
  %54 = ptrtoint ptr %in_test_interval to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %in_test_interval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i242) #3
  %56 = ptrtoint ptr %tmp.i242 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tmp.i242, align 4
  %call.i243 = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %tmp.i242) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i242) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %tobool132.not = icmp eq i32 %call.i243, 0
  br i1 %tobool132.not, label %if.end134, label %if.end130.if.then.i.i_crit_edge

if.end130.if.then.i.i_crit_edge:                  ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end134:                                        ; preds = %if.end130
  %in_test_max_miss = getelementptr inbounds %struct.br_mrp, ptr %mrp.0270, i32 0, i32 25
  %57 = ptrtoint ptr %in_test_max_miss to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %in_test_max_miss, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i244) #3
  %59 = ptrtoint ptr %tmp.i244 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %tmp.i244, align 4
  %call.i245 = call i32 @nla_put(ptr noundef %skb, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %tmp.i244) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i244) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i245)
  %tobool136.not = icmp eq i32 %call.i245, 0
  br i1 %tobool136.not, label %for.inc, label %if.end134.if.then.i.i_crit_edge

if.end134.if.then.i.i_crit_edge:                  ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

for.inc:                                          ; preds = %if.end134
  %60 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i, ptr %4, align 2
  %63 = ptrtoint ptr %mrp.0270 to i32
  call void @__asan_load4_noabort(i32 %63)
  %mrp.0 = load volatile ptr, ptr %mrp.0270, align 4
  %tobool16.not = icmp eq ptr %mrp.0, null
  br i1 %tobool16.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %64 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i248 = ptrtoint ptr %65 to i32
  %sub.ptr.rhs.cast.i249 = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i250 = sub i32 %sub.ptr.lhs.cast.i248, %sub.ptr.rhs.cast.i249
  %conv.i251 = trunc i32 %sub.ptr.sub.i250 to i16
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i251, ptr %1, align 2
  br label %cleanup156

if.then.i.i:                                      ; preds = %if.end134.if.then.i.i_crit_edge, %if.end130.if.then.i.i_crit_edge, %if.end126.if.then.i.i_crit_edge, %if.end122.if.then.i.i_crit_edge, %if.end117.if.then.i.i_crit_edge, %if.end113.if.then.i.i_crit_edge, %if.end109.if.then.i.i_crit_edge, %if.end105.if.then.i.i_crit_edge, %if.end101.if.then.i.i_crit_edge, %if.end97.if.then.i.i_crit_edge, %land.lhs.true91.if.then.i.i_crit_edge, %land.lhs.true66.if.then.i.i_crit_edge, %land.lhs.true43.if.then.i.i_crit_edge, %if.end20.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %67 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %68, %4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !69

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #3
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %69 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %70 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #3
  br label %if.then.i.i255

if.then.i.i255:                                   ; preds = %nla_nest_cancel.exit, %for.body.if.then.i.i255_crit_edge
  %data.i.i253 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %71 = ptrtoint ptr %data.i.i253 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i.i253, align 4
  %cmp.i.i254 = icmp ugt ptr %72, %1
  br i1 %cmp.i.i254, label %do.end.i.i256, label %if.then.i.i255.nla_nest_cancel.exit261_crit_edge, !prof !69

if.then.i.i255.nla_nest_cancel.exit261_crit_edge: ; preds = %if.then.i.i255
  call void @__sanitizer_cov_trace_pc() #5
  br label %nla_nest_cancel.exit261

do.end.i.i256:                                    ; preds = %if.then.i.i255
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #3
  br label %nla_nest_cancel.exit261

nla_nest_cancel.exit261:                          ; preds = %do.end.i.i256, %if.then.i.i255.nla_nest_cancel.exit261_crit_edge
  %73 = ptrtoint ptr %data.i.i253 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i.i253, align 4
  %sub.ptr.lhs.cast.i.i257 = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i258 = ptrtoint ptr %74 to i32
  %sub.ptr.sub.i.i259 = sub i32 %sub.ptr.lhs.cast.i.i257, %sub.ptr.rhs.cast.i.i258
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i259) #3
  br label %cleanup156

cleanup156:                                       ; preds = %nla_nest_cancel.exit261, %for.end, %entry.cleanup156_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit261 ], [ 0, %for.end ], [ -90, %entry.cleanup156_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_ring_port_open(ptr noundef %dev, i8 noundef zeroext %loc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %0 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.br_port_get_rcu.exit_crit_edge

entry.br_port_get_rcu.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.br_port_get_rcu.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.br_port_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 416, ptr noundef nonnull @.str.3) #3
  br label %br_port_get_rcu.exit

br_port_get_rcu.exit:                             ; preds = %if.then.i, %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, %entry.br_port_get_rcu.exit_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %br_port_get_rcu.exit.out_crit_edge, label %if.end

br_port_get_rcu.exit.out_crit_edge:               ; preds = %br_port_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end:                                           ; preds = %br_port_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %loc)
  %tobool1.not = icmp eq i8 %loc, 0
  %flags3 = getelementptr inbounds %struct.net_bridge_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags3, align 4
  %and = and i32 %3, -262145
  %masksel = select i1 %tobool1.not, i32 0, i32 262144
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %flags3, align 4
  tail call void @br_ifinfo_notify(i32 noundef 16, ptr noundef null, ptr noundef nonnull %1) #3
  br label %out

out:                                              ; preds = %if.end, %br_port_get_rcu.exit.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end ], [ -22, %br_port_get_rcu.exit.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_ifinfo_notify(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_in_port_open(ptr noundef %dev, i8 noundef zeroext %loc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %0 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.br_port_get_rcu.exit_crit_edge

entry.br_port_get_rcu.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.br_port_get_rcu.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.br_port_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 416, ptr noundef nonnull @.str.3) #3
  br label %br_port_get_rcu.exit

br_port_get_rcu.exit:                             ; preds = %if.then.i, %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, %entry.br_port_get_rcu.exit_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %br_port_get_rcu.exit.out_crit_edge, label %if.end

br_port_get_rcu.exit.out_crit_edge:               ; preds = %br_port_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end:                                           ; preds = %br_port_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %loc)
  %tobool1.not = icmp eq i8 %loc, 0
  %flags3 = getelementptr inbounds %struct.net_bridge_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags3, align 4
  %and = and i32 %3, -524289
  %masksel = select i1 %tobool1.not, i32 0, i32 524288
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %flags3, align 4
  tail call void @br_ifinfo_notify(i32 noundef 16, ptr noundef null, ptr noundef nonnull %1) #3
  br label %out

out:                                              ; preds = %if.end, %br_port_get_rcu.exit.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end ], [ -22, %br_port_get_rcu.exit.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_set_port_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_set_port_role(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_set_ring_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_set_ring_role(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_start_test(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_set_in_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_set_in_role(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_start_in_test(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @br_mrp_parse.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../net/bridge/br_mrp_netlink.c", i32 369, i32 3}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/bridge/br_mrp_netlink.c", i32 456, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/bridge/br_mrp_netlink.c", i32 467, i32 7}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../net/bridge/br_mrp_netlink.c", i32 472, i32 7}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/bridge/br_mrp_netlink.c", i32 477, i32 7}
!13 = !{ptr @nla_parse_nested.__msg, !14, !"__msg", i1 false, i1 false}
!14 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!15 = !{ptr @br_mrp_policy, !16, !"br_mrp_policy", i1 false, i1 false}
!16 = !{!"../net/bridge/br_mrp_netlink.c", i32 9, i32 32}
!17 = !{ptr @br_mrp_instance_parse.__msg, !18, !"__msg", i1 false, i1 false}
!18 = !{!"../net/bridge/br_mrp_netlink.c", i32 46, i32 3}
!19 = !{ptr @br_mrp_instance_policy, !20, !"br_mrp_instance_policy", i1 false, i1 false}
!20 = !{!"../net/bridge/br_mrp_netlink.c", i32 23, i32 1}
!21 = !{ptr @br_mrp_port_state_parse.__msg, !22, !"__msg", i1 false, i1 false}
!22 = !{!"../net/bridge/br_mrp_netlink.c", i32 89, i32 3}
!23 = !{ptr @br_mrp_port_state_policy, !24, !"br_mrp_port_state_policy", i1 false, i1 false}
!24 = !{!"../net/bridge/br_mrp_netlink.c", i32 70, i32 1}
!25 = !{ptr @br_mrp_port_role_parse.__msg, !26, !"__msg", i1 false, i1 false}
!26 = !{!"../net/bridge/br_mrp_netlink.c", i32 118, i32 3}
!27 = !{ptr @br_mrp_port_role_policy, !28, !"br_mrp_port_role_policy", i1 false, i1 false}
!28 = !{!"../net/bridge/br_mrp_netlink.c", i32 99, i32 1}
!29 = !{ptr @br_mrp_ring_state_parse.__msg, !30, !"__msg", i1 false, i1 false}
!30 = !{!"../net/bridge/br_mrp_netlink.c", i32 148, i32 3}
!31 = !{ptr @br_mrp_ring_state_policy, !32, !"br_mrp_ring_state_policy", i1 false, i1 false}
!32 = !{!"../net/bridge/br_mrp_netlink.c", i32 128, i32 1}
!33 = !{ptr @br_mrp_ring_role_parse.__msg, !34, !"__msg", i1 false, i1 false}
!34 = !{!"../net/bridge/br_mrp_netlink.c", i32 182, i32 3}
!35 = !{ptr @br_mrp_ring_role_policy, !36, !"br_mrp_ring_role_policy", i1 false, i1 false}
!36 = !{!"../net/bridge/br_mrp_netlink.c", i32 162, i32 1}
!37 = !{ptr @br_mrp_start_test_parse.__msg, !38, !"__msg", i1 false, i1 false}
!38 = !{!"../net/bridge/br_mrp_netlink.c", i32 221, i32 3}
!39 = !{ptr @br_mrp_start_test_policy, !40, !"br_mrp_start_test_policy", i1 false, i1 false}
!40 = !{!"../net/bridge/br_mrp_netlink.c", i32 196, i32 1}
!41 = !{ptr @br_mrp_in_state_parse.__msg, !42, !"__msg", i1 false, i1 false}
!42 = !{!"../net/bridge/br_mrp_netlink.c", i32 262, i32 3}
!43 = !{ptr @br_mrp_in_state_policy, !44, !"br_mrp_in_state_policy", i1 false, i1 false}
!44 = !{!"../net/bridge/br_mrp_netlink.c", i32 242, i32 1}
!45 = !{ptr @br_mrp_in_role_parse.__msg, !46, !"__msg", i1 false, i1 false}
!46 = !{!"../net/bridge/br_mrp_netlink.c", i32 300, i32 3}
!47 = !{ptr @br_mrp_in_role_policy, !48, !"br_mrp_in_role_policy", i1 false, i1 false}
!48 = !{!"../net/bridge/br_mrp_netlink.c", i32 276, i32 1}
!49 = !{ptr @br_mrp_start_in_test_parse.__msg, !50, !"__msg", i1 false, i1 false}
!50 = !{!"../net/bridge/br_mrp_netlink.c", i32 341, i32 3}
!51 = !{ptr @br_mrp_start_in_test_policy, !52, !"br_mrp_start_in_test_policy", i1 false, i1 false}
!52 = !{!"../net/bridge/br_mrp_netlink.c", i32 316, i32 1}
!53 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/net/netlink.h", i32 991, i32 3}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../net/bridge/br_private.h", i32 416, i32 9}
!57 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"auto-init"}
!68 = !{i8 0, i8 2}
!69 = !{!"branch_weights", i32 1, i32 2000}
