; ModuleID = '/llk/IR_all_yes/net/bridge/br_netlink.c_pt.bc'
source_filename = "../net/bridge/br_netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rtnl_af_ops = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.49 = type { i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.hlist_head = type { ptr }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.143, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.143 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.144, %union.anon.145, i16, i16 }
%union.anon.144 = type { %struct.in6_addr }
%union.anon.145 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_bridge_vlan_group = type { %struct.rhashtable, %struct.rhashtable, %struct.list_head, i16, i16, i8 }
%struct.bridge_vlan_info = type { i16, i16 }
%struct.nlattr = type { i16, i16 }
%struct.vtunnel_info = type { i32, i16, i16 }
%struct.br_boolopt_multi = type { i32, i32 }
%struct.bridge_vlan_xstats = type { i64, i64, i64, i64, i16, i16, i32 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_netlink.c\00", [40 x i8] zeroinitializer }, align 32
@br_info_notify.__UNIQUE_ID_ddebug570 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bridge\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"br_info_notify\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: port %u(%s) event %d\0A\00", [38 x i8] zeroinitializer }, align 32
@br_port_policy = internal constant { [39 x %struct.nla_policy], [72 x i8] } { [39 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer], [72 x i8] zeroinitializer }, align 32
@br_link_ops = dso_local global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str.1, i32 1916, ptr null, ptr @br_dev_setup, i8 0, i32 47, ptr @br_policy, ptr @br_validate, ptr @br_dev_newlink, ptr @br_changelink, ptr @br_dev_delete, ptr @br_get_size, ptr @br_fill_info, ptr null, ptr null, ptr null, ptr null, i32 38, ptr @br_port_policy, ptr @br_port_slave_changelink, ptr @br_port_get_slave_size, ptr @br_port_fill_slave_info, ptr null, ptr @br_get_linkxstats_size, ptr @br_fill_linkxstats }, section ".data..read_mostly", align 4
@br_af_ops = internal global %struct.rtnl_af_ops { %struct.list_head zeroinitializer, i32 7, ptr null, ptr @br_get_link_af_size_filtered, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@br_rx_handler_check_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_private.h\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@br_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nbp_vlan_group_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_vlan_group_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__get_num_vlan_infos.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@br_fill_ifinfo.__UNIQUE_ID_ddebug569 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str, ptr @.str.11, i8 0, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"br_fill_ifinfo\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: br_fill_info event %d port %s master %s\0A\00", [51 x i8] zeroinitializer }, align 32
@br_port_fill_attrs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_fill_ifvlaninfo_compressed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_fill_ifvlaninfo.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@br_port_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@br_vlan_valid_id.__msg = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bridge: Vlan id is invalid\00", [37 x i8] zeroinitializer }, align 32
@br_vlan_valid_range.__msg = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bridge: Pvid isn't allowed in a range\00", [58 x i8] zeroinitializer }, align 32
@br_vlan_valid_range.__msg.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"bridge: Found a new vlan range start while processing one\00", [38 x i8] zeroinitializer }, align 32
@br_vlan_valid_range.__msg.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bridge: Vlan range end flag is missing\00", [57 x i8] zeroinitializer }, align 32
@br_vlan_valid_range.__msg.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"bridge: End vlan id is less than or equal to start vlan id\00", [37 x i8] zeroinitializer }, align 32
@br_vlan_valid_range.__msg.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bridge: Both vlan range flags are missing\00", [54 x i8] zeroinitializer }, align 32
@br_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.49 } }, %struct.nla_policy }>, [96 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.49 } }, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 11, i8 0, i16 6, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, { i8, i8, i16, { %struct.anon.49 } } { i8 11, i8 1, i16 0, { %struct.anon.49 } { %struct.anon.49 { i16 8, i16 8 } } }, %struct.nla_policy zeroinitializer }>, [96 x i8] zeroinitializer }, align 32
@br_changelink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 1322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014%s: the hash_elasticity option has been deprecated and is always %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"br_changelink\00", [18 x i8] zeroinitializer }, align 32
@br_changelink._entry_ptr = internal global ptr @br_changelink._entry, section ".printk_index", align 4
@br_vlan_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nbp_vlan_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 19]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 585, i32 6 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 597, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"br_port_policy\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 810, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 695, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 850, i32 9 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 36, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 723, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 448, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 991, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 422, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 640, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 651, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 661, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 664, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 667, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 675, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [10 x i8] c"br_policy\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1127, i32 32 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [27 x i8] c"../net/bridge/br_netlink.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1321, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @br_changelink._entry, ptr @br_changelink._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @br_port_policy, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @br_vlan_valid_id.__msg, ptr @br_vlan_valid_range.__msg, ptr @br_vlan_valid_range.__msg.14, ptr @br_vlan_valid_range.__msg.15, ptr @br_vlan_valid_range.__msg.16, ptr @br_vlan_valid_range.__msg.17, ptr @br_policy, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_port_policy to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_valid_id.__msg to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_valid_range.__msg to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_valid_range.__msg.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_valid_range.__msg.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_valid_range.__msg.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_valid_range.__msg.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_policy to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_changelink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_info_notify(i32 noundef %event, ptr noundef readonly %br, ptr noundef %port, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %port, null
  %tobool1.not = icmp eq ptr %br, null
  %spec.select = and i1 %tobool1.not, %tobool.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !87

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 585, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24:                                         ; preds = %entry
  br i1 %tobool.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %dev27 = getelementptr inbounds %struct.net_bridge_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %port_no29 = getelementptr inbounds %struct.net_bridge_port, ptr %port, i32 0, i32 9
  %2 = ptrtoint ptr %port_no29 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %port_no29, align 2
  %phi.cast = zext i16 %3 to i32
  br label %if.end31

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %dev30 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then26
  %port_no.0 = phi i32 [ %phi.cast, %if.then26 ], [ 0, %if.else ]
  %dev.0.in = phi ptr [ %dev27, %if.then26 ], [ %dev30, %if.else ]
  %br.addr.0 = phi ptr [ %1, %if.then26 ], [ %br, %if.else ]
  %4 = ptrtoint ptr %dev.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %dev.0 = load ptr, ptr %dev.0.in, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br_info_notify.__UNIQUE_ID_ddebug570, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br_info_notify, %if.then42)) #10
          to label %do.end48 [label %if.then42], !srcloc !88

if.then42:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %dev43 = getelementptr inbounds %struct.net_bridge, ptr %br.addr.0, i32 0, i32 3
  %7 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev43, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br_info_notify.__UNIQUE_ID_ddebug570, ptr noundef nonnull @.str.3, ptr noundef %8, i32 noundef %port_no.0, ptr noundef %dev.0, i32 noundef %event) #10
  br label %do.end48

do.end48:                                         ; preds = %if.then42, %if.end31
  %call14.i = tail call i32 @br_get_link_af_size_filtered(ptr noundef %dev.0, i32 noundef %filter) #10
  %9 = add i32 %call14.i, 415
  %add18.i = and i32 %9, -4
  %sub.i.i = add i32 %add18.i, 19
  %and.i.i = and i32 %sub.i.i, -4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %do.end48.errout_crit_edge, label %if.end53

do.end48.errout_crit_edge:                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout

if.end53:                                         ; preds = %do.end48
  %call54 = tail call fastcc i32 @br_fill_ifinfo(ptr noundef nonnull %call.i.i, ptr noundef %port, i32 noundef 0, i32 noundef 0, i32 noundef %event, i32 noundef 0, i32 noundef %filter, ptr noundef %dev.0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then57, label %if.end90

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call54)
  %cmp59 = icmp eq i32 %call54, -90
  br i1 %cmp59, label %do.end76, label %if.then57.if.end82_crit_edge, !prof !87

if.then57.if.end82_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

do.end76:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 606, i32 noundef 9, ptr noundef null) #10
  br label %if.end82

if.end82:                                         ; preds = %do.end76, %if.then57.if.end82_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %errout

if.end90:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_notify(ptr noundef nonnull %call.i.i, ptr noundef %6, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef 2592) #10
  br label %cleanup

errout:                                           ; preds = %if.end82, %do.end48.errout_crit_edge
  %err.0 = phi i32 [ -105, %do.end48.errout_crit_edge ], [ %call54, %if.end82 ]
  tail call void @rtnl_set_sk_err(ptr noundef %6, i32 noundef 1, i32 noundef %err.0) #10
  br label %cleanup

cleanup:                                          ; preds = %errout, %if.end90, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_fill_ifinfo(ptr noundef %skb, ptr noundef %port, i32 noundef %pid, i32 noundef %seq, i32 noundef %event, i32 noundef %flags, i32 noundef %filter_mask, ptr noundef %dev, i1 noundef zeroext %getlink) unnamed_addr #0 align 64 {
entry:
  %tmp.i309 = alloca i32, align 4
  %tmp.i307 = alloca i8, align 1
  %tmp.i305 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %operstate1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 50
  %2 = ptrtoint ptr %operstate1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %operstate1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i8 [ %3, %cond.true ], [ 2, %entry.cond.end_crit_edge ]
  %tobool.not = icmp eq ptr %port, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 8
  br label %do.body

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %br.0 = phi ptr [ %5, %if.then ], [ %add.ptr.i, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br_fill_ifinfo.__UNIQUE_ID_ddebug569, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br_fill_ifinfo, %if.then10)) #10
          to label %do.end [label %if.then10], !srcloc !88

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev11 = getelementptr inbounds %struct.net_bridge, ptr %br.0, i32 0, i32 3
  %6 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br_fill_ifinfo.__UNIQUE_ID_ddebug569, ptr noundef nonnull @.str.11, ptr noundef %7, i32 noundef %event, ptr noundef %dev, ptr noundef %7) #10
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %do.end.cleanup176_crit_edge

do.end.cleanup176_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup176

skb_tailroom.exit.i:                              ; preds = %do.end
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 32
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup176_crit_edge, label %nlmsg_put.exit, !prof !87

skb_tailroom.exit.i.cleanup176_crit_edge:         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup176

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %pid, i32 noundef %seq, i32 noundef %event, i32 noundef 16, i32 noundef %flags) #10
  %cmp = icmp eq ptr %call3.i, null
  br i1 %cmp, label %nlmsg_put.exit.cleanup176_crit_edge, label %if.end21

nlmsg_put.exit.cleanup176_crit_edge:              ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup176

if.end21:                                         ; preds = %nlmsg_put.exit
  %add.ptr.i301 = getelementptr i8, ptr %call3.i, i32 16
  %14 = ptrtoint ptr %add.ptr.i301 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 7, ptr %add.ptr.i301, align 4
  %__ifi_pad = getelementptr i8, ptr %call3.i, i32 17
  %15 = ptrtoint ptr %__ifi_pad to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %__ifi_pad, align 1
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %type, align 16
  %ifi_type = getelementptr i8, ptr %call3.i, i32 18
  %18 = ptrtoint ptr %ifi_type to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %ifi_type, align 2
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %19 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ifindex, align 4
  %ifi_index = getelementptr i8, ptr %call3.i, i32 20
  %21 = ptrtoint ptr %ifi_index to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ifi_index, align 4
  %call23 = tail call i32 @dev_get_flags(ptr noundef %dev) #10
  %ifi_flags = getelementptr i8, ptr %call3.i, i32 24
  %22 = ptrtoint ptr %ifi_flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call23, ptr %ifi_flags, align 4
  %ifi_change = getelementptr i8, ptr %call3.i, i32 28
  %23 = ptrtoint ptr %ifi_change to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %ifi_change, align 4
  %call.i302 = tail call i32 @strlen(ptr noundef %dev) #13
  %add.i = add i32 %call.i302, 1
  %call1.i303 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef %add.i, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i303)
  %tobool27.not = icmp eq i32 %call1.i303, 0
  br i1 %tobool27.not, label %lor.lhs.false, label %if.end21.if.then.i.i_crit_edge

if.end21.if.then.i.i_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end21
  %dev28 = getelementptr inbounds %struct.net_bridge, ptr %br.0, i32 0, i32 3
  %24 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev28, align 4
  %ifindex29 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %ifindex29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ifindex29, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %28 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tmp.i, align 4
  %call.i304 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i304)
  %tobool31.not = icmp eq i32 %call.i304, 0
  br i1 %tobool31.not, label %lor.lhs.false32, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %29 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mtu, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i305) #10
  %31 = ptrtoint ptr %tmp.i305 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tmp.i305, align 4
  %call.i306 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i305) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i305) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i306)
  %tobool34.not = icmp eq i32 %call.i306, 0
  br i1 %tobool34.not, label %lor.lhs.false35, label %lor.lhs.false32.if.then.i.i_crit_edge

lor.lhs.false32.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false35:                                  ; preds = %lor.lhs.false32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i307) #10
  %32 = ptrtoint ptr %tmp.i307 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %cond, ptr %tmp.i307, align 1
  %call.i308 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %tmp.i307) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i307) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i308)
  %tobool37.not = icmp eq i32 %call.i308, 0
  br i1 %tobool37.not, label %lor.lhs.false38, label %lor.lhs.false35.if.then.i.i_crit_edge

lor.lhs.false35.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false38:                                  ; preds = %lor.lhs.false35
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %33 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %addr_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool40.not = icmp eq i8 %34, 0
  br i1 %tobool40.not, label %lor.lhs.false38.lor.lhs.false45_crit_edge, label %land.lhs.true

lor.lhs.false38.lor.lhs.false45_crit_edge:        ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false45

land.lhs.true:                                    ; preds = %lor.lhs.false38
  %conv39 = zext i8 %34 to i32
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %35 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_addr, align 64
  %call43 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %conv39, ptr noundef %36) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true.lor.lhs.false45_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

land.lhs.true.lor.lhs.false45_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %land.lhs.true.lor.lhs.false45_crit_edge, %lor.lhs.false38.lor.lhs.false45_crit_edge
  %37 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ifindex, align 4
  %call47 = call i32 @dev_get_iflink(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %call47)
  %cmp48.not = icmp eq i32 %38, %call47
  br i1 %cmp48.not, label %lor.lhs.false45.if.end55_crit_edge, label %land.lhs.true50

lor.lhs.false45.if.end55_crit_edge:               ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true50:                                  ; preds = %lor.lhs.false45
  %call51 = call i32 @dev_get_iflink(ptr noundef %dev) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i309) #10
  %39 = ptrtoint ptr %tmp.i309 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call51, ptr %tmp.i309, align 4
  %call.i310 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i309) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i309) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i310)
  %tobool53.not = icmp eq i32 %call.i310, 0
  br i1 %tobool53.not, label %land.lhs.true50.if.end55_crit_edge, label %land.lhs.true50.if.then.i.i_crit_edge

land.lhs.true50.if.then.i.i_crit_edge:            ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

land.lhs.true50.if.end55_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true50.if.end55_crit_edge, %lor.lhs.false45.if.end55_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %event)
  %cmp56 = icmp ne i32 %event, 16
  %brmerge = or i1 %tobool.not, %cmp56
  br i1 %brmerge, label %if.end55.if.end71_crit_edge, label %if.then60

if.end55.if.end71_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then60:                                        ; preds = %if.end55
  %40 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32780, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %cmp62351 = icmp eq ptr %41, null
  %cmp62 = select i1 %cmp.i.i, i1 true, i1 %cmp62351
  br i1 %cmp62, label %if.then60.if.then.i.i_crit_edge, label %lor.lhs.false64

if.then60.if.then.i.i_crit_edge:                  ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false64:                                  ; preds = %if.then60
  %call65 = call fastcc i32 @br_port_fill_attrs(ptr noundef %skb, ptr noundef nonnull %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %lor.lhs.false64.if.then.i.i_crit_edge, label %cleanup

lor.lhs.false64.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

cleanup:                                          ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i, ptr %41, align 2
  br label %if.end71

if.end71:                                         ; preds = %cleanup, %if.end55.if.end71_crit_edge
  %and = and i32 %filter_mask, 118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool72.not = icmp eq i32 %and, 0
  br i1 %tobool72.not, label %if.end71.if.end78_crit_edge, label %if.then73

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then73:                                        ; preds = %if.end71
  %45 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i, align 8
  %call1.i313 = call i32 @nla_put(ptr noundef %skb, i32 noundef 26, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i313)
  %cmp.i314 = icmp slt i32 %call1.i313, 0
  %tobool75.not352 = icmp eq ptr %46, null
  %tobool75.not = select i1 %cmp.i314, i1 true, i1 %tobool75.not352
  br i1 %tobool75.not, label %if.then73.if.then.i.i_crit_edge, label %if.then73.if.end78_crit_edge

if.then73.if.end78_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then73.if.then.i.i_crit_edge:                  ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end78:                                         ; preds = %if.then73.if.end78_crit_edge, %if.end71.if.end78_crit_edge
  %af.0 = phi ptr [ %46, %if.then73.if.end78_crit_edge ], [ null, %if.end71.if.end78_crit_edge ]
  %and82 = and i32 %filter_mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %47 = and i32 %filter_mask, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %if.end78.if.end118_crit_edge, label %if.then84

if.end78.if.end118_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.then84:                                        ; preds = %if.end78
  %49 = call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %52, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.then84.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then84.rcu_read_lock.exit_crit_edge:           ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then84
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then84.rcu_read_lock.exit_crit_edge
  br i1 %tobool.not, label %if.else88, label %if.then86

if.then86:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call87 = call fastcc ptr @nbp_vlan_group_rcu(ptr noundef nonnull %port)
  br label %if.end90

if.else88:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call89 = call fastcc ptr @br_vlan_group_rcu(ptr noundef %br.0)
  br label %if.end90

if.end90:                                         ; preds = %if.else88, %if.then86
  %vg.0 = phi ptr [ %call87, %if.then86 ], [ %call89, %if.else88 ]
  %tobool91.not = icmp eq ptr %vg.0, null
  br i1 %tobool91.not, label %if.end90.cleanup114.thread344_crit_edge, label %lor.lhs.false92

if.end90.cleanup114.thread344_crit_edge:          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup114.thread344

lor.lhs.false92:                                  ; preds = %if.end90
  %num_vlans = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 3
  %53 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %num_vlans, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool93.not = icmp eq i16 %54, 0
  br i1 %tobool93.not, label %lor.lhs.false92.cleanup114.thread344_crit_edge, label %if.end95

lor.lhs.false92.cleanup114.thread344_crit_edge:   ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup114.thread344

cleanup114.thread344:                             ; preds = %lor.lhs.false92.cleanup114.thread344_crit_edge, %if.end90.cleanup114.thread344_crit_edge
  call fastcc void @rcu_read_unlock()
  br label %done

if.end95:                                         ; preds = %lor.lhs.false92
  br i1 %tobool83.not, label %if.else100, label %if.then98

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %call99 = call fastcc i32 @br_fill_ifvlaninfo_compressed(ptr noundef %skb, ptr noundef nonnull %vg.0)
  br label %if.end102

if.else100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %call101 = call fastcc i32 @br_fill_ifvlaninfo(ptr noundef %skb, ptr noundef nonnull %vg.0)
  br label %if.end102

if.end102:                                        ; preds = %if.else100, %if.then98
  %err.0 = phi i32 [ %call99, %if.then98 ], [ %call101, %if.else100 ]
  br i1 %tobool.not, label %if.end102.if.end110_crit_edge, label %land.lhs.true104

if.end102.if.end110_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

land.lhs.true104:                                 ; preds = %if.end102
  %flags105 = getelementptr inbounds %struct.net_bridge_port, ptr %port, i32 0, i32 4
  %55 = ptrtoint ptr %flags105 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags105, align 4
  %and106 = and i32 %56, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %land.lhs.true104.if.end110_crit_edge, label %if.then108

land.lhs.true104.if.end110_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then108:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #12
  %call109 = call i32 @br_fill_vlan_tunnel_info(ptr noundef %skb, ptr noundef nonnull %vg.0) #10
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %land.lhs.true104.if.end110_crit_edge, %if.end102.if.end110_crit_edge
  %err.1 = phi i32 [ %call109, %if.then108 ], [ %err.0, %land.lhs.true104.if.end110_crit_edge ], [ %err.0, %if.end102.if.end110_crit_edge ]
  call fastcc void @rcu_read_unlock()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool111.not = icmp eq i32 %err.1, 0
  br i1 %tobool111.not, label %if.end110.if.end118_crit_edge, label %if.end110.if.then.i.i_crit_edge

if.end110.if.then.i.i_crit_edge:                  ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end110.if.end118_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.end118:                                        ; preds = %if.end110.if.end118_crit_edge, %if.end78.if.end118_crit_edge
  %and119 = and i32 %filter_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.if.end135_crit_edge, label %if.then121

if.end118.if.end135_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.then121:                                       ; preds = %if.end118
  %call123 = call zeroext i1 @br_mrp_enabled(ptr noundef %br.0) #10
  %brmerge263.demorgan = and i1 %tobool.not, %call123
  br i1 %brmerge263.demorgan, label %if.end127, label %if.then121.done_crit_edge

if.then121.done_crit_edge:                        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end127:                                        ; preds = %if.then121
  %57 = call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i267 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i267 to ptr
  %preempt_count.i.i.i.i268 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i268 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i268, align 4
  %add.i.i.i269 = add i32 %60, 1
  store volatile i32 %add.i.i.i269, ptr %preempt_count.i.i.i.i268, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i270 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i270, label %if.end127.rcu_read_lock.exit277_crit_edge, label %land.lhs.true.i273

if.end127.rcu_read_lock.exit277_crit_edge:        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit277

land.lhs.true.i273:                               ; preds = %if.end127
  %call1.i271 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i271)
  %tobool.not.i272 = icmp eq i32 %call1.i271, 0
  br i1 %tobool.not.i272, label %land.lhs.true.i273.rcu_read_lock.exit277_crit_edge, label %land.lhs.true2.i275

land.lhs.true.i273.rcu_read_lock.exit277_crit_edge: ; preds = %land.lhs.true.i273
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit277

land.lhs.true2.i275:                              ; preds = %land.lhs.true.i273
  %.b4.i274 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i274, label %land.lhs.true2.i275.rcu_read_lock.exit277_crit_edge, label %if.then.i276

land.lhs.true2.i275.rcu_read_lock.exit277_crit_edge: ; preds = %land.lhs.true2.i275
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit277

if.then.i276:                                     ; preds = %land.lhs.true2.i275
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_lock.exit277

rcu_read_lock.exit277:                            ; preds = %if.then.i276, %land.lhs.true2.i275.rcu_read_lock.exit277_crit_edge, %land.lhs.true.i273.rcu_read_lock.exit277_crit_edge, %if.end127.rcu_read_lock.exit277_crit_edge
  %call128 = call i32 @br_mrp_fill_info(ptr noundef %skb, ptr noundef %br.0) #10
  call fastcc void @rcu_read_unlock()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %rcu_read_lock.exit277.if.end135_crit_edge, label %rcu_read_lock.exit277.if.then.i.i_crit_edge

rcu_read_lock.exit277.if.then.i.i_crit_edge:      ; preds = %rcu_read_lock.exit277
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

rcu_read_lock.exit277.if.end135_crit_edge:        ; preds = %rcu_read_lock.exit277
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.end135:                                        ; preds = %rcu_read_lock.exit277.if.end135_crit_edge, %if.end118.if.end135_crit_edge
  %and136 = and i32 %filter_mask, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end135.done_crit_edge, label %if.then138

if.end135.done_crit_edge:                         ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then138:                                       ; preds = %if.end135
  %call140 = call zeroext i1 @br_cfm_created(ptr noundef %br.0) #10
  %brmerge266.demorgan = and i1 %tobool.not, %call140
  br i1 %brmerge266.demorgan, label %if.end144, label %if.then138.done_crit_edge

if.then138.done_crit_edge:                        ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end144:                                        ; preds = %if.then138
  %61 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i316 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32773, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i316)
  %cmp.i.i317 = icmp slt i32 %call1.i.i316, 0
  %tobool146.not353 = icmp eq ptr %62, null
  %tobool146.not = select i1 %cmp.i.i317, i1 true, i1 %tobool146.not353
  br i1 %tobool146.not, label %if.end144.if.then.i.i_crit_edge, label %if.end148

if.end144.if.then.i.i_crit_edge:                  ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end148:                                        ; preds = %if.end144
  %and149 = and i32 %filter_mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end148.if.end156_crit_edge, label %if.then151

if.end148.if.end156_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156

if.then151:                                       ; preds = %if.end148
  %63 = call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i278 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i278 to ptr
  %preempt_count.i.i.i.i279 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i279 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i279, align 4
  %add.i.i.i280 = add i32 %66, 1
  store volatile i32 %add.i.i.i280, ptr %preempt_count.i.i.i.i279, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i281 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i281, label %if.then151.rcu_read_lock.exit288_crit_edge, label %land.lhs.true.i284

if.then151.rcu_read_lock.exit288_crit_edge:       ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit288

land.lhs.true.i284:                               ; preds = %if.then151
  %call1.i282 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i282)
  %tobool.not.i283 = icmp eq i32 %call1.i282, 0
  br i1 %tobool.not.i283, label %land.lhs.true.i284.rcu_read_lock.exit288_crit_edge, label %land.lhs.true2.i286

land.lhs.true.i284.rcu_read_lock.exit288_crit_edge: ; preds = %land.lhs.true.i284
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit288

land.lhs.true2.i286:                              ; preds = %land.lhs.true.i284
  %.b4.i285 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i285, label %land.lhs.true2.i286.rcu_read_lock.exit288_crit_edge, label %if.then.i287

land.lhs.true2.i286.rcu_read_lock.exit288_crit_edge: ; preds = %land.lhs.true2.i286
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit288

if.then.i287:                                     ; preds = %land.lhs.true2.i286
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_lock.exit288

rcu_read_lock.exit288:                            ; preds = %if.then.i287, %land.lhs.true2.i286.rcu_read_lock.exit288_crit_edge, %land.lhs.true.i284.rcu_read_lock.exit288_crit_edge, %if.then151.rcu_read_lock.exit288_crit_edge
  %call152 = call i32 @br_cfm_config_fill_info(ptr noundef %skb, ptr noundef %br.0) #10
  call fastcc void @rcu_read_unlock()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %rcu_read_lock.exit288.if.end156_crit_edge, label %rcu_read_lock.exit288.if.then.i.i_crit_edge

rcu_read_lock.exit288.if.then.i.i_crit_edge:      ; preds = %rcu_read_lock.exit288
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

rcu_read_lock.exit288.if.end156_crit_edge:        ; preds = %rcu_read_lock.exit288
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156

if.end156:                                        ; preds = %rcu_read_lock.exit288.if.end156_crit_edge, %if.end148.if.end156_crit_edge
  %and157 = and i32 %filter_mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %if.end156.if.end165_crit_edge, label %if.then159

if.end156.if.end165_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

if.then159:                                       ; preds = %if.end156
  %67 = call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i289 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i289 to ptr
  %preempt_count.i.i.i.i290 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i290 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i290, align 4
  %add.i.i.i291 = add i32 %70, 1
  store volatile i32 %add.i.i.i291, ptr %preempt_count.i.i.i.i290, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i292 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i292, label %if.then159.rcu_read_lock.exit299_crit_edge, label %land.lhs.true.i295

if.then159.rcu_read_lock.exit299_crit_edge:       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit299

land.lhs.true.i295:                               ; preds = %if.then159
  %call1.i293 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i293)
  %tobool.not.i294 = icmp eq i32 %call1.i293, 0
  br i1 %tobool.not.i294, label %land.lhs.true.i295.rcu_read_lock.exit299_crit_edge, label %land.lhs.true2.i297

land.lhs.true.i295.rcu_read_lock.exit299_crit_edge: ; preds = %land.lhs.true.i295
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit299

land.lhs.true2.i297:                              ; preds = %land.lhs.true.i295
  %.b4.i296 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i296, label %land.lhs.true2.i297.rcu_read_lock.exit299_crit_edge, label %if.then.i298

land.lhs.true2.i297.rcu_read_lock.exit299_crit_edge: ; preds = %land.lhs.true2.i297
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit299

if.then.i298:                                     ; preds = %land.lhs.true2.i297
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_lock.exit299

rcu_read_lock.exit299:                            ; preds = %if.then.i298, %land.lhs.true2.i297.rcu_read_lock.exit299_crit_edge, %land.lhs.true.i295.rcu_read_lock.exit299_crit_edge, %if.then159.rcu_read_lock.exit299_crit_edge
  %call161 = call i32 @br_cfm_status_fill_info(ptr noundef %skb, ptr noundef %br.0, i1 noundef zeroext %getlink) #10
  call fastcc void @rcu_read_unlock()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %rcu_read_lock.exit299.if.end165_crit_edge, label %rcu_read_lock.exit299.if.then.i.i_crit_edge

rcu_read_lock.exit299.if.then.i.i_crit_edge:      ; preds = %rcu_read_lock.exit299
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

rcu_read_lock.exit299.if.end165_crit_edge:        ; preds = %rcu_read_lock.exit299
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

if.end165:                                        ; preds = %rcu_read_lock.exit299.if.end165_crit_edge, %if.end156.if.end165_crit_edge
  %71 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i320 = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast.i321 = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i322 = sub i32 %sub.ptr.lhs.cast.i320, %sub.ptr.rhs.cast.i321
  %conv.i323 = trunc i32 %sub.ptr.sub.i322 to i16
  %73 = ptrtoint ptr %62 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.i323, ptr %62, align 2
  br label %done

done:                                             ; preds = %if.end165, %if.then138.done_crit_edge, %if.end135.done_crit_edge, %if.then121.done_crit_edge, %cleanup114.thread344
  %tobool172.not = icmp eq ptr %af.0, null
  br i1 %tobool172.not, label %done.if.end175_crit_edge, label %if.then173

done.if.end175_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end175

if.then173:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i325 = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast.i326 = ptrtoint ptr %af.0 to i32
  %sub.ptr.sub.i327 = sub i32 %sub.ptr.lhs.cast.i325, %sub.ptr.rhs.cast.i326
  %conv.i328 = trunc i32 %sub.ptr.sub.i327 to i16
  %76 = ptrtoint ptr %af.0 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i328, ptr %af.0, align 2
  br label %if.end175

if.end175:                                        ; preds = %if.then173, %done.if.end175_crit_edge
  %77 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i330 = ptrtoint ptr %78 to i32
  %sub.ptr.rhs.cast.i331 = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i332 = sub i32 %sub.ptr.lhs.cast.i330, %sub.ptr.rhs.cast.i331
  %79 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub.ptr.sub.i332, ptr %call3.i, align 4
  br label %cleanup176

if.then.i.i:                                      ; preds = %rcu_read_lock.exit299.if.then.i.i_crit_edge, %rcu_read_lock.exit288.if.then.i.i_crit_edge, %if.end144.if.then.i.i_crit_edge, %rcu_read_lock.exit277.if.then.i.i_crit_edge, %if.end110.if.then.i.i_crit_edge, %if.then73.if.then.i.i_crit_edge, %lor.lhs.false64.if.then.i.i_crit_edge, %if.then60.if.then.i.i_crit_edge, %land.lhs.true50.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge, %lor.lhs.false35.if.then.i.i_crit_edge, %lor.lhs.false32.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end21.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %80 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i333 = icmp ugt ptr %81, %call3.i
  br i1 %cmp.i.i333, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !87

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %82 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i334 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i335 = ptrtoint ptr %83 to i32
  %sub.ptr.sub.i.i336 = sub i32 %sub.ptr.lhs.cast.i.i334, %sub.ptr.rhs.cast.i.i335
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i336) #10
  br label %cleanup176

