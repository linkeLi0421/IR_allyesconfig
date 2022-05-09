; ModuleID = '/llk/IR_all_yes/net/bridge/br_vlan_options.c_pt.bc'
source_filename = "../net/bridge/br_vlan_options.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.49 }
%union.anon.49 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_bridge_vlan = type { %struct.rhash_head, %struct.rhash_head, i16, i16, i16, i8, ptr, %union.anon.0, %union.anon.154, %struct.br_tunnel_info, %union.anon.155, %struct.list_head, %struct.callback_head }
%struct.rhash_head = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.154 = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.br_tunnel_info = type { i64, ptr }
%union.anon.155 = type { %struct.net_bridge_mcast }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.152, %union.anon.153, i16, i16 }
%union.anon.152 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%union.anon.153 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.4, %union.anon.7, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, %union.anon.6 }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.151, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.151 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.net_bridge_vlan_group = type { %struct.rhashtable, %struct.rhashtable, %struct.list_head, i16, i16, i8 }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.150 = type { ptr }
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

@br_vlan_process_options.__msg = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"bridge: Vlan range start doesn't exist, can't process options\00", [34 x i8] zeroinitializer }, align 32
@br_vlan_process_options.__msg.1 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"bridge: Vlan range end doesn't exist, can't process options\00", [36 x i8] zeroinitializer }, align 32
@br_vlan_process_options.__msg.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"bridge: Vlan in range doesn't exist, can't process options\00", [37 x i8] zeroinitializer }, align 32
@br_vlan_rtm_process_global_options.__msg = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"bridge: Global vlan options support only set operation\00", [41 x i8] zeroinitializer }, align 32
@br_vlan_rtm_process_global_options.__msg.3 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"bridge: Global vlan options can only be set on bridge device\00", [35 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/bridge/br_vlan_options.c\00", [35 x i8] zeroinitializer }, align 32
@br_vlan_db_gpol = internal constant { [18 x %struct.nla_policy], [48 x i8] } { [18 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [48 x i8] zeroinitializer }, align 32
@br_vlan_rtm_process_global_options.__msg.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bridge: Missing vlan entry id\00", [34 x i8] zeroinitializer }, align 32
@br_vlan_rtm_process_global_options.__msg.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"bridge: End vlan id is less than or equal to start vlan id\00", [37 x i8] zeroinitializer }, align 32
@br_vlan_rtm_process_global_options.__msg.6 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"bridge: Vlan in range doesn't exist, can't process global options\00", [62 x i8] zeroinitializer }, align 32
@nbp_vlan_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_private.h\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@br_vlan_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_vlan_modify_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@br_vlan_modify_state.__msg = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bridge: Invalid vlan state\00", [37 x i8] zeroinitializer }, align 32
@br_vlan_modify_state.__msg.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"bridge: Can't modify vlan state when using kernel STP\00", [42 x i8] zeroinitializer }, align 32
@br_vlan_modify_tunnel.__msg = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"bridge: Can't modify tunnel mapping of non-port vlans\00", [42 x i8] zeroinitializer }, align 32
@br_vlan_modify_tunnel.__msg.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bridge: Port doesn't have tunnel flag set\00", [54 x i8] zeroinitializer }, align 32
@br_vlandb_tinfo_pol = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@br_vlan_modify_tunnel.__msg.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"bridge: Missing tunnel command attribute\00", [55 x i8] zeroinitializer }, align 32
@br_vlan_modify_tunnel.__msg.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bridge: Missing tunnel id attribute\00", [60 x i8] zeroinitializer }, align 32
@br_vlan_modify_tunnel.__msg.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bridge: Unsupported tunnel command\00", [61 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@br_vlan_valid_id.__msg = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bridge: Vlan id is invalid\00", [37 x i8] zeroinitializer }, align 32
@br_vlan_global_opts_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 19]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 233, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 237, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 247, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 596, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 600, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 605, i32 6 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"br_vlan_db_gpol\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 566, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 614, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 626, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 638, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1477, i32 9 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 85, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 88, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 98, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 131, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 135, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"br_vlandb_tinfo_pol\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 114, i32 32 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 146, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 153, i32 4 }
@___asan_gen_.80 = private constant [32 x i8] c"../net/bridge/br_vlan_options.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 169, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 695, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 723, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 991, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1208, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 640, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @br_vlan_process_options.__msg, ptr @br_vlan_process_options.__msg.1, ptr @br_vlan_process_options.__msg.2, ptr @br_vlan_rtm_process_global_options.__msg, ptr @br_vlan_rtm_process_global_options.__msg.3, ptr @.str, ptr @br_vlan_db_gpol, ptr @br_vlan_rtm_process_global_options.__msg.4, ptr @br_vlan_rtm_process_global_options.__msg.5, ptr @br_vlan_rtm_process_global_options.__msg.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @br_vlan_modify_state.__msg, ptr @br_vlan_modify_state.__msg.10, ptr @br_vlan_modify_tunnel.__msg, ptr @br_vlan_modify_tunnel.__msg.11, ptr @br_vlandb_tinfo_pol, ptr @br_vlan_modify_tunnel.__msg.12, ptr @br_vlan_modify_tunnel.__msg.13, ptr @br_vlan_modify_tunnel.__msg.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @nla_parse_nested.__msg, ptr @br_vlan_valid_id.__msg], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_process_options.__msg to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_process_options.__msg.1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_process_options.__msg.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_rtm_process_global_options.__msg to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_rtm_process_global_options.__msg.3 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_db_gpol to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_rtm_process_global_options.__msg.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_rtm_process_global_options.__msg.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_rtm_process_global_options.__msg.6 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_modify_state.__msg to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_modify_state.__msg.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_modify_tunnel.__msg to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_modify_tunnel.__msg.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlandb_tinfo_pol to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_modify_tunnel.__msg.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_modify_tunnel.__msg.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_modify_tunnel.__msg.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_valid_id.__msg to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @br_vlan_opts_eq_range(ptr noundef %v_curr, ptr noundef %range_end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_end, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i.i, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not.i = icmp eq i16 %2, 0
  %multicast_router1.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_end, i32 0, i32 10, i32 0, i32 6
  %multicast_router.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_end, i32 0, i32 10, i32 0, i32 18, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %mcast_router.0.in.i = select i1 %tobool.i.not.i, ptr %multicast_router.i, ptr %multicast_router1.i
  %3 = ptrtoint ptr %mcast_router.0.in.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %mcast_router.0.i = load i8, ptr %mcast_router.0.in.i, align 2
  %flags.i.i15 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i.i15 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i.i15, align 2
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.i.not.i16 = icmp eq i16 %6, 0
  %multicast_router1.i17 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 10, i32 0, i32 6
  %multicast_router.i18 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 10, i32 0, i32 18, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %mcast_router.0.in.i19 = select i1 %tobool.i.not.i16, ptr %multicast_router.i18, ptr %multicast_router1.i17
  %7 = ptrtoint ptr %mcast_router.0.in.i19 to i32
  call void @__asan_load1_noabort(i32 %7)
  %mcast_router.0.i20 = load i8, ptr %mcast_router.0.in.i19, align 2
  %state = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %state, align 2
  %state2 = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_end, i32 0, i32 5
  %10 = ptrtoint ptr %state2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state2, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp = icmp eq i8 %9, %11
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %tunnel_dst.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %tunnel_dst.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tunnel_dst.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %land.lhs.true.lor.rhs.i_crit_edge

land.lhs.true.lor.rhs.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %tunnel_dst2.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_end, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %tunnel_dst2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tunnel_dst2.i, align 8
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.__vlan_tun_can_enter_range.exit_crit_edge, label %land.lhs.true.i.lor.rhs.i_crit_edge

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

land.lhs.true.i.__vlan_tun_can_enter_range.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__vlan_tun_can_enter_range.exit

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %land.lhs.true.lor.rhs.i_crit_edge
  %call.i = tail call zeroext i1 @vlan_tunid_inrange(ptr noundef %v_curr, ptr noundef %range_end) #7
  br label %__vlan_tun_can_enter_range.exit

__vlan_tun_can_enter_range.exit:                  ; preds = %lor.rhs.i, %land.lhs.true.i.__vlan_tun_can_enter_range.exit_crit_edge
  %16 = phi i1 [ true, %land.lhs.true.i.__vlan_tun_can_enter_range.exit_crit_edge ], [ %call.i, %lor.rhs.i ]
  call void @__sanitizer_cov_trace_cmp1(i8 %mcast_router.0.i20, i8 %mcast_router.0.i)
  %cmp9 = icmp eq i8 %mcast_router.0.i20, %mcast_router.0.i
  %spec.select = select i1 %16, i1 %cmp9, i1 false
  br label %land.end

land.end:                                         ; preds = %__vlan_tun_can_enter_range.exit, %entry.land.end_crit_edge
  %17 = phi i1 [ false, %entry.land.end_crit_edge ], [ %spec.select, %__vlan_tun_can_enter_range.exit ]
  ret i1 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @br_vlan_opts_fill(ptr noundef %skb, ptr noundef %v) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i12 = alloca i8, align 1
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 5
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %state.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %tinfo.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 9
  %3 = ptrtoint ptr %tinfo.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tinfo.i, align 8
  %conv.i.i = trunc i64 %4 to i32
  %tunnel_dst.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %tunnel_dst.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tunnel_dst.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %lor.lhs.false.if.end_crit_edge, label %if.end.i

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32772, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  %tobool3.not20.i = icmp eq ptr %8, null
  %tobool3.not.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool3.not20.i
  br i1 %tobool3.not.i, label %if.end.i.return_crit_edge, label %if.end5.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end5.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #7
  %9 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i.i, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end5.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i18.i = icmp ugt ptr %11, %8
  br i1 %cmp.i.i18.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !70

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #7
  br label %return

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i19.i = trunc i32 %sub.ptr.sub.i.i to i16
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i19.i, ptr %8, align 2
  br label %if.end

if.end:                                           ; preds = %if.end9.i, %lor.lhs.false.if.end_crit_edge
  %flags.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 3
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags.i.i, align 2
  %19 = and i16 %18, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.i.not.i = icmp eq i16 %19, 0
  %multicast_router1.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 10, i32 0, i32 6
  %multicast_router.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v, i32 0, i32 10, i32 0, i32 18, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %mcast_router.0.in.i = select i1 %tobool.i.not.i, ptr %multicast_router.i, ptr %multicast_router1.i
  %20 = ptrtoint ptr %mcast_router.0.in.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %mcast_router.0.i = load i8, ptr %mcast_router.0.in.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i12) #7
  %21 = ptrtoint ptr %tmp.i12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %mcast_router.0.i, ptr %tmp.i12, align 1
  %call.i13 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i12) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool5.not = icmp eq i32 %call.i13, 0
  br label %return

return:                                           ; preds = %if.end, %nla_nest_cancel.exit.i, %if.end.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %tobool5.not, %if.end ], [ false, %if.end.i.return_crit_edge ], [ false, %nla_nest_cancel.exit.i ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @br_vlan_opts_nl_size() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_process_options(ptr noundef %br, ptr noundef %p, ptr noundef readonly %range_start, ptr noundef readonly %range_end, ptr nocapture noundef readonly %tb, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %tun_tb.i.i = alloca [3 x ptr], align 4
  %changed = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  %call.i121 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %call.i121, label %if.then.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.then.nbp_vlan_group.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %nbp_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nbp_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nbp_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1477, ptr noundef nonnull @.str.8) #7
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, %if.then.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 5
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %call.i121, label %if.else.br_vlan_group.exit_crit_edge, label %land.lhs.true.i124

if.else.br_vlan_group.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_group.exit

land.lhs.true.i124:                               ; preds = %if.else
  %call1.i122 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i122)
  %tobool.not.i123 = icmp eq i32 %call1.i122, 0
  br i1 %tobool.not.i123, label %land.lhs.true.i124.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i126

land.lhs.true.i124.br_vlan_group.exit_crit_edge:  ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_group.exit

land.lhs.true2.i126:                              ; preds = %land.lhs.true.i124
  %.b4.i125 = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i125, label %land.lhs.true2.i126.br_vlan_group.exit_crit_edge, label %if.then.i127

land.lhs.true2.i126.br_vlan_group.exit_crit_edge: ; preds = %land.lhs.true2.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_group.exit