cleanup176:                                       ; preds = %nlmsg_cancel.exit, %if.end175, %nlmsg_put.exit.cleanup176_crit_edge, %skb_tailroom.exit.i.cleanup176_crit_edge, %do.end.cleanup176_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end175 ], [ -90, %nlmsg_put.exit.cleanup176_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup176_crit_edge ], [ -90, %do.end.cleanup176_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_ifinfo_notify(i32 noundef %event, ptr noundef %br, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @br_info_notify(i32 noundef %event, ptr noundef %br, ptr noundef %port, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_getlink(ptr noundef %skb, i32 noundef %pid, i32 noundef %seq, ptr noundef %dev, i32 noundef %filter_mask, i32 noundef %nlflags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %1, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.br_port_get_rtnl.exit_crit_edge, label %do.body.i

entry.br_port_get_rtnl.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

do.body.i:                                        ; preds = %entry
  %call1.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call1.i, label %do.body.i.do.end.i_crit_edge, label %land.lhs.true.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 422, ptr noundef nonnull @.str.13) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_handler_data.i, align 4
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %do.end.i, %entry.br_port_get_rtnl.exit_crit_edge
  %cond.i = phi ptr [ %3, %do.end.i ], [ null, %entry.br_port_get_rtnl.exit_crit_edge ]
  %tobool.not = icmp eq ptr %cond.i, null
  %4 = and i32 %filter_mask, 118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  %6 = and i1 %5, %tobool.not
  br i1 %6, label %br_port_get_rtnl.exit.cleanup_crit_edge, label %if.end

br_port_get_rtnl.exit.cleanup_crit_edge:          ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call fastcc i32 @br_fill_ifinfo(ptr noundef %skb, ptr noundef %cond.i, i32 noundef %pid, i32 noundef %seq, i32 noundef 16, i32 noundef %nlflags, i32 noundef %filter_mask, ptr noundef %dev, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %br_port_get_rtnl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end ], [ 0, %br_port_get_rtnl.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_process_vlan_info(ptr noundef %br, ptr noundef %p, i32 noundef %cmd, ptr noundef %vinfo_curr, ptr nocapture noundef %vinfo_last, ptr nocapture noundef %changed, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %tmp_vinfo = alloca %struct.bridge_vlan_info, align 4
  %curr_change = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vid = getelementptr inbounds %struct.bridge_vlan_info, ptr %vinfo_curr, i32 0, i32 1
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vid, align 2
  %2 = add i16 %1, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %2)
  %3 = icmp ult i16 %2, 4094
  br i1 %3, label %if.end, label %do.body.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_id.__msg) #10
  %tobool5.not.i = icmp eq ptr %extack, null
  br i1 %tobool5.not.i, label %do.body.i.cleanup51_crit_edge, label %if.then6.i

do.body.i.cleanup51_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @br_vlan_valid_id.__msg, ptr %extack, align 4
  br label %cleanup51

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %cmd)
  %switch.selectcmp.i = icmp eq i32 %cmd, 17
  %switch.select.i = select i1 %switch.selectcmp.i, i32 113, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %cmd)
  %switch.selectcmp2.i = icmp eq i32 %cmd, 19
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 112, i32 %switch.select.i
  %5 = ptrtoint ptr %vinfo_curr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vinfo_curr, align 2
  %7 = and i16 %6, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  %8 = ptrtoint ptr %vinfo_last to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vinfo_last, align 4
  br i1 %tobool.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %conv.i = zext i16 %6 to i32
  %and.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %do.body.i95

do.body.i95:                                      ; preds = %if.then2
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_range.__msg) #10
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i95.cleanup51_crit_edge, label %do.body.i95.return.sink.split.i_crit_edge

do.body.i95.return.sink.split.i_crit_edge:        ; preds = %do.body.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

do.body.i95.cleanup51_crit_edge:                  ; preds = %do.body.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.end3.i:                                        ; preds = %if.then2
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %if.end3.i.if.end46.i_crit_edge, label %if.then5.i

if.end3.i.if.end46.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

if.then5.i:                                       ; preds = %if.end3.i
  %and8.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else.i, label %do.body11.i

do.body11.i:                                      ; preds = %if.then5.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_range.__msg.14) #10
  %tobool13.not.i = icmp eq ptr %extack, null
  br i1 %tobool13.not.i, label %do.body11.i.cleanup51_crit_edge, label %do.body11.i.return.sink.split.i_crit_edge

do.body11.i.return.sink.split.i_crit_edge:        ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

do.body11.i.cleanup51_crit_edge:                  ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.else.i:                                        ; preds = %if.then5.i
  %and20.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %do.body23.i, label %if.else30.i

do.body23.i:                                      ; preds = %if.else.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_range.__msg.15) #10
  %tobool25.not.i = icmp eq ptr %extack, null
  br i1 %tobool25.not.i, label %do.body23.i.cleanup51_crit_edge, label %do.body23.i.return.sink.split.i_crit_edge

do.body23.i.return.sink.split.i_crit_edge:        ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

do.body23.i.cleanup51_crit_edge:                  ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.else30.i:                                      ; preds = %if.else.i
  %10 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vid, align 2
  %vid32.i = getelementptr inbounds %struct.bridge_vlan_info, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %vid32.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vid32.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp.not.i = icmp ugt i16 %11, %13
  br i1 %cmp.not.i, label %if.else30.i.if.end46.i_crit_edge, label %do.body36.i

if.else30.i.if.end46.i_crit_edge:                 ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

do.body36.i:                                      ; preds = %if.else30.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_range.__msg.16) #10
  %tobool38.not.i = icmp eq ptr %extack, null
  br i1 %tobool38.not.i, label %do.body36.i.cleanup51_crit_edge, label %do.body36.i.return.sink.split.i_crit_edge

do.body36.i.return.sink.split.i_crit_edge:        ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

do.body36.i.cleanup51_crit_edge:                  ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.end46.i:                                       ; preds = %if.else30.i.if.end46.i_crit_edge, %if.end3.i.if.end46.i_crit_edge
  %14 = and i16 %6, 24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool50.not.i = icmp eq i16 %14, 0
  br i1 %tobool50.not.i, label %do.body52.i, label %if.end5

do.body52.i:                                      ; preds = %if.end46.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_range.__msg.17) #10
  %tobool54.not.i = icmp eq ptr %extack, null
  br i1 %tobool54.not.i, label %do.body52.i.cleanup51_crit_edge, label %do.body52.i.return.sink.split.i_crit_edge

do.body52.i.return.sink.split.i_crit_edge:        ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

do.body52.i.cleanup51_crit_edge:                  ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

return.sink.split.i:                              ; preds = %do.body52.i.return.sink.split.i_crit_edge, %do.body36.i.return.sink.split.i_crit_edge, %do.body23.i.return.sink.split.i_crit_edge, %do.body11.i.return.sink.split.i_crit_edge, %do.body.i95.return.sink.split.i_crit_edge
  %br_vlan_valid_range.__msg.17.sink.i = phi ptr [ @br_vlan_valid_range.__msg, %do.body.i95.return.sink.split.i_crit_edge ], [ @br_vlan_valid_range.__msg.14, %do.body11.i.return.sink.split.i_crit_edge ], [ @br_vlan_valid_range.__msg.15, %do.body23.i.return.sink.split.i_crit_edge ], [ @br_vlan_valid_range.__msg.16, %do.body36.i.return.sink.split.i_crit_edge ], [ @br_vlan_valid_range.__msg.17, %do.body52.i.return.sink.split.i_crit_edge ]
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %br_vlan_valid_range.__msg.17.sink.i, ptr %extack, align 4
  br label %cleanup51

if.end5:                                          ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %vinfo_last to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vinfo_curr, ptr %vinfo_last, align 4
  br label %cleanup51

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end45, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_vinfo) #10
  %17 = getelementptr inbounds %struct.bridge_vlan_info, ptr %tmp_vinfo, i32 0, i32 1
  %conv.i96 = zext i16 %6 to i32
  %and.i97 = and i32 %conv.i96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97)
  %tobool.not.i98 = icmp eq i32 %and.i97, 0
  br i1 %tobool.not.i98, label %if.then5.i105, label %do.body.i100

do.body.i100:                                     ; preds = %if.then8
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_range.__msg) #10
  %tobool1.not.i99 = icmp eq ptr %extack, null
  br i1 %tobool1.not.i99, label %do.body.i100.cleanup42_crit_edge, label %do.body.i100.return.sink.split.i124_crit_edge

do.body.i100.return.sink.split.i124_crit_edge:    ; preds = %do.body.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i124

do.body.i100.cleanup42_crit_edge:                 ; preds = %do.body.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup42

if.then5.i105:                                    ; preds = %if.then8
  %and8.i103 = and i32 %conv.i96, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i103)
  %tobool9.not.i104 = icmp eq i32 %and8.i103, 0
  br i1 %tobool9.not.i104, label %if.else.i110, label %do.body11.i107

do.body11.i107:                                   ; preds = %if.then5.i105
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_range.__msg.14) #10
  %tobool13.not.i106 = icmp eq ptr %extack, null
  br i1 %tobool13.not.i106, label %do.body11.i107.cleanup42_crit_edge, label %do.body11.i107.return.sink.split.i124_crit_edge

do.body11.i107.return.sink.split.i124_crit_edge:  ; preds = %do.body11.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i124

do.body11.i107.cleanup42_crit_edge:               ; preds = %do.body11.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup42

if.else.i110:                                     ; preds = %if.then5.i105
  %and20.i108 = and i32 %conv.i96, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i108)
  %tobool21.not.i109 = icmp eq i32 %and20.i108, 0
  br i1 %tobool21.not.i109, label %do.body23.i112, label %if.else30.i116

do.body23.i112:                                   ; preds = %if.else.i110
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_range.__msg.15) #10
  %tobool25.not.i111 = icmp eq ptr %extack, null
  br i1 %tobool25.not.i111, label %do.body23.i112.cleanup42_crit_edge, label %do.body23.i112.return.sink.split.i124_crit_edge

do.body23.i112.return.sink.split.i124_crit_edge:  ; preds = %do.body23.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i124

do.body23.i112.cleanup42_crit_edge:               ; preds = %do.body23.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup42

if.else30.i116:                                   ; preds = %if.else.i110
  %18 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vid, align 2
  %vid32.i114 = getelementptr inbounds %struct.bridge_vlan_info, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %vid32.i114 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vid32.i114, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp.not.i115 = icmp ugt i16 %19, %21
  br i1 %cmp.not.i115, label %if.end46.i120, label %do.body36.i118

do.body36.i118:                                   ; preds = %if.else30.i116
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_range.__msg.16) #10
  %tobool38.not.i117 = icmp eq ptr %extack, null
  br i1 %tobool38.not.i117, label %do.body36.i118.cleanup42_crit_edge, label %do.body36.i118.return.sink.split.i124_crit_edge

do.body36.i118.return.sink.split.i124_crit_edge:  ; preds = %do.body36.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i124

do.body36.i118.cleanup42_crit_edge:               ; preds = %do.body36.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup42

if.end46.i120:                                    ; preds = %if.else30.i116
  %22 = and i16 %6, 24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool50.not.i119 = icmp eq i16 %22, 0
  br i1 %tobool50.not.i119, label %do.body52.i122, label %if.end11

do.body52.i122:                                   ; preds = %if.end46.i120
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_range.__msg.17) #10
  %tobool54.not.i121 = icmp eq ptr %extack, null
  br i1 %tobool54.not.i121, label %do.body52.i122.cleanup42_crit_edge, label %do.body52.i122.return.sink.split.i124_crit_edge

do.body52.i122.return.sink.split.i124_crit_edge:  ; preds = %do.body52.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i124

do.body52.i122.cleanup42_crit_edge:               ; preds = %do.body52.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup42

return.sink.split.i124:                           ; preds = %do.body52.i122.return.sink.split.i124_crit_edge, %do.body36.i118.return.sink.split.i124_crit_edge, %do.body23.i112.return.sink.split.i124_crit_edge, %do.body11.i107.return.sink.split.i124_crit_edge, %do.body.i100.return.sink.split.i124_crit_edge
  %br_vlan_valid_range.__msg.17.sink.i123 = phi ptr [ @br_vlan_valid_range.__msg, %do.body.i100.return.sink.split.i124_crit_edge ], [ @br_vlan_valid_range.__msg.14, %do.body11.i107.return.sink.split.i124_crit_edge ], [ @br_vlan_valid_range.__msg.15, %do.body23.i112.return.sink.split.i124_crit_edge ], [ @br_vlan_valid_range.__msg.16, %do.body36.i118.return.sink.split.i124_crit_edge ], [ @br_vlan_valid_range.__msg.17, %do.body52.i122.return.sink.split.i124_crit_edge ]
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %br_vlan_valid_range.__msg.17.sink.i123, ptr %extack, align 4
  br label %cleanup42

if.end11:                                         ; preds = %if.end46.i120
  %24 = ptrtoint ptr %vinfo_last to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vinfo_last, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %25, align 2
  %28 = ptrtoint ptr %tmp_vinfo to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tmp_vinfo, align 4
  %29 = trunc i32 %27 to i16
  %30 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vid, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %29)
  %cmp.not140 = icmp ult i16 %31, %29
  br i1 %cmp.not140, label %if.end11.if.end41_crit_edge, label %for.body.preheader

if.end11.if.end41_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

for.body.preheader:                               ; preds = %if.end11
  %conv13 = and i32 %27, 65535
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %v_change_start.0144 = phi i32 [ %v_change_start.2.ph, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %v.0141 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %conv13, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %curr_change) #10
  %32 = ptrtoint ptr %curr_change to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %curr_change, align 1
  %conv17 = trunc i32 %v.0141 to i16
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv17, ptr %17, align 2
  %call19 = call fastcc i32 @br_vlan_info(ptr noundef %br, ptr noundef %p, i32 noundef %cmd, ptr noundef nonnull %tmp_vinfo, ptr noundef nonnull %curr_change, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %cleanup

if.end22:                                         ; preds = %for.body
  %34 = ptrtoint ptr %curr_change to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %curr_change, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool23.not = icmp eq i8 %35, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %changed, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v_change_start.0144)
  %tobool26.not = icmp eq i32 %v_change_start.0144, 0
  %spec.select = select i1 %tobool26.not, i32 %v.0141, i32 %v_change_start.0144
  br label %if.end34

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v_change_start.0144)
  %tobool29.not = icmp eq i32 %v_change_start.0144, 0
  br i1 %tobool29.not, label %if.else.for.inc_crit_edge, label %if.end31

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end31:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %conv32 = trunc i32 %v_change_start.0144 to i16
  %conv33 = add i16 %conv17, -1
  tail call void @br_vlan_notify(ptr noundef %br, ptr noundef %p, i16 noundef zeroext %conv32, i16 noundef zeroext %conv33, i32 noundef %switch.select3.i) #10
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %if.then24
  %v_change_start.1 = phi i32 [ 0, %if.end31 ], [ %spec.select, %if.then24 ]
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 736, i32 noundef 0) #10
  %call.i = tail call i32 @__cond_resched() #10
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %curr_change) #10
  br label %for.end

for.inc:                                          ; preds = %if.end34, %if.else.for.inc_crit_edge
  %v_change_start.2.ph = phi i32 [ 0, %if.else.for.inc_crit_edge ], [ %v_change_start.1, %if.end34 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %curr_change) #10
  %inc = add nuw nsw i32 %v.0141, 1
  %37 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vid, align 2
  %conv15 = zext i16 %38 to i32
  %cmp.not.not = icmp ult i32 %v.0141, %conv15
  br i1 %cmp.not.not, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup
  %v.0137 = phi i32 [ %v.0141, %cleanup ], [ %inc, %for.inc.for.end_crit_edge ]
  %v_change_start.0135 = phi i32 [ %v_change_start.0144, %cleanup ], [ %v_change_start.2.ph, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v_change_start.0135)
  %tobool36.not = icmp eq i32 %v_change_start.0135, 0
  br i1 %tobool36.not, label %for.end.if.end41_crit_edge, label %if.then37

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv38 = trunc i32 %v_change_start.0135 to i16
  %39 = trunc i32 %v.0137 to i16
  %conv40 = add i16 %39, -1
  tail call void @br_vlan_notify(ptr noundef %br, ptr noundef %p, i16 noundef zeroext %conv38, i16 noundef zeroext %conv40, i32 noundef %switch.select3.i) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %for.end.if.end41_crit_edge, %if.end11.if.end41_crit_edge
  %err.1154 = phi i32 [ %call19, %if.then37 ], [ %call19, %for.end.if.end41_crit_edge ], [ -1, %if.end11.if.end41_crit_edge ]
  %40 = ptrtoint ptr %vinfo_last to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %vinfo_last, align 4
  br label %cleanup42

cleanup42:                                        ; preds = %if.end41, %return.sink.split.i124, %do.body52.i122.cleanup42_crit_edge, %do.body36.i118.cleanup42_crit_edge, %do.body23.i112.cleanup42_crit_edge, %do.body11.i107.cleanup42_crit_edge, %do.body.i100.cleanup42_crit_edge
  %retval.0 = phi i32 [ %err.1154, %if.end41 ], [ -22, %do.body.i100.cleanup42_crit_edge ], [ -22, %do.body11.i107.cleanup42_crit_edge ], [ -22, %do.body23.i112.cleanup42_crit_edge ], [ -22, %do.body36.i118.cleanup42_crit_edge ], [ -22, %do.body52.i122.cleanup42_crit_edge ], [ -22, %return.sink.split.i124 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_vinfo) #10
  br label %cleanup51

if.end45:                                         ; preds = %if.end6
  %call46 = tail call fastcc i32 @br_vlan_info(ptr noundef %br, ptr noundef %p, i32 noundef %cmd, ptr noundef %vinfo_curr, ptr noundef %changed, ptr noundef %extack)
  %41 = ptrtoint ptr %changed to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %changed, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool47.not = icmp eq i8 %42, 0
  br i1 %tobool47.not, label %if.end45.cleanup51_crit_edge, label %if.then48

if.end45.cleanup51_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vid, align 2
  tail call void @br_vlan_notify(ptr noundef %br, ptr noundef %p, i16 noundef zeroext %44, i16 noundef zeroext 0, i32 noundef %switch.select3.i) #10
  br label %cleanup51

cleanup51:                                        ; preds = %if.then48, %if.end45.cleanup51_crit_edge, %cleanup42, %if.end5, %return.sink.split.i, %do.body52.i.cleanup51_crit_edge, %do.body36.i.cleanup51_crit_edge, %do.body23.i.cleanup51_crit_edge, %do.body11.i.cleanup51_crit_edge, %do.body.i95.cleanup51_crit_edge, %if.then6.i, %do.body.i.cleanup51_crit_edge
  %retval.1 = phi i32 [ 0, %if.end5 ], [ %retval.0, %cleanup42 ], [ %call46, %if.then48 ], [ %call46, %if.end45.cleanup51_crit_edge ], [ -22, %do.body.i.cleanup51_crit_edge ], [ -22, %if.then6.i ], [ -22, %do.body.i95.cleanup51_crit_edge ], [ -22, %do.body11.i.cleanup51_crit_edge ], [ -22, %do.body23.i.cleanup51_crit_edge ], [ -22, %do.body36.i.cleanup51_crit_edge ], [ -22, %do.body52.i.cleanup51_crit_edge ], [ -22, %return.sink.split.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_vlan_info(ptr noundef %br, ptr noundef %p, i32 noundef %cmd, ptr nocapture noundef %vinfo, ptr nocapture noundef writeonly %changed, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %curr_change = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %curr_change) #10
  %0 = ptrtoint ptr %curr_change to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %curr_change, align 1, !annotation !91
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 19, label %sw.bb
    i32 17, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %vid = getelementptr inbounds %struct.bridge_vlan_info, ptr %vinfo, i32 0, i32 1
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid, align 2
  %4 = ptrtoint ptr %vinfo to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vinfo, align 2
  %call = call i32 @nbp_vlan_add(ptr noundef nonnull %p, i16 noundef zeroext %3, i16 noundef zeroext %5, ptr noundef nonnull %curr_change, ptr noundef %extack) #10
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %vinfo to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vinfo, align 2
  %8 = or i16 %7, 32
  store i16 %8, ptr %vinfo, align 2
  %vid3 = getelementptr inbounds %struct.bridge_vlan_info, ptr %vinfo, i32 0, i32 1
  %9 = ptrtoint ptr %vid3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vid3, align 2
  %call5 = call i32 @br_vlan_add(ptr noundef %br, i16 noundef zeroext %10, i16 noundef zeroext %8, ptr noundef nonnull %curr_change, ptr noundef %extack) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call, %if.then ], [ %call5, %if.else ]
  %11 = ptrtoint ptr %curr_change to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %curr_change, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %if.end.sw.epilog_crit_edge, label %if.end.sw.epilog.sink.split_crit_edge

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %tobool10.not = icmp eq ptr %p, null
  %vid27 = getelementptr inbounds %struct.bridge_vlan_info, ptr %vinfo, i32 0, i32 1
  %13 = ptrtoint ptr %vid27 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vid27, align 2
  br i1 %tobool10.not, label %if.else26, label %if.then11

if.then11:                                        ; preds = %sw.bb9
  %call13 = tail call i32 @nbp_vlan_delete(ptr noundef nonnull %p, i16 noundef zeroext %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.then11.if.end16_crit_edge

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %changed, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then11.if.end16_crit_edge
  %16 = ptrtoint ptr %vinfo to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vinfo, align 2
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool19.not = icmp eq i16 %18, 0
  br i1 %tobool19.not, label %if.end16.sw.epilog_crit_edge, label %land.lhs.true

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end16
  %19 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p, align 8
  %21 = ptrtoint ptr %vid27 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vid27, align 2
  %call22 = tail call i32 @br_vlan_delete(ptr noundef %20, i16 noundef zeroext %22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.sw.epilog.sink.split_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true.sw.epilog.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.else26:                                        ; preds = %sw.bb9
  %call28 = tail call i32 @br_vlan_delete(ptr noundef %br, i16 noundef zeroext %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.else26.sw.epilog.sink.split_crit_edge, label %if.else26.sw.epilog_crit_edge

if.else26.sw.epilog_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else26.sw.epilog.sink.split_crit_edge:         ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.else26.sw.epilog.sink.split_crit_edge, %land.lhs.true.sw.epilog.sink.split_crit_edge, %if.end.sw.epilog.sink.split_crit_edge
  %err.1.ph = phi i32 [ %err.0, %if.end.sw.epilog.sink.split_crit_edge ], [ 0, %land.lhs.true.sw.epilog.sink.split_crit_edge ], [ 0, %if.else26.sw.epilog.sink.split_crit_edge ]
  %23 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %changed, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.else26.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.1 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ 0, %if.end16.sw.epilog_crit_edge ], [ 0, %if.else26.sw.epilog_crit_edge ], [ %err.0, %if.end.sw.epilog_crit_edge ], [ %err.1.ph, %sw.epilog.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %curr_change) #10
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_vlan_notify(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_setlink(ptr noundef %dev, ptr noundef %nlh, i16 noundef zeroext %flags, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %tb = alloca [39 x ptr], align 4
  %changed = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %tb) #10
  %0 = call ptr @memset(ptr %tb, i32 255, i32 156)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %changed) #10
  %1 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %changed, align 1
  %add.ptr.i.i = getelementptr i8, ptr %nlh, i32 32
  %2 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlh, align 4
  %sub1.i.i = add i32 %3, -32
  %call2.i = tail call ptr @nla_find(ptr noundef %add.ptr.i.i, i32 noundef %sub1.i.i, i32 noundef 12) #10
  %4 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nlh, align 4
  %sub1.i.i79 = add i32 %5, -32
  %call2.i80 = tail call ptr @nla_find(ptr noundef %add.ptr.i.i, i32 noundef %sub1.i.i79, i32 noundef 26) #10
  %tobool.not = icmp eq ptr %call2.i, null
  %tobool3.not = icmp eq ptr %call2.i80, null
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %7, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.br_port_get_rtnl.exit_crit_edge, label %do.body.i

if.end.br_port_get_rtnl.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

do.body.i:                                        ; preds = %if.end
  %call1.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call1.i, label %do.body.i.do.end.i_crit_edge, label %land.lhs.true.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i81 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i81)
  %tobool.not.i = icmp eq i32 %call2.i81, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 422, ptr noundef nonnull @.str.13) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %8 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_handler_data.i, align 4
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %do.end.i, %if.end.br_port_get_rtnl.exit_crit_edge
  %cond.i = phi ptr [ %9, %do.end.i ], [ null, %if.end.br_port_get_rtnl.exit_crit_edge ]
  %tobool5.not = icmp eq ptr %cond.i, null
  %or.cond77 = select i1 %tobool5.not, i1 %tobool3.not, i1 false
  br i1 %or.cond77, label %br_port_get_rtnl.exit.cleanup_crit_edge, label %if.end9

br_port_get_rtnl.exit.cleanup_crit_edge:          ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %br_port_get_rtnl.exit
  %brmerge = select i1 %tobool5.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end9.if.end39_crit_edge, label %if.then13

if.end9.if.end39_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then13:                                        ; preds = %if.end9
  %nla_type = getelementptr inbounds %struct.nlattr, ptr %call2.i, i32 0, i32 1
  %10 = ptrtoint ptr %nla_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nla_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %tobool14.not = icmp sgt i16 %11, -1
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then13
  %add.ptr.i.i82 = getelementptr i8, ptr %call2.i, i32 4
  %12 = ptrtoint ptr %call2.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %call2.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i83 = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 38, ptr noundef %add.ptr.i.i82, i32 noundef %sub.i.i, ptr noundef nonnull @br_port_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i83)
  %tobool17.not = icmp eq i32 %call2.i83, 0
  br i1 %tobool17.not, label %if.end19, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cond.i, align 8
  call void @_raw_spin_lock_bh(ptr noundef %15) #10
  %call22 = call fastcc i32 @br_setport(ptr noundef nonnull %cond.i, ptr noundef nonnull %tb, ptr noundef %extack)
  %16 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cond.i, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %17) #10
  br label %if.end35

if.else:                                          ; preds = %if.then13
  %18 = ptrtoint ptr %call2.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %call2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %19)
  %cmp = icmp eq i16 %19, 4
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end28

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.else
  %20 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cond.i, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %21) #10
  %add.ptr.i.i84 = getelementptr i8, ptr %call2.i, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i84 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i.i84, align 1
  %conv.i85 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp.i = icmp ugt i8 %23, 4
  br i1 %cmp.i, label %if.end28.br_set_port_state.exit_crit_edge, label %if.end.i

if.end28.br_set_port_state.exit_crit_edge:        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_state.exit

if.end.i:                                         ; preds = %if.end28
  %24 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cond.i, align 8
  %stp_enabled.i = getelementptr inbounds %struct.net_bridge, ptr %25, i32 0, i32 28
  %26 = ptrtoint ptr %stp_enabled.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stp_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp2.i = icmp eq i32 %27, 1
  br i1 %cmp2.i, label %if.end.i.br_set_port_state.exit_crit_edge, label %if.end5.i

if.end.i.br_set_port_state.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_state.exit

if.end5.i:                                        ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %cond.i, i32 0, i32 1
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i86 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i86, label %if.end5.i.br_set_port_state.exit_crit_edge, label %lor.lhs.false.i

if.end5.i.br_set_port_state.exit_crit_edge:       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_state.exit

lor.lhs.false.i:                                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp9.not.i = icmp eq i8 %23, 0
  br i1 %cmp9.not.i, label %lor.lhs.false.i.if.end12.i_crit_edge, label %switch.early.test.i

lor.lhs.false.i.if.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

switch.early.test.i:                              ; preds = %lor.lhs.false.i
  %operstate.i.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 50
  %32 = ptrtoint ptr %operstate.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %operstate.i.i, align 8
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %33, label %switch.early.test.i.br_set_port_state.exit_crit_edge [
    i8 6, label %switch.early.test.i.if.end12.i_crit_edge
    i8 0, label %switch.early.test.i.if.end12.i_crit_edge87
  ]

switch.early.test.i.if.end12.i_crit_edge87:       ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

switch.early.test.i.if.end12.i_crit_edge:         ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

switch.early.test.i.br_set_port_state.exit_crit_edge: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_state.exit

if.end12.i:                                       ; preds = %switch.early.test.i.if.end12.i_crit_edge, %switch.early.test.i.if.end12.i_crit_edge87, %lor.lhs.false.i.if.end12.i_crit_edge
  tail call void @br_set_state(ptr noundef nonnull %cond.i, i32 noundef %conv.i85) #10
  %35 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cond.i, align 8
  tail call void @br_port_state_selection(ptr noundef %36) #10
  br label %br_set_port_state.exit

br_set_port_state.exit:                           ; preds = %if.end12.i, %switch.early.test.i.br_set_port_state.exit_crit_edge, %if.end5.i.br_set_port_state.exit_crit_edge, %if.end.i.br_set_port_state.exit_crit_edge, %if.end28.br_set_port_state.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end12.i ], [ -22, %if.end28.br_set_port_state.exit_crit_edge ], [ -16, %if.end.i.br_set_port_state.exit_crit_edge ], [ -100, %switch.early.test.i.br_set_port_state.exit_crit_edge ], [ -100, %if.end5.i.br_set_port_state.exit_crit_edge ]
  %37 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cond.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %38) #10
  br label %if.end35

if.end35:                                         ; preds = %br_set_port_state.exit, %if.end19
  %err.0 = phi i32 [ %call22, %if.end19 ], [ %retval.0.i, %br_set_port_state.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool36.not = icmp eq i32 %err.0, 0
  br i1 %tobool36.not, label %if.end38, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %changed, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end9.if.end39_crit_edge
  br i1 %tobool3.not, label %if.end39.if.end43_crit_edge, label %if.then41

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = call fastcc i32 @br_afspec(ptr noundef %add.ptr.i, ptr noundef %cond.i, ptr noundef nonnull %call2.i80, i32 noundef 19, ptr noundef nonnull %changed, ptr noundef %extack)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39.if.end43_crit_edge
  %err.2 = phi i32 [ %call42, %if.then41 ], [ 0, %if.end39.if.end43_crit_edge ]
  %40 = ptrtoint ptr %changed to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %changed, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool44.not = icmp eq i8 %41, 0
  br i1 %tobool44.not, label %if.end43.cleanup_crit_edge, label %if.then45

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  call void @br_info_notify(i32 noundef 16, ptr noundef %add.ptr.i, ptr noundef %cond.i, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end43.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %br_port_get_rtnl.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %br_port_get_rtnl.exit.cleanup_crit_edge ], [ %call2.i83, %if.then15.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %err.0, %if.end35.cleanup_crit_edge ], [ %err.2, %if.then45 ], [ %err.2, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %changed) #10
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %tb) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_setport(ptr noundef %p, ptr noundef readonly %tb, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.br_set_port_flag.exit_crit_edge, label %if.end.i

entry.br_set_port_flag.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_flag.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not.i = icmp ne i8 %5, 0
  %and.i = and i32 %1, -2
  %masksel = zext i1 %tobool2.not.i to i32
  %or.i.sink = or i32 %and.i, %masksel
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i.sink, ptr %flags, align 4
  br label %br_set_port_flag.exit

br_set_port_flag.exit:                            ; preds = %if.end.i, %entry.br_set_port_flag.exit_crit_edge
  %arrayidx.i200 = getelementptr ptr, ptr %tb, i32 5
  %7 = ptrtoint ptr %arrayidx.i200 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i200, align 4
  %tobool.not.i201 = icmp eq ptr %8, null
  br i1 %tobool.not.i201, label %br_set_port_flag.exit.br_set_port_flag.exit211_crit_edge, label %if.end.i204

br_set_port_flag.exit.br_set_port_flag.exit211_crit_edge: ; preds = %br_set_port_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_flag.exit211

if.end.i204:                                      ; preds = %br_set_port_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i202 = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i.i202 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.i.i.i202, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not.i203 = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and.i209 = and i32 %12, -3
  %masksel368 = select i1 %tobool2.not.i203, i32 0, i32 2
  %or.i206.sink = or i32 %and.i209, %masksel368
  store i32 %or.i206.sink, ptr %flags, align 4
  br label %br_set_port_flag.exit211

br_set_port_flag.exit211:                         ; preds = %if.end.i204, %br_set_port_flag.exit.br_set_port_flag.exit211_crit_edge
  %arrayidx.i212 = getelementptr ptr, ptr %tb, i32 7
  %13 = ptrtoint ptr %arrayidx.i212 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i212, align 4
  %tobool.not.i213 = icmp eq ptr %14, null
  br i1 %tobool.not.i213, label %br_set_port_flag.exit211.br_set_port_flag.exit223_crit_edge, label %if.end.i216

br_set_port_flag.exit211.br_set_port_flag.exit223_crit_edge: ; preds = %br_set_port_flag.exit211
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_flag.exit223

if.end.i216:                                      ; preds = %br_set_port_flag.exit211
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i214 = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i.i214 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.i.i.i214, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool2.not.i215 = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and.i221 = and i32 %18, -9
  %masksel369 = select i1 %tobool2.not.i215, i32 0, i32 8
  %or.i218.sink = or i32 %and.i221, %masksel369
  store i32 %or.i218.sink, ptr %flags, align 4
  br label %br_set_port_flag.exit223

br_set_port_flag.exit223:                         ; preds = %if.end.i216, %br_set_port_flag.exit211.br_set_port_flag.exit223_crit_edge
  %arrayidx.i224 = getelementptr ptr, ptr %tb, i32 6
  %19 = ptrtoint ptr %arrayidx.i224 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i224, align 4
  %tobool.not.i225 = icmp eq ptr %20, null
  br i1 %tobool.not.i225, label %br_set_port_flag.exit223.br_set_port_flag.exit235_crit_edge, label %if.end.i228

br_set_port_flag.exit223.br_set_port_flag.exit235_crit_edge: ; preds = %br_set_port_flag.exit223
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_flag.exit235

if.end.i228:                                      ; preds = %br_set_port_flag.exit223
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i226 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i.i226 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i.i.i226, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool2.not.i227 = icmp eq i8 %22, 0
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and.i233 = and i32 %24, -5
  %masksel370 = select i1 %tobool2.not.i227, i32 0, i32 4
  %or.i230.sink = or i32 %and.i233, %masksel370
  store i32 %or.i230.sink, ptr %flags, align 4
  br label %br_set_port_flag.exit235

br_set_port_flag.exit235:                         ; preds = %if.end.i228, %br_set_port_flag.exit223.br_set_port_flag.exit235_crit_edge
  %arrayidx.i236 = getelementptr ptr, ptr %tb, i32 8
  %25 = ptrtoint ptr %arrayidx.i236 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i236, align 4
  %tobool.not.i237 = icmp eq ptr %26, null
  br i1 %tobool.not.i237, label %br_set_port_flag.exit235.br_set_port_flag.exit247_crit_edge, label %if.end.i240

br_set_port_flag.exit235.br_set_port_flag.exit247_crit_edge: ; preds = %br_set_port_flag.exit235
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_flag.exit247

if.end.i240:                                      ; preds = %br_set_port_flag.exit235
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i238 = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i.i238 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr.i.i.i238, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool2.not.i239 = icmp eq i8 %28, 0
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and.i245 = and i32 %30, -33
  %masksel371 = select i1 %tobool2.not.i239, i32 0, i32 32
  %or.i242.sink = or i32 %and.i245, %masksel371
  store i32 %or.i242.sink, ptr %flags, align 4
  br label %br_set_port_flag.exit247

br_set_port_flag.exit247:                         ; preds = %if.end.i240, %br_set_port_flag.exit235.br_set_port_flag.exit247_crit_edge
  %arrayidx.i248 = getelementptr ptr, ptr %tb, i32 9
  %31 = ptrtoint ptr %arrayidx.i248 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i248, align 4
  %tobool.not.i249 = icmp eq ptr %32, null
  br i1 %tobool.not.i249, label %br_set_port_flag.exit247.br_set_port_flag.exit259_crit_edge, label %if.end.i252

br_set_port_flag.exit247.br_set_port_flag.exit259_crit_edge: ; preds = %br_set_port_flag.exit247
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_flag.exit259

if.end.i252:                                      ; preds = %br_set_port_flag.exit247
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i250 = getelementptr i8, ptr %32, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i.i250 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr.i.i.i250, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool2.not.i251 = icmp eq i8 %34, 0
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %and.i257 = and i32 %36, -65
  %masksel372 = select i1 %tobool2.not.i251, i32 0, i32 64
  %or.i254.sink = or i32 %and.i257, %masksel372
  store i32 %or.i254.sink, ptr %flags, align 4
  br label %br_set_port_flag.exit259

br_set_port_flag.exit259:                         ; preds = %if.end.i252, %br_set_port_flag.exit247.br_set_port_flag.exit259_crit_edge
  %arrayidx.i260 = getelementptr ptr, ptr %tb, i32 27
  %37 = ptrtoint ptr %arrayidx.i260 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i260, align 4
  %tobool.not.i261 = icmp eq ptr %38, null
  br i1 %tobool.not.i261, label %br_set_port_flag.exit259.br_set_port_flag.exit271_crit_edge, label %if.end.i264

br_set_port_flag.exit259.br_set_port_flag.exit271_crit_edge: ; preds = %br_set_port_flag.exit259
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_flag.exit271

if.end.i264:                                      ; preds = %br_set_port_flag.exit259
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i262 = getelementptr i8, ptr %38, i32 4
  %39 = ptrtoint ptr %add.ptr.i.i.i262 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr.i.i.i262, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool2.not.i263 = icmp eq i8 %40, 0
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and.i269 = and i32 %42, -2049
  %masksel373 = select i1 %tobool2.not.i263, i32 0, i32 2048
  %or.i266.sink = or i32 %and.i269, %masksel373
  store i32 %or.i266.sink, ptr %flags, align 4
  br label %br_set_port_flag.exit271

br_set_port_flag.exit271:                         ; preds = %if.end.i264, %br_set_port_flag.exit259.br_set_port_flag.exit271_crit_edge
  %arrayidx.i272 = getelementptr ptr, ptr %tb, i32 28
  %43 = ptrtoint ptr %arrayidx.i272 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i272, align 4
  %tobool.not.i273 = icmp eq ptr %44, null
  br i1 %tobool.not.i273, label %br_set_port_flag.exit271.br_set_port_flag.exit283_crit_edge, label %if.end.i276

br_set_port_flag.exit271.br_set_port_flag.exit283_crit_edge: ; preds = %br_set_port_flag.exit271
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_flag.exit283

if.end.i276:                                      ; preds = %br_set_port_flag.exit271
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i274 = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i.i274 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr.i.i.i274, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool2.not.i275 = icmp eq i8 %46, 0
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  %and.i281 = and i32 %48, -4097
  %masksel374 = select i1 %tobool2.not.i275, i32 0, i32 4096
  %or.i278.sink = or i32 %and.i281, %masksel374
  store i32 %or.i278.sink, ptr %flags, align 4
  br label %br_set_port_flag.exit283

br_set_port_flag.exit283:                         ; preds = %if.end.i276, %br_set_port_flag.exit271.br_set_port_flag.exit283_crit_edge
  %arrayidx.i284 = getelementptr ptr, ptr %tb, i32 30
  %49 = ptrtoint ptr %arrayidx.i284 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i284, align 4
  %tobool.not.i285 = icmp eq ptr %50, null
  br i1 %tobool.not.i285, label %br_set_port_flag.exit283.br_set_port_flag.exit295_crit_edge, label %if.end.i288

br_set_port_flag.exit283.br_set_port_flag.exit295_crit_edge: ; preds = %br_set_port_flag.exit283
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_flag.exit295

if.end.i288:                                      ; preds = %br_set_port_flag.exit283
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i286 = getelementptr i8, ptr %50, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i.i286 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr.i.i.i286, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool2.not.i287 = icmp eq i8 %52, 0
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags, align 4
  %and.i293 = and i32 %54, -16385
  %masksel375 = select i1 %tobool2.not.i287, i32 0, i32 16384
  %or.i290.sink = or i32 %and.i293, %masksel375
  store i32 %or.i290.sink, ptr %flags, align 4
  br label %br_set_port_flag.exit295

br_set_port_flag.exit295:                         ; preds = %if.end.i288, %br_set_port_flag.exit283.br_set_port_flag.exit295_crit_edge
  %arrayidx.i296 = getelementptr ptr, ptr %tb, i32 10
  %55 = ptrtoint ptr %arrayidx.i296 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i296, align 4
  %tobool.not.i297 = icmp eq ptr %56, null
  br i1 %tobool.not.i297, label %br_set_port_flag.exit295.br_set_port_flag.exit307_crit_edge, label %if.end.i300

br_set_port_flag.exit295.br_set_port_flag.exit307_crit_edge: ; preds = %br_set_port_flag.exit295
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_flag.exit307

if.end.i300:                                      ; preds = %br_set_port_flag.exit295
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i298 = getelementptr i8, ptr %56, i32 4
  %57 = ptrtoint ptr %add.ptr.i.i.i298 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %add.ptr.i.i.i298, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool2.not.i299 = icmp eq i8 %58, 0
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags, align 4
  %and.i305 = and i32 %60, -257
  %masksel376 = select i1 %tobool2.not.i299, i32 0, i32 256
  %or.i302.sink = or i32 %and.i305, %masksel376
  store i32 %or.i302.sink, ptr %flags, align 4
  br label %br_set_port_flag.exit307

br_set_port_flag.exit307:                         ; preds = %if.end.i300, %br_set_port_flag.exit295.br_set_port_flag.exit307_crit_edge
  %arrayidx.i308 = getelementptr ptr, ptr %tb, i32 12
  %61 = ptrtoint ptr %arrayidx.i308 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i308, align 4
  %tobool.not.i309 = icmp eq ptr %62, null
  br i1 %tobool.not.i309, label %br_set_port_flag.exit307.br_set_port_flag.exit319_crit_edge, label %if.end.i312

br_set_port_flag.exit307.br_set_port_flag.exit319_crit_edge: ; preds = %br_set_port_flag.exit307
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_flag.exit319

if.end.i312:                                      ; preds = %br_set_port_flag.exit307
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i310 = getelementptr i8, ptr %62, i32 4
  %63 = ptrtoint ptr %add.ptr.i.i.i310 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr.i.i.i310, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool2.not.i311 = icmp eq i8 %64, 0
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags, align 4
  %and.i317 = and i32 %66, -1025
  %masksel377 = select i1 %tobool2.not.i311, i32 0, i32 1024
  %or.i314.sink = or i32 %and.i317, %masksel377
  store i32 %or.i314.sink, ptr %flags, align 4
  br label %br_set_port_flag.exit319

br_set_port_flag.exit319:                         ; preds = %if.end.i312, %br_set_port_flag.exit307.br_set_port_flag.exit319_crit_edge
  %arrayidx.i320 = getelementptr ptr, ptr %tb, i32 29
  %67 = ptrtoint ptr %arrayidx.i320 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i320, align 4
  %tobool.not.i321 = icmp eq ptr %68, null
  br i1 %tobool.not.i321, label %br_set_port_flag.exit319.br_set_port_flag.exit331_crit_edge, label %if.end.i324

br_set_port_flag.exit319.br_set_port_flag.exit331_crit_edge: ; preds = %br_set_port_flag.exit319
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_flag.exit331

if.end.i324:                                      ; preds = %br_set_port_flag.exit319
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i322 = getelementptr i8, ptr %68, i32 4
  %69 = ptrtoint ptr %add.ptr.i.i.i322 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %add.ptr.i.i.i322, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool2.not.i323 = icmp eq i8 %70, 0
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags, align 4
  %and.i329 = and i32 %72, -8193
  %masksel378 = select i1 %tobool2.not.i323, i32 0, i32 8192
  %or.i326.sink = or i32 %and.i329, %masksel378
  store i32 %or.i326.sink, ptr %flags, align 4
  br label %br_set_port_flag.exit331

br_set_port_flag.exit331:                         ; preds = %if.end.i324, %br_set_port_flag.exit319.br_set_port_flag.exit331_crit_edge
  %arrayidx.i332 = getelementptr ptr, ptr %tb, i32 32
  %73 = ptrtoint ptr %arrayidx.i332 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i332, align 4
  %tobool.not.i333 = icmp eq ptr %74, null
  br i1 %tobool.not.i333, label %br_set_port_flag.exit331.br_set_port_flag.exit343_crit_edge, label %if.end.i336

br_set_port_flag.exit331.br_set_port_flag.exit343_crit_edge: ; preds = %br_set_port_flag.exit331
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_flag.exit343

if.end.i336:                                      ; preds = %br_set_port_flag.exit331
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i334 = getelementptr i8, ptr %74, i32 4
  %75 = ptrtoint ptr %add.ptr.i.i.i334 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr.i.i.i334, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool2.not.i335 = icmp eq i8 %76, 0
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags, align 4
  %and.i341 = and i32 %78, -32769
  %masksel379 = select i1 %tobool2.not.i335, i32 0, i32 32768
  %or.i338.sink = or i32 %and.i341, %masksel379
  store i32 %or.i338.sink, ptr %flags, align 4
  br label %br_set_port_flag.exit343

br_set_port_flag.exit343:                         ; preds = %if.end.i336, %br_set_port_flag.exit331.br_set_port_flag.exit343_crit_edge
  %arrayidx.i344 = getelementptr ptr, ptr %tb, i32 33
  %79 = ptrtoint ptr %arrayidx.i344 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i344, align 4
  %tobool.not.i345 = icmp eq ptr %80, null
  br i1 %tobool.not.i345, label %br_set_port_flag.exit343.br_set_port_flag.exit355_crit_edge, label %if.end.i348

br_set_port_flag.exit343.br_set_port_flag.exit355_crit_edge: ; preds = %br_set_port_flag.exit343
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_flag.exit355

if.end.i348:                                      ; preds = %br_set_port_flag.exit343
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i346 = getelementptr i8, ptr %80, i32 4
  %81 = ptrtoint ptr %add.ptr.i.i.i346 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %add.ptr.i.i.i346, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool2.not.i347 = icmp eq i8 %82, 0
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags, align 4
  %and.i353 = and i32 %84, -65537
  %masksel380 = select i1 %tobool2.not.i347, i32 0, i32 65536
  %or.i350.sink = or i32 %and.i353, %masksel380
  store i32 %or.i350.sink, ptr %flags, align 4
  br label %br_set_port_flag.exit355

br_set_port_flag.exit355:                         ; preds = %if.end.i348, %br_set_port_flag.exit343.br_set_port_flag.exit355_crit_edge
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags, align 4
  %xor = xor i32 %86, %1
  %call = tail call i32 @br_switchdev_set_port_flag(ptr noundef %p, i32 noundef %86, i32 noundef %xor, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %br_set_port_flag.exit355
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %1, ptr %flags, align 4
  br label %cleanup105

if.end:                                           ; preds = %br_set_port_flag.exit355
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %88 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags, align 4
  %and8 = and i32 %89, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nbp_vlan_tunnel_info_flush(ptr noundef %p) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  tail call void @br_port_flags_change(ptr noundef %p, i32 noundef %xor) #10
  %arrayidx = getelementptr ptr, ptr %tb, i32 3
  %90 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %91, null
  br i1 %tobool12.not, label %if.end11.if.end20_crit_edge, label %if.then13

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then13:                                        ; preds = %if.end11
  %add.ptr.i.i = getelementptr i8, ptr %91, i32 4
  %92 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i.i, align 4
  %call16 = tail call i32 @br_stp_set_path_cost(ptr noundef %p, i32 noundef %93) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then13.if.end20_crit_edge, label %if.then13.cleanup105_crit_edge

if.then13.cleanup105_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %if.then13.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %arrayidx21 = getelementptr ptr, ptr %tb, i32 2
  %94 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %95, null
  br i1 %tobool22.not, label %if.end20.if.end30_crit_edge, label %if.then23

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then23:                                        ; preds = %if.end20
  %add.ptr.i.i356 = getelementptr i8, ptr %95, i32 4
  %96 = ptrtoint ptr %add.ptr.i.i356 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %add.ptr.i.i356, align 2
  %conv = zext i16 %97 to i32
  %call26 = tail call i32 @br_stp_set_port_priority(ptr noundef %p, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then23.if.end30_crit_edge, label %if.then23.cleanup105_crit_edge

if.then23.cleanup105_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end30:                                         ; preds = %if.then23.if.end30_crit_edge, %if.end20.if.end30_crit_edge
  %arrayidx31 = getelementptr ptr, ptr %tb, i32 1
  %98 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %99, null
  br i1 %tobool32.not, label %if.end30.if.end40_crit_edge, label %if.then33

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then33:                                        ; preds = %if.end30
  %add.ptr.i.i357 = getelementptr i8, ptr %99, i32 4
  %100 = ptrtoint ptr %add.ptr.i.i357 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %add.ptr.i.i357, align 1
  %conv.i = zext i8 %101 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %101)
  %cmp.i = icmp ugt i8 %101, 4
  br i1 %cmp.i, label %if.then33.cleanup105_crit_edge, label %if.end.i358

if.then33.cleanup105_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

if.end.i358:                                      ; preds = %if.then33
  %102 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %p, align 8
  %stp_enabled.i = getelementptr inbounds %struct.net_bridge, ptr %103, i32 0, i32 28
  %104 = ptrtoint ptr %stp_enabled.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %stp_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp2.i = icmp eq i32 %105, 1
  br i1 %cmp2.i, label %if.end.i358.cleanup105_crit_edge, label %if.end5.i

if.end.i358.cleanup105_crit_edge:                 ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

if.end5.i:                                        ; preds = %if.end.i358
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %106 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 6
  %108 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end5.i.cleanup105_crit_edge, label %lor.lhs.false.i

if.end5.i.cleanup105_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

lor.lhs.false.i:                                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp9.not.i = icmp eq i8 %101, 0
  br i1 %cmp9.not.i, label %lor.lhs.false.i.br_set_port_state.exit_crit_edge, label %switch.early.test.i

lor.lhs.false.i.br_set_port_state.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_state.exit

switch.early.test.i:                              ; preds = %lor.lhs.false.i
  %operstate.i.i = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 50
  %110 = ptrtoint ptr %operstate.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %operstate.i.i, align 8
  %112 = zext i8 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %111, label %switch.early.test.i.cleanup105_crit_edge [
    i8 6, label %switch.early.test.i.br_set_port_state.exit_crit_edge
    i8 0, label %switch.early.test.i.br_set_port_state.exit_crit_edge381
  ]

switch.early.test.i.br_set_port_state.exit_crit_edge381: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_state.exit

switch.early.test.i.br_set_port_state.exit_crit_edge: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_set_port_state.exit

switch.early.test.i.cleanup105_crit_edge:         ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

br_set_port_state.exit:                           ; preds = %switch.early.test.i.br_set_port_state.exit_crit_edge, %switch.early.test.i.br_set_port_state.exit_crit_edge381, %lor.lhs.false.i.br_set_port_state.exit_crit_edge
  tail call void @br_set_state(ptr noundef %p, i32 noundef %conv.i) #10
  %113 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %p, align 8
  tail call void @br_port_state_selection(ptr noundef %114) #10
  br label %if.end40

if.end40:                                         ; preds = %br_set_port_state.exit, %if.end30.if.end40_crit_edge
  %arrayidx41 = getelementptr ptr, ptr %tb, i32 24
  %115 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx41, align 4
  %tobool42.not = icmp eq ptr %116, null
  br i1 %tobool42.not, label %if.end40.if.end44_crit_edge, label %if.then43

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %p, align 8
  tail call void @br_fdb_delete_by_port(ptr noundef %118, ptr noundef %p, i16 noundef zeroext 0, i32 noundef 0) #10
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40.if.end44_crit_edge
  %arrayidx45 = getelementptr ptr, ptr %tb, i32 25
  %119 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx45, align 4
  %tobool46.not = icmp eq ptr %120, null
  br i1 %tobool46.not, label %if.end44.if.end55_crit_edge, label %if.then47

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then47:                                        ; preds = %if.end44
  %add.ptr.i.i359 = getelementptr i8, ptr %120, i32 4
  %121 = ptrtoint ptr %add.ptr.i.i359 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %add.ptr.i.i359, align 1
  %multicast_ctx = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 24
  %conv50 = zext i8 %122 to i32
  %call51 = tail call i32 @br_multicast_set_port_router(ptr noundef %multicast_ctx, i32 noundef %conv50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then47.if.end55_crit_edge, label %if.then47.cleanup105_crit_edge

if.then47.cleanup105_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

if.then47.if.end55_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.end55:                                         ; preds = %if.then47.if.end55_crit_edge, %if.end44.if.end55_crit_edge
  %arrayidx56 = getelementptr ptr, ptr %tb, i32 37
  %123 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx56, align 4
  %tobool57.not = icmp eq ptr %124, null
  br i1 %tobool57.not, label %if.end55.if.end68_crit_edge, label %if.then58

if.end55.if.end68_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then58:                                        ; preds = %if.end55
  %add.ptr.i.i360 = getelementptr i8, ptr %124, i32 4
  %125 = ptrtoint ptr %add.ptr.i.i360 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %add.ptr.i.i360, align 4
  %call61 = tail call i32 @br_multicast_eht_set_hosts_limit(ptr noundef %p, i32 noundef %126) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then58.if.end68_crit_edge, label %if.then58.cleanup105_crit_edge

if.then58.cleanup105_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

if.then58.if.end68_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.end68:                                         ; preds = %if.then58.if.end68_crit_edge, %if.end55.if.end68_crit_edge
  %arrayidx69 = getelementptr ptr, ptr %tb, i32 31
  %127 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx69, align 4
  %tobool70.not = icmp eq ptr %128, null
  br i1 %tobool70.not, label %if.end68.if.end82_crit_edge, label %if.then71

if.end68.if.end82_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then71:                                        ; preds = %if.end68
  %add.ptr.i.i361 = getelementptr i8, ptr %128, i32 4
  %129 = ptrtoint ptr %add.ptr.i.i361 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %add.ptr.i.i361, align 2
  %131 = and i16 %130, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool76.not = icmp eq i16 %131, 0
  br i1 %tobool76.not, label %cleanup79.thread, label %if.then71.cleanup105_crit_edge

if.then71.cleanup105_crit_edge:                   ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

cleanup79.thread:                                 ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  %group_fwd_mask = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 34
  %132 = ptrtoint ptr %group_fwd_mask to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %130, ptr %group_fwd_mask, align 2
  br label %if.end82

if.end82:                                         ; preds = %cleanup79.thread, %if.end68.if.end82_crit_edge
  %arrayidx83 = getelementptr ptr, ptr %tb, i32 34
  %133 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx83, align 4
  %tobool84.not = icmp eq ptr %134, null
  br i1 %tobool84.not, label %if.end82.if.end104_crit_edge, label %if.then85

if.end82.if.end104_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then85:                                        ; preds = %if.end82
  %add.ptr.i.i362 = getelementptr i8, ptr %134, i32 4
  %135 = ptrtoint ptr %add.ptr.i.i362 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %add.ptr.i.i362, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool88.not = icmp eq i32 %136, 0
  br i1 %tobool88.not, label %if.then85.cleanup100_crit_edge, label %if.then89

if.then85.cleanup100_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup100

if.then89:                                        ; preds = %if.then85
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %137 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %138, i32 0, i32 127
  %139 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %nd_net.i, align 4
  %call91 = tail call ptr @__dev_get_by_index(ptr noundef %140, i32 noundef %136) #10
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %if.then89.cleanup105_crit_edge, label %if.then89.cleanup100_crit_edge

if.then89.cleanup100_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup100

if.then89.cleanup105_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

cleanup100:                                       ; preds = %if.then89.cleanup100_crit_edge, %if.then85.cleanup100_crit_edge
  %backup_dev.0 = phi ptr [ %call91, %if.then89.cleanup100_crit_edge ], [ null, %if.then85.cleanup100_crit_edge ]
  %call96 = tail call i32 @nbp_backup_change(ptr noundef %p, ptr noundef %backup_dev.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %cleanup100.if.end104_crit_edge, label %cleanup100.cleanup105_crit_edge

cleanup100.cleanup105_crit_edge:                  ; preds = %cleanup100
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

cleanup100.if.end104_crit_edge:                   ; preds = %cleanup100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.end104:                                        ; preds = %cleanup100.if.end104_crit_edge, %if.end82.if.end104_crit_edge
  br label %cleanup105

cleanup105:                                       ; preds = %if.end104, %cleanup100.cleanup105_crit_edge, %if.then89.cleanup105_crit_edge, %if.then71.cleanup105_crit_edge, %if.then58.cleanup105_crit_edge, %if.then47.cleanup105_crit_edge, %switch.early.test.i.cleanup105_crit_edge, %if.end5.i.cleanup105_crit_edge, %if.end.i358.cleanup105_crit_edge, %if.then33.cleanup105_crit_edge, %if.then23.cleanup105_crit_edge, %if.then13.cleanup105_crit_edge, %if.then
  %retval.7 = phi i32 [ %call, %if.then ], [ 0, %if.end104 ], [ %call96, %cleanup100.cleanup105_crit_edge ], [ %call61, %if.then58.cleanup105_crit_edge ], [ %call51, %if.then47.cleanup105_crit_edge ], [ %call16, %if.then13.cleanup105_crit_edge ], [ %call26, %if.then23.cleanup105_crit_edge ], [ -22, %if.then71.cleanup105_crit_edge ], [ -100, %if.end5.i.cleanup105_crit_edge ], [ -100, %switch.early.test.i.cleanup105_crit_edge ], [ -16, %if.end.i358.cleanup105_crit_edge ], [ -22, %if.then33.cleanup105_crit_edge ], [ -2, %if.then89.cleanup105_crit_edge ]
  ret i32 %retval.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_afspec(ptr noundef %br, ptr noundef %p, ptr noundef %af_spec, i32 noundef %cmd, ptr noundef %changed, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %vinfo_last = alloca ptr, align 4
  %tinfo_last = alloca %struct.vtunnel_info, align 8
  %tinfo_curr = alloca %struct.vtunnel_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vinfo_last) #10
  %0 = ptrtoint ptr %vinfo_last to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %vinfo_last, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tinfo_last) #10
  %1 = ptrtoint ptr %tinfo_last to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %tinfo_last, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tinfo_curr) #10
  %2 = ptrtoint ptr %tinfo_curr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %tinfo_curr, align 8
  %3 = ptrtoint ptr %af_spec to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %af_spec, align 2
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %4)
  %cmp.i82 = icmp ugt i16 %4, 7
  br i1 %cmp.i82, label %land.lhs.true.i.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i.lr.ph:                            ; preds = %entry
  %conv.i = zext i16 %4 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %add.ptr.i = getelementptr i8, ptr %af_spec, i32 4
  %tobool4.not = icmp eq ptr %p, null
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %attr.084 = phi ptr [ %add.ptr.i, %land.lhs.true.i.lr.ph ], [ %add.ptr.i79, %for.inc.land.lhs.true.i_crit_edge ]
  %rem.083 = phi i32 [ %sub.i, %land.lhs.true.i.lr.ph ], [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ]
  %5 = ptrtoint ptr %attr.084 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %attr.084, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %cmp1.i = icmp ult i16 %6, 4
  %conv.i72 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.083, i32 %conv.i72)
  %cmp5.i.not = icmp ult i32 %rem.083, %conv.i72
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.cleanup_crit_edge, label %for.body

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %land.lhs.true.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr.084, i32 0, i32 1
  %7 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nla_type.i, align 2
  %9 = and i16 %8, 16383
  %and.i = zext i16 %9 to i32
  %10 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %and.i, label %for.body.for.inc_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb14
    i32 4, label %sw.bb23
    i32 5, label %sw.bb28
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  br i1 %tobool4.not, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call6 = call i32 @br_parse_vlan_tunnel_info(ptr noundef %attr.084, ptr noundef nonnull %tinfo_curr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = call i32 @br_process_vlan_tunnel_info(ptr noundef %br, ptr noundef nonnull %p, i32 noundef %cmd, ptr noundef nonnull %tinfo_curr, ptr noundef nonnull %tinfo_last, ptr noundef %changed) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.for.inc_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb14:                                          ; preds = %for.body
  %13 = ptrtoint ptr %attr.084 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %attr.084, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %14)
  %cmp.not = icmp eq i16 %14, 8
  br i1 %cmp.not, label %if.end17, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %sw.bb14
  %add.ptr.i75 = getelementptr i8, ptr %attr.084, i32 4
  %call19 = call i32 @br_process_vlan_info(ptr noundef %br, ptr noundef %p, i32 noundef %cmd, ptr noundef %add.ptr.i75, ptr noundef nonnull %vinfo_last, ptr noundef %changed, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end17.for.inc_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb23:                                          ; preds = %for.body
  %call24 = call i32 @br_mrp_parse(ptr noundef %br, ptr noundef %p, ptr noundef %attr.084, i32 noundef %cmd, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %sw.bb23.for.inc_crit_edge, label %sw.bb23.cleanup_crit_edge

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb23.for.inc_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb28:                                          ; preds = %for.body
  %call29 = call i32 @br_cfm_parse(ptr noundef %br, ptr noundef %p, ptr noundef %attr.084, i32 noundef %cmd, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %sw.bb28.for.inc_crit_edge, label %sw.bb28.cleanup_crit_edge

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb28.for.inc_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %sw.bb28.for.inc_crit_edge, %sw.bb23.for.inc_crit_edge, %if.end17.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %attr.084 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %attr.084, align 2
  %conv.i76 = zext i16 %16 to i32
  %sub.i77 = add nuw nsw i32 %conv.i76, 3
  %and.i78 = and i32 %sub.i77, 131068
  %sub1.i = sub nsw i32 %rem.083, %and.i78
  %add.ptr.i79 = getelementptr i8, ptr %attr.084, i32 %and.i78
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %sw.bb23.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ %call29, %sw.bb28.cleanup_crit_edge ], [ %call24, %sw.bb23.cleanup_crit_edge ], [ %call19, %if.end17.cleanup_crit_edge ], [ -22, %sw.bb14.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tinfo_curr) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tinfo_last) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo_last) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_dellink(ptr noundef %dev, ptr noundef %nlh, i16 noundef zeroext %flags) local_unnamed_addr #0 align 64 {
entry:
  %changed = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %changed) #10
  %0 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %changed, align 1
  %add.ptr.i.i = getelementptr i8, ptr %nlh, i32 32
  %1 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nlh, align 4
  %sub1.i.i = add i32 %2, -32
  %call2.i = tail call ptr @nla_find(ptr noundef %add.ptr.i.i, i32 noundef %sub1.i.i, i32 noundef 26) #10
  %tobool.not = icmp eq ptr %call2.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %3 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %4, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.land.lhs.true_crit_edge, label %do.body.i

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

do.body.i:                                        ; preds = %if.end
  %call1.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call1.i, label %do.body.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

do.body.i.br_port_get_rtnl.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i21 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i21)
  %tobool.not.i = icmp eq i32 %call2.i21, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.br_port_get_rtnl.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 422, ptr noundef nonnull @.str.13) #10
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %if.then.i, %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, %do.body.i.br_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %5 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %br_port_get_rtnl.exit.land.lhs.true_crit_edge, label %br_port_get_rtnl.exit.if.end6_crit_edge

br_port_get_rtnl.exit.if.end6_crit_edge:          ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