if.then.i127:                                     ; preds = %land.lhs.true2.i126
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1471, ptr noundef nonnull @.str.8) #7
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i127, %land.lhs.true2.i126.br_vlan_group.exit_crit_edge, %land.lhs.true.i124.br_vlan_group.exit_crit_edge, %if.else.br_vlan_group.exit_crit_edge
  %vlgrp.i128 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %br_vlan_group.exit, %nbp_vlan_group.exit
  %vg.0.in = phi ptr [ %vlgrp.i, %nbp_vlan_group.exit ], [ %vlgrp.i128, %br_vlan_group.exit ]
  %0 = ptrtoint ptr %vg.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %vg.0 = load ptr, ptr %vg.0.in, align 4
  %tobool2.not = icmp eq ptr %range_start, null
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %flags.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_start, i32 0, i32 3
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags.i.i, align 2
  %3 = and i16 %2, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %.not = icmp eq i16 %3, 1
  br i1 %.not, label %lor.lhs.false.do.body_crit_edge, label %if.end8

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_process_options.__msg) #7
  %tobool5.not = icmp eq ptr %extack, null
  br i1 %tobool5.not, label %do.body.cleanup74_crit_edge, label %if.then6

do.body.cleanup74_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @br_vlan_process_options.__msg, ptr %extack, align 4
  br label %cleanup74

if.end8:                                          ; preds = %lor.lhs.false
  %tobool9.not = icmp eq ptr %range_end, null
  br i1 %tobool9.not, label %if.end8.do.body13_crit_edge, label %lor.lhs.false10

if.end8.do.body13_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

lor.lhs.false10:                                  ; preds = %if.end8
  %flags.i.i129 = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_end, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i.i129 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags.i.i129, align 2
  %7 = and i16 %6, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %.not148 = icmp eq i16 %7, 1
  br i1 %.not148, label %lor.lhs.false10.do.body13_crit_edge, label %if.end21

lor.lhs.false10.do.body13_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

do.body13:                                        ; preds = %lor.lhs.false10.do.body13_crit_edge, %if.end8.do.body13_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_process_options.__msg.1) #7
  %tobool15.not = icmp eq ptr %extack, null
  br i1 %tobool15.not, label %do.body13.cleanup74_crit_edge, label %if.then16

do.body13.cleanup74_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

if.then16:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @br_vlan_process_options.__msg.1, ptr %extack, align 4
  br label %cleanup74

if.end21:                                         ; preds = %lor.lhs.false10
  %tobool.not.i130 = icmp eq ptr %vg.0, null
  br i1 %tobool.not.i130, label %if.end21.br_get_pvid.exit_crit_edge, label %do.end.i

if.end21.br_get_pvid.exit_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_get_pvid.exit

do.end.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 4
  %9 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pvid.i, align 2
  br label %br_get_pvid.exit

br_get_pvid.exit:                                 ; preds = %do.end.i, %if.end21.br_get_pvid.exit_crit_edge
  %retval.0.i = phi i16 [ %10, %do.end.i ], [ 0, %if.end21.br_get_pvid.exit_crit_edge ]
  %vid23 = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_start, i32 0, i32 2
  %11 = ptrtoint ptr %vid23 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vid23, align 8
  %vid24 = getelementptr inbounds %struct.net_bridge_vlan, ptr %range_end, i32 0, i32 2
  %13 = ptrtoint ptr %vid24 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vid24, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp.not189 = icmp ugt i16 %12, %14
  br i1 %cmp.not189, label %br_get_pvid.exit.cleanup74_crit_edge, label %for.body.lr.ph

br_get_pvid.exit.cleanup74_crit_edge:             ; preds = %br_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

for.body.lr.ph:                                   ; preds = %br_get_pvid.exit
  %conv = zext i16 %12 to i32
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 3
  %pvid.i.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 4
  %pvid_state.i.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 5
  %arrayidx6.i = getelementptr ptr, ptr %tb, i32 4
  %15 = getelementptr inbounds [3 x ptr], ptr %tun_tb.i.i, i32 0, i32 1
  %16 = getelementptr inbounds [3 x ptr], ptr %tun_tb.i.i, i32 0, i32 2
  %flags.i.i134 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %arrayidx46.i.i = getelementptr ptr, ptr %tb, i32 1
  %arrayidx14.i = getelementptr ptr, ptr %tb, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vid.0196 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %curr_end.0193 = phi ptr [ null, %for.body.lr.ph ], [ %curr_end.2.ph, %for.inc.for.body_crit_edge ]
  %curr_start.0190 = phi ptr [ null, %for.body.lr.ph ], [ %curr_start.3.ph, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %changed) #7
  %17 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %changed, align 1
  %conv27 = trunc i32 %vid.0196 to i16
  %call28 = call ptr @br_vlan_find(ptr noundef %vg.0, i16 noundef zeroext %conv27) #7
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %for.body.do.body33_crit_edge, label %lor.lhs.false30

for.body.do.body33_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body33

lor.lhs.false30:                                  ; preds = %for.body
  %flags.i.i131 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call28, i32 0, i32 3
  %18 = ptrtoint ptr %flags.i.i131 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags.i.i131, align 2
  %20 = and i16 %19, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %20)
  %.not149 = icmp eq i16 %20, 1
  br i1 %.not149, label %lor.lhs.false30.do.body33_crit_edge, label %if.end41

lor.lhs.false30.do.body33_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body33

do.body33:                                        ; preds = %lor.lhs.false30.do.body33_crit_edge, %for.body.do.body33_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_process_options.__msg.2) #7
  %tobool35.not = icmp eq ptr %extack, null
  br i1 %tobool35.not, label %do.body33.cleanup_crit_edge, label %if.then36

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @br_vlan_process_options.__msg.2, ptr %extack, align 4
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false30
  %22 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %changed, align 1
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i132 = icmp eq ptr %24, null
  br i1 %tobool.not.i132, label %if.end41.if.end5.i_crit_edge, label %if.then.i133

if.end41.if.end5.i_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then.i133:                                     ; preds = %if.end41
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i.i.i, align 1
  %call.i.i = call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.then.i133.if.end29.i.i_crit_edge

if.then.i133.if.end29.i.i_crit_edge:              ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %if.then.i133
  %.b90.i.i = load i1, ptr @br_vlan_modify_state.__already_done, align 1
  br i1 %.b90.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i.i, !prof !72

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_vlan_modify_state.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 85, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 85) #7
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %if.then.i133.if.end29.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp.i.i = icmp ugt i8 %26, 4
  br i1 %cmp.i.i, label %do.body39.i.i, label %if.end45.i.i

do.body39.i.i:                                    ; preds = %if.end29.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_modify_state.__msg) #7
  %tobool40.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool40.not.i.i, label %do.body39.i.i.cleanup_crit_edge, label %if.then41.i.i

do.body39.i.i.cleanup_crit_edge:                  ; preds = %do.body39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then41.i.i:                                    ; preds = %do.body39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @br_vlan_modify_state.__msg, ptr %extack, align 4
  br label %cleanup

if.end45.i.i:                                     ; preds = %if.end29.i.i
  %28 = ptrtoint ptr %flags.i.i131 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags.i.i131, align 2
  %30 = and i16 %29, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.i.not.i.i = icmp eq i16 %30, 0
  %31 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call28, i32 0, i32 7
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.end45.i.i.if.end49.i.i_crit_edge

if.end45.i.i.if.end49.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i.i

if.else.i.i:                                      ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.else.i.i, %if.end45.i.i.if.end49.i.i_crit_edge
  %br.0.in.i.i = phi ptr [ %33, %if.else.i.i ], [ %31, %if.end45.i.i.if.end49.i.i_crit_edge ]
  %34 = ptrtoint ptr %br.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %br.0.i.i = load ptr, ptr %br.0.in.i.i, align 4
  %stp_enabled.i.i = getelementptr inbounds %struct.net_bridge, ptr %br.0.i.i, i32 0, i32 28
  %35 = ptrtoint ptr %stp_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stp_enabled.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp50.i.i = icmp eq i32 %36, 1
  br i1 %cmp50.i.i, label %do.body53.i.i, label %if.end61.i.i

do.body53.i.i:                                    ; preds = %if.end49.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_modify_state.__msg.10) #7
  %tobool55.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool55.not.i.i, label %do.body53.i.i.cleanup_crit_edge, label %if.then56.i.i

do.body53.i.i.cleanup_crit_edge:                  ; preds = %do.body53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then56.i.i:                                    ; preds = %do.body53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @br_vlan_modify_state.__msg.10, ptr %extack, align 4
  br label %cleanup

if.end61.i.i:                                     ; preds = %if.end49.i.i
  %state62.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call28, i32 0, i32 5
  %38 = ptrtoint ptr %state62.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %state62.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %26)
  %cmp65.i.i = icmp eq i8 %39, %26
  br i1 %cmp65.i.i, label %if.end61.i.i.if.end5.i_crit_edge, label %if.end68.i.i

if.end61.i.i.if.end5.i_crit_edge:                 ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end68.i.i:                                     ; preds = %if.end61.i.i
  %vid.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call28, i32 0, i32 2
  %40 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vid.i.i, align 8
  br i1 %tobool.not.i130, label %if.end68.i.i.br_get_pvid.exit.i.i_crit_edge, label %do.end.i.i.i

if.end68.i.i.br_get_pvid.exit.i.i_crit_edge:      ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_get_pvid.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  %42 = ptrtoint ptr %pvid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pvid.i.i.i, align 2
  br label %br_get_pvid.exit.i.i

br_get_pvid.exit.i.i:                             ; preds = %do.end.i.i.i, %if.end68.i.i.br_get_pvid.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i16 [ %43, %do.end.i.i.i ], [ 0, %if.end68.i.i.br_get_pvid.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %retval.0.i.i.i)
  %cmp72.i.i = icmp eq i16 %41, %retval.0.i.i.i
  br i1 %cmp72.i.i, label %if.then74.i.i, label %br_get_pvid.exit.i.i.if.end75.i.i_crit_edge

br_get_pvid.exit.i.i.if.end75.i.i_crit_edge:      ; preds = %br_get_pvid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75.i.i

if.then74.i.i:                                    ; preds = %br_get_pvid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %pvid_state.i.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store volatile i8 %26, ptr %pvid_state.i.i.i, align 4
  br label %if.end75.i.i

if.end75.i.i:                                     ; preds = %if.then74.i.i, %br_get_pvid.exit.i.i.if.end75.i.i_crit_edge
  %45 = ptrtoint ptr %state62.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store volatile i8 %26, ptr %state62.i.i, align 2
  %46 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %changed, align 1
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end75.i.i, %if.end61.i.i.if.end5.i_crit_edge, %if.end41.if.end5.i_crit_edge
  %47 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %48, null
  br i1 %tobool7.not.i, label %if.end5.i.if.end13.i_crit_edge, label %if.then8.i

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tun_tb.i.i) #7
  %49 = ptrtoint ptr %tun_tb.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %tun_tb.i.i, align 4, !annotation !73
  %50 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -1 to ptr), ptr %15, align 4, !annotation !73
  %51 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 -1 to ptr), ptr %16, align 4, !annotation !73
  br i1 %tobool.not, label %do.body.i.i, label %if.end3.i.i

do.body.i.i:                                      ; preds = %if.then8.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_modify_tunnel.__msg) #7
  %tobool1.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge, label %if.then2.i.i

do.body.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_modify_tunnel.exit.thread.i

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @br_vlan_modify_tunnel.__msg, ptr %extack, align 4
  br label %br_vlan_modify_tunnel.exit.thread.i

if.end3.i.i:                                      ; preds = %if.then8.i
  %53 = ptrtoint ptr %flags.i.i134 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i.i134, align 4
  %and.i.i = and i32 %54, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body6.i.i, label %if.end14.i.i

do.body6.i.i:                                     ; preds = %if.end3.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_modify_tunnel.__msg.11) #7
  %tobool8.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool8.not.i.i, label %do.body6.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge, label %if.then9.i.i

do.body6.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge: ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_modify_tunnel.exit.thread.i

if.then9.i.i:                                     ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @br_vlan_modify_tunnel.__msg.11, ptr %extack, align 4
  br label %br_vlan_modify_tunnel.exit.thread.i

if.end14.i.i:                                     ; preds = %if.end3.i.i
  %nla_type.i.i.i = getelementptr inbounds %struct.nlattr, ptr %48, i32 0, i32 1
  %56 = ptrtoint ptr %nla_type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %nla_type.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %57)
  %tobool.not.i.i2.i = icmp sgt i16 %57, -1
  br i1 %tobool.not.i.i2.i, label %do.body.i.i.i, label %nla_parse_nested.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end14.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #7
  %tobool1.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i.i, label %do.body.i.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge, label %if.then2.i.i.i

do.body.i.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_modify_tunnel.exit.thread.i