br_port_get_rtnl.exit.land.lhs.true_crit_edge:    ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %br_port_get_rtnl.exit.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %7 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i.i, align 16
  %and.i = and i64 %8, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %br_port_get_rtnl.exit.if.end6_crit_edge
  %cond.i24 = phi ptr [ null, %land.lhs.true.if.end6_crit_edge ], [ %6, %br_port_get_rtnl.exit.if.end6_crit_edge ]
  %call7 = call fastcc i32 @br_afspec(ptr noundef %add.ptr.i, ptr noundef %cond.i24, ptr noundef nonnull %call2.i, i32 noundef 17, ptr noundef nonnull %changed, ptr noundef null)
  %9 = ptrtoint ptr %changed to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %changed, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call void @br_info_notify(i32 noundef 16, ptr noundef %add.ptr.i, ptr noundef %cond.i24, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %call7, %if.then9 ], [ %call7, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %changed) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_dev_setup(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @br_validate(ptr nocapture noundef readonly %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.not = icmp eq i16 %3, 10
  br i1 %cmp.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.return_crit_edge, label %is_valid_ether_addr.exit.if.end8_crit_edge

is_valid_ether_addr.exit.if.end8_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

is_valid_ether_addr.exit.return_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end8:                                          ; preds = %is_valid_ether_addr.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %tobool9.not = icmp eq ptr %data, null
  br i1 %tobool9.not, label %if.end8.return_crit_edge, label %if.end11

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end11:                                         ; preds = %if.end8
  %arrayidx12 = getelementptr ptr, ptr %data, i32 8
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %if.end11.if.end18_crit_edge, label %land.lhs.true

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end11
  %add.ptr.i.i37 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i37 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i37, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %12, label %land.lhs.true.return_crit_edge [
    i16 -30552, label %land.lhs.true.if.end18_crit_edge
    i16 -32512, label %land.lhs.true.if.end18_crit_edge39
  ]

land.lhs.true.if.end18_crit_edge39:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge39, %if.end11.if.end18_crit_edge
  %arrayidx19 = getelementptr ptr, ptr %data, i32 39
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %if.end18.if.end28_crit_edge, label %if.then21

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then21:                                        ; preds = %if.end18
  %add.ptr.i.i38 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i38 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i38, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %17)
  %cmp24 = icmp ult i16 %17, 4095
  br i1 %cmp24, label %if.then21.if.end28_crit_edge, label %if.then21.return_crit_edge

if.then21.return_crit_edge:                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end28:                                         ; preds = %if.then21.if.end28_crit_edge, %if.end18.if.end28_crit_edge
  br label %return

return:                                           ; preds = %if.end28, %if.then21.return_crit_edge, %land.lhs.true.return_crit_edge, %if.end8.return_crit_edge, %is_valid_ether_addr.exit.return_crit_edge, %if.end.return_crit_edge, %if.then.return_crit_edge
  %retval.1 = phi i32 [ -22, %if.then21.return_crit_edge ], [ 0, %if.end28 ], [ -22, %if.then.return_crit_edge ], [ -99, %is_valid_ether_addr.exit.return_crit_edge ], [ 0, %if.end8.return_crit_edge ], [ -93, %land.lhs.true.return_crit_edge ], [ -99, %if.end.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_dev_newlink(ptr nocapture noundef readnone %src_net, ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr noundef %data, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @register_netdevice(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #10
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i23 = getelementptr i8, ptr %3, i32 4
  tail call void @br_stp_change_bridge_id(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i23) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @br_changelink(ptr noundef %dev, ptr noundef %tb, ptr noundef %data, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @br_dev_delete(ptr noundef %dev, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call8, %if.then10 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_changelink(ptr noundef %brdev, ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr noundef %extack) #0 align 64 {
entry:
  %tmp.i627 = alloca i64, align 8
  %tmp.i625 = alloca i64, align 8
  %tmp.i623 = alloca i64, align 8
  %tmp.i621 = alloca i64, align 8
  %tmp.i619 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %brdev, i32 2304
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup397_crit_edge, label %if.end

entry.cleanup397_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %call5 = tail call i32 @br_set_forward_delay(ptr noundef %add.ptr.i, i32 noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then2.if.end9_crit_edge, label %if.then2.cleanup397_crit_edge

if.then2.cleanup397_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %if.then2.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %arrayidx10 = getelementptr ptr, ptr %data, i32 2
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %if.end9.if.end19_crit_edge, label %if.then12

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then12:                                        ; preds = %if.end9
  %add.ptr.i.i600 = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i600 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i600, align 4
  %call15 = tail call i32 @br_set_hello_time(ptr noundef %add.ptr.i, i32 noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then12.if.end19_crit_edge, label %if.then12.cleanup397_crit_edge

if.then12.cleanup397_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end19:                                         ; preds = %if.then12.if.end19_crit_edge, %if.end9.if.end19_crit_edge
  %arrayidx20 = getelementptr ptr, ptr %data, i32 3
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %9, null
  br i1 %tobool21.not, label %if.end19.if.end29_crit_edge, label %if.then22

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then22:                                        ; preds = %if.end19
  %add.ptr.i.i601 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i601 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i601, align 4
  %call25 = tail call i32 @br_set_max_age(ptr noundef %add.ptr.i, i32 noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then22.if.end29_crit_edge, label %if.then22.cleanup397_crit_edge

if.then22.cleanup397_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.end29:                                         ; preds = %if.then22.if.end29_crit_edge, %if.end19.if.end29_crit_edge
  %arrayidx30 = getelementptr ptr, ptr %data, i32 4
  %12 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %13, null
  br i1 %tobool31.not, label %if.end29.if.end39_crit_edge, label %if.then32

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then32:                                        ; preds = %if.end29
  %add.ptr.i.i602 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i602 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i602, align 4
  %call35 = tail call i32 @br_set_ageing_time(ptr noundef %add.ptr.i, i32 noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then32.if.end39_crit_edge, label %if.then32.cleanup397_crit_edge

if.then32.cleanup397_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.then32.if.end39_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end39:                                         ; preds = %if.then32.if.end39_crit_edge, %if.end29.if.end39_crit_edge
  %arrayidx40 = getelementptr ptr, ptr %data, i32 5
  %16 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx40, align 4
  %tobool41.not = icmp eq ptr %17, null
  br i1 %tobool41.not, label %if.end39.if.end49_crit_edge, label %if.then42

if.end39.if.end49_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then42:                                        ; preds = %if.end39
  %add.ptr.i.i603 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i603 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i603, align 4
  %call45 = tail call i32 @br_stp_set_enabled(ptr noundef %add.ptr.i, i32 noundef %19, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then42.if.end49_crit_edge, label %if.then42.cleanup397_crit_edge

if.then42.cleanup397_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.then42.if.end49_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.end49:                                         ; preds = %if.then42.if.end49_crit_edge, %if.end39.if.end49_crit_edge
  %arrayidx50 = getelementptr ptr, ptr %data, i32 6
  %20 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx50, align 4
  %tobool51.not = icmp eq ptr %21, null
  br i1 %tobool51.not, label %if.end49.if.end56_crit_edge, label %if.then52

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i604 = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i604 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i604, align 2
  tail call void @br_stp_set_bridge_priority(ptr noundef %add.ptr.i, i16 noundef zeroext %23) #10
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end49.if.end56_crit_edge
  %arrayidx57 = getelementptr ptr, ptr %data, i32 7
  %24 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx57, align 4
  %tobool58.not = icmp eq ptr %25, null
  br i1 %tobool58.not, label %if.end56.if.end70_crit_edge, label %if.then59

if.end56.if.end70_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then59:                                        ; preds = %if.end56
  %add.ptr.i.i605 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i605 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i.i605, align 1
  %conv62 = zext i8 %27 to i32
  %call63 = tail call i32 @br_vlan_filter_toggle(ptr noundef %add.ptr.i, i32 noundef %conv62, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then59.if.end70_crit_edge, label %if.then59.cleanup397_crit_edge

if.then59.cleanup397_crit_edge:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.then59.if.end70_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.end70:                                         ; preds = %if.then59.if.end70_crit_edge, %if.end56.if.end70_crit_edge
  %arrayidx71 = getelementptr ptr, ptr %data, i32 8
  %28 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx71, align 4
  %tobool72.not = icmp eq ptr %29, null
  br i1 %tobool72.not, label %if.end70.if.end83_crit_edge, label %if.then73

if.end70.if.end83_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then73:                                        ; preds = %if.end70
  %add.ptr.i.i606 = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i606 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i606, align 2
  %call76 = tail call i32 @__br_vlan_set_proto(ptr noundef %add.ptr.i, i16 noundef zeroext %31, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then73.if.end83_crit_edge, label %if.then73.cleanup397_crit_edge

if.then73.cleanup397_crit_edge:                   ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.then73.if.end83_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.end83:                                         ; preds = %if.then73.if.end83_crit_edge, %if.end70.if.end83_crit_edge
  %arrayidx84 = getelementptr ptr, ptr %data, i32 39
  %32 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx84, align 4
  %tobool85.not = icmp eq ptr %33, null
  br i1 %tobool85.not, label %if.end83.if.end96_crit_edge, label %if.then86

if.end83.if.end96_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then86:                                        ; preds = %if.end83
  %add.ptr.i.i607 = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i607 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i.i607, align 2
  %call89 = tail call i32 @__br_vlan_set_default_pvid(ptr noundef %add.ptr.i, i16 noundef zeroext %35, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then86.if.end96_crit_edge, label %if.then86.cleanup397_crit_edge

if.then86.cleanup397_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.then86.if.end96_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.end96:                                         ; preds = %if.then86.if.end96_crit_edge, %if.end83.if.end96_crit_edge
  %arrayidx97 = getelementptr ptr, ptr %data, i32 41
  %36 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx97, align 4
  %tobool98.not = icmp eq ptr %37, null
  br i1 %tobool98.not, label %if.end96.if.end110_crit_edge, label %if.then99

if.end96.if.end110_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then99:                                        ; preds = %if.end96
  %add.ptr.i.i608 = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i608 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr.i.i608, align 1
  %conv102 = zext i8 %39 to i32
  %call103 = tail call i32 @br_vlan_set_stats(ptr noundef %add.ptr.i, i32 noundef %conv102) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then99.if.end110_crit_edge, label %if.then99.cleanup397_crit_edge

if.then99.cleanup397_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.then99.if.end110_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.end110:                                        ; preds = %if.then99.if.end110_crit_edge, %if.end96.if.end110_crit_edge
  %arrayidx111 = getelementptr ptr, ptr %data, i32 45
  %40 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx111, align 4
  %tobool112.not = icmp eq ptr %41, null
  br i1 %tobool112.not, label %if.end110.if.end124_crit_edge, label %if.then113

if.end110.if.end124_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then113:                                       ; preds = %if.end110
  %add.ptr.i.i609 = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i609 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.i.i609, align 1
  %conv116 = zext i8 %43 to i32
  %call117 = tail call i32 @br_vlan_set_stats_per_port(ptr noundef %add.ptr.i, i32 noundef %conv116) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then113.if.end124_crit_edge, label %if.then113.cleanup397_crit_edge

if.then113.cleanup397_crit_edge:                  ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.then113.if.end124_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.end124:                                        ; preds = %if.then113.if.end124_crit_edge, %if.end110.if.end124_crit_edge
  %arrayidx125 = getelementptr ptr, ptr %data, i32 9
  %44 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx125, align 4
  %tobool126.not = icmp eq ptr %45, null
  br i1 %tobool126.not, label %if.end124.if.end137_crit_edge, label %if.then127

if.end124.if.end137_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

if.then127:                                       ; preds = %if.end124
  %add.ptr.i.i610 = getelementptr i8, ptr %45, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i610 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i.i610, align 2
  %48 = and i16 %47, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool131.not = icmp eq i16 %48, 0
  br i1 %tobool131.not, label %cleanup134.thread, label %if.then127.cleanup397_crit_edge

if.then127.cleanup397_crit_edge:                  ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

cleanup134.thread:                                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  %group_fwd_mask = getelementptr i8, ptr %brdev, i32 2808
  %49 = ptrtoint ptr %group_fwd_mask to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %47, ptr %group_fwd_mask, align 4
  br label %if.end137

if.end137:                                        ; preds = %cleanup134.thread, %if.end124.if.end137_crit_edge
  %arrayidx138 = getelementptr ptr, ptr %data, i32 20
  %50 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx138, align 4
  %tobool139.not = icmp eq ptr %51, null
  br i1 %tobool139.not, label %if.end137.if.end173_crit_edge, label %if.then140

if.end137.if.end173_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end173

if.then140:                                       ; preds = %if.end137
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %51, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %53)
  %cmp.not = icmp eq i16 %53, 10
  br i1 %cmp.not, label %if.end145, label %if.then140.cleanup397_crit_edge

if.then140.cleanup397_crit_edge:                  ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.end145:                                        ; preds = %if.then140
  %add.ptr.i611 = getelementptr i8, ptr %51, i32 4
  %54 = ptrtoint ptr %add.ptr.i611 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %new_addr.sroa.0.0.copyload = load i32, ptr %add.ptr.i611, align 1
  %new_addr.sroa.9.0.add.ptr.i611.sroa_idx = getelementptr i8, ptr %51, i32 8
  %55 = ptrtoint ptr %new_addr.sroa.9.0.add.ptr.i611.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %new_addr.sroa.9.0.copyload = load i16, ptr %new_addr.sroa.9.0.add.ptr.i611.sroa_idx, align 1
  %xor.i = xor i32 %new_addr.sroa.0.0.copyload, 25215488
  %56 = and i16 %new_addr.sroa.9.0.copyload, -16
  %and.i = zext i16 %56 to i32
  %or.i = or i32 %xor.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp ne i32 %or.i, 0
  %new_addr.sroa.9.5.extract.trunc = trunc i16 %new_addr.sroa.9.0.copyload to i8
  %.off = add i8 %new_addr.sroa.9.5.extract.trunc, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  %or.cond = select i1 %cmp.i, i1 true, i1 %switch
  br i1 %or.cond, label %if.end145.cleanup397_crit_edge, label %cleanup170

if.end145.cleanup397_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

cleanup170:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #10
  %group_addr = getelementptr i8, ptr %brdev, i32 2868
  %57 = ptrtoint ptr %group_addr to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %new_addr.sroa.0.0.copyload, ptr %group_addr, align 4
  %new_addr.sroa.9.0.group_addr.sroa_idx = getelementptr i8, ptr %brdev, i32 2872
  %58 = ptrtoint ptr %new_addr.sroa.9.0.group_addr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %new_addr.sroa.9.0.copyload, ptr %new_addr.sroa.9.0.group_addr.sroa_idx, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #10
  tail call void @br_opt_toggle(ptr noundef %add.ptr.i, i32 noundef 5, i1 noundef zeroext true) #10
  tail call void @br_recalculate_fwd_mask(ptr noundef %add.ptr.i) #10
  br label %if.end173

if.end173:                                        ; preds = %cleanup170, %if.end137.if.end173_crit_edge
  %arrayidx174 = getelementptr ptr, ptr %data, i32 21
  %59 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx174, align 4
  %tobool175.not = icmp eq ptr %60, null
  br i1 %tobool175.not, label %if.end173.if.end177_crit_edge, label %if.then176

if.end173.if.end177_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177

if.then176:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @br_fdb_flush(ptr noundef %add.ptr.i) #10
  br label %if.end177

if.end177:                                        ; preds = %if.then176, %if.end173.if.end177_crit_edge
  %arrayidx178 = getelementptr ptr, ptr %data, i32 22
  %61 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx178, align 4
  %tobool179.not = icmp eq ptr %62, null
  br i1 %tobool179.not, label %if.end177.if.end191_crit_edge, label %if.then180

if.end177.if.end191_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

if.then180:                                       ; preds = %if.end177
  %add.ptr.i.i612 = getelementptr i8, ptr %62, i32 4
  %63 = ptrtoint ptr %add.ptr.i.i612 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr.i.i612, align 1
  %multicast_ctx = getelementptr i8, ptr %brdev, i32 2880
  %conv183 = zext i8 %64 to i32
  %call184 = tail call i32 @br_multicast_set_router(ptr noundef %multicast_ctx, i32 noundef %conv183) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.then180.if.end191_crit_edge, label %if.then180.cleanup397_crit_edge

if.then180.cleanup397_crit_edge:                  ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.then180.if.end191_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

if.end191:                                        ; preds = %if.then180.if.end191_crit_edge, %if.end177.if.end191_crit_edge
  %arrayidx192 = getelementptr ptr, ptr %data, i32 23
  %65 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx192, align 4
  %tobool193.not = icmp eq ptr %66, null
  br i1 %tobool193.not, label %if.end191.if.end205_crit_edge, label %if.then194

if.end191.if.end205_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end205

if.then194:                                       ; preds = %if.end191
  %add.ptr.i.i613 = getelementptr i8, ptr %66, i32 4
  %67 = ptrtoint ptr %add.ptr.i.i613 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %add.ptr.i.i613, align 1
  %conv197 = zext i8 %68 to i32
  %call198 = tail call i32 @br_multicast_toggle(ptr noundef %add.ptr.i, i32 noundef %conv197, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %if.then194.if.end205_crit_edge, label %if.then194.cleanup397_crit_edge

if.then194.cleanup397_crit_edge:                  ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.then194.if.end205_crit_edge:                   ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end205

if.end205:                                        ; preds = %if.then194.if.end205_crit_edge, %if.end191.if.end205_crit_edge
  %arrayidx206 = getelementptr ptr, ptr %data, i32 24
  %69 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx206, align 4
  %tobool207.not = icmp eq ptr %70, null
  br i1 %tobool207.not, label %if.end205.if.end213_crit_edge, label %if.then208

if.end205.if.end213_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end213

if.then208:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i614 = getelementptr i8, ptr %70, i32 4
  %71 = ptrtoint ptr %add.ptr.i.i614 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %add.ptr.i.i614, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool211 = icmp ne i8 %72, 0
  tail call void @br_opt_toggle(ptr noundef %add.ptr.i, i32 noundef 7, i1 noundef zeroext %tobool211) #10
  br label %if.end213

if.end213:                                        ; preds = %if.then208, %if.end205.if.end213_crit_edge
  %arrayidx214 = getelementptr ptr, ptr %data, i32 25
  %73 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx214, align 4
  %tobool215.not = icmp eq ptr %74, null
  br i1 %tobool215.not, label %if.end213.if.end228_crit_edge, label %if.then216

if.end213.if.end228_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

if.then216:                                       ; preds = %if.end213
  %add.ptr.i.i615 = getelementptr i8, ptr %74, i32 4
  %75 = ptrtoint ptr %add.ptr.i.i615 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr.i.i615, align 1
  %multicast_ctx219 = getelementptr i8, ptr %brdev, i32 2880
  %conv220 = zext i8 %76 to i32
  %call221 = tail call i32 @br_multicast_set_querier(ptr noundef %multicast_ctx219, i32 noundef %conv220) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %if.then216.if.end228_crit_edge, label %if.then216.cleanup397_crit_edge

if.then216.cleanup397_crit_edge:                  ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.then216.if.end228_crit_edge:                   ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

if.end228:                                        ; preds = %if.then216.if.end228_crit_edge, %if.end213.if.end228_crit_edge
  %arrayidx229 = getelementptr ptr, ptr %data, i32 26
  %77 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx229, align 4
  %tobool230.not = icmp eq ptr %78, null
  br i1 %tobool230.not, label %if.end228.if.end234_crit_edge, label %do.end

if.end228.if.end234_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end234

do.end:                                           ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %brdev, i32 2396
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  %call233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %80, i32 noundef 16) #14
  br label %if.end234

if.end234:                                        ; preds = %do.end, %if.end228.if.end234_crit_edge
  %arrayidx235 = getelementptr ptr, ptr %data, i32 27
  %81 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx235, align 4
  %tobool236.not = icmp eq ptr %82, null
  br i1 %tobool236.not, label %if.end234.if.end240_crit_edge, label %if.then237

if.end234.if.end240_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end240

if.then237:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i616 = getelementptr i8, ptr %82, i32 4
  %83 = ptrtoint ptr %add.ptr.i.i616 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i.i616, align 4
  %hash_max = getelementptr i8, ptr %brdev, i32 3392
  %85 = ptrtoint ptr %hash_max to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %hash_max, align 4
  br label %if.end240

if.end240:                                        ; preds = %if.then237, %if.end234.if.end240_crit_edge
  %arrayidx241 = getelementptr ptr, ptr %data, i32 28
  %86 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx241, align 4
  %tobool242.not = icmp eq ptr %87, null
  br i1 %tobool242.not, label %if.end240.if.end248_crit_edge, label %if.then243

if.end240.if.end248_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end248

if.then243:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i617 = getelementptr i8, ptr %87, i32 4
  %88 = ptrtoint ptr %add.ptr.i.i617 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr.i.i617, align 4
  %multicast_last_member_count = getelementptr i8, ptr %brdev, i32 2888
  %90 = ptrtoint ptr %multicast_last_member_count to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %multicast_last_member_count, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.then243, %if.end240.if.end248_crit_edge
  %arrayidx249 = getelementptr ptr, ptr %data, i32 29
  %91 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx249, align 4
  %tobool250.not = icmp eq ptr %92, null
  br i1 %tobool250.not, label %if.end248.if.end256_crit_edge, label %if.then251

if.end248.if.end256_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end256

if.then251:                                       ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i618 = getelementptr i8, ptr %92, i32 4
  %93 = ptrtoint ptr %add.ptr.i.i618 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr.i.i618, align 4
  %multicast_startup_query_count = getelementptr i8, ptr %brdev, i32 2892
  %95 = ptrtoint ptr %multicast_startup_query_count to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %multicast_startup_query_count, align 4
  br label %if.end256

if.end256:                                        ; preds = %if.then251, %if.end248.if.end256_crit_edge
  %arrayidx257 = getelementptr ptr, ptr %data, i32 30
  %96 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx257, align 4
  %tobool258.not = icmp eq ptr %97, null
  br i1 %tobool258.not, label %if.end256.if.end266_crit_edge, label %if.then259

if.end256.if.end266_crit_edge:                    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end266

if.then259:                                       ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #10
  %98 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 -1, ptr %tmp.i, align 8, !annotation !91
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %97, i32 noundef 8) #10
  %99 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #10
  %conv263 = trunc i64 %100 to i32
  %call264 = call i32 @clock_t_to_jiffies(i32 noundef %conv263) #10
  %multicast_last_member_interval = getelementptr i8, ptr %brdev, i32 2900
  %101 = ptrtoint ptr %multicast_last_member_interval to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call264, ptr %multicast_last_member_interval, align 4
  br label %if.end266

if.end266:                                        ; preds = %if.then259, %if.end256.if.end266_crit_edge
  %arrayidx267 = getelementptr ptr, ptr %data, i32 31
  %102 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx267, align 4
  %tobool268.not = icmp eq ptr %103, null
  br i1 %tobool268.not, label %if.end266.if.end276_crit_edge, label %if.then269

if.end266.if.end276_crit_edge:                    ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end276

if.then269:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i619) #10
  %104 = ptrtoint ptr %tmp.i619 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 -1, ptr %tmp.i619, align 8, !annotation !91
  %call.i620 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i619, ptr noundef nonnull %103, i32 noundef 8) #10
  %105 = ptrtoint ptr %tmp.i619 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %tmp.i619, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i619) #10
  %conv273 = trunc i64 %106 to i32
  %call274 = call i32 @clock_t_to_jiffies(i32 noundef %conv273) #10
  %multicast_membership_interval = getelementptr i8, ptr %brdev, i32 2904
  %107 = ptrtoint ptr %multicast_membership_interval to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %call274, ptr %multicast_membership_interval, align 4
  br label %if.end276

if.end276:                                        ; preds = %if.then269, %if.end266.if.end276_crit_edge
  %arrayidx277 = getelementptr ptr, ptr %data, i32 32
  %108 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx277, align 4
  %tobool278.not = icmp eq ptr %109, null
  br i1 %tobool278.not, label %if.end276.if.end286_crit_edge, label %if.then279

if.end276.if.end286_crit_edge:                    ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end286

if.then279:                                       ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i621) #10
  %110 = ptrtoint ptr %tmp.i621 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 -1, ptr %tmp.i621, align 8, !annotation !91
  %call.i622 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i621, ptr noundef nonnull %109, i32 noundef 8) #10
  %111 = ptrtoint ptr %tmp.i621 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %tmp.i621, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i621) #10
  %conv283 = trunc i64 %112 to i32
  %call284 = call i32 @clock_t_to_jiffies(i32 noundef %conv283) #10
  %multicast_querier_interval = getelementptr i8, ptr %brdev, i32 2908
  %113 = ptrtoint ptr %multicast_querier_interval to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call284, ptr %multicast_querier_interval, align 4
  br label %if.end286

if.end286:                                        ; preds = %if.then279, %if.end276.if.end286_crit_edge
  %arrayidx287 = getelementptr ptr, ptr %data, i32 33
  %114 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx287, align 4
  %tobool288.not = icmp eq ptr %115, null
  br i1 %tobool288.not, label %if.end286.if.end295_crit_edge, label %if.then289

if.end286.if.end295_crit_edge:                    ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end295

if.then289:                                       ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i623) #10
  %116 = ptrtoint ptr %tmp.i623 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 -1, ptr %tmp.i623, align 8, !annotation !91
  %call.i624 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i623, ptr noundef nonnull %115, i32 noundef 8) #10
  %117 = ptrtoint ptr %tmp.i623 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %tmp.i623, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i623) #10
  %multicast_ctx293 = getelementptr i8, ptr %brdev, i32 2880
  %conv294 = trunc i64 %118 to i32
  call void @br_multicast_set_query_intvl(ptr noundef %multicast_ctx293, i32 noundef %conv294) #10
  br label %if.end295

if.end295:                                        ; preds = %if.then289, %if.end286.if.end295_crit_edge
  %arrayidx296 = getelementptr ptr, ptr %data, i32 34
  %119 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx296, align 4
  %tobool297.not = icmp eq ptr %120, null
  br i1 %tobool297.not, label %if.end295.if.end305_crit_edge, label %if.then298

if.end295.if.end305_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end305

if.then298:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i625) #10
  %121 = ptrtoint ptr %tmp.i625 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 -1, ptr %tmp.i625, align 8, !annotation !91
  %call.i626 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i625, ptr noundef nonnull %120, i32 noundef 8) #10
  %122 = ptrtoint ptr %tmp.i625 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %tmp.i625, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i625) #10
  %conv302 = trunc i64 %123 to i32
  %call303 = call i32 @clock_t_to_jiffies(i32 noundef %conv302) #10
  %multicast_query_response_interval = getelementptr i8, ptr %brdev, i32 2916
  %124 = ptrtoint ptr %multicast_query_response_interval to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %call303, ptr %multicast_query_response_interval, align 4
  br label %if.end305

if.end305:                                        ; preds = %if.then298, %if.end295.if.end305_crit_edge
  %arrayidx306 = getelementptr ptr, ptr %data, i32 35
  %125 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx306, align 4
  %tobool307.not = icmp eq ptr %126, null
  br i1 %tobool307.not, label %if.end305.if.end314_crit_edge, label %if.then308

if.end305.if.end314_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end314

if.then308:                                       ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i627) #10
  %127 = ptrtoint ptr %tmp.i627 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 -1, ptr %tmp.i627, align 8, !annotation !91
  %call.i628 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i627, ptr noundef nonnull %126, i32 noundef 8) #10
  %128 = ptrtoint ptr %tmp.i627 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %tmp.i627, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i627) #10
  %multicast_ctx312 = getelementptr i8, ptr %brdev, i32 2880
  %conv313 = trunc i64 %129 to i32
  call void @br_multicast_set_startup_query_intvl(ptr noundef %multicast_ctx312, i32 noundef %conv313) #10
  br label %if.end314

if.end314:                                        ; preds = %if.then308, %if.end305.if.end314_crit_edge
  %arrayidx315 = getelementptr ptr, ptr %data, i32 42
  %130 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx315, align 4
  %tobool316.not = icmp eq ptr %131, null
  br i1 %tobool316.not, label %if.end314.if.end323_crit_edge, label %if.then317

if.end314.if.end323_crit_edge:                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end323

if.then317:                                       ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i629 = getelementptr i8, ptr %131, i32 4
  %132 = ptrtoint ptr %add.ptr.i.i629 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %add.ptr.i.i629, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool320 = icmp ne i8 %133, 0
  call void @br_opt_toggle(ptr noundef %add.ptr.i, i32 noundef 8, i1 noundef zeroext %tobool320) #10
  br label %if.end323

if.end323:                                        ; preds = %if.then317, %if.end314.if.end323_crit_edge
  %arrayidx324 = getelementptr ptr, ptr %data, i32 43
  %134 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx324, align 4
  %tobool325.not = icmp eq ptr %135, null
  br i1 %tobool325.not, label %if.end323.if.end338_crit_edge, label %if.then326

if.end323.if.end338_crit_edge:                    ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end338

if.then326:                                       ; preds = %if.end323
  %add.ptr.i.i630 = getelementptr i8, ptr %135, i32 4
  %136 = ptrtoint ptr %add.ptr.i.i630 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %add.ptr.i.i630, align 1
  %multicast_ctx329 = getelementptr i8, ptr %brdev, i32 2880
  %conv330 = zext i8 %137 to i32
  %call331 = call i32 @br_multicast_set_igmp_version(ptr noundef %multicast_ctx329, i32 noundef %conv330) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call331)
  %tobool332.not = icmp eq i32 %call331, 0
  br i1 %tobool332.not, label %if.then326.if.end338_crit_edge, label %if.then326.cleanup397_crit_edge

if.then326.cleanup397_crit_edge:                  ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.then326.if.end338_crit_edge:                   ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end338

if.end338:                                        ; preds = %if.then326.if.end338_crit_edge, %if.end323.if.end338_crit_edge
  %arrayidx339 = getelementptr ptr, ptr %data, i32 44
  %138 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx339, align 4
  %tobool340.not = icmp eq ptr %139, null
  br i1 %tobool340.not, label %if.end338.if.end353_crit_edge, label %if.then341

if.end338.if.end353_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end353

if.then341:                                       ; preds = %if.end338
  %add.ptr.i.i631 = getelementptr i8, ptr %139, i32 4
  %140 = ptrtoint ptr %add.ptr.i.i631 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %add.ptr.i.i631, align 1
  %multicast_ctx344 = getelementptr i8, ptr %brdev, i32 2880
  %conv345 = zext i8 %141 to i32
  %call346 = call i32 @br_multicast_set_mld_version(ptr noundef %multicast_ctx344, i32 noundef %conv345) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call346)
  %tobool347.not = icmp eq i32 %call346, 0
  br i1 %tobool347.not, label %if.then341.if.end353_crit_edge, label %if.then341.cleanup397_crit_edge

if.then341.cleanup397_crit_edge:                  ; preds = %if.then341
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.then341.if.end353_crit_edge:                   ; preds = %if.then341
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end353

if.end353:                                        ; preds = %if.then341.if.end353_crit_edge, %if.end338.if.end353_crit_edge
  %arrayidx354 = getelementptr ptr, ptr %data, i32 36
  %142 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx354, align 4
  %tobool355.not = icmp eq ptr %143, null
  br i1 %tobool355.not, label %if.end353.if.end363_crit_edge, label %if.then356

if.end353.if.end363_crit_edge:                    ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end363

if.then356:                                       ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i632 = getelementptr i8, ptr %143, i32 4
  %144 = ptrtoint ptr %add.ptr.i.i632 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %add.ptr.i.i632, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool360 = icmp ne i8 %145, 0
  call void @br_opt_toggle(ptr noundef %add.ptr.i, i32 noundef 2, i1 noundef zeroext %tobool360) #10
  br label %if.end363

if.end363:                                        ; preds = %if.then356, %if.end353.if.end363_crit_edge
  %arrayidx364 = getelementptr ptr, ptr %data, i32 37
  %146 = ptrtoint ptr %arrayidx364 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx364, align 4
  %tobool365.not = icmp eq ptr %147, null
  br i1 %tobool365.not, label %if.end363.if.end373_crit_edge, label %if.then366

if.end363.if.end373_crit_edge:                    ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end373

if.then366:                                       ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i633 = getelementptr i8, ptr %147, i32 4
  %148 = ptrtoint ptr %add.ptr.i.i633 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %add.ptr.i.i633, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool370 = icmp ne i8 %149, 0
  call void @br_opt_toggle(ptr noundef %add.ptr.i, i32 noundef 3, i1 noundef zeroext %tobool370) #10
  br label %if.end373

if.end373:                                        ; preds = %if.then366, %if.end363.if.end373_crit_edge
  %arrayidx374 = getelementptr ptr, ptr %data, i32 38
  %150 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx374, align 4
  %tobool375.not = icmp eq ptr %151, null
  br i1 %tobool375.not, label %if.end373.if.end383_crit_edge, label %if.then376

if.end373.if.end383_crit_edge:                    ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end383

if.then376:                                       ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i634 = getelementptr i8, ptr %151, i32 4
  %152 = ptrtoint ptr %add.ptr.i.i634 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %add.ptr.i.i634, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool380 = icmp ne i8 %153, 0
  call void @br_opt_toggle(ptr noundef %add.ptr.i, i32 noundef 4, i1 noundef zeroext %tobool380) #10
  br label %if.end383