if.then2.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %59 = ptrtoint ptr %bad_attr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %48, ptr %bad_attr.i.i.i, align 4
  %policy3.i.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %60 = ptrtoint ptr %policy3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %policy3.i.i.i, align 4
  br label %br_vlan_modify_tunnel.exit.thread.i

nla_parse_nested.exit.i.i:                        ; preds = %if.end14.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %48, i32 4
  %61 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %48, align 2
  %conv.i.i.i.i = zext i16 %62 to i32
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  %call6.i.i.i = call i32 @__nla_parse(ptr noundef nonnull %tun_tb.i.i, i32 noundef 2, ptr noundef %add.ptr.i.i.i.i, i32 noundef %sub.i.i.i.i, ptr noundef nonnull @br_vlandb_tinfo_pol, i32 noundef 31, ptr noundef %extack) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool15.not.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end17.i.i, label %nla_parse_nested.exit.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge

nla_parse_nested.exit.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge: ; preds = %nla_parse_nested.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_modify_tunnel.exit.thread.i

if.end17.i.i:                                     ; preds = %nla_parse_nested.exit.i.i
  %63 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %16, align 4
  %tobool19.not.i.i = icmp eq ptr %64, null
  br i1 %tobool19.not.i.i, label %do.body21.i.i, label %if.end29.i3.i

do.body21.i.i:                                    ; preds = %if.end17.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_modify_tunnel.__msg.12) #7
  %tobool23.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool23.not.i.i, label %do.body21.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge, label %if.then24.i.i

do.body21.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge: ; preds = %do.body21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_modify_tunnel.exit.thread.i

if.then24.i.i:                                    ; preds = %do.body21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @br_vlan_modify_tunnel.__msg.12, ptr %extack, align 4
  br label %br_vlan_modify_tunnel.exit.thread.i

if.end29.i3.i:                                    ; preds = %if.end17.i.i
  %add.ptr.i.i83.i.i = getelementptr i8, ptr %64, i32 4
  %66 = ptrtoint ptr %add.ptr.i.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i.i83.i.i, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i32 %67, label %do.body50.i.i [
    i32 19, label %sw.bb.i.i
    i32 17, label %if.end29.i3.i.br_vlan_modify_tunnel.exit.i_crit_edge
  ]

if.end29.i3.i.br_vlan_modify_tunnel.exit.i_crit_edge: ; preds = %if.end29.i3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_modify_tunnel.exit.i

sw.bb.i.i:                                        ; preds = %if.end29.i3.i
  %69 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %15, align 4
  %tobool33.not.i.i = icmp eq ptr %70, null
  br i1 %tobool33.not.i.i, label %do.body35.i.i, label %if.end43.i.i

do.body35.i.i:                                    ; preds = %sw.bb.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_modify_tunnel.__msg.13) #7
  %tobool37.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool37.not.i.i, label %do.body35.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge, label %if.then38.i.i

do.body35.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge: ; preds = %do.body35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_modify_tunnel.exit.thread.i

if.then38.i.i:                                    ; preds = %do.body35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @br_vlan_modify_tunnel.__msg.13, ptr %extack, align 4
  br label %br_vlan_modify_tunnel.exit.thread.i

if.end43.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i84.i.i = getelementptr i8, ptr %70, i32 4
  %72 = ptrtoint ptr %add.ptr.i.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i.i84.i.i, align 4
  %74 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx46.i.i, align 4
  %vid.i4.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call28, i32 0, i32 2
  %76 = ptrtoint ptr %vid.i4.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vid.i4.i, align 8
  %conv.i.i = zext i16 %77 to i32
  %vid48.i.i = getelementptr i8, ptr %75, i32 6
  %78 = ptrtoint ptr %vid48.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %vid48.i.i, align 2
  %conv49.i.i = zext i16 %79 to i32
  %sub.i.i = add i32 %73, %conv.i.i
  %add.i.i = sub i32 %sub.i.i, %conv49.i.i
  br label %br_vlan_modify_tunnel.exit.i

do.body50.i.i:                                    ; preds = %if.end29.i3.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_modify_tunnel.__msg.14) #7
  %tobool52.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool52.not.i.i, label %do.body50.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge, label %if.then53.i.i

do.body50.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge: ; preds = %do.body50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_modify_tunnel.exit.thread.i

if.then53.i.i:                                    ; preds = %do.body50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @br_vlan_modify_tunnel.__msg.14, ptr %extack, align 4
  br label %br_vlan_modify_tunnel.exit.thread.i

br_vlan_modify_tunnel.exit.thread.i:              ; preds = %if.then53.i.i, %do.body50.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge, %if.then38.i.i, %do.body35.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge, %if.then24.i.i, %do.body21.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge, %nla_parse_nested.exit.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge, %if.then2.i.i.i, %do.body.i.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge, %if.then9.i.i, %do.body6.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge, %if.then2.i.i, %do.body.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge
  %retval.0.i5.ph.i = phi i32 [ -22, %do.body.i.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge ], [ -22, %if.then2.i.i.i ], [ -22, %do.body50.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge ], [ -22, %if.then53.i.i ], [ -2, %do.body35.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge ], [ -2, %if.then38.i.i ], [ -2, %do.body21.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge ], [ -2, %if.then24.i.i ], [ -22, %do.body6.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge ], [ -22, %if.then9.i.i ], [ -22, %do.body.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge ], [ -22, %if.then2.i.i ], [ %call6.i.i.i, %nla_parse_nested.exit.i.i.br_vlan_modify_tunnel.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tun_tb.i.i) #7
  br label %cleanup

br_vlan_modify_tunnel.exit.i:                     ; preds = %if.end43.i.i, %if.end29.i3.i.br_vlan_modify_tunnel.exit.i_crit_edge
  %tun_id.0.i.i = phi i32 [ 0, %if.end29.i3.i.br_vlan_modify_tunnel.exit.i_crit_edge ], [ %add.i.i, %if.end43.i.i ]
  %vid58.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call28, i32 0, i32 2
  %81 = ptrtoint ptr %vid58.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vid58.i.i, align 8
  %call59.i.i = call i32 @br_vlan_tunnel_info(ptr noundef nonnull %p, i32 noundef %67, i16 noundef zeroext %82, i32 noundef %tun_id.0.i.i, ptr noundef nonnull %changed) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tun_tb.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i)
  %tobool10.not.i = icmp eq i32 %call59.i.i, 0
  br i1 %tobool10.not.i, label %br_vlan_modify_tunnel.exit.i.if.end13.i_crit_edge, label %br_vlan_modify_tunnel.exit.i.cleanup_crit_edge

br_vlan_modify_tunnel.exit.i.cleanup_crit_edge:   ; preds = %br_vlan_modify_tunnel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

br_vlan_modify_tunnel.exit.i.if.end13.i_crit_edge: ; preds = %br_vlan_modify_tunnel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %br_vlan_modify_tunnel.exit.i.if.end13.i_crit_edge, %if.end5.i.if.end13.i_crit_edge
  %83 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx14.i, align 4
  %tobool15.not.i = icmp eq ptr %84, null
  br i1 %tobool15.not.i, label %if.end45, label %if.then16.i

if.then16.i:                                      ; preds = %if.end13.i
  %add.ptr.i.i6.i = getelementptr i8, ptr %84, i32 4
  %85 = ptrtoint ptr %add.ptr.i.i6.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %add.ptr.i.i6.i, align 1
  %call19.i = call i32 @br_multicast_set_vlan_router(ptr noundef nonnull %call28, i8 noundef zeroext %86) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end45.thread, label %if.then16.i.cleanup_crit_edge

if.then16.i.cleanup_crit_edge:                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45.thread:                                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %changed, align 1
  br label %if.then47

if.end45:                                         ; preds = %if.end13.i
  %88 = ptrtoint ptr %changed to i32
  call void @__asan_load1_noabort(i32 %88)
  %.pr = load i8, ptr %changed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool46.not = icmp eq i8 %.pr, 0
  br i1 %tobool46.not, label %if.else62, label %if.end45.if.then47_crit_edge

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47

if.then47:                                        ; preds = %if.end45.if.then47_crit_edge, %if.end45.thread
  %tobool48.not = icmp eq ptr %curr_start.0190, null
  br i1 %tobool48.not, label %if.then47.for.inc_crit_edge, label %if.end50

if.then47.for.inc_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end50:                                         ; preds = %if.then47
  %vid51 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call28, i32 0, i32 2
  %89 = ptrtoint ptr %vid51 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %vid51, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %90, i16 %retval.0.i)
  %cmp54 = icmp eq i16 %90, %retval.0.i
  br i1 %cmp54, label %if.end50.for.inc.sink.split_crit_edge, label %lor.lhs.false56

if.end50.for.inc.sink.split_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

lor.lhs.false56:                                  ; preds = %if.end50
  %call57 = call zeroext i1 @br_vlan_can_enter_range(ptr noundef nonnull %call28, ptr noundef %curr_end.0193) #7
  br i1 %call57, label %lor.lhs.false56.for.inc_crit_edge, label %lor.lhs.false56.for.inc.sink.split_crit_edge

lor.lhs.false56.for.inc.sink.split_crit_edge:     ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

lor.lhs.false56.for.inc_crit_edge:                ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else62:                                        ; preds = %if.end45
  %tobool63.not = icmp eq ptr %curr_start.0190, null
  br i1 %tobool63.not, label %if.else62.for.inc_crit_edge, label %if.else62.for.inc.sink.split_crit_edge

if.else62.for.inc.sink.split_crit_edge:           ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

if.else62.for.inc_crit_edge:                      ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cleanup:                                          ; preds = %if.then16.i.cleanup_crit_edge, %br_vlan_modify_tunnel.exit.i.cleanup_crit_edge, %br_vlan_modify_tunnel.exit.thread.i, %if.then56.i.i, %do.body53.i.i.cleanup_crit_edge, %if.then41.i.i, %do.body39.i.i.cleanup_crit_edge, %if.then36, %do.body33.cleanup_crit_edge
  %err.1 = phi i32 [ -2, %if.then36 ], [ -2, %do.body33.cleanup_crit_edge ], [ -22, %if.then41.i.i ], [ -22, %do.body39.i.i.cleanup_crit_edge ], [ -16, %if.then56.i.i ], [ -16, %do.body53.i.i.cleanup_crit_edge ], [ %retval.0.i5.ph.i, %br_vlan_modify_tunnel.exit.thread.i ], [ %call59.i.i, %br_vlan_modify_tunnel.exit.i.cleanup_crit_edge ], [ %call19.i, %if.then16.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %changed) #7
  br label %for.end

for.inc.sink.split:                               ; preds = %if.else62.for.inc.sink.split_crit_edge, %lor.lhs.false56.for.inc.sink.split_crit_edge, %if.end50.for.inc.sink.split_crit_edge
  %curr_start.3.ph.ph = phi ptr [ %call28, %lor.lhs.false56.for.inc.sink.split_crit_edge ], [ %call28, %if.end50.for.inc.sink.split_crit_edge ], [ null, %if.else62.for.inc.sink.split_crit_edge ]
  %vid59 = getelementptr inbounds %struct.net_bridge_vlan, ptr %curr_start.0190, i32 0, i32 2
  %91 = ptrtoint ptr %vid59 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %vid59, align 8
  %vid60 = getelementptr inbounds %struct.net_bridge_vlan, ptr %curr_end.0193, i32 0, i32 2
  %93 = ptrtoint ptr %vid60 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %vid60, align 8
  call void @br_vlan_notify(ptr noundef %br, ptr noundef %p, i16 noundef zeroext %92, i16 noundef zeroext %94, i32 noundef 112) #7
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else62.for.inc_crit_edge, %lor.lhs.false56.for.inc_crit_edge, %if.then47.for.inc_crit_edge
  %curr_start.3.ph = phi ptr [ %curr_start.0190, %lor.lhs.false56.for.inc_crit_edge ], [ null, %if.else62.for.inc_crit_edge ], [ %call28, %if.then47.for.inc_crit_edge ], [ %curr_start.3.ph.ph, %for.inc.sink.split ]
  %curr_end.2.ph = phi ptr [ %call28, %lor.lhs.false56.for.inc_crit_edge ], [ %curr_end.0193, %if.else62.for.inc_crit_edge ], [ %call28, %if.then47.for.inc_crit_edge ], [ %curr_start.3.ph.ph, %for.inc.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %changed) #7
  %inc = add nuw nsw i32 %vid.0196, 1
  %95 = ptrtoint ptr %vid24 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %vid24, align 8
  %conv25 = zext i16 %96 to i32
  %cmp.not.not = icmp ult i32 %vid.0196, %conv25
  br i1 %cmp.not.not, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup
  %curr_start.0178 = phi ptr [ %curr_start.0190, %cleanup ], [ %curr_start.3.ph, %for.inc.for.end_crit_edge ]
  %curr_end.0164 = phi ptr [ %curr_end.0193, %cleanup ], [ %curr_end.2.ph, %for.inc.for.end_crit_edge ]
  %err.2 = phi i32 [ %err.1, %cleanup ], [ 0, %for.inc.for.end_crit_edge ]
  %tobool69.not = icmp eq ptr %curr_start.0178, null
  br i1 %tobool69.not, label %for.end.cleanup74_crit_edge, label %if.then70