if.end383:                                        ; preds = %if.then376, %if.end373.if.end383_crit_edge
  %arrayidx384 = getelementptr ptr, ptr %data, i32 46
  %154 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx384, align 4
  %tobool385.not = icmp eq ptr %155, null
  br i1 %tobool385.not, label %if.end383.if.end396_crit_edge, label %if.then386

if.end383.if.end396_crit_edge:                    ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end396

if.then386:                                       ; preds = %if.end383
  %add.ptr.i635 = getelementptr i8, ptr %155, i32 4
  %call389 = call i32 @br_boolopt_multi_toggle(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i635, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call389)
  %tobool390.not = icmp eq i32 %call389, 0
  br i1 %tobool390.not, label %if.then386.if.end396_crit_edge, label %if.then386.cleanup397_crit_edge

if.then386.cleanup397_crit_edge:                  ; preds = %if.then386
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

if.then386.if.end396_crit_edge:                   ; preds = %if.then386
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end396

if.end396:                                        ; preds = %if.then386.if.end396_crit_edge, %if.end383.if.end396_crit_edge
  br label %cleanup397

cleanup397:                                       ; preds = %if.end396, %if.then386.cleanup397_crit_edge, %if.then341.cleanup397_crit_edge, %if.then326.cleanup397_crit_edge, %if.then216.cleanup397_crit_edge, %if.then194.cleanup397_crit_edge, %if.then180.cleanup397_crit_edge, %if.end145.cleanup397_crit_edge, %if.then140.cleanup397_crit_edge, %if.then127.cleanup397_crit_edge, %if.then113.cleanup397_crit_edge, %if.then99.cleanup397_crit_edge, %if.then86.cleanup397_crit_edge, %if.then73.cleanup397_crit_edge, %if.then59.cleanup397_crit_edge, %if.then42.cleanup397_crit_edge, %if.then32.cleanup397_crit_edge, %if.then22.cleanup397_crit_edge, %if.then12.cleanup397_crit_edge, %if.then2.cleanup397_crit_edge, %entry.cleanup397_crit_edge
  %retval.27 = phi i32 [ 0, %if.end396 ], [ %call389, %if.then386.cleanup397_crit_edge ], [ %call346, %if.then341.cleanup397_crit_edge ], [ %call331, %if.then326.cleanup397_crit_edge ], [ %call221, %if.then216.cleanup397_crit_edge ], [ %call198, %if.then194.cleanup397_crit_edge ], [ %call184, %if.then180.cleanup397_crit_edge ], [ %call117, %if.then113.cleanup397_crit_edge ], [ %call103, %if.then99.cleanup397_crit_edge ], [ %call89, %if.then86.cleanup397_crit_edge ], [ %call76, %if.then73.cleanup397_crit_edge ], [ %call63, %if.then59.cleanup397_crit_edge ], [ %call45, %if.then42.cleanup397_crit_edge ], [ 0, %entry.cleanup397_crit_edge ], [ %call5, %if.then2.cleanup397_crit_edge ], [ %call15, %if.then12.cleanup397_crit_edge ], [ %call25, %if.then22.cleanup397_crit_edge ], [ %call35, %if.then32.cleanup397_crit_edge ], [ -22, %if.then127.cleanup397_crit_edge ], [ -22, %if.then140.cleanup397_crit_edge ], [ -22, %if.end145.cleanup397_crit_edge ]
  ret i32 %retval.27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_dev_delete(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_get_size(ptr nocapture noundef readnone %brdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call78 = tail call i32 @br_multicast_querier_state_size() #10
  %add87 = add i32 %call78, 408
  ret i32 %add87
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_fill_info(ptr noundef %skb, ptr noundef %brdev) #0 align 64 {
entry:
  %tmp.i419 = alloca i8, align 1
  %tmp.i414 = alloca i8, align 1
  %tmp.i409 = alloca i8, align 1
  %tmp.i404 = alloca i64, align 8
  %tmp.i402 = alloca i64, align 8
  %tmp.i400 = alloca i64, align 8
  %tmp.i398 = alloca i64, align 8
  %tmp.i396 = alloca i64, align 8
  %tmp.i394 = alloca i64, align 8
  %tmp.i392 = alloca i8, align 1
  %tmp.i390 = alloca i8, align 1
  %tmp.i388 = alloca i32, align 4
  %tmp.i386 = alloca i32, align 4
  %tmp.i384 = alloca i32, align 4
  %tmp.i382 = alloca i32, align 4
  %tmp.i380 = alloca i8, align 1
  %tmp.i375 = alloca i8, align 1
  %tmp.i373 = alloca i8, align 1
  %tmp.i368 = alloca i8, align 1
  %tmp.i363 = alloca i8, align 1
  %tmp.i361 = alloca i8, align 1
  %tmp.i356 = alloca i8, align 1
  %tmp.i354 = alloca i16, align 2
  %tmp.i352 = alloca i16, align 2
  %tmp.i350 = alloca i8, align 1
  %tmp.i348 = alloca i8, align 1
  %tmp.i346 = alloca i32, align 4
  %tmp.i344 = alloca i16, align 2
  %tmp.i342 = alloca i16, align 2
  %tmp.i340 = alloca i8, align 1
  %tmp.i338 = alloca i16, align 2
  %tmp.i336 = alloca i32, align 4
  %tmp.i334 = alloca i32, align 4
  %tmp.i332 = alloca i32, align 4
  %tmp.i330 = alloca i32, align 4
  %tmp.i328 = alloca i32, align 4
  %tmp.i326 = alloca i64, align 8
  %tmp.i324 = alloca i64, align 8
  %tmp.i322 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  %bm = alloca %struct.br_boolopt_multi, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %brdev, i32 2304
  %forward_delay1 = getelementptr i8, ptr %brdev, i32 2840
  %0 = ptrtoint ptr %forward_delay1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %forward_delay1, align 4
  %call2 = tail call i32 @jiffies_to_clock_t(i32 noundef %1) #10
  %hello_time3 = getelementptr i8, ptr %brdev, i32 2836
  %2 = ptrtoint ptr %hello_time3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hello_time3, align 4
  %call4 = tail call i32 @jiffies_to_clock_t(i32 noundef %3) #10
  %max_age = getelementptr i8, ptr %brdev, i32 2832
  %4 = ptrtoint ptr %max_age to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_age, align 4
  %call5 = tail call i32 @jiffies_to_clock_t(i32 noundef %5) #10
  %ageing_time6 = getelementptr i8, ptr %brdev, i32 2844
  %6 = ptrtoint ptr %ageing_time6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ageing_time6, align 4
  %call7 = tail call i32 @jiffies_to_clock_t(i32 noundef %7) #10
  %stp_enabled8 = getelementptr i8, ptr %brdev, i32 2876
  %8 = ptrtoint ptr %stp_enabled8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stp_enabled8, align 4
  %bridge_id = getelementptr i8, ptr %brdev, i32 2820
  %10 = ptrtoint ptr %bridge_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bridge_id, align 4
  %conv = zext i8 %11 to i16
  %shl = shl nuw i16 %conv, 8
  %arrayidx11 = getelementptr i8, ptr %brdev, i32 2821
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %13 to i16
  %or = or i16 %shl, %conv12
  %dev = getelementptr i8, ptr %brdev, i32 2396
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call14 = tail call zeroext i1 @br_vlan_enabled(ptr noundef %15) #10
  %conv15 = zext i1 %call14 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bm) #10
  %16 = ptrtoint ptr %bm to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %bm, align 4, !annotation !91
  %17 = getelementptr inbounds %struct.br_boolopt_multi, ptr %bm, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %17, align 4, !annotation !91
  %hello_timer = getelementptr i8, ptr %brdev, i32 3948
  %call16 = tail call i32 @br_timer_value(ptr noundef %hello_timer) #10
  %conv17 = zext i32 %call16 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #10
  %19 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv17, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 16, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 40) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tcn_timer = getelementptr i8, ptr %brdev, i32 3996
  %call19 = call i32 @br_timer_value(ptr noundef %tcn_timer) #10
  %conv20 = zext i32 %call19 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i322) #10
  %20 = ptrtoint ptr %tmp.i322 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv20, ptr %tmp.i322, align 8
  %call.i323 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 17, i32 noundef 8, ptr noundef nonnull %tmp.i322, i32 noundef 40) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i322) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i323)
  %tobool22.not = icmp eq i32 %call.i323, 0
  br i1 %tobool22.not, label %if.end24, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %topology_change_timer = getelementptr i8, ptr %brdev, i32 4044
  %call25 = call i32 @br_timer_value(ptr noundef %topology_change_timer) #10
  %conv26 = zext i32 %call25 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i324) #10
  %21 = ptrtoint ptr %tmp.i324 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv26, ptr %tmp.i324, align 8
  %call.i325 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 18, i32 noundef 8, ptr noundef nonnull %tmp.i324, i32 noundef 40) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i324) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i325)
  %tobool28.not = icmp eq i32 %call.i325, 0
  br i1 %tobool28.not, label %if.end30, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %timer = getelementptr i8, ptr %brdev, i32 4136
  %call31 = call i32 @br_timer_value(ptr noundef %timer) #10
  %conv32 = zext i32 %call31 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i326) #10
  %22 = ptrtoint ptr %tmp.i326 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv32, ptr %tmp.i326, align 8
  %call.i327 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 19, i32 noundef 8, ptr noundef nonnull %tmp.i326, i32 noundef 40) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i326) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i327)
  %tobool34.not = icmp eq i32 %call.i327, 0
  br i1 %tobool34.not, label %if.end36, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  call void @br_boolopt_multi_get(ptr noundef %add.ptr.i, ptr noundef nonnull %bm) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i328) #10
  %23 = ptrtoint ptr %tmp.i328 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call2, ptr %tmp.i328, align 4
  %call.i329 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i328) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i328) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %tobool38.not = icmp eq i32 %call.i329, 0
  br i1 %tobool38.not, label %lor.lhs.false, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i330) #10
  %24 = ptrtoint ptr %tmp.i330 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call4, ptr %tmp.i330, align 4
  %call.i331 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i330) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i330) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i331)
  %tobool40.not = icmp eq i32 %call.i331, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i332) #10
  %25 = ptrtoint ptr %tmp.i332 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call5, ptr %tmp.i332, align 4
  %call.i333 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i332) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i332) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i333)
  %tobool43.not = icmp eq i32 %call.i333, 0
  br i1 %tobool43.not, label %lor.lhs.false44, label %lor.lhs.false41.cleanup_crit_edge

lor.lhs.false41.cleanup_crit_edge:                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false44:                                  ; preds = %lor.lhs.false41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i334) #10
  %26 = ptrtoint ptr %tmp.i334 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call7, ptr %tmp.i334, align 4
  %call.i335 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i334) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i334) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i335)
  %tobool46.not = icmp eq i32 %call.i335, 0
  br i1 %tobool46.not, label %lor.lhs.false47, label %lor.lhs.false44.cleanup_crit_edge

lor.lhs.false44.cleanup_crit_edge:                ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false47:                                  ; preds = %lor.lhs.false44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i336) #10
  %27 = ptrtoint ptr %tmp.i336 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %9, ptr %tmp.i336, align 4
  %call.i337 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i336) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i336) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i337)
  %tobool49.not = icmp eq i32 %call.i337, 0
  br i1 %tobool49.not, label %lor.lhs.false50, label %lor.lhs.false47.cleanup_crit_edge

lor.lhs.false47.cleanup_crit_edge:                ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false50:                                  ; preds = %lor.lhs.false47
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i338) #10
  %28 = ptrtoint ptr %tmp.i338 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %or, ptr %tmp.i338, align 2
  %call.i339 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %tmp.i338) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i338) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i339)
  %tobool52.not = icmp eq i32 %call.i339, 0
  br i1 %tobool52.not, label %lor.lhs.false53, label %lor.lhs.false50.cleanup_crit_edge

lor.lhs.false50.cleanup_crit_edge:                ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false53:                                  ; preds = %lor.lhs.false50
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i340) #10
  %29 = ptrtoint ptr %tmp.i340 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv15, ptr %tmp.i340, align 1
  %call.i341 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i340) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i340) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i341)
  %tobool55.not = icmp eq i32 %call.i341, 0
  br i1 %tobool55.not, label %lor.lhs.false56, label %lor.lhs.false53.cleanup_crit_edge

lor.lhs.false53.cleanup_crit_edge:                ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false56:                                  ; preds = %lor.lhs.false53
  %group_fwd_mask = getelementptr i8, ptr %brdev, i32 2808
  %30 = ptrtoint ptr %group_fwd_mask to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %group_fwd_mask, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i342) #10
  %32 = ptrtoint ptr %tmp.i342 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %tmp.i342, align 2
  %call.i343 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 2, ptr noundef nonnull %tmp.i342) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i342) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i343)
  %tobool58.not = icmp eq i32 %call.i343, 0
  br i1 %tobool58.not, label %lor.lhs.false59, label %lor.lhs.false56.cleanup_crit_edge

lor.lhs.false56.cleanup_crit_edge:                ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false59:                                  ; preds = %lor.lhs.false56
  %call61 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 8, ptr noundef %bridge_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %lor.lhs.false63, label %lor.lhs.false59.cleanup_crit_edge

lor.lhs.false59.cleanup_crit_edge:                ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false63:                                  ; preds = %lor.lhs.false59
  %designated_root = getelementptr i8, ptr %brdev, i32 2812
  %call64 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 8, ptr noundef %designated_root) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %lor.lhs.false66, label %lor.lhs.false63.cleanup_crit_edge

lor.lhs.false63.cleanup_crit_edge:                ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false66:                                  ; preds = %lor.lhs.false63
  %root_port = getelementptr i8, ptr %brdev, i32 2830
  %33 = ptrtoint ptr %root_port to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %root_port, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i344) #10
  %35 = ptrtoint ptr %tmp.i344 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %tmp.i344, align 2
  %call.i345 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 2, ptr noundef nonnull %tmp.i344) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i344) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i345)
  %tobool68.not = icmp eq i32 %call.i345, 0
  br i1 %tobool68.not, label %lor.lhs.false69, label %lor.lhs.false66.cleanup_crit_edge

lor.lhs.false66.cleanup_crit_edge:                ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false69:                                  ; preds = %lor.lhs.false66
  %root_path_cost = getelementptr i8, ptr %brdev, i32 2864
  %36 = ptrtoint ptr %root_path_cost to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %root_path_cost, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i346) #10
  %38 = ptrtoint ptr %tmp.i346 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tmp.i346, align 4
  %call.i347 = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %tmp.i346) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i346) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i347)
  %tobool71.not = icmp eq i32 %call.i347, 0
  br i1 %tobool71.not, label %lor.lhs.false72, label %lor.lhs.false69.cleanup_crit_edge

lor.lhs.false69.cleanup_crit_edge:                ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false72:                                  ; preds = %lor.lhs.false69
  %topology_change = getelementptr i8, ptr %brdev, i32 2828
  %39 = ptrtoint ptr %topology_change to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %topology_change, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i348) #10
  %41 = ptrtoint ptr %tmp.i348 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %tmp.i348, align 1
  %call.i349 = call i32 @nla_put(ptr noundef %skb, i32 noundef 14, i32 noundef 1, ptr noundef nonnull %tmp.i348) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i348) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i349)
  %tobool74.not = icmp eq i32 %call.i349, 0
  br i1 %tobool74.not, label %lor.lhs.false75, label %lor.lhs.false72.cleanup_crit_edge

lor.lhs.false72.cleanup_crit_edge:                ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false75:                                  ; preds = %lor.lhs.false72
  %topology_change_detected = getelementptr i8, ptr %brdev, i32 2829
  %42 = ptrtoint ptr %topology_change_detected to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %topology_change_detected, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i350) #10
  %44 = ptrtoint ptr %tmp.i350 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %tmp.i350, align 1
  %call.i351 = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 1, ptr noundef nonnull %tmp.i350) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i350) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i351)
  %tobool77.not = icmp eq i32 %call.i351, 0
  br i1 %tobool77.not, label %lor.lhs.false78, label %lor.lhs.false75.cleanup_crit_edge

lor.lhs.false75.cleanup_crit_edge:                ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false78:                                  ; preds = %lor.lhs.false75
  %group_addr = getelementptr i8, ptr %brdev, i32 2868
  %call79 = call i32 @nla_put(ptr noundef %skb, i32 noundef 20, i32 noundef 6, ptr noundef %group_addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %lor.lhs.false81, label %lor.lhs.false78.cleanup_crit_edge

lor.lhs.false78.cleanup_crit_edge:                ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false81:                                  ; preds = %lor.lhs.false78
  %call82 = call i32 @nla_put(ptr noundef %skb, i32 noundef 46, i32 noundef 8, ptr noundef nonnull %bm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %lor.lhs.false81.cleanup_crit_edge

lor.lhs.false81.cleanup_crit_edge:                ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end85:                                         ; preds = %lor.lhs.false81
  %vlan_proto = getelementptr i8, ptr %brdev, i32 2404
  %45 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vlan_proto, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i352) #10
  %47 = ptrtoint ptr %tmp.i352 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %tmp.i352, align 2
  %call.i353 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %tmp.i352) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i352) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i353)
  %tobool87.not = icmp eq i32 %call.i353, 0
  br i1 %tobool87.not, label %lor.lhs.false88, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false88:                                  ; preds = %if.end85
  %default_pvid = getelementptr i8, ptr %brdev, i32 2406
  %48 = ptrtoint ptr %default_pvid to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %default_pvid, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i354) #10
  %50 = ptrtoint ptr %tmp.i354 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %tmp.i354, align 2
  %call.i355 = call i32 @nla_put(ptr noundef %skb, i32 noundef 39, i32 noundef 2, ptr noundef nonnull %tmp.i354) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i354) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i355)
  %tobool90.not = icmp eq i32 %call.i355, 0
  br i1 %tobool90.not, label %lor.lhs.false91, label %lor.lhs.false88.cleanup_crit_edge

lor.lhs.false88.cleanup_crit_edge:                ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false91:                                  ; preds = %lor.lhs.false88
  %options.i = getelementptr i8, ptr %brdev, i32 2400
  %51 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %options.i, align 4
  %53 = trunc i32 %52 to i8
  %54 = lshr i8 %53, 1
  %conv93 = and i8 %54, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i356) #10
  %55 = ptrtoint ptr %tmp.i356 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv93, ptr %tmp.i356, align 1
  %call.i357 = call i32 @nla_put(ptr noundef %skb, i32 noundef 41, i32 noundef 1, ptr noundef nonnull %tmp.i356) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i356) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i357)
  %tobool95.not = icmp eq i32 %call.i357, 0
  br i1 %tobool95.not, label %lor.lhs.false96, label %lor.lhs.false91.cleanup_crit_edge

lor.lhs.false91.cleanup_crit_edge:                ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false96:                                  ; preds = %lor.lhs.false91
  %56 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %options.i, align 4
  %shr.i.i359 = lshr i32 %57, 12
  %58 = trunc i32 %shr.i.i359 to i8
  %conv98 = and i8 %58, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i361) #10
  %59 = ptrtoint ptr %tmp.i361 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv98, ptr %tmp.i361, align 1
  %call.i362 = call i32 @nla_put(ptr noundef %skb, i32 noundef 45, i32 noundef 1, ptr noundef nonnull %tmp.i361) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i361) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i362)
  %tobool100.not = icmp eq i32 %call.i362, 0
  br i1 %tobool100.not, label %if.end102, label %lor.lhs.false96.cleanup_crit_edge

lor.lhs.false96.cleanup_crit_edge:                ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end102:                                        ; preds = %lor.lhs.false96
  %multicast_ctx = getelementptr i8, ptr %brdev, i32 2880
  %multicast_router = getelementptr i8, ptr %brdev, i32 2898
  %60 = ptrtoint ptr %multicast_router to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %multicast_router, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i363) #10
  %62 = ptrtoint ptr %tmp.i363 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %tmp.i363, align 1
  %call.i364 = call i32 @nla_put(ptr noundef %skb, i32 noundef 22, i32 noundef 1, ptr noundef nonnull %tmp.i363) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i363) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i364)
  %tobool104.not = icmp eq i32 %call.i364, 0
  br i1 %tobool104.not, label %lor.lhs.false105, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false105:                                 ; preds = %if.end102
  %63 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %options.i, align 4
  %65 = trunc i32 %64 to i8
  %66 = lshr i8 %65, 6
  %conv107 = and i8 %66, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i368) #10
  %67 = ptrtoint ptr %tmp.i368 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv107, ptr %tmp.i368, align 1
  %call.i369 = call i32 @nla_put(ptr noundef %skb, i32 noundef 23, i32 noundef 1, ptr noundef nonnull %tmp.i368) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i368) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i369)
  %tobool109.not = icmp eq i32 %call.i369, 0
  br i1 %tobool109.not, label %lor.lhs.false110, label %lor.lhs.false105.cleanup_crit_edge

lor.lhs.false105.cleanup_crit_edge:               ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false110:                                 ; preds = %lor.lhs.false105
  %68 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %options.i, align 4
  %70 = trunc i32 %69 to i8
  %71 = lshr i8 %70, 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i373) #10
  %72 = ptrtoint ptr %tmp.i373 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %tmp.i373, align 1
  %call.i374 = call i32 @nla_put(ptr noundef %skb, i32 noundef 24, i32 noundef 1, ptr noundef nonnull %tmp.i373) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i373) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i374)
  %tobool114.not = icmp eq i32 %call.i374, 0
  br i1 %tobool114.not, label %lor.lhs.false115, label %lor.lhs.false110.cleanup_crit_edge

lor.lhs.false110.cleanup_crit_edge:               ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false115:                                 ; preds = %lor.lhs.false110
  %multicast_querier = getelementptr i8, ptr %brdev, i32 2896
  %73 = ptrtoint ptr %multicast_querier to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %multicast_querier, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i375) #10
  %75 = ptrtoint ptr %tmp.i375 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %tmp.i375, align 1
  %call.i376 = call i32 @nla_put(ptr noundef %skb, i32 noundef 25, i32 noundef 1, ptr noundef nonnull %tmp.i375) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i375) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i376)
  %tobool118.not = icmp eq i32 %call.i376, 0
  br i1 %tobool118.not, label %lor.lhs.false119, label %lor.lhs.false115.cleanup_crit_edge

lor.lhs.false115.cleanup_crit_edge:               ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false119:                                 ; preds = %lor.lhs.false115
  %76 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %options.i, align 4
  %shr.i.i378 = lshr i32 %77, 8
  %78 = trunc i32 %shr.i.i378 to i8
  %conv121 = and i8 %78, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i380) #10
  %79 = ptrtoint ptr %tmp.i380 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv121, ptr %tmp.i380, align 1
  %call.i381 = call i32 @nla_put(ptr noundef %skb, i32 noundef 42, i32 noundef 1, ptr noundef nonnull %tmp.i380) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i380) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i381)
  %tobool123.not = icmp eq i32 %call.i381, 0
  br i1 %tobool123.not, label %lor.lhs.false124, label %lor.lhs.false119.cleanup_crit_edge

lor.lhs.false119.cleanup_crit_edge:               ; preds = %lor.lhs.false119
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false124:                                 ; preds = %lor.lhs.false119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i382) #10
  %80 = ptrtoint ptr %tmp.i382 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 16, ptr %tmp.i382, align 4
  %call.i383 = call i32 @nla_put(ptr noundef %skb, i32 noundef 26, i32 noundef 4, ptr noundef nonnull %tmp.i382) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i382) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i383)
  %tobool126.not = icmp eq i32 %call.i383, 0
  br i1 %tobool126.not, label %lor.lhs.false127, label %lor.lhs.false124.cleanup_crit_edge

lor.lhs.false124.cleanup_crit_edge:               ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false127:                                 ; preds = %lor.lhs.false124
  %hash_max = getelementptr i8, ptr %brdev, i32 3392
  %81 = ptrtoint ptr %hash_max to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %hash_max, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i384) #10
  %83 = ptrtoint ptr %tmp.i384 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %tmp.i384, align 4
  %call.i385 = call i32 @nla_put(ptr noundef %skb, i32 noundef 27, i32 noundef 4, ptr noundef nonnull %tmp.i384) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i384) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i385)
  %tobool129.not = icmp eq i32 %call.i385, 0
  br i1 %tobool129.not, label %lor.lhs.false130, label %lor.lhs.false127.cleanup_crit_edge

lor.lhs.false127.cleanup_crit_edge:               ; preds = %lor.lhs.false127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false130:                                 ; preds = %lor.lhs.false127
  %multicast_last_member_count = getelementptr i8, ptr %brdev, i32 2888
  %84 = ptrtoint ptr %multicast_last_member_count to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %multicast_last_member_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i386) #10
  %86 = ptrtoint ptr %tmp.i386 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %tmp.i386, align 4
  %call.i387 = call i32 @nla_put(ptr noundef %skb, i32 noundef 28, i32 noundef 4, ptr noundef nonnull %tmp.i386) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i386) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i387)
  %tobool133.not = icmp eq i32 %call.i387, 0
  br i1 %tobool133.not, label %lor.lhs.false134, label %lor.lhs.false130.cleanup_crit_edge

lor.lhs.false130.cleanup_crit_edge:               ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false134:                                 ; preds = %lor.lhs.false130
  %multicast_startup_query_count = getelementptr i8, ptr %brdev, i32 2892
  %87 = ptrtoint ptr %multicast_startup_query_count to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %multicast_startup_query_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i388) #10
  %89 = ptrtoint ptr %tmp.i388 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %tmp.i388, align 4
  %call.i389 = call i32 @nla_put(ptr noundef %skb, i32 noundef 29, i32 noundef 4, ptr noundef nonnull %tmp.i388) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i388) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i389)
  %tobool137.not = icmp eq i32 %call.i389, 0
  br i1 %tobool137.not, label %lor.lhs.false138, label %lor.lhs.false134.cleanup_crit_edge

lor.lhs.false134.cleanup_crit_edge:               ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false138:                                 ; preds = %lor.lhs.false134
  %multicast_igmp_version = getelementptr i8, ptr %brdev, i32 2897
  %90 = ptrtoint ptr %multicast_igmp_version to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %multicast_igmp_version, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i390) #10
  %92 = ptrtoint ptr %tmp.i390 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %tmp.i390, align 1
  %call.i391 = call i32 @nla_put(ptr noundef %skb, i32 noundef 43, i32 noundef 1, ptr noundef nonnull %tmp.i390) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i390) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i391)
  %tobool141.not = icmp eq i32 %call.i391, 0
  br i1 %tobool141.not, label %lor.lhs.false142, label %lor.lhs.false138.cleanup_crit_edge

lor.lhs.false138.cleanup_crit_edge:               ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false142:                                 ; preds = %lor.lhs.false138
  %call144 = call i32 @br_multicast_dump_querier_state(ptr noundef %skb, ptr noundef %multicast_ctx, i32 noundef 47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %lor.lhs.false142.cleanup_crit_edge

lor.lhs.false142.cleanup_crit_edge:               ; preds = %lor.lhs.false142
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end147:                                        ; preds = %lor.lhs.false142
  %multicast_mld_version = getelementptr i8, ptr %brdev, i32 2899
  %93 = ptrtoint ptr %multicast_mld_version to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %multicast_mld_version, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i392) #10
  %95 = ptrtoint ptr %tmp.i392 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %tmp.i392, align 1
  %call.i393 = call i32 @nla_put(ptr noundef %skb, i32 noundef 44, i32 noundef 1, ptr noundef nonnull %tmp.i392) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i392) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i393)
  %tobool150.not = icmp eq i32 %call.i393, 0
  br i1 %tobool150.not, label %if.end152, label %if.end147.cleanup_crit_edge

if.end147.cleanup_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end152:                                        ; preds = %if.end147
  %multicast_last_member_interval = getelementptr i8, ptr %brdev, i32 2900
  %96 = ptrtoint ptr %multicast_last_member_interval to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %multicast_last_member_interval, align 4
  %call154 = call i32 @jiffies_to_clock_t(i32 noundef %97) #10
  %conv155 = sext i32 %call154 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i394) #10
  %98 = ptrtoint ptr %tmp.i394 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %conv155, ptr %tmp.i394, align 8
  %call.i395 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 30, i32 noundef 8, ptr noundef nonnull %tmp.i394, i32 noundef 40) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i394) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i395)
  %tobool157.not = icmp eq i32 %call.i395, 0
  br i1 %tobool157.not, label %if.end159, label %if.end152.cleanup_crit_edge

if.end152.cleanup_crit_edge:                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end159:                                        ; preds = %if.end152
  %multicast_membership_interval = getelementptr i8, ptr %brdev, i32 2904
  %99 = ptrtoint ptr %multicast_membership_interval to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %multicast_membership_interval, align 4
  %call161 = call i32 @jiffies_to_clock_t(i32 noundef %100) #10
  %conv162 = sext i32 %call161 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i396) #10
  %101 = ptrtoint ptr %tmp.i396 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %conv162, ptr %tmp.i396, align 8
  %call.i397 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 31, i32 noundef 8, ptr noundef nonnull %tmp.i396, i32 noundef 40) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i396) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i397)
  %tobool164.not = icmp eq i32 %call.i397, 0
  br i1 %tobool164.not, label %if.end166, label %if.end159.cleanup_crit_edge

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end166:                                        ; preds = %if.end159
  %multicast_querier_interval = getelementptr i8, ptr %brdev, i32 2908
  %102 = ptrtoint ptr %multicast_querier_interval to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %multicast_querier_interval, align 4
  %call168 = call i32 @jiffies_to_clock_t(i32 noundef %103) #10
  %conv169 = sext i32 %call168 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i398) #10
  %104 = ptrtoint ptr %tmp.i398 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %conv169, ptr %tmp.i398, align 8
  %call.i399 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 32, i32 noundef 8, ptr noundef nonnull %tmp.i398, i32 noundef 40) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i398) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i399)
  %tobool171.not = icmp eq i32 %call.i399, 0
  br i1 %tobool171.not, label %if.end173, label %if.end166.cleanup_crit_edge

if.end166.cleanup_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end173:                                        ; preds = %if.end166
  %multicast_query_interval = getelementptr i8, ptr %brdev, i32 2912
  %105 = ptrtoint ptr %multicast_query_interval to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %multicast_query_interval, align 4
  %call175 = call i32 @jiffies_to_clock_t(i32 noundef %106) #10
  %conv176 = sext i32 %call175 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i400) #10
  %107 = ptrtoint ptr %tmp.i400 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv176, ptr %tmp.i400, align 8
  %call.i401 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 33, i32 noundef 8, ptr noundef nonnull %tmp.i400, i32 noundef 40) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i400) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i401)
  %tobool178.not = icmp eq i32 %call.i401, 0
  br i1 %tobool178.not, label %if.end180, label %if.end173.cleanup_crit_edge

if.end173.cleanup_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end180:                                        ; preds = %if.end173
  %multicast_query_response_interval = getelementptr i8, ptr %brdev, i32 2916
  %108 = ptrtoint ptr %multicast_query_response_interval to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %multicast_query_response_interval, align 4
  %call182 = call i32 @jiffies_to_clock_t(i32 noundef %109) #10
  %conv183 = sext i32 %call182 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i402) #10
  %110 = ptrtoint ptr %tmp.i402 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %conv183, ptr %tmp.i402, align 8
  %call.i403 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 34, i32 noundef 8, ptr noundef nonnull %tmp.i402, i32 noundef 40) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i402) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i403)
  %tobool185.not = icmp eq i32 %call.i403, 0
  br i1 %tobool185.not, label %if.end187, label %if.end180.cleanup_crit_edge

if.end180.cleanup_crit_edge:                      ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end187:                                        ; preds = %if.end180
  %multicast_startup_query_interval = getelementptr i8, ptr %brdev, i32 2920
  %111 = ptrtoint ptr %multicast_startup_query_interval to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %multicast_startup_query_interval, align 4
  %call189 = call i32 @jiffies_to_clock_t(i32 noundef %112) #10
  %conv190 = sext i32 %call189 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i404) #10
  %113 = ptrtoint ptr %tmp.i404 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %conv190, ptr %tmp.i404, align 8
  %call.i405 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 35, i32 noundef 8, ptr noundef nonnull %tmp.i404, i32 noundef 40) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i404) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i405)
  %tobool192.not = icmp eq i32 %call.i405, 0
  br i1 %tobool192.not, label %if.end194, label %if.end187.cleanup_crit_edge

if.end187.cleanup_crit_edge:                      ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end194:                                        ; preds = %if.end187
  %114 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %options.i, align 4
  %116 = trunc i32 %115 to i8
  %117 = lshr i8 %116, 2
  %118 = and i8 %117, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i409) #10
  %119 = ptrtoint ptr %tmp.i409 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %tmp.i409, align 1
  %call.i410 = call i32 @nla_put(ptr noundef %skb, i32 noundef 36, i32 noundef 1, ptr noundef nonnull %tmp.i409) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i409) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i410)
  %tobool199.not = icmp eq i32 %call.i410, 0
  br i1 %tobool199.not, label %lor.lhs.false200, label %if.end194.cleanup_crit_edge

if.end194.cleanup_crit_edge:                      ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false200:                                 ; preds = %if.end194
  %120 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %options.i, align 4
  %122 = trunc i32 %121 to i8
  %123 = lshr i8 %122, 3
  %124 = and i8 %123, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i414) #10
  %125 = ptrtoint ptr %tmp.i414 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %tmp.i414, align 1
  %call.i415 = call i32 @nla_put(ptr noundef %skb, i32 noundef 37, i32 noundef 1, ptr noundef nonnull %tmp.i414) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i414) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i415)
  %tobool206.not = icmp eq i32 %call.i415, 0
  br i1 %tobool206.not, label %lor.lhs.false207, label %lor.lhs.false200.cleanup_crit_edge

lor.lhs.false200.cleanup_crit_edge:               ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false207:                                 ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %options.i, align 4
  %128 = trunc i32 %127 to i8
  %129 = lshr i8 %128, 4
  %130 = and i8 %129, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i419) #10
  %131 = ptrtoint ptr %tmp.i419 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %tmp.i419, align 1
  %call.i420 = call i32 @nla_put(ptr noundef %skb, i32 noundef 38, i32 noundef 1, ptr noundef nonnull %tmp.i419) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i419) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i420)
  %tobool213.not = icmp eq i32 %call.i420, 0
  %spec.select = select i1 %tobool213.not, i32 0, i32 -90
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false207, %lor.lhs.false200.cleanup_crit_edge, %if.end194.cleanup_crit_edge, %if.end187.cleanup_crit_edge, %if.end180.cleanup_crit_edge, %if.end173.cleanup_crit_edge, %if.end166.cleanup_crit_edge, %if.end159.cleanup_crit_edge, %if.end152.cleanup_crit_edge, %if.end147.cleanup_crit_edge, %lor.lhs.false142.cleanup_crit_edge, %lor.lhs.false138.cleanup_crit_edge, %lor.lhs.false134.cleanup_crit_edge, %lor.lhs.false130.cleanup_crit_edge, %lor.lhs.false127.cleanup_crit_edge, %lor.lhs.false124.cleanup_crit_edge, %lor.lhs.false119.cleanup_crit_edge, %lor.lhs.false115.cleanup_crit_edge, %lor.lhs.false110.cleanup_crit_edge, %lor.lhs.false105.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %lor.lhs.false96.cleanup_crit_edge, %lor.lhs.false91.cleanup_crit_edge, %lor.lhs.false88.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %lor.lhs.false81.cleanup_crit_edge, %lor.lhs.false78.cleanup_crit_edge, %lor.lhs.false75.cleanup_crit_edge, %lor.lhs.false72.cleanup_crit_edge, %lor.lhs.false69.cleanup_crit_edge, %lor.lhs.false66.cleanup_crit_edge, %lor.lhs.false63.cleanup_crit_edge, %lor.lhs.false59.cleanup_crit_edge, %lor.lhs.false56.cleanup_crit_edge, %lor.lhs.false53.cleanup_crit_edge, %lor.lhs.false50.cleanup_crit_edge, %lor.lhs.false47.cleanup_crit_edge, %lor.lhs.false44.cleanup_crit_edge, %lor.lhs.false41.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end24.cleanup_crit_edge ], [ -90, %if.end30.cleanup_crit_edge ], [ -90, %lor.lhs.false81.cleanup_crit_edge ], [ -90, %lor.lhs.false78.cleanup_crit_edge ], [ -90, %lor.lhs.false75.cleanup_crit_edge ], [ -90, %lor.lhs.false72.cleanup_crit_edge ], [ -90, %lor.lhs.false69.cleanup_crit_edge ], [ -90, %lor.lhs.false66.cleanup_crit_edge ], [ -90, %lor.lhs.false63.cleanup_crit_edge ], [ -90, %lor.lhs.false59.cleanup_crit_edge ], [ -90, %lor.lhs.false56.cleanup_crit_edge ], [ -90, %lor.lhs.false53.cleanup_crit_edge ], [ -90, %lor.lhs.false50.cleanup_crit_edge ], [ -90, %lor.lhs.false47.cleanup_crit_edge ], [ -90, %lor.lhs.false44.cleanup_crit_edge ], [ -90, %lor.lhs.false41.cleanup_crit_edge ], [ -90, %lor.lhs.false.cleanup_crit_edge ], [ -90, %if.end36.cleanup_crit_edge ], [ -90, %lor.lhs.false96.cleanup_crit_edge ], [ -90, %lor.lhs.false91.cleanup_crit_edge ], [ -90, %lor.lhs.false88.cleanup_crit_edge ], [ -90, %if.end85.cleanup_crit_edge ], [ -90, %lor.lhs.false142.cleanup_crit_edge ], [ -90, %lor.lhs.false138.cleanup_crit_edge ], [ -90, %lor.lhs.false134.cleanup_crit_edge ], [ -90, %lor.lhs.false130.cleanup_crit_edge ], [ -90, %lor.lhs.false127.cleanup_crit_edge ], [ -90, %lor.lhs.false124.cleanup_crit_edge ], [ -90, %lor.lhs.false119.cleanup_crit_edge ], [ -90, %lor.lhs.false115.cleanup_crit_edge ], [ -90, %lor.lhs.false110.cleanup_crit_edge ], [ -90, %lor.lhs.false105.cleanup_crit_edge ], [ -90, %if.end102.cleanup_crit_edge ], [ -90, %if.end147.cleanup_crit_edge ], [ -90, %if.end152.cleanup_crit_edge ], [ -90, %if.end159.cleanup_crit_edge ], [ -90, %if.end166.cleanup_crit_edge ], [ -90, %if.end173.cleanup_crit_edge ], [ -90, %if.end180.cleanup_crit_edge ], [ -90, %if.end187.cleanup_crit_edge ], [ -90, %lor.lhs.false200.cleanup_crit_edge ], [ -90, %if.end194.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false207 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bm) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_port_slave_changelink(ptr noundef %brdev, ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %tb, ptr noundef %data, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %brdev, i32 2304
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #10
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %1, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.br_port_get_rtnl.exit_crit_edge, label %do.body.i

if.end.br_port_get_rtnl.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

do.body.i:                                        ; preds = %if.end
  %call1.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call1.i, label %do.body.i.do.end.i_crit_edge, label %land.lhs.true.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 422, ptr noundef nonnull @.str.13) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_handler_data.i, align 4
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %do.end.i, %if.end.br_port_get_rtnl.exit_crit_edge
  %cond.i = phi ptr [ %3, %do.end.i ], [ null, %if.end.br_port_get_rtnl.exit_crit_edge ]
  %call2 = tail call fastcc i32 @br_setport(ptr noundef %cond.i, ptr noundef nonnull %data, ptr noundef %extack)
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #10
  br label %cleanup

cleanup:                                          ; preds = %br_port_get_rtnl.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %br_port_get_rtnl.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @br_port_get_slave_size(ptr nocapture noundef readnone %brdev, ptr nocapture noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 292
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_port_fill_slave_info(ptr noundef %skb, ptr nocapture noundef readnone %brdev, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %1, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.br_port_get_rtnl.exit_crit_edge, label %do.body.i

entry.br_port_get_rtnl.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

do.body.i:                                        ; preds = %entry
  %call1.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call1.i, label %do.body.i.do.end.i_crit_edge, label %land.lhs.true.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 422, ptr noundef nonnull @.str.13) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_handler_data.i, align 4
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %do.end.i, %entry.br_port_get_rtnl.exit_crit_edge
  %cond.i = phi ptr [ %3, %do.end.i ], [ null, %entry.br_port_get_rtnl.exit_crit_edge ]
  %call1 = tail call fastcc i32 @br_port_fill_attrs(ptr noundef %skb, ptr noundef %cond.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_get_linkxstats_size(ptr nocapture noundef readonly %dev, i32 noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %attr, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i, label %sw.bb.br_vlan_group.exit_crit_edge, label %land.lhs.true.i

sw.bb.br_vlan_group.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

land.lhs.true.i:                                  ; preds = %sw.bb
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.br_vlan_group.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1471, ptr noundef nonnull @.str.13) #10
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i.br_vlan_group.exit_crit_edge, %sw.bb.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr i8, ptr %dev, i32 2408
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %1 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %2, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sw.bb2.cleanup_crit_edge, label %do.body.i

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %sw.bb2
  %call1.i32 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call1.i32, label %do.body.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i34

do.body.i.br_port_get_rtnl.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

land.lhs.true.i34:                                ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i33 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i33, label %land.lhs.true.i34.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i34.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i34
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, label %if.then.i35

land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

if.then.i35:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 422, ptr noundef nonnull @.str.13) #10
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %if.then.i35, %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, %land.lhs.true.i34.br_port_get_rtnl.exit_crit_edge, %do.body.i.br_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %3 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %br_port_get_rtnl.exit.cleanup_crit_edge, label %if.end

br_port_get_rtnl.exit.cleanup_crit_edge:          ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %br_port_get_rtnl.exit
  %call.i36 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i36, label %if.end.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i39

if.end.nbp_vlan_group.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

land.lhs.true.i39:                                ; preds = %if.end
  %call1.i37 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.nbp_vlan_group.exit_crit_edge:  ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.nbp_vlan_group.exit_crit_edge, label %if.then.i42

land.lhs.true2.i41.nbp_vlan_group.exit_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1477, ptr noundef nonnull @.str.13) #10
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i42, %land.lhs.true2.i41.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i39.nbp_vlan_group.exit_crit_edge, %if.end.nbp_vlan_group.exit_crit_edge
  %vlgrp.i43 = getelementptr inbounds %struct.net_bridge_port, ptr %4, i32 0, i32 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %nbp_vlan_group.exit, %br_vlan_group.exit
  %vg.0.in = phi ptr [ %vlgrp.i43, %nbp_vlan_group.exit ], [ %vlgrp.i, %br_vlan_group.exit ]
  %p.0 = phi ptr [ %4, %nbp_vlan_group.exit ], [ null, %br_vlan_group.exit ]
  %5 = ptrtoint ptr %vg.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %vg.0 = load ptr, ptr %vg.0.in, align 4
  %tobool5.not = icmp eq ptr %vg.0, null
  br i1 %tobool5.not, label %sw.epilog.if.end13_crit_edge, label %if.then6

sw.epilog.if.end13_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then6:                                         ; preds = %sw.epilog
  %vlan_list = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.then6
  %numvls.0 = phi i32 [ 0, %if.then6 ], [ %inc, %for.cond.for.cond_crit_edge ]
  %.pn.in = phi ptr [ %vlan_list, %if.then6 ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %vlan_list
  %inc = add i32 %numvls.0, 1
  br i1 %cmp.not, label %for.cond.if.end13_crit_edge, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.cond.if.end13_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13:                                         ; preds = %for.cond.if.end13_crit_edge, %sw.epilog.if.end13_crit_edge
  %numvls.1 = phi i32 [ 0, %sw.epilog.if.end13_crit_edge ], [ %numvls.0, %for.cond.if.end13_crit_edge ]
  %mul = mul i32 %numvls.1, 44
  %tobool16.not = icmp eq ptr %p.0, null
  %add18 = select i1 %tobool16.not, i32 248, i32 300
  %add20 = add i32 %add18, %mul
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %br_port_get_rtnl.exit.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add20, %if.end13 ], [ 0, %br_port_get_rtnl.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_fill_linkxstats(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef %prividx, i32 noundef %attr) #0 align 64 {
entry:
  %vxi = alloca %struct.bridge_vlan_xstats, align 8
  %stats = alloca %struct.pcpu_sw_netstats, align 32
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %attr, label %entry.cleanup67_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
  ]

entry.cleanup67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup67

sw.bb:                                            ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i, label %sw.bb.br_vlan_group.exit_crit_edge, label %land.lhs.true.i

sw.bb.br_vlan_group.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

land.lhs.true.i:                                  ; preds = %sw.bb
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.br_vlan_group.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1471, ptr noundef nonnull @.str.13) #10
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i.br_vlan_group.exit_crit_edge, %sw.bb.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr i8, ptr %dev, i32 2408
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %1 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %2, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sw.bb2.cleanup67_crit_edge, label %do.body.i

sw.bb2.cleanup67_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup67

do.body.i:                                        ; preds = %sw.bb2
  %call1.i107 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call1.i107, label %do.body.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i109

do.body.i.br_port_get_rtnl.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

land.lhs.true.i109:                               ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i108 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i108, label %land.lhs.true.i109.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i109.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i109
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i109
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, label %if.then.i110

land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

if.then.i110:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 422, ptr noundef nonnull @.str.13) #10
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %if.then.i110, %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, %land.lhs.true.i109.br_port_get_rtnl.exit_crit_edge, %do.body.i.br_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %3 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %br_port_get_rtnl.exit.cleanup67_crit_edge, label %if.end

br_port_get_rtnl.exit.cleanup67_crit_edge:        ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup67

if.end:                                           ; preds = %br_port_get_rtnl.exit
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %call.i111 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i111, label %if.end.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i114

if.end.nbp_vlan_group.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

land.lhs.true.i114:                               ; preds = %if.end
  %call1.i112 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i112)
  %tobool.not.i113 = icmp eq i32 %call1.i112, 0
  br i1 %tobool.not.i113, label %land.lhs.true.i114.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i116

land.lhs.true.i114.nbp_vlan_group.exit_crit_edge: ; preds = %land.lhs.true.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

land.lhs.true2.i116:                              ; preds = %land.lhs.true.i114
  %.b4.i115 = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i115, label %land.lhs.true2.i116.nbp_vlan_group.exit_crit_edge, label %if.then.i117

land.lhs.true2.i116.nbp_vlan_group.exit_crit_edge: ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

if.then.i117:                                     ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1477, ptr noundef nonnull @.str.13) #10
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i117, %land.lhs.true2.i116.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i114.nbp_vlan_group.exit_crit_edge, %if.end.nbp_vlan_group.exit_crit_edge
  %vlgrp.i118 = getelementptr inbounds %struct.net_bridge_port, ptr %4, i32 0, i32 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %nbp_vlan_group.exit, %br_vlan_group.exit
  %br.0 = phi ptr [ %6, %nbp_vlan_group.exit ], [ %add.ptr.i, %br_vlan_group.exit ]
  %vg.0.in = phi ptr [ %vlgrp.i118, %nbp_vlan_group.exit ], [ %vlgrp.i, %br_vlan_group.exit ]
  %p.0 = phi ptr [ %4, %nbp_vlan_group.exit ], [ null, %br_vlan_group.exit ]
  %7 = ptrtoint ptr %vg.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %vg.0 = load ptr, ptr %vg.0.in, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %call1.i120 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i120)
  %cmp.i = icmp slt i32 %call1.i120, 0
  %tobool7.not136 = icmp eq ptr %9, null
  %tobool7.not = select i1 %cmp.i, i1 true, i1 %tobool7.not136
  br i1 %tobool7.not, label %sw.epilog.cleanup67_crit_edge, label %if.end9

sw.epilog.cleanup67_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup67

if.end9:                                          ; preds = %sw.epilog
  %tobool10.not = icmp eq ptr %vg.0, null
  br i1 %tobool10.not, label %if.end9.if.end45_crit_edge, label %br_get_pvid.exit

if.end9.if.end45_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

br_get_pvid.exit:                                 ; preds = %if.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 4
  %10 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pvid.i, align 2
  %vlan_list = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 2
  %12 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn138 = load ptr, ptr %vlan_list, align 4
  %cmp.not140 = icmp eq ptr %.pn138, %vlan_list
  br i1 %cmp.not140, label %br_get_pvid.exit.if.end45_crit_edge, label %for.body.lr.ph

br_get_pvid.exit.if.end45_crit_edge:              ; preds = %br_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

for.body.lr.ph:                                   ; preds = %br_get_pvid.exit
  %vid17 = getelementptr inbounds %struct.bridge_vlan_xstats, ptr %vxi, i32 0, i32 4
  %flags18 = getelementptr inbounds %struct.bridge_vlan_xstats, ptr %vxi, i32 0, i32 5
  %rx_bytes = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %stats, i32 0, i32 1
  %rx_packets29 = getelementptr inbounds %struct.bridge_vlan_xstats, ptr %vxi, i32 0, i32 1
  %tx_bytes = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %stats, i32 0, i32 3
  %tx_bytes30 = getelementptr inbounds %struct.bridge_vlan_xstats, ptr %vxi, i32 0, i32 2
  %tx_packets = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %stats, i32 0, i32 2
  %tx_packets31 = getelementptr inbounds %struct.bridge_vlan_xstats, ptr %vxi, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn142 = phi ptr [ %.pn138, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %vl_idx.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %v.0143 = getelementptr i8, ptr %.pn142, i32 -556
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vxi) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %stats) #10
  %13 = call ptr @memset(ptr %stats, i32 255, i32 64)
  %inc = add i32 %vl_idx.0141, 1
  %14 = ptrtoint ptr %prividx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prividx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %15)
  %cmp14 = icmp slt i32 %inc, %15
  br i1 %cmp14, label %for.body.for.inc_crit_edge, label %if.end16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %16 = call ptr @memset(ptr %vxi, i32 0, i32 40)
  %vid = getelementptr i8, ptr %.pn142, i32 -548
  %17 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vid, align 8
  %19 = ptrtoint ptr %vid17 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %vid17, align 8
  %flags = getelementptr i8, ptr %.pn142, i32 -546
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags, align 2
  %22 = ptrtoint ptr %flags18 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %flags18, align 2
  %23 = load i16, ptr %vid, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %11)
  %cmp21 = icmp eq i16 %23, %11
  br i1 %cmp21, label %if.then23, label %if.end16.if.end27_crit_edge

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %24 = or i16 %21, 2
  %25 = ptrtoint ptr %flags18 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %flags18, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end16.if.end27_crit_edge
  call void @br_vlan_get_stats(ptr noundef %v.0143, ptr noundef nonnull %stats) #10
  %26 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rx_bytes, align 8
  %28 = ptrtoint ptr %vxi to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %vxi, align 8
  %29 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %stats, align 32
  %31 = ptrtoint ptr %rx_packets29 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %rx_packets29, align 8
  %32 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tx_bytes, align 8
  %34 = ptrtoint ptr %tx_bytes30 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %tx_bytes30, align 8
  %35 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tx_packets, align 16
  %37 = ptrtoint ptr %tx_packets31 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %tx_packets31, align 8
  %call32 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 40, ptr noundef nonnull %vxi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end27.for.inc_crit_edge, label %cleanup42

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end27.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %stats) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vxi) #10
  %38 = ptrtoint ptr %.pn142 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn = load ptr, ptr %.pn142, align 4
  %cmp.not = icmp eq ptr %.pn, %vlan_list
  br i1 %cmp.not, label %if.end45.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup42:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %stats) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vxi) #10
  br label %cleanup67.sink.split

if.end45.loopexit:                                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = add i32 %vl_idx.0141, 2
  br label %if.end45

if.end45:                                         ; preds = %if.end45.loopexit, %br_get_pvid.exit.if.end45_crit_edge, %if.end9.if.end45_crit_edge
  %vl_idx.2 = phi i32 [ 1, %if.end9.if.end45_crit_edge ], [ 1, %br_get_pvid.exit.if.end45_crit_edge ], [ %phi.bo, %if.end45.loopexit ]
  %39 = ptrtoint ptr %prividx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %prividx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %vl_idx.2, i32 %40)
  %cmp47.not = icmp slt i32 %vl_idx.2, %40
  br i1 %cmp47.not, label %if.end45.if.end55_crit_edge, label %if.then49

if.end45.if.end55_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then49:                                        ; preds = %if.end45
  %call50 = call ptr @nla_reserve_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 240, i32 noundef 3) #10
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.then49.cleanup67.sink.split_crit_edge, label %if.end53

if.then49.cleanup67.sink.split_crit_edge:         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup67.sink.split

if.end53:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i123 = getelementptr i8, ptr %call50, i32 4
  call void @br_multicast_get_stats(ptr noundef %br.0, ptr noundef %p.0, ptr noundef %add.ptr.i123) #10
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %if.end45.if.end55_crit_edge
  %tobool56.not = icmp eq ptr %p.0, null
  br i1 %tobool56.not, label %if.end55.cleanup67.sink.split_crit_edge, label %if.then57

if.end55.cleanup67.sink.split_crit_edge:          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup67.sink.split

if.then57:                                        ; preds = %if.end55
  %call58 = call ptr @nla_reserve_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 48, i32 noundef 3) #10
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.then57.cleanup67.sink.split_crit_edge, label %if.end61

if.then57.cleanup67.sink.split_crit_edge:         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup67.sink.split

if.end61:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_lock_bh(ptr noundef %br.0) #10
  %add.ptr.i124 = getelementptr i8, ptr %call58, i32 4
  %stp_xstats = getelementptr inbounds %struct.net_bridge_port, ptr %p.0, i32 0, i32 36
  %41 = call ptr @memcpy(ptr %add.ptr.i124, ptr %stp_xstats, i32 48)
  call void @_raw_spin_unlock_bh(ptr noundef %br.0) #10
  br label %cleanup67.sink.split

cleanup67.sink.split:                             ; preds = %if.end61, %if.then57.cleanup67.sink.split_crit_edge, %if.end55.cleanup67.sink.split_crit_edge, %if.then49.cleanup67.sink.split_crit_edge, %cleanup42
  %vl_idx.3.sink = phi i32 [ 0, %if.end61 ], [ 0, %if.end55.cleanup67.sink.split_crit_edge ], [ %inc, %cleanup42 ], [ %vl_idx.2, %if.then57.cleanup67.sink.split_crit_edge ], [ %vl_idx.2, %if.then49.cleanup67.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end61 ], [ 0, %if.end55.cleanup67.sink.split_crit_edge ], [ -90, %cleanup42 ], [ -90, %if.then57.cleanup67.sink.split_crit_edge ], [ -90, %if.then49.cleanup67.sink.split_crit_edge ]
  %42 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i127 = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i128 = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i129 = sub i32 %sub.ptr.lhs.cast.i127, %sub.ptr.rhs.cast.i128
  %conv.i130 = trunc i32 %sub.ptr.sub.i129 to i16
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i130, ptr %9, align 2
  %45 = ptrtoint ptr %prividx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %vl_idx.3.sink, ptr %prividx, align 4
  br label %cleanup67

cleanup67:                                        ; preds = %cleanup67.sink.split, %sw.epilog.cleanup67_crit_edge, %br_port_get_rtnl.exit.cleanup67_crit_edge, %sw.bb2.cleanup67_crit_edge, %entry.cleanup67_crit_edge
  %retval.0 = phi i32 [ 0, %br_port_get_rtnl.exit.cleanup67_crit_edge ], [ -22, %entry.cleanup67_crit_edge ], [ -90, %sw.epilog.cleanup67_crit_edge ], [ 0, %sw.bb2.cleanup67_crit_edge ], [ %retval.0.ph, %cleanup67.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_netlink_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @br_mdb_init() #10
  tail call void @br_vlan_rtnl_init() #10
  tail call void @rtnl_af_register(ptr noundef nonnull @br_af_ops) #10
  %call = tail call i32 @rtnl_link_register(ptr noundef nonnull @br_link_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %out_af

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_af:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_af_unregister(ptr noundef nonnull @br_af_ops) #10
  tail call void @br_mdb_uninit() #10
  br label %cleanup

cleanup:                                          ; preds = %out_af, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_mdb_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_vlan_rtnl_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_af_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_af_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_mdb_uninit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_netlink_fini() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @br_mdb_uninit() #10
  tail call void @br_vlan_rtnl_uninit() #10
  tail call void @rtnl_af_unregister(ptr noundef nonnull @br_af_ops) #10
  tail call void @rtnl_link_unregister(ptr noundef nonnull @br_link_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_vlan_rtnl_uninit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_get_link_af_size_filtered(ptr noundef %dev, i32 noundef %filter_mask) #0 align 64 {
entry:
  %num_cfm_peer_mep_infos = alloca i32, align 4
  %num_cfm_mep_infos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cfm_peer_mep_infos) #10
  %0 = ptrtoint ptr %num_cfm_peer_mep_infos to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_cfm_peer_mep_infos, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cfm_mep_infos) #10
  %1 = ptrtoint ptr %num_cfm_mep_infos to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %num_cfm_mep_infos, align 4, !annotation !91
  %2 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %7, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %rcu_read_lock.exit
  %rx_handler.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 94
  %8 = ptrtoint ptr %rx_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %rx_handler.i.i, align 32
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.br_rx_handler_check_rcu.exit.i_crit_edge

if.then.br_rx_handler_check_rcu.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_rx_handler_check_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.br_rx_handler_check_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.br_rx_handler_check_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_rx_handler_check_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @br_rx_handler_check_rcu.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true4.i.i.br_rx_handler_check_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.br_rx_handler_check_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_rx_handler_check_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_rx_handler_check_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 850, ptr noundef nonnull @.str.7) #10
  br label %br_rx_handler_check_rcu.exit.i

br_rx_handler_check_rcu.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true4.i.i.br_rx_handler_check_rcu.exit.i_crit_edge, %land.lhs.true.i.i.br_rx_handler_check_rcu.exit.i_crit_edge, %if.then.br_rx_handler_check_rcu.exit.i_crit_edge
  %call9.i.i = tail call ptr @br_get_rx_handler(ptr noundef %dev) #10
  %cmp.i.i = icmp eq ptr %9, %call9.i.i
  br i1 %cmp.i.i, label %cond.true.i, label %br_rx_handler_check_rcu.exit.i.br_get_num_vlan_infos.exit_crit_edge

br_rx_handler_check_rcu.exit.i.br_get_num_vlan_infos.exit_crit_edge: ; preds = %br_rx_handler_check_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_get_num_vlan_infos.exit

cond.true.i:                                      ; preds = %br_rx_handler_check_rcu.exit.i
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %10 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %rx_handler_data.i.i, align 4
  %call.i3.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i7.i, label %cond.true.i.br_port_get_check_rcu.exit_crit_edge

cond.true.i.br_port_get_check_rcu.exit_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_check_rcu.exit

land.lhs.true.i7.i:                               ; preds = %cond.true.i
  %call2.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i5.i)
  %tobool3.not.i6.i = icmp eq i32 %call2.i5.i, 0
  br i1 %tobool3.not.i6.i, label %land.lhs.true.i7.i.br_port_get_check_rcu.exit_crit_edge, label %land.lhs.true4.i8.i

land.lhs.true.i7.i.br_port_get_check_rcu.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_check_rcu.exit

land.lhs.true4.i8.i:                              ; preds = %land.lhs.true.i7.i
  %.b9.i.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i8.i.br_port_get_check_rcu.exit_crit_edge, label %if.then.i9.i

land.lhs.true4.i8.i.br_port_get_check_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_check_rcu.exit

if.then.i9.i:                                     ; preds = %land.lhs.true4.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 416, ptr noundef nonnull @.str.7) #10
  br label %br_port_get_check_rcu.exit

br_port_get_check_rcu.exit:                       ; preds = %if.then.i9.i, %land.lhs.true4.i8.i.br_port_get_check_rcu.exit_crit_edge, %land.lhs.true.i7.i.br_port_get_check_rcu.exit_crit_edge, %cond.true.i.br_port_get_check_rcu.exit_crit_edge
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %br_port_get_check_rcu.exit.br_get_num_vlan_infos.exit_crit_edge, label %if.then2

br_port_get_check_rcu.exit.br_get_num_vlan_infos.exit_crit_edge: ; preds = %br_port_get_check_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_get_num_vlan_infos.exit

if.then2:                                         ; preds = %br_port_get_check_rcu.exit
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %vlgrp.i, align 8
  %call.i81 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i82 = icmp eq i32 %call.i81, 0
  br i1 %tobool.not.i82, label %land.lhs.true.i83, label %if.then2.if.end9_crit_edge

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true.i83:                                ; preds = %if.then2
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i83.if.end9_crit_edge, label %land.lhs.true4.i

land.lhs.true.i83.if.end9_crit_edge:              ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i83
  %.b9.i = load i1, ptr @nbp_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.if.end9_crit_edge, label %land.lhs.true4.i.if.end9.sink.split_crit_edge

land.lhs.true4.i.if.end9.sink.split_crit_edge:    ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.sink.split

land.lhs.true4.i.if.end9_crit_edge:               ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.else:                                          ; preds = %rcu_read_lock.exit
  %and.i86 = and i64 %7, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i86)
  %tobool.i87.not = icmp eq i64 %and.i86, 0
  br i1 %tobool.i87.not, label %if.else.br_get_num_vlan_infos.exit_crit_edge, label %if.then5

if.else.br_get_num_vlan_infos.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_get_num_vlan_infos.exit

if.then5:                                         ; preds = %if.else
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %vlgrp.i88 = getelementptr i8, ptr %dev, i32 2408
  %14 = ptrtoint ptr %vlgrp.i88 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %vlgrp.i88, align 4
  %call.i89 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not.i90 = icmp eq i32 %call.i89, 0
  br i1 %tobool.not.i90, label %land.lhs.true.i93, label %if.then5.if.end9_crit_edge

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true.i93:                                ; preds = %if.then5
  %call2.i91 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i91)
  %tobool3.not.i92 = icmp eq i32 %call2.i91, 0
  br i1 %tobool3.not.i92, label %land.lhs.true.i93.if.end9_crit_edge, label %land.lhs.true4.i95

land.lhs.true.i93.if.end9_crit_edge:              ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true4.i95:                               ; preds = %land.lhs.true.i93
  %.b9.i94 = load i1, ptr @br_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i94, label %land.lhs.true4.i95.if.end9_crit_edge, label %land.lhs.true4.i95.if.end9.sink.split_crit_edge

land.lhs.true4.i95.if.end9.sink.split_crit_edge:  ; preds = %land.lhs.true4.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.sink.split