for.end.cleanup74_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

if.then70:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %vid71 = getelementptr inbounds %struct.net_bridge_vlan, ptr %curr_start.0178, i32 0, i32 2
  %97 = ptrtoint ptr %vid71 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %vid71, align 8
  %vid72 = getelementptr inbounds %struct.net_bridge_vlan, ptr %curr_end.0164, i32 0, i32 2
  %99 = ptrtoint ptr %vid72 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %vid72, align 8
  call void @br_vlan_notify(ptr noundef %br, ptr noundef %p, i16 noundef zeroext %98, i16 noundef zeroext %100, i32 noundef 112) #7
  br label %cleanup74

cleanup74:                                        ; preds = %if.then70, %for.end.cleanup74_crit_edge, %br_get_pvid.exit.cleanup74_crit_edge, %if.then16, %do.body13.cleanup74_crit_edge, %if.then6, %do.body.cleanup74_crit_edge
  %retval.0 = phi i32 [ -2, %if.then6 ], [ -2, %do.body.cleanup74_crit_edge ], [ -2, %if.then16 ], [ -2, %do.body13.cleanup74_crit_edge ], [ %err.2, %if.then70 ], [ %err.2, %for.end.cleanup74_crit_edge ], [ 0, %br_get_pvid.exit.cleanup74_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_vlan_find(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_can_enter_range(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_vlan_notify(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @br_vlan_global_opts_can_enter_range(ptr noundef %v_curr, ptr noundef %r_end) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vid = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 2
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vid, align 8
  %conv = zext i16 %1 to i32
  %vid1 = getelementptr inbounds %struct.net_bridge_vlan, ptr %r_end, i32 0, i32 2
  %2 = ptrtoint ptr %vid1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid1, align 8
  %conv2 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp eq i32 %sub, 1
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %priv_flags = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 4
  %4 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %priv_flags, align 4
  %priv_flags5 = getelementptr inbounds %struct.net_bridge_vlan, ptr %r_end, i32 0, i32 4
  %6 = ptrtoint ptr %priv_flags5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %priv_flags5, align 4
  %xor14 = xor i16 %7, %5
  %8 = and i16 %xor14, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp7 = icmp eq i16 %8, 0
  br i1 %cmp7, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %multicast_igmp_version.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 10, i32 0, i32 5
  %9 = ptrtoint ptr %multicast_igmp_version.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %multicast_igmp_version.i, align 1
  %multicast_igmp_version1.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %r_end, i32 0, i32 10, i32 0, i32 5
  %11 = ptrtoint ptr %multicast_igmp_version1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %multicast_igmp_version1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp.i = icmp eq i8 %10, %12
  br i1 %cmp.i, label %land.lhs.true.i, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true.i:                                  ; preds = %land.rhs
  %multicast_last_member_count.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 10, i32 0, i32 2
  %13 = ptrtoint ptr %multicast_last_member_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %multicast_last_member_count.i, align 4
  %multicast_last_member_count4.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %r_end, i32 0, i32 10, i32 0, i32 2
  %15 = ptrtoint ptr %multicast_last_member_count4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %multicast_last_member_count4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp5.i = icmp eq i32 %14, %16
  br i1 %cmp5.i, label %land.lhs.true7.i, label %land.lhs.true.i.land.end_crit_edge

land.lhs.true.i.land.end_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %multicast_startup_query_count.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 10, i32 0, i32 3
  %17 = ptrtoint ptr %multicast_startup_query_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %multicast_startup_query_count.i, align 4
  %multicast_startup_query_count8.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %r_end, i32 0, i32 10, i32 0, i32 3
  %19 = ptrtoint ptr %multicast_startup_query_count8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %multicast_startup_query_count8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp9.i = icmp eq i32 %18, %20
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true7.i.land.end_crit_edge

land.lhs.true7.i.land.end_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true11.i:                                ; preds = %land.lhs.true7.i
  %multicast_last_member_interval.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 10, i32 0, i32 8
  %21 = ptrtoint ptr %multicast_last_member_interval.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %multicast_last_member_interval.i, align 4
  %multicast_last_member_interval12.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %r_end, i32 0, i32 10, i32 0, i32 8
  %23 = ptrtoint ptr %multicast_last_member_interval12.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %multicast_last_member_interval12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp13.i = icmp eq i32 %22, %24
  br i1 %cmp13.i, label %land.lhs.true15.i, label %land.lhs.true11.i.land.end_crit_edge

land.lhs.true11.i.land.end_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true15.i:                                ; preds = %land.lhs.true11.i
  %multicast_membership_interval.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 10, i32 0, i32 9
  %25 = ptrtoint ptr %multicast_membership_interval.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %multicast_membership_interval.i, align 4
  %multicast_membership_interval16.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %r_end, i32 0, i32 10, i32 0, i32 9
  %27 = ptrtoint ptr %multicast_membership_interval16.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %multicast_membership_interval16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp17.i = icmp eq i32 %26, %28
  br i1 %cmp17.i, label %land.lhs.true19.i, label %land.lhs.true15.i.land.end_crit_edge

land.lhs.true15.i.land.end_crit_edge:             ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true19.i:                                ; preds = %land.lhs.true15.i
  %multicast_querier_interval.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 10, i32 0, i32 10
  %29 = ptrtoint ptr %multicast_querier_interval.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %multicast_querier_interval.i, align 4
  %multicast_querier_interval20.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %r_end, i32 0, i32 10, i32 0, i32 10
  %31 = ptrtoint ptr %multicast_querier_interval20.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %multicast_querier_interval20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp21.i = icmp eq i32 %30, %32
  br i1 %cmp21.i, label %land.lhs.true23.i, label %land.lhs.true19.i.land.end_crit_edge

land.lhs.true19.i.land.end_crit_edge:             ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true23.i:                                ; preds = %land.lhs.true19.i
  %multicast_query_interval.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 10, i32 0, i32 11
  %33 = ptrtoint ptr %multicast_query_interval.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %multicast_query_interval.i, align 4
  %multicast_query_interval24.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %r_end, i32 0, i32 10, i32 0, i32 11
  %35 = ptrtoint ptr %multicast_query_interval24.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %multicast_query_interval24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp25.i = icmp eq i32 %34, %36
  br i1 %cmp25.i, label %land.lhs.true27.i, label %land.lhs.true23.i.land.end_crit_edge

land.lhs.true23.i.land.end_crit_edge:             ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true27.i:                                ; preds = %land.lhs.true23.i
  %multicast_query_response_interval.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 10, i32 0, i32 12
  %37 = ptrtoint ptr %multicast_query_response_interval.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %multicast_query_response_interval.i, align 4
  %multicast_query_response_interval28.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %r_end, i32 0, i32 10, i32 0, i32 12
  %39 = ptrtoint ptr %multicast_query_response_interval28.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %multicast_query_response_interval28.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp29.i = icmp eq i32 %38, %40
  br i1 %cmp29.i, label %land.lhs.true31.i, label %land.lhs.true27.i.land.end_crit_edge

land.lhs.true27.i.land.end_crit_edge:             ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true31.i:                                ; preds = %land.lhs.true27.i
  %multicast_startup_query_interval.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 10, i32 0, i32 13
  %41 = ptrtoint ptr %multicast_startup_query_interval.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %multicast_startup_query_interval.i, align 4
  %multicast_startup_query_interval32.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %r_end, i32 0, i32 10, i32 0, i32 13
  %43 = ptrtoint ptr %multicast_startup_query_interval32.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %multicast_startup_query_interval32.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp33.i = icmp eq i32 %42, %44
  br i1 %cmp33.i, label %land.lhs.true35.i, label %land.lhs.true31.i.land.end_crit_edge

land.lhs.true31.i.land.end_crit_edge:             ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true35.i:                                ; preds = %land.lhs.true31.i
  %multicast_querier.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 10, i32 0, i32 4
  %45 = ptrtoint ptr %multicast_querier.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %multicast_querier.i, align 4
  %multicast_querier37.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %r_end, i32 0, i32 10, i32 0, i32 4
  %47 = ptrtoint ptr %multicast_querier37.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %multicast_querier37.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %48)
  %cmp39.i = icmp eq i8 %46, %48
  br i1 %cmp39.i, label %land.lhs.true41.i, label %land.lhs.true35.i.land.end_crit_edge

land.lhs.true35.i.land.end_crit_edge:             ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true41.i:                                ; preds = %land.lhs.true35.i
  %multicast_router.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 10, i32 0, i32 6
  %49 = ptrtoint ptr %multicast_router.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %multicast_router.i, align 2
  %multicast_router43.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %r_end, i32 0, i32 10, i32 0, i32 6
  %51 = ptrtoint ptr %multicast_router43.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %multicast_router43.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %52)
  %cmp45.i = icmp eq i8 %50, %52
  br i1 %cmp45.i, label %land.lhs.true47.i, label %land.lhs.true41.i.land.end_crit_edge

land.lhs.true41.i.land.end_crit_edge:             ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true47.i:                                ; preds = %land.lhs.true41.i
  %ip4_mc_router_list.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 10, i32 0, i32 14
  %53 = ptrtoint ptr %ip4_mc_router_list.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %ip4_mc_router_list.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.not.i.i, label %br_rports_have_mc_router.exit.i, label %land.lhs.true47.i.land.end_crit_edge

land.lhs.true47.i.land.end_crit_edge:             ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

br_rports_have_mc_router.exit.i:                  ; preds = %land.lhs.true47.i
  %ip6_mc_router_list.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 10, i32 0, i32 19
  %55 = ptrtoint ptr %ip6_mc_router_list.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %ip6_mc_router_list.i.i, align 4
  %tobool.not.i4.i.not.i = icmp eq ptr %56, null
  br i1 %tobool.not.i4.i.not.i, label %land.lhs.true48.i, label %br_rports_have_mc_router.exit.i.land.end_crit_edge

br_rports_have_mc_router.exit.i.land.end_crit_edge: ; preds = %br_rports_have_mc_router.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true48.i:                                ; preds = %br_rports_have_mc_router.exit.i
  %ip4_mc_router_list.i80.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %r_end, i32 0, i32 10, i32 0, i32 14
  %57 = ptrtoint ptr %ip4_mc_router_list.i80.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %ip4_mc_router_list.i80.i, align 4
  %tobool.not.i.not.i81.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.not.i81.i, label %br_rports_have_mc_router.exit85.i, label %land.lhs.true48.i.land.end_crit_edge

land.lhs.true48.i.land.end_crit_edge:             ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

br_rports_have_mc_router.exit85.i:                ; preds = %land.lhs.true48.i
  %ip6_mc_router_list.i82.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %r_end, i32 0, i32 10, i32 0, i32 19
  %59 = ptrtoint ptr %ip6_mc_router_list.i82.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %ip6_mc_router_list.i82.i, align 4
  %tobool.not.i4.i83.not.i = icmp eq ptr %60, null
  br i1 %tobool.not.i4.i83.not.i, label %land.lhs.true50.i, label %br_rports_have_mc_router.exit85.i.land.end_crit_edge

br_rports_have_mc_router.exit85.i.land.end_crit_edge: ; preds = %br_rports_have_mc_router.exit85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true50.i:                                ; preds = %br_rports_have_mc_router.exit85.i
  call void @__sanitizer_cov_trace_pc() #9
  %multicast_mld_version.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 10, i32 0, i32 7
  %61 = ptrtoint ptr %multicast_mld_version.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %multicast_mld_version.i, align 1
  %multicast_mld_version52.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %r_end, i32 0, i32 10, i32 0, i32 7
  %63 = ptrtoint ptr %multicast_mld_version52.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %multicast_mld_version52.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %64)
  %cmp54.i = icmp eq i8 %62, %64
  br label %land.end

land.end:                                         ; preds = %land.lhs.true50.i, %br_rports_have_mc_router.exit85.i.land.end_crit_edge, %land.lhs.true48.i.land.end_crit_edge, %br_rports_have_mc_router.exit.i.land.end_crit_edge, %land.lhs.true47.i.land.end_crit_edge, %land.lhs.true41.i.land.end_crit_edge, %land.lhs.true35.i.land.end_crit_edge, %land.lhs.true31.i.land.end_crit_edge, %land.lhs.true27.i.land.end_crit_edge, %land.lhs.true23.i.land.end_crit_edge, %land.lhs.true19.i.land.end_crit_edge, %land.lhs.true15.i.land.end_crit_edge, %land.lhs.true11.i.land.end_crit_edge, %land.lhs.true7.i.land.end_crit_edge, %land.lhs.true.i.land.end_crit_edge, %land.rhs.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %65 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ false, %br_rports_have_mc_router.exit85.i.land.end_crit_edge ], [ false, %br_rports_have_mc_router.exit.i.land.end_crit_edge ], [ false, %land.lhs.true41.i.land.end_crit_edge ], [ false, %land.lhs.true35.i.land.end_crit_edge ], [ false, %land.lhs.true31.i.land.end_crit_edge ], [ false, %land.lhs.true27.i.land.end_crit_edge ], [ false, %land.lhs.true23.i.land.end_crit_edge ], [ false, %land.lhs.true19.i.land.end_crit_edge ], [ false, %land.lhs.true15.i.land.end_crit_edge ], [ false, %land.lhs.true11.i.land.end_crit_edge ], [ false, %land.lhs.true7.i.land.end_crit_edge ], [ false, %land.lhs.true.i.land.end_crit_edge ], [ false, %land.rhs.land.end_crit_edge ], [ %cmp54.i, %land.lhs.true50.i ], [ false, %land.lhs.true47.i.land.end_crit_edge ], [ false, %land.lhs.true48.i.land.end_crit_edge ]
  ret i1 %65
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @br_vlan_global_opts_fill(ptr noundef %skb, i16 noundef zeroext %vid, i16 noundef zeroext %vid_range, ptr noundef %v_opts) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i167 = alloca i8, align 1
  %tmp.i161 = alloca i64, align 8
  %tmp.i159 = alloca i64, align 8
  %tmp.i157 = alloca i64, align 8
  %tmp.i155 = alloca i64, align 8
  %tmp.i153 = alloca i64, align 8
  %tmp.i151 = alloca i64, align 8
  %tmp.i149 = alloca i8, align 1
  %tmp.i147 = alloca i32, align 4
  %tmp.i145 = alloca i32, align 4
  %tmp.i143 = alloca i8, align 1
  %tmp.i141 = alloca i8, align 1
  %tmp.i139 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not175 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not175
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #7
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %vid, ptr %tmp.i, align 2
  %call.i138 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool2.not = icmp eq i32 %call.i138, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp2(i16 %vid, i16 %vid_range)
  %cmp = icmp ult i16 %vid, %vid_range
  br i1 %cmp, label %land.lhs.true9, label %if.end4.if.end13_crit_edge

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true9:                                   ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i139) #7
  %3 = ptrtoint ptr %tmp.i139 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %vid_range, ptr %tmp.i139, align 2
  %call.i140 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i139) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i139) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool11.not = icmp eq i32 %call.i140, 0
  br i1 %tobool11.not, label %land.lhs.true9.if.end13_crit_edge, label %land.lhs.true9.if.then.i.i_crit_edge

land.lhs.true9.if.then.i.i_crit_edge:             ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

land.lhs.true9.if.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true9.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %priv_flags = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_opts, i32 0, i32 4
  %4 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %priv_flags, align 4
  %6 = trunc i16 %5 to i8
  %7 = lshr i8 %6, 3
  %8 = and i8 %7, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i141) #7
  %9 = ptrtoint ptr %tmp.i141 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %tmp.i141, align 1
  %call.i142 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i141) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i141) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool19.not = icmp eq i32 %call.i142, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %if.end13.if.then.i.i_crit_edge

if.end13.if.then.i.i_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end13
  %10 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_opts, i32 0, i32 10
  %multicast_igmp_version = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_opts, i32 0, i32 10, i32 0, i32 5
  %11 = ptrtoint ptr %multicast_igmp_version to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %multicast_igmp_version, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i143) #7
  %13 = ptrtoint ptr %tmp.i143 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %tmp.i143, align 1
  %call.i144 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i143) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i143) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool21.not = icmp eq i32 %call.i144, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %multicast_last_member_count = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_opts, i32 0, i32 10, i32 0, i32 2
  %14 = ptrtoint ptr %multicast_last_member_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %multicast_last_member_count, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i145) #7
  %16 = ptrtoint ptr %tmp.i145 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i145, align 4
  %call.i146 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i145) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i145) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool24.not = icmp eq i32 %call.i146, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %lor.lhs.false22.if.then.i.i_crit_edge

lor.lhs.false22.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %multicast_startup_query_count = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_opts, i32 0, i32 10, i32 0, i32 3
  %17 = ptrtoint ptr %multicast_startup_query_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %multicast_startup_query_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i147) #7
  %19 = ptrtoint ptr %tmp.i147 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tmp.i147, align 4
  %call.i148 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i147) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i147) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool27.not = icmp eq i32 %call.i148, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %lor.lhs.false25.if.then.i.i_crit_edge

lor.lhs.false25.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %multicast_querier = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_opts, i32 0, i32 10, i32 0, i32 4
  %20 = ptrtoint ptr %multicast_querier to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %multicast_querier, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i149) #7
  %22 = ptrtoint ptr %tmp.i149 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %tmp.i149, align 1
  %call.i150 = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 1, ptr noundef nonnull %tmp.i149) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i149) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool30.not = icmp eq i32 %call.i150, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %lor.lhs.false28.if.then.i.i_crit_edge

lor.lhs.false28.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %call32 = call i32 @br_multicast_dump_querier_state(ptr noundef %skb, ptr noundef %10, i32 noundef 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %lor.lhs.false31.if.then.i.i_crit_edge

lor.lhs.false31.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end35:                                         ; preds = %lor.lhs.false31
  %multicast_last_member_interval = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_opts, i32 0, i32 10, i32 0, i32 8
  %23 = ptrtoint ptr %multicast_last_member_interval to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %multicast_last_member_interval, align 4
  %call36 = call i32 @jiffies_to_clock_t(i32 noundef %24) #7
  %conv37 = sext i32 %call36 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i151) #7
  %25 = ptrtoint ptr %tmp.i151 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv37, ptr %tmp.i151, align 8
  %call.i152 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %tmp.i151, i32 noundef 9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i151) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool39.not = icmp eq i32 %call.i152, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.if.then.i.i_crit_edge

if.end35.if.then.i.i_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end41:                                         ; preds = %if.end35
  %multicast_membership_interval = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_opts, i32 0, i32 10, i32 0, i32 9
  %26 = ptrtoint ptr %multicast_membership_interval to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %multicast_membership_interval, align 8
  %call42 = call i32 @jiffies_to_clock_t(i32 noundef %27) #7
  %conv43 = sext i32 %call42 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i153) #7
  %28 = ptrtoint ptr %tmp.i153 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv43, ptr %tmp.i153, align 8
  %call.i154 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 10, i32 noundef 8, ptr noundef nonnull %tmp.i153, i32 noundef 9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i153) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool45.not = icmp eq i32 %call.i154, 0
  br i1 %tobool45.not, label %if.end47, label %if.end41.if.then.i.i_crit_edge

if.end41.if.then.i.i_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end47:                                         ; preds = %if.end41
  %multicast_querier_interval = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_opts, i32 0, i32 10, i32 0, i32 10
  %29 = ptrtoint ptr %multicast_querier_interval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %multicast_querier_interval, align 4
  %call48 = call i32 @jiffies_to_clock_t(i32 noundef %30) #7
  %conv49 = sext i32 %call48 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i155) #7
  %31 = ptrtoint ptr %tmp.i155 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv49, ptr %tmp.i155, align 8
  %call.i156 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 11, i32 noundef 8, ptr noundef nonnull %tmp.i155, i32 noundef 9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i155) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool51.not = icmp eq i32 %call.i156, 0
  br i1 %tobool51.not, label %if.end53, label %if.end47.if.then.i.i_crit_edge

if.end47.if.then.i.i_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end53:                                         ; preds = %if.end47
  %multicast_query_interval = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_opts, i32 0, i32 10, i32 0, i32 11
  %32 = ptrtoint ptr %multicast_query_interval to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %multicast_query_interval, align 8
  %call54 = call i32 @jiffies_to_clock_t(i32 noundef %33) #7
  %conv55 = sext i32 %call54 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i157) #7
  %34 = ptrtoint ptr %tmp.i157 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv55, ptr %tmp.i157, align 8
  %call.i158 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 12, i32 noundef 8, ptr noundef nonnull %tmp.i157, i32 noundef 9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i157) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool57.not = icmp eq i32 %call.i158, 0
  br i1 %tobool57.not, label %if.end59, label %if.end53.if.then.i.i_crit_edge

if.end53.if.then.i.i_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end59:                                         ; preds = %if.end53
  %multicast_query_response_interval = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_opts, i32 0, i32 10, i32 0, i32 12
  %35 = ptrtoint ptr %multicast_query_response_interval to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %multicast_query_response_interval, align 4
  %call60 = call i32 @jiffies_to_clock_t(i32 noundef %36) #7
  %conv61 = sext i32 %call60 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i159) #7
  %37 = ptrtoint ptr %tmp.i159 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv61, ptr %tmp.i159, align 8
  %call.i160 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 13, i32 noundef 8, ptr noundef nonnull %tmp.i159, i32 noundef 9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i159) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool63.not = icmp eq i32 %call.i160, 0
  br i1 %tobool63.not, label %if.end65, label %if.end59.if.then.i.i_crit_edge

if.end59.if.then.i.i_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end65:                                         ; preds = %if.end59
  %multicast_startup_query_interval = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_opts, i32 0, i32 10, i32 0, i32 13
  %38 = ptrtoint ptr %multicast_startup_query_interval to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %multicast_startup_query_interval, align 8
  %call66 = call i32 @jiffies_to_clock_t(i32 noundef %39) #7
  %conv67 = sext i32 %call66 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i161) #7
  %40 = ptrtoint ptr %tmp.i161 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv67, ptr %tmp.i161, align 8
  %call.i162 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 14, i32 noundef 8, ptr noundef nonnull %tmp.i161, i32 noundef 9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i161) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool69.not = icmp eq i32 %call.i162, 0
  br i1 %tobool69.not, label %if.end71, label %if.end65.if.then.i.i_crit_edge

if.end65.if.then.i.i_crit_edge:                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end71:                                         ; preds = %if.end65
  %ip4_mc_router_list.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_opts, i32 0, i32 10, i32 0, i32 14
  %41 = ptrtoint ptr %ip4_mc_router_list.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %ip4_mc_router_list.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.not.i, label %br_rports_have_mc_router.exit, label %if.end71.if.then73_crit_edge

if.end71.if.then73_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then73

br_rports_have_mc_router.exit:                    ; preds = %if.end71
  %ip6_mc_router_list.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_opts, i32 0, i32 10, i32 0, i32 19
  %43 = ptrtoint ptr %ip6_mc_router_list.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %ip6_mc_router_list.i, align 4
  %tobool.not.i4.i.not = icmp eq ptr %44, null
  br i1 %tobool.not.i4.i.not, label %br_rports_have_mc_router.exit.if.end83_crit_edge, label %br_rports_have_mc_router.exit.if.then73_crit_edge

br_rports_have_mc_router.exit.if.then73_crit_edge: ; preds = %br_rports_have_mc_router.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then73

br_rports_have_mc_router.exit.if.end83_crit_edge: ; preds = %br_rports_have_mc_router.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then73:                                        ; preds = %br_rports_have_mc_router.exit.if.then73_crit_edge, %if.end71.if.then73_crit_edge
  %45 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i164 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32784, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i164)
  %cmp.i.i165 = icmp slt i32 %call1.i.i164, 0
  %tobool75.not176 = icmp eq ptr %46, null
  %tobool75.not = select i1 %cmp.i.i165, i1 true, i1 %tobool75.not176
  br i1 %tobool75.not, label %if.then73.if.then.i.i_crit_edge, label %if.end77