land.lhs.true4.i95.if.end9_crit_edge:             ; preds = %land.lhs.true4.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9.sink.split:                               ; preds = %land.lhs.true4.i95.if.end9.sink.split_crit_edge, %land.lhs.true4.i.if.end9.sink.split_crit_edge
  %br_vlan_group_rcu.__warned.sink = phi ptr [ @nbp_vlan_group_rcu.__warned, %land.lhs.true4.i.if.end9.sink.split_crit_edge ], [ @br_vlan_group_rcu.__warned, %land.lhs.true4.i95.if.end9.sink.split_crit_edge ]
  %.sink = phi i32 [ 1489, %land.lhs.true4.i.if.end9.sink.split_crit_edge ], [ 1483, %land.lhs.true4.i95.if.end9.sink.split_crit_edge ]
  %vg.0.ph = phi ptr [ %13, %land.lhs.true4.i.if.end9.sink.split_crit_edge ], [ %15, %land.lhs.true4.i95.if.end9.sink.split_crit_edge ]
  %p.0.ph = phi ptr [ %11, %land.lhs.true4.i.if.end9.sink.split_crit_edge ], [ null, %land.lhs.true4.i95.if.end9.sink.split_crit_edge ]
  %br.0.ph = phi ptr [ null, %land.lhs.true4.i.if.end9.sink.split_crit_edge ], [ %add.ptr.i, %land.lhs.true4.i95.if.end9.sink.split_crit_edge ]
  %16 = ptrtoint ptr %br_vlan_group_rcu.__warned.sink to i32
  call void @__asan_store1_noabort(i32 %16)
  store i1 true, ptr %br_vlan_group_rcu.__warned.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef %.sink, ptr noundef nonnull @.str.7) #10
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %land.lhs.true4.i95.if.end9_crit_edge, %land.lhs.true.i93.if.end9_crit_edge, %if.then5.if.end9_crit_edge, %land.lhs.true4.i.if.end9_crit_edge, %land.lhs.true.i83.if.end9_crit_edge, %if.then2.if.end9_crit_edge
  %vg.0 = phi ptr [ %13, %if.then2.if.end9_crit_edge ], [ %13, %land.lhs.true.i83.if.end9_crit_edge ], [ %13, %land.lhs.true4.i.if.end9_crit_edge ], [ %15, %if.then5.if.end9_crit_edge ], [ %15, %land.lhs.true.i93.if.end9_crit_edge ], [ %15, %land.lhs.true4.i95.if.end9_crit_edge ], [ %vg.0.ph, %if.end9.sink.split ]
  %p.0 = phi ptr [ %11, %if.then2.if.end9_crit_edge ], [ %11, %land.lhs.true.i83.if.end9_crit_edge ], [ %11, %land.lhs.true4.i.if.end9_crit_edge ], [ null, %if.then5.if.end9_crit_edge ], [ null, %land.lhs.true.i93.if.end9_crit_edge ], [ null, %land.lhs.true4.i95.if.end9_crit_edge ], [ %p.0.ph, %if.end9.sink.split ]
  %br.0 = phi ptr [ null, %if.then2.if.end9_crit_edge ], [ null, %land.lhs.true.i83.if.end9_crit_edge ], [ null, %land.lhs.true4.i.if.end9_crit_edge ], [ %add.ptr.i, %if.then5.if.end9_crit_edge ], [ %add.ptr.i, %land.lhs.true.i93.if.end9_crit_edge ], [ %add.ptr.i, %land.lhs.true4.i95.if.end9_crit_edge ], [ %br.0.ph, %if.end9.sink.split ]
  %tobool.not.i97 = icmp eq ptr %vg.0, null
  br i1 %tobool.not.i97, label %if.end9.br_get_num_vlan_infos.exit_crit_edge, label %if.end.i

if.end9.br_get_num_vlan_infos.exit_crit_edge:     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_get_num_vlan_infos.exit

if.end.i:                                         ; preds = %if.end9
  %and.i98 = and i32 %filter_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool1.not.i = icmp eq i32 %and.i98, 0
  br i1 %tobool1.not.i, label %if.end4.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %num_vlans3.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 3
  %17 = ptrtoint ptr %num_vlans3.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_vlans3.i, align 4
  %conv.i = zext i16 %18 to i32
  br label %br_get_num_vlan_infos.exit

if.end4.i:                                        ; preds = %if.end.i
  %19 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i99 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i99, label %if.end4.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i101

if.end4.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i101:                             ; preds = %if.end4.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i100 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i100, label %land.lhs.true.i.i101.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i101.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i101
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i102

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i102:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i102, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i101.rcu_read_lock.exit.i_crit_edge, %if.end4.i.rcu_read_lock.exit.i_crit_edge
  %and.i.i = and i32 %filter_mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i8.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i8.i, label %rcu_read_lock.exit.i.__get_num_vlan_infos.exit.i_crit_edge, label %br_get_pvid.exit.i.i

rcu_read_lock.exit.i.__get_num_vlan_infos.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__get_num_vlan_infos.exit.i

br_get_pvid.exit.i.i:                             ; preds = %rcu_read_lock.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  %pvid.i.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 4
  %23 = ptrtoint ptr %pvid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %pvid.i.i.i, align 2
  %call1.i9.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i9.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i10.i, label %br_get_pvid.exit.i.i.do.end.i.i_crit_edge

br_get_pvid.exit.i.i.do.end.i.i_crit_edge:        ; preds = %br_get_pvid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true.i10.i:                              ; preds = %br_get_pvid.exit.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i10.i.do.end.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i10.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i10.i
  %.b115.i.i = load i1, ptr @__get_num_vlan_infos.__warned, align 1
  br i1 %.b115.i.i, label %land.lhs.true5.i.i.do.end.i.i_crit_edge, label %if.then7.i.i

land.lhs.true5.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__get_num_vlan_infos.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 36, ptr noundef nonnull @.str.8) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then7.i.i, %land.lhs.true5.i.i.do.end.i.i_crit_edge, %land.lhs.true.i10.i.do.end.i.i_crit_edge, %br_get_pvid.exit.i.i.do.end.i.i_crit_edge
  %vlan_list.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 2
  %25 = ptrtoint ptr %vlan_list.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn116.i.i = load volatile ptr, ptr %vlan_list.i.i, align 4
  %cmp.not117.i.i = icmp eq ptr %.pn116.i.i, %vlan_list.i.i
  br i1 %cmp.not117.i.i, label %do.end.i.i.__get_num_vlan_infos.exit.i_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.__get_num_vlan_infos.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__get_num_vlan_infos.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %.pn122.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn116.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %vid_range_start.0121.i.i = phi i16 [ %vid_range_start.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %do.end.i.i.for.body.i.i_crit_edge ]
  %vid_range_end.0120.i.i = phi i16 [ %vid_range_end.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %do.end.i.i.for.body.i.i_crit_edge ]
  %vid_range_flags.0119.i.i = phi i16 [ %vid_range_flags.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %do.end.i.i.for.body.i.i_crit_edge ]
  %num_vlans.0118.i.i = phi i32 [ %num_vlans.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %do.end.i.i.for.body.i.i_crit_edge ]
  %flags.i.i.i.i = getelementptr i8, ptr %.pn122.i.i, i32 -546
  %26 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags.i.i.i.i, align 2
  %28 = and i16 %27, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %28)
  %.not.i.i = icmp eq i16 %28, 1
  br i1 %.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end16.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end16.i.i:                                     ; preds = %for.body.i.i
  %vid.i.i = getelementptr i8, ptr %.pn122.i.i, i32 -548
  %29 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vid.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %24)
  %cmp18.i.i = icmp eq i16 %30, %24
  %spec.select.i.i = select i1 %cmp18.i.i, i16 2, i16 0
  %31 = and i16 %27, 4
  %32 = or i16 %spec.select.i.i, %31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid_range_start.0121.i.i)
  %cmp34.i.i = icmp eq i16 %vid_range_start.0121.i.i, 0
  br i1 %cmp34.i.i, label %if.end16.i.i.for.inc.i.i_crit_edge, label %if.else.i.i

if.end16.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %if.end16.i.i
  %conv38.i.i = zext i16 %30 to i32
  %conv39.i.i = zext i16 %vid_range_end.0120.i.i to i32
  %sub.i.i = sub nsw i32 %conv38.i.i, %conv39.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp40.i.i = icmp eq i32 %sub.i.i, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %vid_range_flags.0119.i.i)
  %cmp45.i.i = icmp eq i16 %32, %vid_range_flags.0119.i.i
  %or.cond.i.i = select i1 %cmp40.i.i, i1 %cmp45.i.i, i1 false
  br i1 %or.cond.i.i, label %if.else.i.i.for.inc.i.i_crit_edge, label %if.else49.i.i

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.else49.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %vid_range_end.0120.i.i, i16 %vid_range_start.0121.i.i)
  %cmp53.i.i = icmp ugt i16 %vid_range_end.0120.i.i, %vid_range_start.0121.i.i
  br i1 %cmp53.i.i, label %if.then55.i.i, label %if.else56.i.i

if.then55.i.i:                                    ; preds = %if.else49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i = add i32 %num_vlans.0118.i.i, 2
  br label %for.inc.i.i

if.else56.i.i:                                    ; preds = %if.else49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add57.i.i = add i32 %num_vlans.0118.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else56.i.i, %if.then55.i.i, %if.else.i.i.for.inc.i.i_crit_edge, %if.end16.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %num_vlans.2.i.i = phi i32 [ %num_vlans.0118.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %num_vlans.0118.i.i, %if.else.i.i.for.inc.i.i_crit_edge ], [ %num_vlans.0118.i.i, %if.end16.i.i.for.inc.i.i_crit_edge ], [ %add.i.i, %if.then55.i.i ], [ %add57.i.i, %if.else56.i.i ]
  %vid_range_flags.1.i.i = phi i16 [ %vid_range_flags.0119.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %vid_range_flags.0119.i.i, %if.else.i.i.for.inc.i.i_crit_edge ], [ %32, %if.end16.i.i.for.inc.i.i_crit_edge ], [ %32, %if.then55.i.i ], [ %32, %if.else56.i.i ]
  %vid_range_end.1.i.i = phi i16 [ %vid_range_end.0120.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %30, %if.else.i.i.for.inc.i.i_crit_edge ], [ %30, %if.end16.i.i.for.inc.i.i_crit_edge ], [ %30, %if.then55.i.i ], [ %30, %if.else56.i.i ]
  %vid_range_start.1.i.i = phi i16 [ %vid_range_start.0121.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %vid_range_start.0121.i.i, %if.else.i.i.for.inc.i.i_crit_edge ], [ %30, %if.end16.i.i.for.inc.i.i_crit_edge ], [ %30, %if.then55.i.i ], [ %30, %if.else56.i.i ]
  %33 = ptrtoint ptr %.pn122.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.i.i = load volatile ptr, ptr %.pn122.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %vlan_list.i.i
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid_range_start.1.i.i)
  %cmp73.not.i.i = icmp eq i16 %vid_range_start.1.i.i, 0
  br i1 %cmp73.not.i.i, label %for.end.i.i.__get_num_vlan_infos.exit.i_crit_edge, label %if.then75.i.i

for.end.i.i.__get_num_vlan_infos.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__get_num_vlan_infos.exit.i

if.then75.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %vid_range_end.1.i.i, i16 %vid_range_start.1.i.i)
  %cmp79.i.i = icmp ugt i16 %vid_range_end.1.i.i, %vid_range_start.1.i.i
  br i1 %cmp79.i.i, label %if.then81.i.i, label %if.else83.i.i

if.then81.i.i:                                    ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add82.i.i = add i32 %num_vlans.2.i.i, 2
  br label %__get_num_vlan_infos.exit.i

if.else83.i.i:                                    ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add84.i.i = add i32 %num_vlans.2.i.i, 1
  br label %__get_num_vlan_infos.exit.i

__get_num_vlan_infos.exit.i:                      ; preds = %if.else83.i.i, %if.then81.i.i, %for.end.i.i.__get_num_vlan_infos.exit.i_crit_edge, %do.end.i.i.__get_num_vlan_infos.exit.i_crit_edge, %rcu_read_lock.exit.i.__get_num_vlan_infos.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %rcu_read_lock.exit.i.__get_num_vlan_infos.exit.i_crit_edge ], [ %add82.i.i, %if.then81.i.i ], [ %add84.i.i, %if.else83.i.i ], [ %num_vlans.2.i.i, %for.end.i.i.__get_num_vlan_infos.exit.i_crit_edge ], [ 0, %do.end.i.i.__get_num_vlan_infos.exit.i_crit_edge ]
  %call.i11.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i11.i, label %__get_num_vlan_infos.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i14.i

__get_num_vlan_infos.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %__get_num_vlan_infos.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i14.i:                              ; preds = %__get_num_vlan_infos.exit.i
  %call1.i12.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call1.i12.i, 0
  br i1 %tobool.not.i13.i, label %land.lhs.true.i14.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i16.i

land.lhs.true.i14.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i16.i:                             ; preds = %land.lhs.true.i14.i
  %.b4.i15.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i, label %land.lhs.true2.i16.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i17.i

land.lhs.true2.i16.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i17.i:                                    ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i17.i, %land.lhs.true2.i16.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i14.i.rcu_read_unlock.exit.i_crit_edge, %__get_num_vlan_infos.exit.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %34 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i18.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i18.i to ptr
  %preempt_count.i.i.i.i19.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i19.i, align 4
  %sub.i.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i19.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %br_get_num_vlan_infos.exit

br_get_num_vlan_infos.exit:                       ; preds = %rcu_read_unlock.exit.i, %if.then2.i, %if.end9.br_get_num_vlan_infos.exit_crit_edge, %if.else.br_get_num_vlan_infos.exit_crit_edge, %br_port_get_check_rcu.exit.br_get_num_vlan_infos.exit_crit_edge, %br_rx_handler_check_rcu.exit.i.br_get_num_vlan_infos.exit_crit_edge
  %br.0120 = phi ptr [ %br.0, %if.then2.i ], [ %br.0, %rcu_read_unlock.exit.i ], [ %br.0, %if.end9.br_get_num_vlan_infos.exit_crit_edge ], [ null, %br_port_get_check_rcu.exit.br_get_num_vlan_infos.exit_crit_edge ], [ null, %if.else.br_get_num_vlan_infos.exit_crit_edge ], [ null, %br_rx_handler_check_rcu.exit.i.br_get_num_vlan_infos.exit_crit_edge ]
  %p.0119 = phi ptr [ %p.0, %if.then2.i ], [ %p.0, %rcu_read_unlock.exit.i ], [ %p.0, %if.end9.br_get_num_vlan_infos.exit_crit_edge ], [ null, %br_port_get_check_rcu.exit.br_get_num_vlan_infos.exit_crit_edge ], [ null, %if.else.br_get_num_vlan_infos.exit_crit_edge ], [ null, %br_rx_handler_check_rcu.exit.i.br_get_num_vlan_infos.exit_crit_edge ]
  %vg.0118 = phi ptr [ %vg.0, %if.then2.i ], [ %vg.0, %rcu_read_unlock.exit.i ], [ null, %if.end9.br_get_num_vlan_infos.exit_crit_edge ], [ null, %br_port_get_check_rcu.exit.br_get_num_vlan_infos.exit_crit_edge ], [ null, %if.else.br_get_num_vlan_infos.exit_crit_edge ], [ null, %br_rx_handler_check_rcu.exit.i.br_get_num_vlan_infos.exit_crit_edge ]
  %retval.0.i = phi i32 [ %conv.i, %if.then2.i ], [ %retval.0.i.i, %rcu_read_unlock.exit.i ], [ 0, %if.end9.br_get_num_vlan_infos.exit_crit_edge ], [ 0, %br_port_get_check_rcu.exit.br_get_num_vlan_infos.exit_crit_edge ], [ 0, %if.else.br_get_num_vlan_infos.exit_crit_edge ], [ 0, %br_rx_handler_check_rcu.exit.i.br_get_num_vlan_infos.exit_crit_edge ]
  %call.i103 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i103, label %br_get_num_vlan_infos.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i106

br_get_num_vlan_infos.exit.rcu_read_unlock.exit_crit_edge: ; preds = %br_get_num_vlan_infos.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i106:                               ; preds = %br_get_num_vlan_infos.exit
  %call1.i104 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i104)
  %tobool.not.i105 = icmp eq i32 %call1.i104, 0
  br i1 %tobool.not.i105, label %land.lhs.true.i106.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i108

land.lhs.true.i106.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i108:                              ; preds = %land.lhs.true.i106
  %.b4.i107 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i107, label %land.lhs.true2.i108.rcu_read_unlock.exit_crit_edge, label %if.then.i109

land.lhs.true2.i108.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i108
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i109:                                     ; preds = %land.lhs.true2.i108
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i109, %land.lhs.true2.i108.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i106.rcu_read_unlock.exit_crit_edge, %br_get_num_vlan_infos.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %38 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i110 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i110 to ptr
  %preempt_count.i.i.i.i111 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i111, align 4
  %sub.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i111, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool11.not = icmp eq ptr %p.0119, null
  br i1 %tobool11.not, label %rcu_read_unlock.exit.if.end15_crit_edge, label %land.lhs.true

rcu_read_unlock.exit.if.end15_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %rcu_read_unlock.exit
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p.0119, i32 0, i32 4
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %and = and i32 %43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end15_crit_edge, label %if.then13

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 @br_get_vlan_tunnel_info_size(ptr noundef %vg.0118) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true.if.end15_crit_edge, %rcu_read_unlock.exit.if.end15_crit_edge
  %vinfo_sz.0 = phi i32 [ %call14, %if.then13 ], [ 0, %land.lhs.true.if.end15_crit_edge ], [ 0, %rcu_read_unlock.exit.if.end15_crit_edge ]
  %mul = shl i32 %retval.0.i, 3
  %add17 = add i32 %vinfo_sz.0, %mul
  %and18 = and i32 %filter_mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %tobool22.not = icmp eq ptr %br.0120, null
  %or.cond = or i1 %tobool19.not, %tobool22.not
  br i1 %or.cond, label %if.end15.cleanup_crit_edge, label %if.end24

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = call i32 @br_cfm_mep_count(ptr noundef nonnull %br.0120, ptr noundef nonnull %num_cfm_mep_infos) #10
  %call26 = call i32 @br_cfm_peer_mep_count(ptr noundef nonnull %br.0120, ptr noundef nonnull %num_cfm_peer_mep_infos) #10
  %add28 = add i32 %add17, 4
  %44 = ptrtoint ptr %num_cfm_mep_infos to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_cfm_mep_infos, align 4
  %mul36 = shl i32 %45, 5
  %add37 = add i32 %add28, %mul36
  %46 = ptrtoint ptr %num_cfm_peer_mep_infos to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_cfm_peer_mep_infos, align 4
  %mul55 = mul i32 %47, 72
  %add56 = add i32 %add37, %mul55
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %add56, %if.end24 ], [ %add17, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cfm_mep_infos) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cfm_peer_mep_infos) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nbp_vlan_group_rcu(ptr noundef %p) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %vlgrp = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 5
  %0 = ptrtoint ptr %vlgrp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %vlgrp, align 8
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @nbp_vlan_group_rcu.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nbp_vlan_group_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1489, ptr noundef nonnull @.str.7) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  ret ptr %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @br_vlan_group_rcu(ptr noundef %br) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %vlgrp = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 7
  %0 = ptrtoint ptr %vlgrp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %vlgrp, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @br_vlan_group_rcu.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_vlan_group_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1483, ptr noundef nonnull @.str.7) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  ret ptr %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %0 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_get_vlan_tunnel_info_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_cfm_mep_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_cfm_peer_mep_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_get_rx_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_iflink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_port_fill_attrs(ptr noundef %skb, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  %tmp.i386 = alloca i32, align 4
  %tmp.i384 = alloca i32, align 4
  %tmp.i382 = alloca i32, align 4
  %tmp.i380 = alloca i8, align 1
  %tmp.i378 = alloca i64, align 8
  %tmp.i376 = alloca i64, align 8
  %tmp.i374 = alloca i64, align 8
  %tmp.i372 = alloca i8, align 1
  %tmp.i370 = alloca i8, align 1
  %tmp.i368 = alloca i8, align 1
  %tmp.i366 = alloca i8, align 1
  %tmp.i364 = alloca i16, align 2
  %tmp.i362 = alloca i8, align 1
  %tmp.i360 = alloca i8, align 1
  %tmp.i358 = alloca i8, align 1
  %tmp.i356 = alloca i16, align 2
  %tmp.i354 = alloca i16, align 2
  %tmp.i352 = alloca i16, align 2
  %tmp.i350 = alloca i16, align 2
  %tmp.i348 = alloca i8, align 1
  %tmp.i346 = alloca i8, align 1
  %tmp.i344 = alloca i8, align 1
  %tmp.i342 = alloca i8, align 1
  %tmp.i340 = alloca i8, align 1
  %tmp.i338 = alloca i8, align 1
  %tmp.i336 = alloca i8, align 1
  %tmp.i334 = alloca i8, align 1
  %tmp.i332 = alloca i8, align 1
  %tmp.i330 = alloca i8, align 1
  %tmp.i328 = alloca i8, align 1
  %tmp.i326 = alloca i32, align 4
  %tmp.i324 = alloca i16, align 2
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %2 = trunc i32 %1 to i8
  %3 = and i8 %2, 1
  %state = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #10
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %tmp.i, align 1
  %call.i323 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i323)
  %tobool2.not = icmp eq i32 %call.i323, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %priority = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 7
  %7 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %priority, align 8
  %conv3 = zext i8 %8 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i324) #10
  %9 = ptrtoint ptr %tmp.i324 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv3, ptr %tmp.i324, align 2
  %call.i325 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i324) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i324) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i325)
  %tobool5.not = icmp eq i32 %call.i325, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %path_cost = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 16
  %10 = ptrtoint ptr %path_cost to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %path_cost, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i326) #10
  %12 = ptrtoint ptr %tmp.i326 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tmp.i326, align 4
  %call.i327 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i326) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i326) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i327)
  %tobool8.not = icmp eq i32 %call.i327, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i328) #10
  %13 = ptrtoint ptr %tmp.i328 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %3, ptr %tmp.i328, align 1
  %call.i329 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i328) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i328) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %tobool11.not = icmp eq i32 %call.i329, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %16 = trunc i32 %15 to i8
  %17 = lshr i8 %16, 1
  %18 = and i8 %17, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i330) #10
  %19 = ptrtoint ptr %tmp.i330 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %tmp.i330, align 1
  %call.i331 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i330) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i330) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i331)
  %tobool22.not = icmp eq i32 %call.i331, 0
  br i1 %tobool22.not, label %lor.lhs.false23, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false23:                                  ; preds = %lor.lhs.false12
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %22 = trunc i32 %21 to i8
  %23 = lshr i8 %22, 2
  %24 = and i8 %23, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i332) #10
  %25 = ptrtoint ptr %tmp.i332 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %tmp.i332, align 1
  %call.i333 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i332) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i332) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i333)
  %tobool33.not = icmp eq i32 %call.i333, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %lor.lhs.false23.cleanup_crit_edge

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false34:                                  ; preds = %lor.lhs.false23
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %28 = trunc i32 %27 to i8
  %29 = lshr i8 %28, 3
  %30 = and i8 %29, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i334) #10
  %31 = ptrtoint ptr %tmp.i334 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %tmp.i334, align 1
  %call.i335 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i334) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i334) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i335)
  %tobool44.not = icmp eq i32 %call.i335, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %lor.lhs.false34.cleanup_crit_edge

lor.lhs.false34.cleanup_crit_edge:                ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false45:                                  ; preds = %lor.lhs.false34
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and47 = lshr i32 %33, 12
  %34 = trunc i32 %and47 to i8
  %35 = and i8 %34, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i336) #10
  %36 = ptrtoint ptr %tmp.i336 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %tmp.i336, align 1
  %call.i337 = call i32 @nla_put(ptr noundef %skb, i32 noundef 28, i32 noundef 1, ptr noundef nonnull %tmp.i336) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i336) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i337)
  %tobool55.not = icmp eq i32 %call.i337, 0
  br i1 %tobool55.not, label %lor.lhs.false56, label %lor.lhs.false45.cleanup_crit_edge

lor.lhs.false45.cleanup_crit_edge:                ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false56:                                  ; preds = %lor.lhs.false45
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %39 = trunc i32 %38 to i8
  %40 = lshr i8 %39, 5
  %41 = and i8 %40, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i338) #10
  %42 = ptrtoint ptr %tmp.i338 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %tmp.i338, align 1
  %call.i339 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %tmp.i338) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i338) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i339)
  %tobool66.not = icmp eq i32 %call.i339, 0
  br i1 %tobool66.not, label %lor.lhs.false67, label %lor.lhs.false56.cleanup_crit_edge

lor.lhs.false56.cleanup_crit_edge:                ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false67:                                  ; preds = %lor.lhs.false56
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %45 = trunc i32 %44 to i8
  %46 = lshr i8 %45, 6
  %47 = and i8 %46, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i340) #10
  %48 = ptrtoint ptr %tmp.i340 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %tmp.i340, align 1
  %call.i341 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 1, ptr noundef nonnull %tmp.i340) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i340) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i341)
  %tobool77.not = icmp eq i32 %call.i341, 0
  br i1 %tobool77.not, label %lor.lhs.false78, label %lor.lhs.false67.cleanup_crit_edge

lor.lhs.false67.cleanup_crit_edge:                ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false78:                                  ; preds = %lor.lhs.false67
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  %and80 = lshr i32 %50, 11
  %51 = trunc i32 %and80 to i8
  %52 = and i8 %51, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i342) #10
  %53 = ptrtoint ptr %tmp.i342 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %tmp.i342, align 1
  %call.i343 = call i32 @nla_put(ptr noundef %skb, i32 noundef 27, i32 noundef 1, ptr noundef nonnull %tmp.i342) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i342) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i343)
  %tobool88.not = icmp eq i32 %call.i343, 0
  br i1 %tobool88.not, label %lor.lhs.false89, label %lor.lhs.false78.cleanup_crit_edge

lor.lhs.false78.cleanup_crit_edge:                ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false89:                                  ; preds = %lor.lhs.false78
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %and91 = lshr i32 %55, 14
  %56 = trunc i32 %and91 to i8
  %57 = and i8 %56, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i344) #10
  %58 = ptrtoint ptr %tmp.i344 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %tmp.i344, align 1
  %call.i345 = call i32 @nla_put(ptr noundef %skb, i32 noundef 30, i32 noundef 1, ptr noundef nonnull %tmp.i344) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i344) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i345)
  %tobool99.not = icmp eq i32 %call.i345, 0
  br i1 %tobool99.not, label %lor.lhs.false100, label %lor.lhs.false89.cleanup_crit_edge

lor.lhs.false89.cleanup_crit_edge:                ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false100:                                 ; preds = %lor.lhs.false89
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags, align 4
  %and102 = lshr i32 %60, 8
  %61 = trunc i32 %and102 to i8
  %62 = and i8 %61, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i346) #10
  %63 = ptrtoint ptr %tmp.i346 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %tmp.i346, align 1
  %call.i347 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %tmp.i346) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i346) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i347)
  %tobool110.not = icmp eq i32 %call.i347, 0
  br i1 %tobool110.not, label %lor.lhs.false111, label %lor.lhs.false100.cleanup_crit_edge

lor.lhs.false100.cleanup_crit_edge:               ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false111:                                 ; preds = %lor.lhs.false100
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %and113 = lshr i32 %65, 10
  %66 = trunc i32 %and113 to i8
  %67 = and i8 %66, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i348) #10
  %68 = ptrtoint ptr %tmp.i348 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %tmp.i348, align 1
  %call.i349 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 1, ptr noundef nonnull %tmp.i348) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i348) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i349)
  %tobool121.not = icmp eq i32 %call.i349, 0
  br i1 %tobool121.not, label %lor.lhs.false122, label %lor.lhs.false111.cleanup_crit_edge

lor.lhs.false111.cleanup_crit_edge:               ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false122:                                 ; preds = %lor.lhs.false111
  %designated_root = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 14
  %call123 = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef 8, ptr noundef %designated_root) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %lor.lhs.false125, label %lor.lhs.false122.cleanup_crit_edge

lor.lhs.false122.cleanup_crit_edge:               ; preds = %lor.lhs.false122
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false125:                                 ; preds = %lor.lhs.false122
  %designated_bridge = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 15
  %call126 = call i32 @nla_put(ptr noundef %skb, i32 noundef 14, i32 noundef 8, ptr noundef %designated_bridge) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %lor.lhs.false128, label %lor.lhs.false125.cleanup_crit_edge

lor.lhs.false125.cleanup_crit_edge:               ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false128:                                 ; preds = %lor.lhs.false125
  %designated_port = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 13
  %69 = ptrtoint ptr %designated_port to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %designated_port, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i350) #10
  %71 = ptrtoint ptr %tmp.i350 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %tmp.i350, align 2
  %call.i351 = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 2, ptr noundef nonnull %tmp.i350) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i350) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i351)
  %tobool130.not = icmp eq i32 %call.i351, 0
  br i1 %tobool130.not, label %lor.lhs.false131, label %lor.lhs.false128.cleanup_crit_edge

lor.lhs.false128.cleanup_crit_edge:               ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false131:                                 ; preds = %lor.lhs.false128
  %designated_cost = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 17
  %72 = ptrtoint ptr %designated_cost to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %designated_cost, align 8
  %conv132 = trunc i32 %73 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i352) #10
  %74 = ptrtoint ptr %tmp.i352 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv132, ptr %tmp.i352, align 2
  %call.i353 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16, i32 noundef 2, ptr noundef nonnull %tmp.i352) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i352) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i353)
  %tobool134.not = icmp eq i32 %call.i353, 0
  br i1 %tobool134.not, label %lor.lhs.false135, label %lor.lhs.false131.cleanup_crit_edge

lor.lhs.false131.cleanup_crit_edge:               ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false135:                                 ; preds = %lor.lhs.false131
  %port_id = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 12
  %75 = ptrtoint ptr %port_id to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %port_id, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i354) #10
  %77 = ptrtoint ptr %tmp.i354 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %tmp.i354, align 2
  %call.i355 = call i32 @nla_put(ptr noundef %skb, i32 noundef 17, i32 noundef 2, ptr noundef nonnull %tmp.i354) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i354) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i355)
  %tobool137.not = icmp eq i32 %call.i355, 0
  br i1 %tobool137.not, label %lor.lhs.false138, label %lor.lhs.false135.cleanup_crit_edge

lor.lhs.false135.cleanup_crit_edge:               ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false138:                                 ; preds = %lor.lhs.false135
  %port_no = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 9
  %78 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %port_no, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i356) #10
  %80 = ptrtoint ptr %tmp.i356 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %tmp.i356, align 2
  %call.i357 = call i32 @nla_put(ptr noundef %skb, i32 noundef 18, i32 noundef 2, ptr noundef nonnull %tmp.i356) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i356) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i357)
  %tobool140.not = icmp eq i32 %call.i357, 0
  br i1 %tobool140.not, label %lor.lhs.false141, label %lor.lhs.false138.cleanup_crit_edge

lor.lhs.false138.cleanup_crit_edge:               ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false141:                                 ; preds = %lor.lhs.false138
  %topology_change_ack = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 10
  %81 = ptrtoint ptr %topology_change_ack to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %topology_change_ack, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i358) #10
  %83 = ptrtoint ptr %tmp.i358 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %tmp.i358, align 1
  %call.i359 = call i32 @nla_put(ptr noundef %skb, i32 noundef 19, i32 noundef 1, ptr noundef nonnull %tmp.i358) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i358) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i359)
  %tobool143.not = icmp eq i32 %call.i359, 0
  br i1 %tobool143.not, label %lor.lhs.false144, label %lor.lhs.false141.cleanup_crit_edge

lor.lhs.false141.cleanup_crit_edge:               ; preds = %lor.lhs.false141
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false144:                                 ; preds = %lor.lhs.false141
  %config_pending = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 11
  %84 = ptrtoint ptr %config_pending to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %config_pending, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i360) #10
  %86 = ptrtoint ptr %tmp.i360 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %tmp.i360, align 1
  %call.i361 = call i32 @nla_put(ptr noundef %skb, i32 noundef 20, i32 noundef 1, ptr noundef nonnull %tmp.i360) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i360) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i361)
  %tobool146.not = icmp eq i32 %call.i361, 0
  br i1 %tobool146.not, label %lor.lhs.false147, label %lor.lhs.false144.cleanup_crit_edge

lor.lhs.false144.cleanup_crit_edge:               ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false147:                                 ; preds = %lor.lhs.false144
  %87 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags, align 4
  %and149 = lshr i32 %88, 13
  %89 = trunc i32 %and149 to i8
  %90 = and i8 %89, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i362) #10
  %91 = ptrtoint ptr %tmp.i362 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %tmp.i362, align 1
  %call.i363 = call i32 @nla_put(ptr noundef %skb, i32 noundef 29, i32 noundef 1, ptr noundef nonnull %tmp.i362) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i362) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i363)
  %tobool157.not = icmp eq i32 %call.i363, 0
  br i1 %tobool157.not, label %lor.lhs.false158, label %lor.lhs.false147.cleanup_crit_edge

lor.lhs.false147.cleanup_crit_edge:               ; preds = %lor.lhs.false147
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false158:                                 ; preds = %lor.lhs.false147
  %group_fwd_mask = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 34
  %92 = ptrtoint ptr %group_fwd_mask to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %group_fwd_mask, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i364) #10
  %94 = ptrtoint ptr %tmp.i364 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %tmp.i364, align 2
  %call.i365 = call i32 @nla_put(ptr noundef %skb, i32 noundef 31, i32 noundef 2, ptr noundef nonnull %tmp.i364) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i364) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i365)
  %tobool160.not = icmp eq i32 %call.i365, 0
  br i1 %tobool160.not, label %lor.lhs.false161, label %lor.lhs.false158.cleanup_crit_edge

lor.lhs.false158.cleanup_crit_edge:               ; preds = %lor.lhs.false158
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false161:                                 ; preds = %lor.lhs.false158
  %95 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags, align 4
  %and163 = lshr i32 %96, 15
  %97 = trunc i32 %and163 to i8
  %98 = and i8 %97, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i366) #10
  %99 = ptrtoint ptr %tmp.i366 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %tmp.i366, align 1
  %call.i367 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %tmp.i366) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i366) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i367)
  %tobool171.not = icmp eq i32 %call.i367, 0
  br i1 %tobool171.not, label %lor.lhs.false172, label %lor.lhs.false161.cleanup_crit_edge

lor.lhs.false161.cleanup_crit_edge:               ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false172:                                 ; preds = %lor.lhs.false161
  %100 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags, align 4
  %and174 = lshr i32 %101, 18
  %102 = trunc i32 %and174 to i8
  %103 = and i8 %102, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i368) #10
  %104 = ptrtoint ptr %tmp.i368 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %tmp.i368, align 1
  %call.i369 = call i32 @nla_put(ptr noundef %skb, i32 noundef 35, i32 noundef 1, ptr noundef nonnull %tmp.i368) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i368) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i369)
  %tobool182.not = icmp eq i32 %call.i369, 0
  br i1 %tobool182.not, label %lor.lhs.false183, label %lor.lhs.false172.cleanup_crit_edge

lor.lhs.false172.cleanup_crit_edge:               ; preds = %lor.lhs.false172
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false183:                                 ; preds = %lor.lhs.false172
  %105 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags, align 4
  %and185 = lshr i32 %106, 19
  %107 = trunc i32 %and185 to i8
  %108 = and i8 %107, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i370) #10
  %109 = ptrtoint ptr %tmp.i370 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %tmp.i370, align 1
  %call.i371 = call i32 @nla_put(ptr noundef %skb, i32 noundef 36, i32 noundef 1, ptr noundef nonnull %tmp.i370) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i370) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i371)
  %tobool193.not = icmp eq i32 %call.i371, 0
  br i1 %tobool193.not, label %lor.lhs.false194, label %lor.lhs.false183.cleanup_crit_edge

lor.lhs.false183.cleanup_crit_edge:               ; preds = %lor.lhs.false183
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false194:                                 ; preds = %lor.lhs.false183
  %110 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags, align 4
  %and196 = lshr i32 %111, 16
  %112 = trunc i32 %and196 to i8
  %113 = and i8 %112, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i372) #10
  %114 = ptrtoint ptr %tmp.i372 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %tmp.i372, align 1
  %call.i373 = call i32 @nla_put(ptr noundef %skb, i32 noundef 33, i32 noundef 1, ptr noundef nonnull %tmp.i372) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i372) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i373)
  %tobool204.not = icmp eq i32 %call.i373, 0
  br i1 %tobool204.not, label %if.end, label %lor.lhs.false194.cleanup_crit_edge

lor.lhs.false194.cleanup_crit_edge:               ; preds = %lor.lhs.false194
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false194
  %message_age_timer = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 21
  %call205 = call i32 @br_timer_value(ptr noundef %message_age_timer) #10
  %conv206 = zext i32 %call205 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i374) #10
  %115 = ptrtoint ptr %tmp.i374 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %conv206, ptr %tmp.i374, align 8
  %call.i375 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 21, i32 noundef 8, ptr noundef nonnull %tmp.i374, i32 noundef 26) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i374) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i375)
  %tobool208.not = icmp eq i32 %call.i375, 0
  br i1 %tobool208.not, label %if.end210, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end210:                                        ; preds = %if.end
  %forward_delay_timer = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 19
  %call211 = call i32 @br_timer_value(ptr noundef %forward_delay_timer) #10
  %conv212 = zext i32 %call211 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i376) #10
  %116 = ptrtoint ptr %tmp.i376 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %conv212, ptr %tmp.i376, align 8
  %call.i377 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 22, i32 noundef 8, ptr noundef nonnull %tmp.i376, i32 noundef 26) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i376) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i377)
  %tobool214.not = icmp eq i32 %call.i377, 0
  br i1 %tobool214.not, label %if.end216, label %if.end210.cleanup_crit_edge

if.end210.cleanup_crit_edge:                      ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end216:                                        ; preds = %if.end210
  %hold_timer = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 20
  %call217 = call i32 @br_timer_value(ptr noundef %hold_timer) #10
  %conv218 = zext i32 %call217 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i378) #10
  %117 = ptrtoint ptr %tmp.i378 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %conv218, ptr %tmp.i378, align 8
  %call.i379 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 23, i32 noundef 8, ptr noundef nonnull %tmp.i378, i32 noundef 26) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i378) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i379)
  %tobool220.not = icmp eq i32 %call.i379, 0
  br i1 %tobool220.not, label %if.end222, label %if.end216.cleanup_crit_edge

if.end216.cleanup_crit_edge:                      ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end222:                                        ; preds = %if.end216
  %multicast_router = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 24, i32 8
  %118 = ptrtoint ptr %multicast_router to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %multicast_router, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i380) #10
  %120 = ptrtoint ptr %tmp.i380 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %tmp.i380, align 1
  %call.i381 = call i32 @nla_put(ptr noundef %skb, i32 noundef 25, i32 noundef 1, ptr noundef nonnull %tmp.i380) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i380) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i381)
  %tobool224.not = icmp eq i32 %call.i381, 0
  br i1 %tobool224.not, label %lor.lhs.false225, label %if.end222.cleanup_crit_edge

if.end222.cleanup_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false225:                                 ; preds = %if.end222
  %multicast_eht_hosts_limit = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 26
  %121 = ptrtoint ptr %multicast_eht_hosts_limit to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %multicast_eht_hosts_limit, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i382) #10
  %123 = ptrtoint ptr %tmp.i382 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %tmp.i382, align 4
  %call.i383 = call i32 @nla_put(ptr noundef %skb, i32 noundef 37, i32 noundef 4, ptr noundef nonnull %tmp.i382) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i382) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i383)
  %tobool227.not = icmp eq i32 %call.i383, 0
  br i1 %tobool227.not, label %lor.lhs.false228, label %lor.lhs.false225.cleanup_crit_edge

lor.lhs.false225.cleanup_crit_edge:               ; preds = %lor.lhs.false225
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false228:                                 ; preds = %lor.lhs.false225
  %multicast_eht_hosts_cnt = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 27
  %124 = ptrtoint ptr %multicast_eht_hosts_cnt to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %multicast_eht_hosts_cnt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i384) #10
  %126 = ptrtoint ptr %tmp.i384 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %tmp.i384, align 4
  %call.i385 = call i32 @nla_put(ptr noundef %skb, i32 noundef 38, i32 noundef 4, ptr noundef nonnull %tmp.i384) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i384) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i385)
  %tobool230.not = icmp eq i32 %call.i385, 0
  br i1 %tobool230.not, label %if.end232, label %lor.lhs.false228.cleanup_crit_edge

lor.lhs.false228.cleanup_crit_edge:               ; preds = %lor.lhs.false228
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end232:                                        ; preds = %lor.lhs.false228
  %127 = call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %130, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end232.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end232.rcu_read_lock.exit_crit_edge:           ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end232
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end232.rcu_read_lock.exit_crit_edge
  %backup_port = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 6
  %131 = ptrtoint ptr %backup_port to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile ptr, ptr %backup_port, align 4
  %call234 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end243_crit_edge

rcu_read_lock.exit.do.end243_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end243

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call236 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %land.lhs.true.do.end243_crit_edge, label %land.lhs.true238

land.lhs.true.do.end243_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end243

land.lhs.true238:                                 ; preds = %land.lhs.true
  %.b322 = load i1, ptr @br_port_fill_attrs.__warned, align 1
  br i1 %.b322, label %land.lhs.true238.do.end243_crit_edge, label %if.then240

land.lhs.true238.do.end243_crit_edge:             ; preds = %land.lhs.true238
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end243

if.then240:                                       ; preds = %land.lhs.true238
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_fill_attrs.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 300, ptr noundef nonnull @.str.7) #10
  br label %do.end243

do.end243:                                        ; preds = %if.then240, %land.lhs.true238.do.end243_crit_edge, %land.lhs.true.do.end243_crit_edge, %rcu_read_lock.exit.do.end243_crit_edge
  %tobool245.not = icmp eq ptr %132, null
  br i1 %tobool245.not, label %do.end243.if.end248_crit_edge, label %if.then246

do.end243.if.end248_crit_edge:                    ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end248

if.then246:                                       ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %134, i32 0, i32 17
  %135 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i386) #10
  %137 = ptrtoint ptr %tmp.i386 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %tmp.i386, align 4
  %call.i387 = call i32 @nla_put(ptr noundef %skb, i32 noundef 34, i32 noundef 4, ptr noundef nonnull %tmp.i386) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i386) #10
  br label %if.end248

if.end248:                                        ; preds = %if.then246, %do.end243.if.end248_crit_edge
  call fastcc void @rcu_read_unlock()
  br label %cleanup

cleanup:                                          ; preds = %if.end248, %lor.lhs.false228.cleanup_crit_edge, %lor.lhs.false225.cleanup_crit_edge, %if.end222.cleanup_crit_edge, %if.end216.cleanup_crit_edge, %if.end210.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false194.cleanup_crit_edge, %lor.lhs.false183.cleanup_crit_edge, %lor.lhs.false172.cleanup_crit_edge, %lor.lhs.false161.cleanup_crit_edge, %lor.lhs.false158.cleanup_crit_edge, %lor.lhs.false147.cleanup_crit_edge, %lor.lhs.false144.cleanup_crit_edge, %lor.lhs.false141.cleanup_crit_edge, %lor.lhs.false138.cleanup_crit_edge, %lor.lhs.false135.cleanup_crit_edge, %lor.lhs.false131.cleanup_crit_edge, %lor.lhs.false128.cleanup_crit_edge, %lor.lhs.false125.cleanup_crit_edge, %lor.lhs.false122.cleanup_crit_edge, %lor.lhs.false111.cleanup_crit_edge, %lor.lhs.false100.cleanup_crit_edge, %lor.lhs.false89.cleanup_crit_edge, %lor.lhs.false78.cleanup_crit_edge, %lor.lhs.false67.cleanup_crit_edge, %lor.lhs.false56.cleanup_crit_edge, %lor.lhs.false45.cleanup_crit_edge, %lor.lhs.false34.cleanup_crit_edge, %lor.lhs.false23.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end248 ], [ -90, %lor.lhs.false194.cleanup_crit_edge ], [ -90, %lor.lhs.false183.cleanup_crit_edge ], [ -90, %lor.lhs.false172.cleanup_crit_edge ], [ -90, %lor.lhs.false161.cleanup_crit_edge ], [ -90, %lor.lhs.false158.cleanup_crit_edge ], [ -90, %lor.lhs.false147.cleanup_crit_edge ], [ -90, %lor.lhs.false144.cleanup_crit_edge ], [ -90, %lor.lhs.false141.cleanup_crit_edge ], [ -90, %lor.lhs.false138.cleanup_crit_edge ], [ -90, %lor.lhs.false135.cleanup_crit_edge ], [ -90, %lor.lhs.false131.cleanup_crit_edge ], [ -90, %lor.lhs.false128.cleanup_crit_edge ], [ -90, %lor.lhs.false125.cleanup_crit_edge ], [ -90, %lor.lhs.false122.cleanup_crit_edge ], [ -90, %lor.lhs.false111.cleanup_crit_edge ], [ -90, %lor.lhs.false100.cleanup_crit_edge ], [ -90, %lor.lhs.false89.cleanup_crit_edge ], [ -90, %lor.lhs.false78.cleanup_crit_edge ], [ -90, %lor.lhs.false67.cleanup_crit_edge ], [ -90, %lor.lhs.false56.cleanup_crit_edge ], [ -90, %lor.lhs.false45.cleanup_crit_edge ], [ -90, %lor.lhs.false34.cleanup_crit_edge ], [ -90, %lor.lhs.false23.cleanup_crit_edge ], [ -90, %lor.lhs.false12.cleanup_crit_edge ], [ -90, %lor.lhs.false9.cleanup_crit_edge ], [ -90, %lor.lhs.false6.cleanup_crit_edge ], [ -90, %lor.lhs.false.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end210.cleanup_crit_edge ], [ -90, %if.end216.cleanup_crit_edge ], [ -90, %lor.lhs.false228.cleanup_crit_edge ], [ -90, %lor.lhs.false225.cleanup_crit_edge ], [ -90, %if.end222.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_fill_ifvlaninfo_compressed(ptr noundef %skb, ptr noundef %vg) unnamed_addr #0 align 64 {
entry:
  %vinfo.i105 = alloca %struct.bridge_vlan_info, align 2
  %vinfo.i = alloca %struct.bridge_vlan_info, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %vg, null
  br i1 %tobool.not.i, label %entry.br_get_pvid.exit_crit_edge, label %do.end.i

entry.br_get_pvid.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_get_pvid.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 4
  %0 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pvid.i, align 2
  br label %br_get_pvid.exit

br_get_pvid.exit:                                 ; preds = %do.end.i, %entry.br_get_pvid.exit_crit_edge
  %retval.0.i = phi i16 [ %1, %do.end.i ], [ 0, %entry.br_get_pvid.exit_crit_edge ]
  %call1 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %br_get_pvid.exit.do.end_crit_edge

br_get_pvid.exit.do.end_crit_edge:                ; preds = %br_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %br_get_pvid.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b102 = load i1, ptr @br_fill_ifvlaninfo_compressed.__warned, align 1
  br i1 %.b102, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_fill_ifvlaninfo_compressed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 354, ptr noundef nonnull @.str.8) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %br_get_pvid.exit.do.end_crit_edge
  %vlan_list = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 2
  %2 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn127 = load volatile ptr, ptr %vlan_list, align 4
  %cmp.not128 = icmp eq ptr %.pn127, %vlan_list
  br i1 %cmp.not128, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %3 = getelementptr inbounds %struct.bridge_vlan_info, ptr %vinfo.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn132 = phi ptr [ %.pn127, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %vid_range_start.0131 = phi i16 [ 0, %for.body.lr.ph ], [ %vid_range_start.1, %for.inc.for.body_crit_edge ]
  %vid_range_end.0130 = phi i16 [ 0, %for.body.lr.ph ], [ %vid_range_end.1, %for.inc.for.body_crit_edge ]
  %vid_range_flags.0129 = phi i16 [ 0, %for.body.lr.ph ], [ %vid_range_flags.1, %for.inc.for.body_crit_edge ]
  %flags.i.i = getelementptr i8, ptr %.pn132, i32 -546
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i.i, align 2
  %6 = and i16 %5, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %.not = icmp eq i16 %6, 1
  br i1 %.not, label %for.body.for.inc_crit_edge, label %if.end13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %vid = getelementptr i8, ptr %.pn132, i32 -548
  %7 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vid, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %retval.0.i)
  %cmp15 = icmp eq i16 %8, %retval.0.i
  %spec.select = select i1 %cmp15, i16 2, i16 0
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags.i.i, align 2
  %11 = and i16 %10, 4
  %12 = or i16 %11, %spec.select
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid_range_start.0131)
  %cmp30 = icmp eq i16 %vid_range_start.0131, 0
  br i1 %cmp30, label %if.end13.initvars_crit_edge, label %if.else

if.end13.initvars_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %initvars

if.else:                                          ; preds = %if.end13
  %conv34 = zext i16 %8 to i32
  %conv35 = zext i16 %vid_range_end.0130 to i32
  %sub = sub nsw i32 %conv34, %conv35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp36 = icmp eq i32 %sub, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %vid_range_flags.0129)
  %cmp41 = icmp eq i16 %12, %vid_range_flags.0129
  %or.cond = select i1 %cmp36, i1 %cmp41, i1 false
  br i1 %or.cond, label %if.else.for.inc_crit_edge, label %if.else45

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else45:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vinfo.i) #10
  call void @__sanitizer_cov_trace_cmp2(i16 %vid_range_end.0130, i16 %vid_range_start.0131)
  %cmp.i = icmp ugt i16 %vid_range_end.0130, %vid_range_start.0131
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %vid_range_start.0131, ptr %3, align 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else45
  %or.i = or i16 %vid_range_flags.0129, 8
  %14 = ptrtoint ptr %vinfo.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %or.i, ptr %vinfo.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %vinfo.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i103 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i103, label %if.end.i, label %if.then.i.br_fill_ifvlaninfo_range.exit_crit_edge

if.then.i.br_fill_ifvlaninfo_range.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_fill_ifvlaninfo_range.exit

if.end.i:                                         ; preds = %if.then.i
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %vid_range_end.0130, ptr %3, align 2
  %16 = or i16 %vid_range_flags.0129, 16
  %17 = ptrtoint ptr %vinfo.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %vinfo.i, align 2
  %call12.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %vinfo.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end.i.br_fill_ifvlaninfo_range.exit.thread_crit_edge, label %if.end.i.br_fill_ifvlaninfo_range.exit_crit_edge

if.end.i.br_fill_ifvlaninfo_range.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_fill_ifvlaninfo_range.exit

if.end.i.br_fill_ifvlaninfo_range.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_fill_ifvlaninfo_range.exit.thread

if.else.i:                                        ; preds = %if.else45
  %18 = ptrtoint ptr %vinfo.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %vid_range_flags.0129, ptr %vinfo.i, align 2
  %call18.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %vinfo.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.else.i.br_fill_ifvlaninfo_range.exit.thread_crit_edge, label %if.else.i.br_fill_ifvlaninfo_range.exit_crit_edge

if.else.i.br_fill_ifvlaninfo_range.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_fill_ifvlaninfo_range.exit

if.else.i.br_fill_ifvlaninfo_range.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_fill_ifvlaninfo_range.exit.thread

br_fill_ifvlaninfo_range.exit.thread:             ; preds = %if.else.i.br_fill_ifvlaninfo_range.exit.thread_crit_edge, %if.end.i.br_fill_ifvlaninfo_range.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo.i) #10
  br label %initvars

br_fill_ifvlaninfo_range.exit:                    ; preds = %if.else.i.br_fill_ifvlaninfo_range.exit_crit_edge, %if.end.i.br_fill_ifvlaninfo_range.exit_crit_edge, %if.then.i.br_fill_ifvlaninfo_range.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo.i) #10
  br label %cleanup

initvars:                                         ; preds = %br_fill_ifvlaninfo_range.exit.thread, %if.end13.initvars_crit_edge
  %19 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vid, align 8
  br label %for.inc

for.inc:                                          ; preds = %initvars, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %vid_range_flags.1 = phi i16 [ %12, %initvars ], [ %vid_range_flags.0129, %for.body.for.inc_crit_edge ], [ %vid_range_flags.0129, %if.else.for.inc_crit_edge ]
  %vid_range_end.1 = phi i16 [ %20, %initvars ], [ %vid_range_end.0130, %for.body.for.inc_crit_edge ], [ %8, %if.else.for.inc_crit_edge ]
  %vid_range_start.1 = phi i16 [ %20, %initvars ], [ %vid_range_start.0131, %for.body.for.inc_crit_edge ], [ %vid_range_start.0131, %if.else.for.inc_crit_edge ]
  %21 = ptrtoint ptr %.pn132 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load volatile ptr, ptr %.pn132, align 4
  %cmp.not = icmp eq ptr %.pn, %vlan_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid_range_start.1)
  %cmp64.not = icmp eq i16 %vid_range_start.1, 0
  br i1 %cmp64.not, label %for.end.cleanup_crit_edge, label %if.then66

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then66:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vinfo.i105) #10
  %22 = getelementptr inbounds %struct.bridge_vlan_info, ptr %vinfo.i105, i32 0, i32 1
  call void @__sanitizer_cov_trace_cmp2(i16 %vid_range_end.1, i16 %vid_range_start.1)
  %cmp.i106 = icmp ugt i16 %vid_range_end.1, %vid_range_start.1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %vid_range_start.1, ptr %22, align 2
  br i1 %cmp.i106, label %if.then.i110, label %if.else.i116

if.then.i110:                                     ; preds = %if.then66
  %or.i107 = or i16 %vid_range_flags.1, 8
  %24 = ptrtoint ptr %vinfo.i105 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %or.i107, ptr %vinfo.i105, align 2
  %call.i108 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %vinfo.i105) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool.not.i109 = icmp eq i32 %call.i108, 0
  br i1 %tobool.not.i109, label %if.end.i113, label %if.then.i110.br_fill_ifvlaninfo_range.exit119_crit_edge

if.then.i110.br_fill_ifvlaninfo_range.exit119_crit_edge: ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_fill_ifvlaninfo_range.exit119

if.end.i113:                                      ; preds = %if.then.i110
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %vid_range_end.1, ptr %22, align 2
  %26 = or i16 %vid_range_flags.1, 16
  %27 = ptrtoint ptr %vinfo.i105 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %vinfo.i105, align 2
  %call12.i111 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %vinfo.i105) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i111)
  %tobool13.not.i112 = icmp eq i32 %call12.i111, 0
  br i1 %tobool13.not.i112, label %if.end.i113.br_fill_ifvlaninfo_range.exit119.thread_crit_edge, label %if.end.i113.br_fill_ifvlaninfo_range.exit119_crit_edge

if.end.i113.br_fill_ifvlaninfo_range.exit119_crit_edge: ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_fill_ifvlaninfo_range.exit119

if.end.i113.br_fill_ifvlaninfo_range.exit119.thread_crit_edge: ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_fill_ifvlaninfo_range.exit119.thread

if.else.i116:                                     ; preds = %if.then66
  %28 = ptrtoint ptr %vinfo.i105 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %vid_range_flags.1, ptr %vinfo.i105, align 2
  %call18.i114 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %vinfo.i105) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i114)
  %tobool19.not.i115 = icmp eq i32 %call18.i114, 0
  br i1 %tobool19.not.i115, label %if.else.i116.br_fill_ifvlaninfo_range.exit119.thread_crit_edge, label %if.else.i116.br_fill_ifvlaninfo_range.exit119_crit_edge

if.else.i116.br_fill_ifvlaninfo_range.exit119_crit_edge: ; preds = %if.else.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_fill_ifvlaninfo_range.exit119

if.else.i116.br_fill_ifvlaninfo_range.exit119.thread_crit_edge: ; preds = %if.else.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_fill_ifvlaninfo_range.exit119.thread

br_fill_ifvlaninfo_range.exit119.thread:          ; preds = %if.else.i116.br_fill_ifvlaninfo_range.exit119.thread_crit_edge, %if.end.i113.br_fill_ifvlaninfo_range.exit119.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo.i105) #10
  br label %cleanup

br_fill_ifvlaninfo_range.exit119:                 ; preds = %if.else.i116.br_fill_ifvlaninfo_range.exit119_crit_edge, %if.end.i113.br_fill_ifvlaninfo_range.exit119_crit_edge, %if.then.i110.br_fill_ifvlaninfo_range.exit119_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo.i105) #10
  br label %cleanup

cleanup:                                          ; preds = %br_fill_ifvlaninfo_range.exit119, %br_fill_ifvlaninfo_range.exit119.thread, %for.end.cleanup_crit_edge, %br_fill_ifvlaninfo_range.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %br_fill_ifvlaninfo_range.exit ], [ -90, %br_fill_ifvlaninfo_range.exit119 ], [ 0, %br_fill_ifvlaninfo_range.exit119.thread ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_fill_ifvlaninfo(ptr noundef %skb, ptr noundef %vg) unnamed_addr #0 align 64 {
entry:
  %vinfo = alloca %struct.bridge_vlan_info, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vinfo) #10
  %0 = ptrtoint ptr %vinfo to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %vinfo, align 2, !annotation !91
  %1 = getelementptr inbounds %struct.bridge_vlan_info, ptr %vinfo, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !91
  %tobool.not.i = icmp eq ptr %vg, null
  br i1 %tobool.not.i, label %entry.br_get_pvid.exit_crit_edge, label %do.end.i

entry.br_get_pvid.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_get_pvid.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 4
  %3 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pvid.i, align 2
  br label %br_get_pvid.exit

br_get_pvid.exit:                                 ; preds = %do.end.i, %entry.br_get_pvid.exit_crit_edge
  %retval.0.i = phi i16 [ %4, %do.end.i ], [ 0, %entry.br_get_pvid.exit_crit_edge ]
  %call1 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %br_get_pvid.exit.do.end_crit_edge

br_get_pvid.exit.do.end_crit_edge:                ; preds = %br_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %br_get_pvid.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b55 = load i1, ptr @br_fill_ifvlaninfo.__warned, align 1
  br i1 %.b55, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_fill_ifvlaninfo.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 404, ptr noundef nonnull @.str.8) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %br_get_pvid.exit.do.end_crit_edge
  %vlan_list = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 2
  %5 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn56 = load volatile ptr, ptr %vlan_list, align 4
  %cmp.not57 = icmp eq ptr %.pn56, %vlan_list
  br i1 %cmp.not57, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn58 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn56, %do.end.for.body_crit_edge ]
  %flags.i.i = getelementptr i8, ptr %.pn58, i32 -546
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i.i, align 2
  %8 = and i16 %7, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %.not = icmp eq i16 %8, 1
  br i1 %.not, label %for.body.for.inc_crit_edge, label %if.end13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %vid = getelementptr i8, ptr %.pn58, i32 -548
  %9 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vid, align 8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %1, align 2
  %12 = ptrtoint ptr %vinfo to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %vinfo, align 2
  %13 = load i16, ptr %vid, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %retval.0.i)
  %cmp17 = icmp eq i16 %13, %retval.0.i
  %spec.store.select = select i1 %cmp17, i16 2, i16 0
  %14 = ptrtoint ptr %vinfo to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %spec.store.select, ptr %vinfo, align 2
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags.i.i, align 2
  %17 = and i16 %16, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool26.not = icmp eq i16 %17, 0
  br i1 %tobool26.not, label %if.end13.if.end32_crit_edge, label %if.then27

if.end13.if.end32_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then27:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %18 = or i16 %spec.store.select, 4
  %19 = ptrtoint ptr %vinfo to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %vinfo, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.end13.if.end32_crit_edge
  %call33 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %vinfo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end32.for.inc_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end32.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %.pn58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load volatile ptr, ptr %.pn58, align 4
  %cmp.not = icmp eq ptr %.pn, %vlan_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ -90, %if.end32.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_fill_vlan_tunnel_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_mrp_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_fill_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_cfm_created(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_cfm_config_fill_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_cfm_status_fill_info(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_timer_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nbp_vlan_add(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_add(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nbp_vlan_delete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_delete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_switchdev_set_port_flag(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nbp_vlan_tunnel_info_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_port_flags_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_stp_set_path_cost(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_stp_set_port_priority(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_delete_by_port(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_set_port_router(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_eht_set_hosts_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nbp_backup_change(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_port_state_selection(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_parse_vlan_tunnel_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_process_vlan_tunnel_info(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mrp_parse(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_cfm_parse(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_stp_change_bridge_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_set_forward_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_set_hello_time(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_set_max_age(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_set_ageing_time(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_stp_set_enabled(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_stp_set_bridge_priority(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_filter_toggle(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__br_vlan_set_proto(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__br_vlan_set_default_pvid(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_set_stats(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_set_stats_per_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_opt_toggle(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_recalculate_fwd_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_set_router(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_toggle(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_set_querier(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_set_query_intvl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_set_startup_query_intvl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_set_igmp_version(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_set_mld_version(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_boolopt_multi_toggle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_querier_state_size() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_boolopt_multi_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_dump_querier_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_vlan_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve_64bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_get_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !12, !13, !15, !16, !17, !19, !21, !23, !25, !26, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !69, !71, !73, !75}
!llvm.named.register.sp = !{!77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bridge/br_netlink.c", i32 585, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/bridge/br_netlink.c", i32 597, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @br_info_notify.__UNIQUE_ID_ddebug570, !3, !"__UNIQUE_ID_ddebug570", i1 false, i1 false}
!7 = !{ptr @br_link_ops, !8, !"br_link_ops", i1 false, i1 false}
!8 = !{!"../net/bridge/br_netlink.c", i32 1772, i32 22}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/bridge/br_private.h", i32 850, i32 9}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/bridge/br_private.h", i32 416, i32 9}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/bridge/br_private.h", i32 1489, i32 9}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/bridge/br_private.h", i32 1483, i32 9}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/bridge/br_netlink.c", i32 36, i32 2}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/bridge/br_netlink.c", i32 448, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @br_fill_ifinfo.__UNIQUE_ID_ddebug569, !30, !"__UNIQUE_ID_ddebug569", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/bridge/br_netlink.c", i32 300, i32 13}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../net/bridge/br_netlink.c", i32 354, i32 2}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/bridge/br_netlink.c", i32 404, i32 2}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/net/netlink.h", i32 991, i32 3}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/bridge/br_private.h", i32 422, i32 3}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @br_vlan_valid_id.__msg, !45, !"__msg", i1 false, i1 false}
!45 = !{!"../net/bridge/br_private.h", i32 640, i32 3}
!46 = !{ptr @br_vlan_valid_range.__msg, !47, !"__msg", i1 false, i1 false}
!47 = !{!"../net/bridge/br_private.h", i32 651, i32 3}
!48 = !{ptr @br_vlan_valid_range.__msg.14, !49, !"__msg", i1 false, i1 false}
!49 = !{!"../net/bridge/br_private.h", i32 661, i32 4}
!50 = !{ptr @br_vlan_valid_range.__msg.15, !51, !"__msg", i1 false, i1 false}
!51 = !{!"../net/bridge/br_private.h", i32 664, i32 4}
!52 = !{ptr @br_vlan_valid_range.__msg.16, !53, !"__msg", i1 false, i1 false}
!53 = !{!"../net/bridge/br_private.h", i32 667, i32 4}
!54 = !{ptr @br_vlan_valid_range.__msg.17, !55, !"__msg", i1 false, i1 false}
!55 = !{!"../net/bridge/br_private.h", i32 675, i32 3}
!56 = !{ptr @br_port_policy, !57, !"br_port_policy", i1 false, i1 false}
!57 = !{!"../net/bridge/br_netlink.c", i32 810, i32 32}
!58 = !{ptr @br_policy, !59, !"br_policy", i1 false, i1 false}
!59 = !{!"../net/bridge/br_netlink.c", i32 1127, i32 32}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/bridge/br_netlink.c", i32 1321, i32 3}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @br_changelink._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @br_changelink._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = distinct !{null, !66, !"b", i1 false, i1 false}
!66 = !{!"../include/linux/etherdevice.h", i32 86, i32 23}
!67 = distinct !{null, !68, !"m", i1 false, i1 false}
!68 = !{!"../include/linux/etherdevice.h", i32 87, i32 22}
!69 = distinct !{null, !70, !"eth_reserved_addr_base", i1 false, i1 false}
!70 = !{!"../include/linux/etherdevice.h", i32 70, i32 17}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../net/bridge/br_private.h", i32 1471, i32 9}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../net/bridge/br_private.h", i32 1477, i32 9}
!75 = !{ptr @br_af_ops, !76, !"br_af_ops", i1 false, i1 false}
!76 = !{!"../net/bridge/br_netlink.c", i32 1767, i32 27}
!77 = !{!"sp"}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{i64 2148743226, i64 2148743231, i64 2148743244, i64 2148743288, i64 2148743322, i64 2148743343}
!89 = !{i64 2149969074}
!90 = !{i8 0, i8 2}
!91 = !{!"auto-init"}
!92 = !{i64 2157947569}
!93 = !{i64 2149969340}