if.then73.if.then.i.i_crit_edge:                  ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end77:                                         ; preds = %if.then73
  %47 = call i32 @llvm.read_register.i32(metadata !60) #7
  %and.i.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %50, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !74
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end77.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end77.rcu_read_lock.exit_crit_edge:            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end77
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end77.rcu_read_lock.exit_crit_edge
  %call78 = call i32 @br_rports_fill_info(ptr noundef %skb, ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  call fastcc void @rcu_read_unlock()
  br i1 %tobool79.not, label %if.end81, label %if.then80

if.then80:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @nla_nest_cancel(ptr noundef %skb, ptr noundef nonnull %46)
  br label %if.then.i.i

if.end81:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %53 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i, ptr %46, align 2
  br label %if.end83

if.end83:                                         ; preds = %if.end81, %br_rports_have_mc_router.exit.if.end83_crit_edge
  %multicast_mld_version = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_opts, i32 0, i32 10, i32 0, i32 7
  %54 = ptrtoint ptr %multicast_mld_version to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %multicast_mld_version, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i167) #7
  %56 = ptrtoint ptr %tmp.i167 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %tmp.i167, align 1
  %call.i168 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i167) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i167) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool85.not = icmp eq i32 %call.i168, 0
  br i1 %tobool85.not, label %if.end87, label %if.end83.if.then.i.i_crit_edge

if.end83.if.then.i.i_crit_edge:                   ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end87:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i170 = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i171 = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i172 = sub i32 %sub.ptr.lhs.cast.i170, %sub.ptr.rhs.cast.i171
  %conv.i173 = trunc i32 %sub.ptr.sub.i172 to i16
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i173, ptr %1, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end83.if.then.i.i_crit_edge, %if.then80, %if.then73.if.then.i.i_crit_edge, %if.end65.if.then.i.i_crit_edge, %if.end59.if.then.i.i_crit_edge, %if.end53.if.then.i.i_crit_edge, %if.end47.if.then.i.i_crit_edge, %if.end41.if.then.i.i_crit_edge, %if.end35.if.then.i.i_crit_edge, %lor.lhs.false31.if.then.i.i_crit_edge, %lor.lhs.false28.if.then.i.i_crit_edge, %lor.lhs.false25.if.then.i.i_crit_edge, %lor.lhs.false22.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end13.if.then.i.i_crit_edge, %land.lhs.true9.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %60 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i174 = icmp ugt ptr %61, %1
  br i1 %cmp.i.i174, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !70

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %62 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end87, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %nla_nest_cancel.exit ], [ true, %if.end87 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_dump_querier_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_rports_fill_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #7
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nla_nest_cancel(ptr noundef %skb, ptr noundef %start) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not.i = icmp eq ptr %start, null
  br i1 %tobool.not.i, label %entry.nlmsg_trim.exit_crit_edge, label %if.then.i

entry.nlmsg_trim.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nlmsg_trim.exit

if.then.i:                                        ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %1, %start
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !70

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %start to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #7
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %entry.nlmsg_trim.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_rtm_process_global_options(ptr nocapture noundef readonly %dev, ptr noundef %attr, i32 noundef %cmd, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i12.i = alloca i64, align 8
  %tmp.i10.i = alloca i64, align 8
  %tmp.i8.i = alloca i64, align 8
  %tmp.i6.i = alloca i64, align 8
  %tmp.i4.i = alloca i64, align 8
  %tmp.i.i = alloca i64, align 8
  %tb = alloca [18 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %tb) #7
  %0 = call ptr @memset(ptr %tb, i32 255, i32 72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 112
  br i1 %cmp.not, label %if.end2, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_rtm_process_global_options.__msg) #7
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup129_crit_edge, label %if.then1

do.body.cleanup129_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup129

if.then1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @br_vlan_rtm_process_global_options.__msg, ptr %extack, align 4
  br label %cleanup129

if.end2:                                          ; preds = %entry
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %do.body4, label %if.end12

do.body4:                                         ; preds = %if.end2
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_rtm_process_global_options.__msg.3) #7
  %tobool6.not = icmp eq ptr %extack, null
  br i1 %tobool6.not, label %do.body4.cleanup129_crit_edge, label %if.then7

do.body4.cleanup129_crit_edge:                    ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup129

if.then7:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @br_vlan_rtm_process_global_options.__msg.3, ptr %extack, align 4
  br label %cleanup129

if.end12:                                         ; preds = %if.end2
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %if.end12.br_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.end12.br_vlan_group.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.end12
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.br_vlan_group.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1471, ptr noundef nonnull @.str.8) #7
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i.br_vlan_group.exit_crit_edge, %if.end12.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr i8, ptr %dev, i32 2408
  %5 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vlgrp.i, align 4
  %tobool15.not = icmp eq ptr %6, null
  br i1 %tobool15.not, label %do.end28, label %if.end43, !prof !70

do.end28:                                         ; preds = %br_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 605, i32 noundef 9, ptr noundef null) #7
  br label %cleanup129

if.end43:                                         ; preds = %br_vlan_group.exit
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr, i32 0, i32 1
  %7 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %tobool.not.i184 = icmp sgt i16 %8, -1
  br i1 %tobool.not.i184, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end43
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #7
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup129_crit_edge, label %if.then2.i

do.body.i.cleanup129_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup129

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %10 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %attr, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %11 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup129

nla_parse_nested.exit:                            ; preds = %if.end43
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %12 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %13 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 17, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @br_vlan_db_gpol, i32 noundef 31, ptr noundef %extack) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool45.not = icmp eq i32 %call6.i, 0
  br i1 %tobool45.not, label %if.end47, label %nla_parse_nested.exit.cleanup129_crit_edge

nla_parse_nested.exit.cleanup129_crit_edge:       ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup129

if.end47:                                         ; preds = %nla_parse_nested.exit
  %arrayidx = getelementptr inbounds [18 x ptr], ptr %tb, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool48.not = icmp eq ptr %15, null
  br i1 %tobool48.not, label %do.body50, label %if.end58

do.body50:                                        ; preds = %if.end47
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_rtm_process_global_options.__msg.4) #7
  %tobool52.not = icmp eq ptr %extack, null
  br i1 %tobool52.not, label %do.body50.cleanup129_crit_edge, label %if.then53

do.body50.cleanup129_crit_edge:                   ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup129

if.then53:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @br_vlan_rtm_process_global_options.__msg.4, ptr %extack, align 4
  br label %cleanup129

if.end58:                                         ; preds = %if.end47
  %add.ptr.i.i185 = getelementptr i8, ptr %15, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i185 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i185, align 2
  %19 = add i16 %18, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %19)
  %20 = icmp ult i16 %19, 4094
  br i1 %20, label %if.end63, label %do.body.i186

do.body.i186:                                     ; preds = %if.end58
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_id.__msg) #7
  %tobool5.not.i = icmp eq ptr %extack, null
  br i1 %tobool5.not.i, label %do.body.i186.cleanup129_crit_edge, label %if.then6.i

do.body.i186.cleanup129_crit_edge:                ; preds = %do.body.i186
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup129

if.then6.i:                                       ; preds = %do.body.i186
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @br_vlan_valid_id.__msg, ptr %extack, align 4
  br label %cleanup129

if.end63:                                         ; preds = %if.end58
  %arrayidx64 = getelementptr inbounds [18 x ptr], ptr %tb, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx64, align 4
  %tobool65.not = icmp eq ptr %23, null
  br i1 %tobool65.not, label %if.end63.for.body.lr.ph_crit_edge, label %if.then66

if.end63.for.body.lr.ph_crit_edge:                ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

if.then66:                                        ; preds = %if.end63
  %add.ptr.i.i187 = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i187 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i187, align 2
  %26 = add i16 %25, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %26)
  %27 = icmp ult i16 %26, 4094
  br i1 %27, label %if.end71, label %do.body.i189

do.body.i189:                                     ; preds = %if.then66
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_valid_id.__msg) #7
  %tobool5.not.i188 = icmp eq ptr %extack, null
  br i1 %tobool5.not.i188, label %do.body.i189.cleanup129_crit_edge, label %if.then6.i190

do.body.i189.cleanup129_crit_edge:                ; preds = %do.body.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup129

if.then6.i190:                                    ; preds = %do.body.i189
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @br_vlan_valid_id.__msg, ptr %extack, align 4
  br label %cleanup129

if.end71:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %25)
  %cmp73.not = icmp ult i16 %18, %25
  br i1 %cmp73.not, label %if.end71.for.body.lr.ph_crit_edge, label %do.body76

if.end71.for.body.lr.ph_crit_edge:                ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

do.body76:                                        ; preds = %if.end71
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_rtm_process_global_options.__msg.5) #7
  %tobool78.not = icmp eq ptr %extack, null
  br i1 %tobool78.not, label %do.body76.cleanup129_crit_edge, label %if.then79

do.body76.cleanup129_crit_edge:                   ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup129

if.then79:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @br_vlan_rtm_process_global_options.__msg.5, ptr %extack, align 4
  br label %cleanup129

for.body.lr.ph:                                   ; preds = %if.end71.for.body.lr.ph_crit_edge, %if.end63.for.body.lr.ph_crit_edge
  %vid_range.0240 = phi i16 [ %18, %if.end63.for.body.lr.ph_crit_edge ], [ %25, %if.end71.for.body.lr.ph_crit_edge ]
  %arrayidx.i = getelementptr inbounds ptr, ptr %tb, i32 3
  %arrayidx7.i = getelementptr inbounds ptr, ptr %tb, i32 4
  %arrayidx17.i = getelementptr inbounds ptr, ptr %tb, i32 6
  %arrayidx23.i = getelementptr inbounds ptr, ptr %tb, i32 7
  %arrayidx30.i = getelementptr inbounds ptr, ptr %tb, i32 8
  %arrayidx38.i = getelementptr inbounds ptr, ptr %tb, i32 10
  %arrayidx47.i = getelementptr inbounds ptr, ptr %tb, i32 11
  %arrayidx56.i = getelementptr inbounds ptr, ptr %tb, i32 12
  %arrayidx64.i = getelementptr inbounds ptr, ptr %tb, i32 13
  %arrayidx73.i = getelementptr inbounds ptr, ptr %tb, i32 14
  %arrayidx81.i = getelementptr inbounds ptr, ptr %tb, i32 15
  %arrayidx96.i = getelementptr inbounds ptr, ptr %tb, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vid.0224 = phi i16 [ %18, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %curr_end.0220 = phi ptr [ null, %for.body.lr.ph ], [ %curr_end.2.ph, %for.inc.for.body_crit_edge ]
  %curr_start.0216 = phi ptr [ null, %for.body.lr.ph ], [ %curr_start.3.ph, %for.inc.for.body_crit_edge ]
  %call90 = call ptr @br_vlan_find(ptr noundef nonnull %6, i16 noundef zeroext %vid.0224) #7
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %do.body93, label %if.end101

do.body93:                                        ; preds = %for.body
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_vlan_rtm_process_global_options.__msg.6) #7
  %tobool95.not = icmp eq ptr %extack, null
  br i1 %tobool95.not, label %do.body93.for.end_crit_edge, label %if.then96

do.body93.for.end_crit_edge:                      ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then96:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @br_vlan_rtm_process_global_options.__msg.6, ptr %extack, align 4
  br label %for.end

if.end101:                                        ; preds = %for.body
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i192 = icmp eq ptr %32, null
  br i1 %tobool.not.i192, label %if.end101.if.end6.i_crit_edge, label %if.then.i193

if.end101.if.end6.i_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then.i193:                                     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool2.i = icmp ne i8 %34, 0
  %call4.i = call zeroext i1 @br_multicast_toggle_global_vlan(ptr noundef nonnull %call90, i1 noundef zeroext %tobool2.i) #7
  %spec.select = zext i1 %call4.i to i8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i193, %if.end101.if.end6.i_crit_edge
  %changed.0 = phi i8 [ 0, %if.end101.if.end6.i_crit_edge ], [ %spec.select, %if.then.i193 ]
  %35 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx7.i, align 4
  %tobool8.not.i = icmp eq ptr %36, null
  br i1 %tobool8.not.i, label %if.end6.i.if.end16.i_crit_edge, label %if.then9.i

if.end6.i.if.end16.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then9.i:                                       ; preds = %if.end6.i
  %add.ptr.i.i1.i = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr.i.i1.i, align 1
  %39 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call90, i32 0, i32 10
  %conv.i = zext i8 %38 to i32
  %call12.i = call i32 @br_multicast_set_igmp_version(ptr noundef %39, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then9.i.if.end16.i_crit_edge, label %if.then9.i.for.end_crit_edge

if.then9.i.for.end_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then9.i.if.end16.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then9.i.if.end16.i_crit_edge, %if.end6.i.if.end16.i_crit_edge
  %changed.1 = phi i8 [ %changed.0, %if.end6.i.if.end16.i_crit_edge ], [ 1, %if.then9.i.if.end16.i_crit_edge ]
  %40 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx17.i, align 4
  %tobool18.not.i = icmp eq ptr %41, null
  br i1 %tobool18.not.i, label %if.end16.i.if.end22.i_crit_edge, label %if.then19.i

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i2.i = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i2.i, align 4
  %multicast_last_member_count.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call90, i32 0, i32 10, i32 0, i32 2
  %44 = ptrtoint ptr %multicast_last_member_count.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %multicast_last_member_count.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end22.i_crit_edge
  %changed.2 = phi i8 [ %changed.1, %if.end16.i.if.end22.i_crit_edge ], [ 1, %if.then19.i ]
  %45 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx23.i, align 4
  %tobool24.not.i = icmp eq ptr %46, null
  br i1 %tobool24.not.i, label %if.end22.i.if.end29.i_crit_edge, label %if.then25.i

if.end22.i.if.end29.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i3.i = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i3.i, align 4
  %multicast_startup_query_count.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call90, i32 0, i32 10, i32 0, i32 3
  %49 = ptrtoint ptr %multicast_startup_query_count.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %multicast_startup_query_count.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end29.i_crit_edge
  %changed.3 = phi i8 [ %changed.2, %if.end22.i.if.end29.i_crit_edge ], [ 1, %if.then25.i ]
  %50 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx30.i, align 4
  %tobool31.not.i = icmp eq ptr %51, null
  br i1 %tobool31.not.i, label %if.end29.i.if.end37.i_crit_edge, label %if.then32.i

if.end29.i.if.end37.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #7
  %52 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 -1, ptr %tmp.i.i, align 8, !annotation !73
  %call.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i, ptr noundef nonnull %51, i32 noundef 8) #7
  %53 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %tmp.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #7
  %conv35.i = trunc i64 %54 to i32
  %call36.i = call i32 @clock_t_to_jiffies(i32 noundef %conv35.i) #7
  %multicast_last_member_interval.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call90, i32 0, i32 10, i32 0, i32 8
  %55 = ptrtoint ptr %multicast_last_member_interval.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call36.i, ptr %multicast_last_member_interval.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then32.i, %if.end29.i.if.end37.i_crit_edge
  %changed.4 = phi i8 [ %changed.3, %if.end29.i.if.end37.i_crit_edge ], [ 1, %if.then32.i ]
  %56 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx38.i, align 4
  %tobool39.not.i = icmp eq ptr %57, null
  br i1 %tobool39.not.i, label %if.end37.i.if.end46.i_crit_edge, label %if.then40.i

if.end37.i.if.end46.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i4.i) #7
  %58 = ptrtoint ptr %tmp.i4.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 -1, ptr %tmp.i4.i, align 8, !annotation !73
  %call.i5.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i4.i, ptr noundef nonnull %57, i32 noundef 8) #7
  %59 = ptrtoint ptr %tmp.i4.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %tmp.i4.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i4.i) #7
  %conv44.i = trunc i64 %60 to i32
  %call45.i = call i32 @clock_t_to_jiffies(i32 noundef %conv44.i) #7
  %multicast_membership_interval.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call90, i32 0, i32 10, i32 0, i32 9
  %61 = ptrtoint ptr %multicast_membership_interval.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call45.i, ptr %multicast_membership_interval.i, align 8
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then40.i, %if.end37.i.if.end46.i_crit_edge
  %changed.5 = phi i8 [ %changed.4, %if.end37.i.if.end46.i_crit_edge ], [ 1, %if.then40.i ]
  %62 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx47.i, align 4
  %tobool48.not.i = icmp eq ptr %63, null
  br i1 %tobool48.not.i, label %if.end46.i.if.end55.i_crit_edge, label %if.then49.i

if.end46.i.if.end55.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i6.i) #7
  %64 = ptrtoint ptr %tmp.i6.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 -1, ptr %tmp.i6.i, align 8, !annotation !73
  %call.i7.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i6.i, ptr noundef nonnull %63, i32 noundef 8) #7
  %65 = ptrtoint ptr %tmp.i6.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %tmp.i6.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i6.i) #7
  %conv53.i = trunc i64 %66 to i32
  %call54.i = call i32 @clock_t_to_jiffies(i32 noundef %conv53.i) #7
  %multicast_querier_interval.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call90, i32 0, i32 10, i32 0, i32 10
  %67 = ptrtoint ptr %multicast_querier_interval.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call54.i, ptr %multicast_querier_interval.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then49.i, %if.end46.i.if.end55.i_crit_edge
  %changed.6 = phi i8 [ %changed.5, %if.end46.i.if.end55.i_crit_edge ], [ 1, %if.then49.i ]
  %68 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx56.i, align 4
  %tobool57.not.i = icmp eq ptr %69, null
  br i1 %tobool57.not.i, label %if.end55.i.if.end63.i_crit_edge, label %if.then58.i

if.end55.i.if.end63.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i8.i) #7
  %70 = ptrtoint ptr %tmp.i8.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 -1, ptr %tmp.i8.i, align 8, !annotation !73
  %call.i9.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i8.i, ptr noundef nonnull %69, i32 noundef 8) #7
  %71 = ptrtoint ptr %tmp.i8.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %tmp.i8.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i8.i) #7
  %73 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call90, i32 0, i32 10
  %conv62.i = trunc i64 %72 to i32
  call void @br_multicast_set_query_intvl(ptr noundef %73, i32 noundef %conv62.i) #7
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then58.i, %if.end55.i.if.end63.i_crit_edge
  %changed.7 = phi i8 [ %changed.6, %if.end55.i.if.end63.i_crit_edge ], [ 1, %if.then58.i ]
  %74 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx64.i, align 4
  %tobool65.not.i = icmp eq ptr %75, null
  br i1 %tobool65.not.i, label %if.end63.i.if.end72.i_crit_edge, label %if.then66.i

if.end63.i.if.end72.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i

if.then66.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i10.i) #7
  %76 = ptrtoint ptr %tmp.i10.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 -1, ptr %tmp.i10.i, align 8, !annotation !73
  %call.i11.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i10.i, ptr noundef nonnull %75, i32 noundef 8) #7
  %77 = ptrtoint ptr %tmp.i10.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %tmp.i10.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i10.i) #7
  %conv70.i = trunc i64 %78 to i32
  %call71.i = call i32 @clock_t_to_jiffies(i32 noundef %conv70.i) #7
  %multicast_query_response_interval.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call90, i32 0, i32 10, i32 0, i32 12
  %79 = ptrtoint ptr %multicast_query_response_interval.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call71.i, ptr %multicast_query_response_interval.i, align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then66.i, %if.end63.i.if.end72.i_crit_edge
  %changed.8 = phi i8 [ %changed.7, %if.end63.i.if.end72.i_crit_edge ], [ 1, %if.then66.i ]
  %80 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx73.i, align 4
  %tobool74.not.i = icmp eq ptr %81, null
  br i1 %tobool74.not.i, label %if.end72.i.if.end80.i_crit_edge, label %if.then75.i

if.end72.i.if.end80.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

if.then75.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i12.i) #7
  %82 = ptrtoint ptr %tmp.i12.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 -1, ptr %tmp.i12.i, align 8, !annotation !73
  %call.i13.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i12.i, ptr noundef nonnull %81, i32 noundef 8) #7
  %83 = ptrtoint ptr %tmp.i12.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %tmp.i12.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i12.i) #7
  %85 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call90, i32 0, i32 10
  %conv79.i = trunc i64 %84 to i32
  call void @br_multicast_set_startup_query_intvl(ptr noundef %85, i32 noundef %conv79.i) #7
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then75.i, %if.end72.i.if.end80.i_crit_edge
  %changed.9 = phi i8 [ %changed.8, %if.end72.i.if.end80.i_crit_edge ], [ 1, %if.then75.i ]
  %86 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx81.i, align 4
  %tobool82.not.i = icmp eq ptr %87, null
  br i1 %tobool82.not.i, label %if.end95.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.end80.i
  %add.ptr.i.i14.i = getelementptr i8, ptr %87, i32 4
  %88 = ptrtoint ptr %add.ptr.i.i14.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %add.ptr.i.i14.i, align 1
  %90 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call90, i32 0, i32 10
  %conv87.i = zext i8 %89 to i32
  %call88.i = call i32 @br_multicast_set_querier(ptr noundef %90, i32 noundef %conv87.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %tobool89.not.i = icmp eq i32 %call88.i, 0
  br i1 %tobool89.not.i, label %if.end95.i.thread, label %if.then83.i.for.end_crit_edge

if.then83.i.for.end_crit_edge:                    ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end95.i:                                       ; preds = %if.end80.i
  %91 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx96.i, align 4
  %tobool97.not.i = icmp eq ptr %92, null
  br i1 %tobool97.not.i, label %if.end106, label %if.end95.i.if.then98.i_crit_edge

if.end95.i.if.then98.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then98.i

if.end95.i.thread:                                ; preds = %if.then83.i
  %93 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx96.i, align 4
  %tobool97.not.i242 = icmp eq ptr %94, null
  br i1 %tobool97.not.i242, label %if.end95.i.thread.if.then108_crit_edge, label %if.end95.i.thread.if.then98.i_crit_edge

if.end95.i.thread.if.then98.i_crit_edge:          ; preds = %if.end95.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then98.i

if.end95.i.thread.if.then108_crit_edge:           ; preds = %if.end95.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

if.then98.i:                                      ; preds = %if.end95.i.thread.if.then98.i_crit_edge, %if.end95.i.if.then98.i_crit_edge
  %95 = phi ptr [ %94, %if.end95.i.thread.if.then98.i_crit_edge ], [ %92, %if.end95.i.if.then98.i_crit_edge ]
  %add.ptr.i.i15.i = getelementptr i8, ptr %95, i32 4
  %96 = ptrtoint ptr %add.ptr.i.i15.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %add.ptr.i.i15.i, align 1
  %98 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call90, i32 0, i32 10
  %conv102.i = zext i8 %97 to i32
  %call103.i = call i32 @br_multicast_set_mld_version(ptr noundef %98, i32 noundef %conv102.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.i)
  %tobool104.not.i = icmp eq i32 %call103.i, 0
  br i1 %tobool104.not.i, label %if.then98.i.if.then108_crit_edge, label %if.then98.i.for.end_crit_edge

if.then98.i.for.end_crit_edge:                    ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then98.i.if.then108_crit_edge:                 ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

if.end106:                                        ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %changed.9)
  %tobool107.not = icmp eq i8 %changed.9, 0
  br i1 %tobool107.not, label %if.else117, label %if.end106.if.then108_crit_edge

if.end106.if.then108_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

if.then108:                                       ; preds = %if.end106.if.then108_crit_edge, %if.then98.i.if.then108_crit_edge, %if.end95.i.thread.if.then108_crit_edge
  %tobool109.not = icmp eq ptr %curr_start.0216, null
  br i1 %tobool109.not, label %if.then108.for.inc_crit_edge, label %if.end111

if.then108.for.inc_crit_edge:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end111:                                        ; preds = %if.then108
  %call112 = call zeroext i1 @br_vlan_global_opts_can_enter_range(ptr noundef nonnull %call90, ptr noundef %curr_end.0220)
  br i1 %call112, label %if.end111.for.inc_crit_edge, label %if.end111.for.inc.sink.split_crit_edge

if.end111.for.inc.sink.split_crit_edge:           ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

if.end111.for.inc_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else117:                                       ; preds = %if.end106
  %tobool118.not = icmp eq ptr %curr_start.0216, null
  br i1 %tobool118.not, label %if.else117.for.inc_crit_edge, label %if.else117.for.inc.sink.split_crit_edge

if.else117.for.inc.sink.split_crit_edge:          ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

if.else117.for.inc_crit_edge:                     ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc.sink.split:                               ; preds = %if.else117.for.inc.sink.split_crit_edge, %if.end111.for.inc.sink.split_crit_edge
  %curr_start.3.ph.ph = phi ptr [ %call90, %if.end111.for.inc.sink.split_crit_edge ], [ null, %if.else117.for.inc.sink.split_crit_edge ]
  %vid114 = getelementptr inbounds %struct.net_bridge_vlan, ptr %curr_start.0216, i32 0, i32 2
  %99 = ptrtoint ptr %vid114 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %vid114, align 8
  %vid115 = getelementptr inbounds %struct.net_bridge_vlan, ptr %curr_end.0220, i32 0, i32 2
  %101 = ptrtoint ptr %vid115 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %vid115, align 8
  call fastcc void @br_vlan_global_opts_notify(ptr noundef %add.ptr.i, i16 noundef zeroext %100, i16 noundef zeroext %102)
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else117.for.inc_crit_edge, %if.end111.for.inc_crit_edge, %if.then108.for.inc_crit_edge
  %curr_start.3.ph = phi ptr [ %curr_start.0216, %if.end111.for.inc_crit_edge ], [ null, %if.else117.for.inc_crit_edge ], [ %call90, %if.then108.for.inc_crit_edge ], [ %curr_start.3.ph.ph, %for.inc.sink.split ]
  %curr_end.2.ph = phi ptr [ %call90, %if.end111.for.inc_crit_edge ], [ %curr_end.0220, %if.else117.for.inc_crit_edge ], [ %call90, %if.then108.for.inc_crit_edge ], [ %curr_start.3.ph.ph, %for.inc.sink.split ]
  %inc = add i16 %vid.0224, 1
  %cmp88.not = icmp ugt i16 %inc, %vid_range.0240
  br i1 %cmp88.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then98.i.for.end_crit_edge, %if.then83.i.for.end_crit_edge, %if.then9.i.for.end_crit_edge, %if.then96, %do.body93.for.end_crit_edge
  %curr_start.0214 = phi ptr [ %curr_start.0216, %if.then96 ], [ %curr_start.0216, %do.body93.for.end_crit_edge ], [ %curr_start.3.ph, %for.inc.for.end_crit_edge ], [ %curr_start.0216, %if.then98.i.for.end_crit_edge ], [ %curr_start.0216, %if.then83.i.for.end_crit_edge ], [ %curr_start.0216, %if.then9.i.for.end_crit_edge ]
  %curr_end.0212 = phi ptr [ %curr_end.0220, %if.then96 ], [ %curr_end.0220, %do.body93.for.end_crit_edge ], [ %curr_end.2.ph, %for.inc.for.end_crit_edge ], [ %curr_end.0220, %if.then98.i.for.end_crit_edge ], [ %curr_end.0220, %if.then83.i.for.end_crit_edge ], [ %curr_end.0220, %if.then9.i.for.end_crit_edge ]
  %err.2 = phi i32 [ -2, %if.then96 ], [ -2, %do.body93.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], [ %call103.i, %if.then98.i.for.end_crit_edge ], [ %call88.i, %if.then83.i.for.end_crit_edge ], [ %call12.i, %if.then9.i.for.end_crit_edge ]
  %tobool124.not = icmp eq ptr %curr_start.0214, null
  br i1 %tobool124.not, label %for.end.cleanup129_crit_edge, label %if.then125

for.end.cleanup129_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup129

if.then125:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %vid126 = getelementptr inbounds %struct.net_bridge_vlan, ptr %curr_start.0214, i32 0, i32 2
  %103 = ptrtoint ptr %vid126 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %vid126, align 8
  %vid127 = getelementptr inbounds %struct.net_bridge_vlan, ptr %curr_end.0212, i32 0, i32 2
  %105 = ptrtoint ptr %vid127 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %vid127, align 8
  call fastcc void @br_vlan_global_opts_notify(ptr noundef %add.ptr.i, i16 noundef zeroext %104, i16 noundef zeroext %106)
  br label %cleanup129

cleanup129:                                       ; preds = %if.then125, %for.end.cleanup129_crit_edge, %if.then79, %do.body76.cleanup129_crit_edge, %if.then6.i190, %do.body.i189.cleanup129_crit_edge, %if.then6.i, %do.body.i186.cleanup129_crit_edge, %if.then53, %do.body50.cleanup129_crit_edge, %nla_parse_nested.exit.cleanup129_crit_edge, %if.then2.i, %do.body.i.cleanup129_crit_edge, %do.end28, %if.then7, %do.body4.cleanup129_crit_edge, %if.then1, %do.body.cleanup129_crit_edge
  %retval.0 = phi i32 [ -19, %do.end28 ], [ -22, %if.then1 ], [ -22, %do.body.cleanup129_crit_edge ], [ -22, %if.then7 ], [ -22, %do.body4.cleanup129_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup129_crit_edge ], [ -22, %if.then53 ], [ -22, %do.body50.cleanup129_crit_edge ], [ -22, %if.then79 ], [ -22, %do.body76.cleanup129_crit_edge ], [ %err.2, %if.then125 ], [ %err.2, %for.end.cleanup129_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup129_crit_edge ], [ -22, %do.body.i186.cleanup129_crit_edge ], [ -22, %if.then6.i ], [ -22, %do.body.i189.cleanup129_crit_edge ], [ -22, %if.then6.i190 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %tb) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @br_vlan_global_opts_notify(ptr nocapture noundef readonly %br, i16 noundef zeroext %vid, i16 noundef zeroext %vid_range) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b81 = load i1, ptr @br_vlan_global_opts_notify.__already_done, align 1
  br i1 %.b81, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !72

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_vlan_global_opts_notify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 426) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %if.end29.br_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.end29.br_vlan_group.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.end29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.br_vlan_group.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1471, ptr noundef nonnull @.str.8) #7
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i.br_vlan_group.exit_crit_edge, %if.end29.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 7
  %0 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlgrp.i, align 4
  %call38 = tail call ptr @br_vlan_find(ptr noundef %1, i16 noundef zeroext %vid) #7
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %br_vlan_group.exit.cleanup_crit_edge, label %if.end41

br_vlan_group.exit.cleanup_crit_edge:             ; preds = %br_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %br_vlan_group.exit
  %call27.i = tail call i32 @br_multicast_querier_state_size() #7
  %2 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call38, i32 0, i32 10
  %call31.i = tail call i32 @br_rports_size(ptr noundef %2) #7
  %add34.i = add i32 %call27.i, 171
  %sub.i.i = add i32 %add34.i, %call31.i
  %and.i.i = and i32 %sub.i.i, -4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool44.not = icmp eq ptr %call.i.i, null
  br i1 %tobool44.not, label %if.end41.out_err_crit_edge, label %if.end46

if.end41.out_err_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end46:                                         ; preds = %if.end41
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end46.out_err_crit_edge

if.end46.out_err_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

skb_tailroom.exit.i:                              ; preds = %if.end46
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %5 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 24
  br i1 %cmp.i, label %skb_tailroom.exit.i.out_err_crit_edge, label %nlmsg_put.exit, !prof !70

skb_tailroom.exit.i.out_err_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 112, i32 noundef 8, i32 noundef 0) #7
  %tobool48.not = icmp eq ptr %call3.i, null
  br i1 %tobool48.not, label %nlmsg_put.exit.out_err_crit_edge, label %if.end50

nlmsg_put.exit.out_err_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end50:                                         ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 504403158265495552, ptr %add.ptr.i, align 4
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex, align 4
  %ifindex52 = getelementptr i8, ptr %call3.i, i32 20
  %14 = ptrtoint ptr %ifindex52 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ifindex52, align 4
  %call53 = tail call zeroext i1 @br_vlan_global_opts_fill(ptr noundef nonnull %call.i.i, i16 noundef zeroext %vid, i16 noundef zeroext %vid_range, ptr noundef nonnull %call38)
  br i1 %call53, label %if.end55, label %if.end50.out_err_crit_edge

if.end50.out_err_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end55:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %17 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 127
  %20 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nd_net.i, align 4
  tail call void @rtnl_notify(ptr noundef nonnull %call.i.i, ptr noundef %21, i32 noundef 0, i32 noundef 33, ptr noundef null, i32 noundef 3264) #7
  br label %cleanup

out_err:                                          ; preds = %if.end50.out_err_crit_edge, %nlmsg_put.exit.out_err_crit_edge, %skb_tailroom.exit.i.out_err_crit_edge, %if.end46.out_err_crit_edge, %if.end41.out_err_crit_edge
  %err.0 = phi i32 [ -90, %if.end50.out_err_crit_edge ], [ -90, %nlmsg_put.exit.out_err_crit_edge ], [ -105, %if.end41.out_err_crit_edge ], [ -90, %skb_tailroom.exit.i.out_err_crit_edge ], [ -90, %if.end46.out_err_crit_edge ]
  %dev58 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %22 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev58, align 4
  %nd_net.i83 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 127
  %24 = ptrtoint ptr %nd_net.i83 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nd_net.i83, align 4
  tail call void @rtnl_set_sk_err(ptr noundef %25, i32 noundef 33, i32 noundef %err.0) #7
  tail call void @kfree_skb_reason(ptr noundef %call.i.i, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end55, %br_vlan_group.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vlan_tunid_inrange(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_set_vlan_router(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_tunnel_info(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_multicast_toggle_global_vlan(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_set_igmp_version(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_set_query_intvl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_set_startup_query_intvl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_set_querier(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_set_mld_version(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_querier_state_size() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_rports_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !49, !50, !52, !54, !56, !58}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @br_vlan_process_options.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../net/bridge/br_vlan_options.c", i32 233, i32 3}
!2 = !{ptr @br_vlan_process_options.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../net/bridge/br_vlan_options.c", i32 237, i32 3}
!4 = !{ptr @br_vlan_process_options.__msg.2, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../net/bridge/br_vlan_options.c", i32 247, i32 4}
!6 = !{ptr @br_vlan_rtm_process_global_options.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../net/bridge/br_vlan_options.c", i32 596, i32 3}
!8 = !{ptr @br_vlan_rtm_process_global_options.__msg.3, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../net/bridge/br_vlan_options.c", i32 600, i32 3}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/bridge/br_vlan_options.c", i32 605, i32 6}
!12 = !{ptr @br_vlan_rtm_process_global_options.__msg.4, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../net/bridge/br_vlan_options.c", i32 614, i32 3}
!14 = !{ptr @br_vlan_rtm_process_global_options.__msg.5, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../net/bridge/br_vlan_options.c", i32 626, i32 4}
!16 = !{ptr @br_vlan_rtm_process_global_options.__msg.6, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../net/bridge/br_vlan_options.c", i32 638, i32 4}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/bridge/br_private.h", i32 1477, i32 9}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/bridge/br_private.h", i32 1471, i32 9}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../net/bridge/br_vlan_options.c", i32 85, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @br_vlan_modify_state.__msg, !28, !"__msg", i1 false, i1 false}
!28 = !{!"../net/bridge/br_vlan_options.c", i32 88, i32 3}
!29 = !{ptr @br_vlan_modify_state.__msg.10, !30, !"__msg", i1 false, i1 false}
!30 = !{!"../net/bridge/br_vlan_options.c", i32 98, i32 3}
!31 = !{ptr @br_vlan_modify_tunnel.__msg, !32, !"__msg", i1 false, i1 false}
!32 = !{!"../net/bridge/br_vlan_options.c", i32 131, i32 3}
!33 = !{ptr @br_vlan_modify_tunnel.__msg.11, !34, !"__msg", i1 false, i1 false}
!34 = !{!"../net/bridge/br_vlan_options.c", i32 135, i32 3}
!35 = !{ptr @br_vlan_modify_tunnel.__msg.12, !36, !"__msg", i1 false, i1 false}
!36 = !{!"../net/bridge/br_vlan_options.c", i32 146, i32 3}
!37 = !{ptr @br_vlan_modify_tunnel.__msg.13, !38, !"__msg", i1 false, i1 false}
!38 = !{!"../net/bridge/br_vlan_options.c", i32 153, i32 4}
!39 = !{ptr @br_vlan_modify_tunnel.__msg.14, !40, !"__msg", i1 false, i1 false}
!40 = !{!"../net/bridge/br_vlan_options.c", i32 169, i32 3}
!41 = !{ptr @br_vlandb_tinfo_pol, !42, !"br_vlandb_tinfo_pol", i1 false, i1 false}
!42 = !{!"../net/bridge/br_vlan_options.c", i32 114, i32 32}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/net/netlink.h", i32 991, i32 3}
!52 = !{ptr @nla_parse_nested.__msg, !53, !"__msg", i1 false, i1 false}
!53 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!54 = !{ptr @br_vlan_db_gpol, !55, !"br_vlan_db_gpol", i1 false, i1 false}
!55 = !{!"../net/bridge/br_vlan_options.c", i32 566, i32 32}
!56 = !{ptr @br_vlan_valid_id.__msg, !57, !"__msg", i1 false, i1 false}
!57 = !{!"../net/bridge/br_private.h", i32 640, i32 3}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../net/bridge/br_vlan_options.c", i32 426, i32 2}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 2158169477}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{!"auto-init"}
!74 = !{i64 2149606217}
!75 = !{i64 2149606483}
