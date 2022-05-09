; ModuleID = '/llk/IR_all_yes/net/batman-adv/soft-interface.c_pt.bc'
source_filename = "../net/batman-adv/soft-interface.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.anon.126 = type { [32 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.102, %union.anon.103, [48 x i8], %union.anon.104, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.106, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.102 = type { ptr }
%union.anon.103 = type { i64 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, ptr }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.108, i32, i32, i32, i16, i16, %union.anon.110, i32, %union.anon.111, %union.anon.112, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.108 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.112 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.vlan_ethhdr = type { %union.anon.123, i16, i16, i16 }
%union.anon.123 = type { %struct.anon.124 }
%struct.anon.124 = type { [6 x i8], [6 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.batadv_priv = type { %struct.atomic_t, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, ptr, %struct.hlist_head, %struct.spinlock, %struct.batadv_priv_bla, ptr, %struct.batadv_priv_gw, %struct.batadv_priv_tt, %struct.batadv_priv_tvlv, %struct.batadv_priv_dat, %struct.batadv_priv_mcast, %struct.atomic_t, %struct.batadv_priv_nc, %struct.batadv_priv_bat_v }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.batadv_priv_bla = type { %struct.atomic_t, ptr, ptr, [6 x i8], i32, %struct.atomic_t, [16 x %struct.batadv_bcast_duplist_entry], i32, %struct.spinlock, %struct.batadv_bla_claim_dst, %struct.delayed_work }
%struct.batadv_bcast_duplist_entry = type { [6 x i8], i32, i32 }
%struct.batadv_bla_claim_dst = type { [3 x i8], i8, i16 }
%struct.batadv_priv_gw = type { %struct.hlist_head, %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.batadv_priv_tt = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, ptr, ptr, %struct.hlist_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i16, %struct.spinlock, %struct.spinlock, %struct.delayed_work }
%struct.batadv_priv_tvlv = type { %struct.hlist_head, %struct.hlist_head, %struct.spinlock, %struct.spinlock }
%struct.batadv_priv_dat = type { i16, ptr, %struct.delayed_work }
%struct.batadv_priv_mcast = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.batadv_mcast_mla_flags, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.delayed_work }
%struct.batadv_mcast_mla_flags = type { %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state, i8, i8 }
%struct.batadv_mcast_querier_state = type { i8 }
%struct.batadv_priv_nc = type { %struct.delayed_work, i8, i32, i32, i32, i32, ptr, ptr }
%struct.batadv_priv_bat_v = type { ptr, i32, %struct.atomic_t, %struct.mutex, %struct.delayed_work }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.batadv_softif_vlan = type { ptr, i16, %struct.atomic_t, %struct.batadv_vlan_tt, %struct.hlist_node, %struct.kref, %struct.callback_head }
%struct.batadv_vlan_tt = type { i32, %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.101, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.101 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.batadv_bcast_packet = type <{ i8, i8, i8, i8, i32, [6 x i8] }>
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.batadv_hard_iface_bat_iv = type { ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@batadv_softif_vlan_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/soft-interface.c\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"batadv\00", [25 x i8] zeroinitializer }, align 32
@batadv_ifla_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 10, i8 0, i16 0, %union.anon.5 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@batadv_link_ops = dso_local local_unnamed_addr global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str.2, i32 2052, ptr null, ptr @batadv_softif_init_early, i8 0, i32 1, ptr @batadv_ifla_policy, ptr @batadv_softif_validate, ptr @batadv_softif_newlink, ptr null, ptr @batadv_softif_destroy_netlink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@batadv_primary_if_get_selected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.h\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@batadv_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @batadv_softif_init_late, ptr null, ptr @batadv_interface_open, ptr @batadv_interface_release, ptr @batadv_interface_tx, ptr null, ptr null, ptr null, ptr @batadv_interface_set_rx_mode, ptr @batadv_interface_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @batadv_interface_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @batadv_interface_stats, ptr @batadv_interface_add_vid, ptr @batadv_interface_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @batadv_softif_slave_add, ptr @batadv_softif_slave_del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@batadv_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @batadv_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @batadv_get_strings, ptr null, ptr @batadv_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @batadv_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@batadv_routing_algo = external dso_local global [0 x i8], align 1
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&batadv_netdev_addr_lock_key\00", [35 x i8] zeroinitializer }, align 32
@batadv_netdev_addr_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&batadv_netdev_xmit_lock_key\00", [35 x i8] zeroinitializer }, align 32
@batadv_netdev_xmit_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@batadv_interface_set_mac_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mac address changed\00", [44 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vlan interface destroyed\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"B.A.T.M.A.N. advanced\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2022.0\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"batman\00", [25 x i8] zeroinitializer }, align 32
@batadv_counters_strings = internal constant { [37 x %struct.anon.126], [288 x i8] } { [37 x %struct.anon.126] [%struct.anon.126 { [32 x i8] c"tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"forward\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"forward_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"mgmt_tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"mgmt_tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"mgmt_rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"mgmt_rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"frag_tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"frag_tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"frag_rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"frag_rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"frag_fwd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"frag_fwd_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"tt_request_tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"tt_request_rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"tt_response_tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"tt_response_rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"tt_roam_adv_tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"tt_roam_adv_rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"dat_get_tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"dat_get_rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"dat_put_tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"dat_put_rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"dat_cached_reply_tx\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"nc_code\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"nc_code_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"nc_recode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"nc_recode_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"nc_buffer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"nc_decode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"nc_decode_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"nc_decode_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"nc_sniffed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [288 x i8] zeroinitializer }, align 32
@batadv_hardif_list = external dso_local global %struct.list_head, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 17157, i64 33024]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 16, i64 17157, i64 33024]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 532, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1121, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"batadv_ifla_policy\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1116, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 695, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 723, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [35 x i8] c"../net/batman-adv/hard-interface.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 110, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"batadv_netdev_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 872, i32 36 }
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"batadv_ethtool_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 972, i32 33 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 721, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [28 x i8] c"batadv_netdev_addr_lock_key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 700, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 712, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [28 x i8] c"batadv_netdev_xmit_lock_key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 699, i32 30 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 146, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 608, i32 22 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 891, i32 24 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 892, i32 25 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 893, i32 28 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 894, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant [24 x i8] c"batadv_counters_strings\00", align 1
@___asan_gen_.84 = private constant [35 x i8] c"../net/batman-adv/soft-interface.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 903, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @batadv_ifla_policy, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @batadv_netdev_ops, ptr @batadv_ethtool_ops, ptr @.str.8, ptr @batadv_netdev_addr_lock_key, ptr @.str.9, ptr @batadv_netdev_xmit_lock_key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @batadv_counters_strings], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_ifla_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_netdev_addr_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_netdev_xmit_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_counters_strings to i32), i32 1184, i32 1472, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_skb_head_push(ptr noundef %skb, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %entry.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

entry.skb_header_cloned.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #14
  %3 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %4, 65535
  %shr.i.i = ashr i32 %4, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %entry.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %entry.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %len)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %len
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end_crit_edge:        ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %9 = tail call i32 @llvm.usub.sat.i32(i32 %len, i32 %sub.ptr.sub.i.i.i) #14
  %add.i.i = add i32 %9, 127
  %and.i4.i = and i32 %add.i.i, -128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp = icmp slt i32 %call4.i.i, 0
  br i1 %cmp, label %skb_cow_head.exit.cleanup_crit_edge, label %skb_cow_head.exit.if.end_crit_edge

skb_cow_head.exit.if.end_crit_edge:               ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

skb_cow_head.exit.cleanup_crit_edge:              ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %skb_cow_head.exit.if.end_crit_edge, %skb_header_cloned.exit.i.if.end_crit_edge
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %len) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %skb_cow_head.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call4.i.i, %skb_cow_head.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_interface_rx(ptr noundef %soft_iface, ptr noundef %skb, i32 noundef %hdr_size, ptr noundef %orig_node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %soft_iface, i32 2304
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  %conv = zext i8 %3 to i32
  %call2 = tail call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef %hdr_size) #14
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %8 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %9 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i = and i32 %10, -8
  %11 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.nf_reset_ct.exit_crit_edge, label %land.lhs.true.i.i

entry.nf_reset_ct.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %nf_reset_ct.exit

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #14, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !65

if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nf_reset_ct.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef 3) #14
  br label %nf_reset_ct.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !66
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %11) #14
  br label %nf_reset_ct.exit

nf_reset_ct.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, %entry.nf_reset_ct.exit_crit_edge
  %13 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %_nfct.i.i, align 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %15, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 14
  br i1 %cmp.not.i, label %if.end.i, label %nf_reset_ct.exit.if.end_crit_edge, !prof !67

nf_reset_ct.exit.if.end_crit_edge:                ; preds = %nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %nf_reset_ct.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %15)
  %cmp3.i = icmp ult i32 %15, 14
  br i1 %cmp3.i, label %if.end.i.dropped_crit_edge, label %pskb_may_pull.exit, !prof !67

if.end.i.dropped_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 14, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #14
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.dropped_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !67

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

pskb_may_pull.exit.dropped_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %nf_reset_ct.exit.if.end_crit_edge
  %call6 = tail call zeroext i16 @batadv_get_vid(ptr noundef %skb, i32 noundef 0) #14
  %18 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i, align 8
  %20 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mac_header.i, align 2
  %conv.i.i = zext i16 %21 to i32
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %conv.i.i
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %h_proto, align 1
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i16 %23, label %if.end.sw.epilog_crit_edge [
    i16 -32512, label %sw.bb
    i16 17157, label %if.end.dropped_crit_edge
  ]

if.end.dropped_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %25 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i.i, align 4
  %27 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i86 = sub i32 %26, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %sub.i.i86)
  %cmp.not.i87 = icmp ult i32 %sub.i.i86, 18
  br i1 %cmp.not.i87, label %if.end.i89, label %sw.bb.if.end11_crit_edge, !prof !67

sw.bb.if.end11_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end.i89:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %26)
  %cmp3.i88 = icmp ult i32 %26, 18
  br i1 %cmp3.i88, label %if.end.i89.dropped_crit_edge, label %pskb_may_pull.exit95, !prof !67

if.end.i89.dropped_crit_edge:                     ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

pskb_may_pull.exit95:                             ; preds = %if.end.i89
  %sub.i90 = sub nuw nsw i32 18, %sub.i.i86
  %call13.i91 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i90) #14
  %cmp14.i92.not = icmp eq ptr %call13.i91, null
  br i1 %cmp14.i92.not, label %pskb_may_pull.exit95.dropped_crit_edge, label %pskb_may_pull.exit95.if.end11_crit_edge

pskb_may_pull.exit95.if.end11_crit_edge:          ; preds = %pskb_may_pull.exit95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

pskb_may_pull.exit95.dropped_crit_edge:           ; preds = %pskb_may_pull.exit95
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

if.end11:                                         ; preds = %pskb_may_pull.exit95.if.end11_crit_edge, %sw.bb.if.end11_crit_edge
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %h_vlan_encapsulated_proto = getelementptr inbounds %struct.vlan_ethhdr, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %h_vlan_encapsulated_proto to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %h_vlan_encapsulated_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17157, i16 %32)
  %cmp.not = icmp eq i16 %32, 17157
  br i1 %cmp.not, label %if.end11.dropped_crit_edge, label %if.end11.sw.epilog_crit_edge

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end11.dropped_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

sw.epilog:                                        ; preds = %if.end11.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %call18 = tail call zeroext i16 @eth_type_trans(ptr noundef %skb, ptr noundef %soft_iface) #14
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %33 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %call18, ptr %protocol, align 8
  %34 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %36 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %trunc.i = trunc i16 %bf.lshr.i to i2
  %37 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.16)
  switch i2 %trunc.i, label %sw.epilog.skb_postpull_rcsum.exit_crit_edge [
    i2 -2, label %if.then.i
    i2 -1, label %land.lhs.true.i
  ]

sw.epilog.skb_postpull_rcsum.exit_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_postpull_rcsum.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %mac_header.i, align 2
  %conv.i.i98 = zext i16 %39 to i32
  %add.ptr.i.i99 = getelementptr i8, ptr %35, i32 %conv.i.i98
  %40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %sub.i.i100 = sub i32 0, %42
  %call2.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i99, i32 noundef 14, i32 noundef %sub.i.i100) #14
  %sub.i1.i = sub i32 0, %call2.i
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub.i1.i, ptr %40, align 8
  br label %skb_postpull_rcsum.exit

land.lhs.true.i:                                  ; preds = %sw.epilog
  %44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %44, align 8
  %conv.i.i101 = zext i16 %46 to i32
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.neg.i.i = add i32 %conv.i.i101, %sub.ptr.rhs.cast.i.i.i
  %sub.i2.i = sub i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.lhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i2.i)
  %cmp13.i = icmp slt i32 %sub.i2.i, 0
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge

land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_postpull_rcsum.exit

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.clear18.i = and i16 %bf.load.i, -1537
  %49 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %bf.clear18.i, ptr %ip_summed.i, align 8
  br label %skb_postpull_rcsum.exit

skb_postpull_rcsum.exit:                          ; preds = %if.then15.i, %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge, %if.then.i, %sw.epilog.skb_postpull_rcsum.exit_crit_edge
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !68
  %bat_counters.i = getelementptr i8, ptr %soft_iface, i32 2312
  %51 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %52, i32 3
  %53 = ptrtoint ptr %arrayidx.i to i32
  %54 = tail call i32 @llvm.read_register.i32(metadata !53) #14
  %and.i.i102 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i102 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %59, %53
  %60 = inttoptr i32 %add.i to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %60, align 8
  %add15.i = add i64 %62, 1
  store i64 %add15.i, ptr %60, align 8
  %63 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !69
  %and.i.i.i = and i32 %63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i103, label %skb_postpull_rcsum.exit.batadv_add_counter.exit_crit_edge, !prof !67

skb_postpull_rcsum.exit.batadv_add_counter.exit_crit_edge: ; preds = %skb_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_add_counter.exit

if.then.i103:                                     ; preds = %skb_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i103, %skb_postpull_rcsum.exit.batadv_add_counter.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %50) #14, !srcloc !70
  %64 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len.i.i, align 4
  %add = add i32 %65, 14
  %66 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !68
  %conv6.i = zext i32 %add to i64
  %67 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i105 = getelementptr i64, ptr %68, i32 4
  %69 = ptrtoint ptr %arrayidx.i105 to i32
  %70 = tail call i32 @llvm.read_register.i32(metadata !53) #14
  %and.i.i106 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i106 to ptr
  %cpu.i107 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %cpu.i107 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpu.i107, align 4
  %arrayidx14.i108 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx14.i108 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx14.i108, align 4
  %add.i109 = add i32 %75, %69
  %76 = inttoptr i32 %add.i109 to ptr
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %76, align 8
  %add15.i110 = add i64 %78, %conv6.i
  store i64 %add15.i110, ptr %76, align 8
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !69
  %and.i.i.i111 = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i111)
  %tobool.not.i112 = icmp eq i32 %and.i.i.i111, 0
  br i1 %tobool.not.i112, label %if.then.i113, label %batadv_add_counter.exit.batadv_add_counter.exit114_crit_edge, !prof !67

batadv_add_counter.exit.batadv_add_counter.exit114_crit_edge: ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_add_counter.exit114

if.then.i113:                                     ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %batadv_add_counter.exit114

batadv_add_counter.exit114:                       ; preds = %if.then.i113, %batadv_add_counter.exit.batadv_add_counter.exit114_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %66) #14, !srcloc !70
  %call20 = tail call zeroext i1 @batadv_bla_rx(ptr noundef %add.ptr.i, ptr noundef %skb, i16 noundef zeroext %call6, i32 noundef %conv) #14
  br i1 %call20, label %batadv_add_counter.exit114.out_crit_edge, label %if.end22

batadv_add_counter.exit114.out_crit_edge:         ; preds = %batadv_add_counter.exit114
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end22:                                         ; preds = %batadv_add_counter.exit114
  %tobool23.not = icmp eq ptr %orig_node, null
  br i1 %tobool23.not, label %if.end22.if.end26_crit_edge, label %if.then24

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %call25 = tail call zeroext i1 @batadv_tt_add_temporary_global_entry(ptr noundef %add.ptr.i, ptr noundef nonnull %orig_node, ptr noundef %h_source, i16 noundef zeroext %call6) #14
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22.if.end26_crit_edge
  %80 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i.i, align 4
  %82 = and i32 %81, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.i.not = icmp eq i32 %82, 0
  br i1 %tobool.i.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end26
  %call30 = tail call zeroext i1 @batadv_vlan_ap_isola_get(ptr noundef %add.ptr.i, i16 noundef zeroext %call6) #14
  br i1 %call30, label %land.lhs.true, label %if.then29.if.end45_crit_edge

if.then29.if.end45_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

land.lhs.true:                                    ; preds = %if.then29
  %h_source32 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %call34 = tail call zeroext i1 @batadv_tt_global_is_isolated(ptr noundef %add.ptr.i, ptr noundef %h_source32, i16 noundef zeroext %call6) #14
  br i1 %call34, label %if.then36, label %land.lhs.true.if.end45_crit_edge

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %isolation_mark_mask = getelementptr i8, ptr %soft_iface, i32 2368
  %83 = ptrtoint ptr %isolation_mark_mask to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %isolation_mark_mask, align 4
  %neg = xor i32 %84, -1
  %85 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %and = and i32 %87, %neg
  store i32 %and, ptr %85, align 4
  %isolation_mark = getelementptr i8, ptr %soft_iface, i32 2364
  %88 = ptrtoint ptr %isolation_mark to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %isolation_mark, align 4
  %or = or i32 %89, %and
  store i32 %or, ptr %85, align 4
  br label %if.end45

if.else:                                          ; preds = %if.end26
  %h_source38 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %call42 = tail call zeroext i1 @batadv_is_ap_isolated(ptr noundef %add.ptr.i, ptr noundef %h_source38, ptr noundef %add.ptr.i.i, i16 noundef zeroext %call6) #14
  br i1 %call42, label %if.else.dropped_crit_edge, label %if.else.if.end45_crit_edge

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.else.dropped_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

if.end45:                                         ; preds = %if.else.if.end45_crit_edge, %if.then36, %land.lhs.true.if.end45_crit_edge, %if.then29.if.end45_crit_edge
  %call46 = tail call i32 @netif_rx(ptr noundef %skb) #14
  br label %out

dropped:                                          ; preds = %if.else.dropped_crit_edge, %if.end11.dropped_crit_edge, %pskb_may_pull.exit95.dropped_crit_edge, %if.end.i89.dropped_crit_edge, %if.end.dropped_crit_edge, %pskb_may_pull.exit.dropped_crit_edge, %if.end.i.dropped_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %out

out:                                              ; preds = %dropped, %if.end45, %batadv_add_counter.exit114.out_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @batadv_get_vid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_add_counter(ptr nocapture noundef readonly %bat_priv, i32 noundef %idx, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !68
  %conv6 = zext i32 %count to i64
  %bat_counters = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 2
  %1 = ptrtoint ptr %bat_counters to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bat_counters, align 4
  %arrayidx = getelementptr i64, ptr %2, i32 %idx
  %3 = ptrtoint ptr %arrayidx to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !53) #14
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx14 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx14, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  %add15 = add i64 %12, %conv6
  store i64 %add15, ptr %10, align 8
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !69
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end30_crit_edge, !prof !67

entry.do.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end30

do.end30:                                         ; preds = %if.then, %entry.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !70
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_bla_rx(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_tt_add_temporary_global_entry(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_vlan_ap_isola_get(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_tt_global_is_isolated(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_is_ap_isolated(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_softif_vlan_release(ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -28
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %softif_vlan_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 32
  tail call void @_raw_spin_lock_bh(ptr noundef %softif_vlan_list_lock) #14
  %list = getelementptr i8, ptr %ref, i32 -8
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %pprev2.i.i = getelementptr i8, ptr %ref, i32 -4
  %4 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev2.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %5, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

entry.hlist_del_rcu.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %entry.hlist_del_rcu.exit_crit_edge
  %8 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %softif_vlan_list_lock2 = getelementptr inbounds %struct.batadv_priv, ptr %10, i32 0, i32 32
  tail call void @_raw_spin_unlock_bh(ptr noundef %softif_vlan_list_lock2) #14
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %hlist_del_rcu.exit.if.end_crit_edge, label %do.end

hlist_del_rcu.exit.if.end_crit_edge:              ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  %rcu = getelementptr i8, ptr %ref, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 32 to ptr)) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %hlist_del_rcu.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_softif_vlan_get(ptr noundef %bat_priv, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !53) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b44 = load i1, ptr @batadv_softif_vlan_get.__warned, align 1
  br i1 %.b44, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @batadv_softif_vlan_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 532, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %softif_vlan_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 31
  %4 = ptrtoint ptr %softif_vlan_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %softif_vlan_list, align 4
  %tobool10.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -20
  %tobool12.not5761 = icmp eq ptr %add.ptr, null
  %tobool12.not57 = or i1 %tobool10.not, %tobool12.not5761
  br i1 %tobool12.not57, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %vlan_tmp.058 = phi ptr [ %add.ptr33, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %vid13 = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan_tmp.058, i32 0, i32 1
  %6 = ptrtoint ptr %vid13 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vid13, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %vid)
  %cmp.not = icmp eq i16 %7, %vid
  br i1 %cmp.not, label %if.end17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %refcount = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan_tmp.058, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #14
  %8 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end17
  %10 = phi i32 [ %9, %if.end17 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %10, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #14
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %14 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %13, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #14, !srcloc !72
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %13
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !65

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %16, 1
  %17 = or i32 %add5.i.i.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !65

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #14
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %19 = phi i32 [ %16, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.i.i.i.i.not = icmp eq i32 %19, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %list = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan_tmp.058, i32 0, i32 4
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %list, align 4
  %tobool29.not = icmp eq ptr %21, null
  %add.ptr33 = getelementptr i8, ptr %21, i32 -20
  %tobool12.not62 = icmp eq ptr %add.ptr33, null
  %tobool12.not = or i1 %tobool29.not, %tobool12.not62
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %vlan_tmp.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %vlan_tmp.058, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i46 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i46, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i49

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i49:                                ; preds = %for.end
  %call1.i47 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47)
  %tobool.not.i48 = icmp eq i32 %call1.i47, 0
  br i1 %tobool.not.i48, label %land.lhs.true.i49.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i51

land.lhs.true.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i51:                               ; preds = %land.lhs.true.i49
  %.b4.i50 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i50, label %land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge, label %if.then.i52

land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i52:                                      ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i52, %land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i49.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !73
  %22 = call i32 @llvm.read_register.i32(metadata !53) #14
  %and.i.i.i.i.i53 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i53 to ptr
  %preempt_count.i.i.i.i54 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i54, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i54, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %vlan_tmp.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_softif_create_vlan(ptr noundef %bat_priv, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %softif_vlan_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 32
  tail call void @_raw_spin_lock_bh(ptr noundef %softif_vlan_list_lock) #14
  %call = tail call ptr @batadv_softif_vlan_get(ptr noundef %bat_priv, i16 noundef zeroext %vid)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_softif_vlan_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !65

if.end5.i.i.i.i.i.batadv_softif_vlan_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_softif_vlan_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %batadv_softif_vlan_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !66
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %softif_vlan_list_lock.i.i = getelementptr inbounds %struct.batadv_priv, ptr %2, i32 0, i32 32
  tail call void @_raw_spin_lock_bh(ptr noundef %softif_vlan_list_lock.i.i) #14
  %list.i.i = getelementptr %struct.batadv_softif_vlan, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list.i.i, align 4
  %pprev2.i.i.i.i = getelementptr %struct.batadv_softif_vlan, ptr %call, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %4, ptr %6, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.hlist_del_rcu.exit.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.hlist_del_rcu.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del_rcu.exit.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %pprev14.i.i.i.i, align 4
  br label %hlist_del_rcu.exit.i.i

hlist_del_rcu.exit.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.hlist_del_rcu.exit.i.i_crit_edge
  %9 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %softif_vlan_list_lock2.i.i = getelementptr inbounds %struct.batadv_priv, ptr %11, i32 0, i32 32
  tail call void @_raw_spin_unlock_bh(ptr noundef %softif_vlan_list_lock2.i.i) #14
  %rcu.i.i = getelementptr %struct.batadv_softif_vlan, ptr %call, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 32 to ptr)) #14
  br label %batadv_softif_vlan_put.exit

batadv_softif_vlan_put.exit:                      ; preds = %hlist_del_rcu.exit.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_softif_vlan_put.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %softif_vlan_list_lock) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2848, i32 noundef 40) #17
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %softif_vlan_list_lock) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bat_priv, ptr %call7.i.i, align 8
  %vid8 = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %vid8 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %vid, ptr %vid8, align 4
  %refcount = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call7.i.i, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  %15 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %refcount, align 4
  %ap_isolation = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call7.i.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ap_isolation, i32 noundef 4) #14
  %16 = ptrtoint ptr %ap_isolation to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %ap_isolation, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #14
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #14, !srcloc !74
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end6.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !67

if.end6.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end6
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !65

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end6.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end6.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #14
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %list = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call7.i.i, i32 0, i32 4
  %softif_vlan_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 31
  %19 = ptrtoint ptr %softif_vlan_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %softif_vlan_list, align 4
  %21 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %list, align 4
  %pprev.i = getelementptr %struct.batadv_softif_vlan, ptr %call7.i.i, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %softif_vlan_list, ptr %pprev.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !75
  %23 = ptrtoint ptr %softif_vlan_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list, ptr %softif_vlan_list, align 4
  %tobool.not.i32 = icmp eq ptr %20, null
  br i1 %tobool.not.i32, label %kref_get.exit.if.end.i38_crit_edge, label %do.body49.i

kref_get.exit.if.end.i38_crit_edge:               ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i38

do.body49.i:                                      ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list, ptr %pprev51.i, align 4
  br label %if.end.i38

if.end.i38:                                       ; preds = %do.body49.i, %kref_get.exit.if.end.i38_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %softif_vlan_list_lock) #14
  %soft_iface = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %25 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %soft_iface, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 86
  %27 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_addr, align 64
  %call12 = tail call zeroext i1 @batadv_tt_local_add(ptr noundef %26, ptr noundef %28, i16 noundef zeroext %vid, i32 noundef 0, i32 noundef 0) #14
  %call.i.i.i.i.i.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #14
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #14, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i36 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i36)
  %cmp.i.i.i.i.i37 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i36, 1
  br i1 %cmp.i.i.i.i.i37, label %if.then.i.i46, label %if.end5.i.i.i.i.i40

if.end5.i.i.i.i.i40:                              ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i36)
  %.not.i.i.i.i.i39 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i36, 0
  br i1 %.not.i.i.i.i.i39, label %if.end5.i.i.i.i.i40.cleanup_crit_edge, label %if.then10.i.i.i.i.i41, !prof !65

if.end5.i.i.i.i.i40.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i41:                            ; preds = %if.end5.i.i.i.i.i40
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #14
  br label %cleanup

if.then.i.i46:                                    ; preds = %if.end.i38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !66
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i.i, align 8
  %softif_vlan_list_lock.i.i42 = getelementptr inbounds %struct.batadv_priv, ptr %31, i32 0, i32 32
  tail call void @_raw_spin_lock_bh(ptr noundef %softif_vlan_list_lock.i.i42) #14
  %32 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %list, align 4
  %34 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pprev.i, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %33, ptr %35, align 4
  %tobool.not.i.i.i.i45 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i.i45, label %if.then.i.i46.hlist_del_rcu.exit.i.i51_crit_edge, label %do.body13.i.i.i.i48

if.then.i.i46.hlist_del_rcu.exit.i.i51_crit_edge: ; preds = %if.then.i.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del_rcu.exit.i.i51

do.body13.i.i.i.i48:                              ; preds = %if.then.i.i46
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i.i47 = getelementptr inbounds %struct.hlist_node, ptr %33, i32 0, i32 1
  %37 = ptrtoint ptr %pprev14.i.i.i.i47 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %pprev14.i.i.i.i47, align 4
  br label %hlist_del_rcu.exit.i.i51

hlist_del_rcu.exit.i.i51:                         ; preds = %do.body13.i.i.i.i48, %if.then.i.i46.hlist_del_rcu.exit.i.i51_crit_edge
  %38 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i, align 8
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i, align 8
  %softif_vlan_list_lock2.i.i49 = getelementptr inbounds %struct.batadv_priv, ptr %40, i32 0, i32 32
  tail call void @_raw_spin_unlock_bh(ptr noundef %softif_vlan_list_lock2.i.i49) #14
  %rcu.i.i50 = getelementptr %struct.batadv_softif_vlan, ptr %call7.i.i, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i50, ptr noundef nonnull inttoptr (i32 32 to ptr)) #14
  br label %cleanup

cleanup:                                          ; preds = %hlist_del_rcu.exit.i.i51, %if.then10.i.i.i.i.i41, %if.end5.i.i.i.i.i40.cleanup_crit_edge, %if.then4, %batadv_softif_vlan_put.exit
  %retval.0 = phi i32 [ -17, %batadv_softif_vlan_put.exit ], [ -12, %if.then4 ], [ 0, %if.end5.i.i.i.i.i40.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i41 ], [ 0, %hlist_del_rcu.exit.i.i51 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_tt_local_add(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @batadv_softif_is_valid(ptr nocapture noundef readonly %net_dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %ndo_start_xmit = getelementptr inbounds %struct.net_device_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ndo_start_xmit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndo_start_xmit, align 4
  %cmp = icmp eq ptr %3, @batadv_interface_tx
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_interface_tx(ptr noundef %skb, ptr noundef %soft_iface) #0 align 64 {
entry:
  %chaddr = alloca [6 x i8], align 1
  %header_len = alloca i32, align 4
  %mcast_single_orig = alloca ptr, align 4
  %mcast_is_routable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %soft_iface, i32 2304
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %chaddr) #14
  %0 = call ptr @memset(ptr %chaddr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header_len) #14
  %1 = ptrtoint ptr %header_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %header_len, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mcast_single_orig) #14
  %4 = ptrtoint ptr %mcast_single_orig to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mcast_single_orig, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mcast_is_routable) #14
  %5 = ptrtoint ptr %mcast_is_routable to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mcast_is_routable, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #14
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end, label %entry.dropped_crit_edge

entry.dropped_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

if.end:                                           ; preds = %entry
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %cb, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %soft_iface, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 12
  %12 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.not.i.i = icmp eq i32 %13, %11
  br i1 %cmp.not.i.i, label %if.end.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end.netif_trans_update.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %11, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end.netif_trans_update.exit_crit_edge
  %call2 = tail call zeroext i16 @batadv_get_vid(ptr noundef %skb, i32 noundef 0) #14
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %19 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %conv.i.i
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %h_proto, align 1
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %21, label %netif_trans_update.exit.sw.epilog_crit_edge [
    i16 -32512, label %sw.bb
    i16 17157, label %netif_trans_update.exit.dropped_crit_edge
  ]

netif_trans_update.exit.dropped_crit_edge:        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

netif_trans_update.exit.sw.epilog_crit_edge:      ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %netif_trans_update.exit
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %25 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %24, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 18
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.if.end6_crit_edge, !prof !67

sw.bb.if.end6_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %24)
  %cmp3.i = icmp ult i32 %24, 18
  br i1 %cmp3.i, label %if.end.i.dropped_crit_edge, label %pskb_may_pull.exit, !prof !67

if.end.i.dropped_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 18, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #14
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.dropped_crit_edge, label %pskb_may_pull.exit.if.end6_crit_edge

pskb_may_pull.exit.if.end6_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

pskb_may_pull.exit.dropped_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

if.end6:                                          ; preds = %pskb_may_pull.exit.if.end6_crit_edge, %sw.bb.if.end6_crit_edge
  %27 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i, align 8
  %29 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mac_header.i, align 2
  %conv.i.i223 = zext i16 %30 to i32
  %add.ptr.i.i224 = getelementptr i8, ptr %28, i32 %conv.i.i223
  %h_vlan_encapsulated_proto = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i224, i32 0, i32 3
  %31 = ptrtoint ptr %h_vlan_encapsulated_proto to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %h_vlan_encapsulated_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17157, i16 %32)
  %cmp9.not = icmp eq i16 %32, 17157
  br i1 %cmp9.not, label %if.end6.dropped_crit_edge, label %if.end6.sw.epilog_crit_edge

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end6.dropped_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

sw.epilog:                                        ; preds = %if.end6.sw.epilog_crit_edge, %netif_trans_update.exit.sw.epilog_crit_edge
  %network_offset.0 = phi i16 [ 14, %netif_trans_update.exit.sw.epilog_crit_edge ], [ 18, %if.end6.sw.epilog_crit_edge ]
  %proto.0 = phi i16 [ %21, %netif_trans_update.exit.sw.epilog_crit_edge ], [ %32, %if.end6.sw.epilog_crit_edge ]
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %35 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i226 = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %conv1.i = add i16 %network_offset.0, %conv.i.i226
  %37 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv1.i, ptr %network_header.i.i, align 4
  %call14 = tail call zeroext i1 @batadv_bla_tx(ptr noundef %add.ptr.i, ptr noundef %skb, i16 noundef zeroext %call2) #14
  br i1 %call14, label %sw.epilog.dropped_crit_edge, label %if.end16

sw.epilog.dropped_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

if.end16:                                         ; preds = %sw.epilog
  %38 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i, align 8
  %40 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mac_header.i, align 2
  %conv.i.i229 = zext i16 %41 to i32
  %add.ptr.i.i230 = getelementptr i8, ptr %39, i32 %conv.i.i229
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i230, i32 0, i32 1
  %42 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %h_source, align 4
  %44 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.not = icmp eq i32 %44, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %if.end16.if.end29_crit_edge

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end16
  %45 = ptrtoint ptr %h_source to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %h_source, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -70, i8 %46)
  %cmp.i = icmp eq i8 %46, -70
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true.if.then23_crit_edge

land.lhs.true.if.then23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %arrayidx2.i = getelementptr i8, ptr %h_source, i32 1
  %47 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -66, i8 %48)
  %cmp4.i = icmp eq i8 %48, -66
  br i1 %cmp4.i, label %land.lhs.true.i.if.end29_crit_edge, label %land.lhs.true.i.if.then23_crit_edge

land.lhs.true.i.if.then23_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23

land.lhs.true.i.if.end29_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then23:                                        ; preds = %land.lhs.true.i.if.then23_crit_edge, %land.lhs.true.if.then23_crit_edge
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %49 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %skb_iif, align 8
  %51 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %call26 = tail call zeroext i1 @batadv_tt_local_add(ptr noundef %soft_iface, ptr noundef %h_source, i16 noundef zeroext %call2, i32 noundef %50, i32 noundef %53) #14
  br i1 %call26, label %if.then23.if.end29_crit_edge, label %if.then23.dropped_crit_edge

if.then23.dropped_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.end29:                                         ; preds = %if.then23.if.end29_crit_edge, %land.lhs.true.i.if.end29_crit_edge, %if.end16.if.end29_crit_edge
  tail call void @batadv_dat_snoop_outgoing_dhcp_ack(ptr noundef %add.ptr.i, ptr noundef %skb, i16 noundef zeroext %proto.0, i16 noundef zeroext %call2) #14
  %54 = ptrtoint ptr %add.ptr.i.i230 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i230, align 4
  %xor.i.i.i = xor i32 %55, 25215488
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i230, i32 4
  %56 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr.i.i.i, align 2
  %xor3.i.i.i = zext i16 %57 to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  %58 = or i32 %55, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -822083584, i32 %58)
  %cmp.i.i.i237 = icmp eq i32 %58, -822083584
  %or.cond283 = select i1 %cmp.i.i.i, i1 true, i1 %cmp.i.i.i237
  br i1 %or.cond283, label %if.end29.dropped_crit_edge, label %if.end38

if.end29.dropped_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

if.end38:                                         ; preds = %if.end29
  %mode = getelementptr i8, ptr %soft_iface, i32 3192
  %call.i.i219 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #14
  %59 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %mode, align 4
  %61 = ptrtoint ptr %add.ptr.i.i230 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i.i230, align 4
  %63 = and i32 %62, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.i238.not = icmp eq i32 %63, 0
  br i1 %tobool.i238.not, label %if.end38.if.else115_crit_edge, label %if.then43

if.end38.if.else115_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else115

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp44 = icmp eq i32 %60, 0
  br i1 %cmp44, label %if.then43.land.lhs.true69_crit_edge, label %if.end47

if.then43.land.lhs.true69_crit_edge:              ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true69

if.end47:                                         ; preds = %if.then43
  %call49 = call i32 @batadv_gw_dhcp_recipient_get(ptr noundef %skb, ptr noundef nonnull %header_len, ptr noundef nonnull %chaddr) #14
  %64 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %head.i, align 8
  %66 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %mac_header.i, align 2
  %conv.i.i241 = zext i16 %67 to i32
  %add.ptr.i.i242 = getelementptr i8, ptr %65, i32 %conv.i.i241
  %68 = zext i32 %call49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call49, label %if.else [
    i32 0, label %if.end47.land.lhs.true69_crit_edge
    i32 2, label %if.end47.if.else115_crit_edge
  ]

if.end47.if.else115_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else115

if.end47.land.lhs.true69_crit_edge:               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true69

if.else:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp59 = icmp eq i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call49)
  %cmp62 = icmp eq i32 %call49, 1
  %or.cond = select i1 %cmp59, i1 %cmp62, i1 false
  br i1 %or.cond, label %if.else.dropped_crit_edge, label %if.else105

if.else.dropped_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

land.lhs.true69:                                  ; preds = %if.end47.land.lhs.true69_crit_edge, %if.then43.land.lhs.true69_crit_edge
  %ethhdr.0.ph = phi ptr [ %add.ptr.i.i242, %if.end47.land.lhs.true69_crit_edge ], [ %add.ptr.i.i230, %if.then43.land.lhs.true69_crit_edge ]
  %69 = ptrtoint ptr %ethhdr.0.ph to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %ethhdr.0.ph, align 2
  %add.ptr1.i = getelementptr i8, ptr %ethhdr.0.ph, i32 2
  %71 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %72, %70
  %add.ptr3.i = getelementptr i8, ptr %ethhdr.0.ph, i32 4
  %73 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %74
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i243 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i243, label %land.lhs.true69.if.then88_crit_edge, label %if.then73

land.lhs.true69.if.then88_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then88

if.then73:                                        ; preds = %land.lhs.true69
  %call74 = call i32 @batadv_mcast_forw_mode(ptr noundef %add.ptr.i, ptr noundef %skb, ptr noundef nonnull %mcast_single_orig, ptr noundef nonnull %mcast_is_routable) #14
  %75 = zext i32 %call74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %call74, label %if.then73.if.then88_crit_edge [
    i32 3, label %if.then73.dropped_crit_edge
    i32 2, label %if.then73.if.else115_crit_edge
    i32 1, label %if.then73.if.else115_crit_edge293
  ]

if.then73.if.else115_crit_edge293:                ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else115

if.then73.if.else115_crit_edge:                   ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else115

if.then73.dropped_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

if.then73.if.then88_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then88

if.then88:                                        ; preds = %if.then73.if.then88_crit_edge, %land.lhs.true69.if.then88_crit_edge
  call void @batadv_skb_set_priority(ptr noundef %skb, i32 noundef 0) #14
  %call89 = call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i)
  %tobool90.not = icmp eq ptr %call89, null
  br i1 %tobool90.not, label %if.then88.dropped_crit_edge, label %if.end92

if.then88.dropped_crit_edge:                      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

if.end92:                                         ; preds = %if.then88
  %call93 = call zeroext i1 @batadv_dat_snoop_outgoing_arp_request(ptr noundef %add.ptr.i, ptr noundef %skb) #14
  %call97 = call i32 @batadv_skb_head_push(ptr noundef %skb, i32 noundef 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.end92.dropped_crit_edge, label %if.end101

if.end92.dropped_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

if.end101:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  %spec.select = select i1 %call93, i32 25, i32 0
  %76 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i, align 4
  %version = getelementptr inbounds %struct.batadv_bcast_packet, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 15, ptr %version, align 1
  %ttl = getelementptr inbounds %struct.batadv_bcast_packet, ptr %77, i32 0, i32 2
  %79 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 49, ptr %ttl, align 2
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %77, align 2
  %reserved = getelementptr inbounds %struct.batadv_bcast_packet, ptr %77, i32 0, i32 3
  %81 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %reserved, align 1
  %orig = getelementptr inbounds %struct.batadv_bcast_packet, ptr %77, i32 0, i32 5
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %call89, i32 0, i32 4
  %82 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 86
  %84 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_addr, align 64
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %88 = ptrtoint ptr %orig to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %orig, align 4
  %add.ptr.i244 = getelementptr i8, ptr %85, i32 4
  %89 = ptrtoint ptr %add.ptr.i244 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %add.ptr.i244, align 2
  %add.ptr1.i245 = getelementptr %struct.batadv_bcast_packet, ptr %77, i32 0, i32 5, i32 4
  %91 = ptrtoint ptr %add.ptr1.i245 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %add.ptr1.i245, align 2
  %bcast_seqno = getelementptr i8, ptr %soft_iface, i32 2372
  %call.i.i220 = call zeroext i1 @__kasan_check_write(ptr noundef %bcast_seqno, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !76
  call void @llvm.prefetch.p0(ptr %bcast_seqno, i32 1, i32 3, i32 1) #14
  %92 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bcast_seqno, ptr %bcast_seqno, i32 1, ptr elementtype(i32) %bcast_seqno) #14, !srcloc !77
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %92, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !78
  %seqno104 = getelementptr inbounds %struct.batadv_bcast_packet, ptr %77, i32 0, i32 4
  %93 = ptrtoint ptr %seqno104 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %asmresult.i.i.i.i, ptr %seqno104, align 2
  call void @batadv_send_bcast_packet(ptr noundef %add.ptr.i, ptr noundef %skb, i32 noundef %spec.select, i1 noundef zeroext true) #14
  br label %if.end136

if.else105:                                       ; preds = %if.else
  call void @batadv_skb_set_priority(ptr noundef %skb, i32 noundef 0) #14
  br i1 %cmp62, label %if.then108, label %if.else115.thread

if.then108:                                       ; preds = %if.else105
  %call109 = call zeroext i1 @batadv_gw_out_of_range(ptr noundef %add.ptr.i, ptr noundef %skb) #14
  br i1 %call109, label %if.then108.dropped_crit_edge, label %if.end113

if.then108.dropped_crit_edge:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

if.end113:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #16
  %call114 = call i32 @batadv_send_skb_via_gw(ptr noundef %add.ptr.i, ptr noundef %skb, i16 noundef zeroext %call2) #14
  br label %if.end131

if.else115:                                       ; preds = %if.then73.if.else115_crit_edge, %if.then73.if.else115_crit_edge293, %if.end47.if.else115_crit_edge, %if.end38.if.else115_crit_edge
  %dst_hint.1.ph.ph = phi ptr [ null, %if.end38.if.else115_crit_edge ], [ %chaddr, %if.end47.if.else115_crit_edge ], [ null, %if.then73.if.else115_crit_edge ], [ null, %if.then73.if.else115_crit_edge293 ]
  %forw_mode.0.ph.ph = phi i32 [ 2, %if.end38.if.else115_crit_edge ], [ %call49, %if.end47.if.else115_crit_edge ], [ %call74, %if.then73.if.else115_crit_edge ], [ %call74, %if.then73.if.else115_crit_edge293 ]
  call void @batadv_skb_set_priority(ptr noundef %skb, i32 noundef 0) #14
  %94 = ptrtoint ptr %mcast_single_orig to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mcast_single_orig, align 4
  %tobool116.not = icmp eq ptr %95, null
  br i1 %tobool116.not, label %if.else119, label %if.else115.if.then117_crit_edge

if.else115.if.then117_crit_edge:                  ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then117

if.else115.thread:                                ; preds = %if.else105
  %96 = ptrtoint ptr %mcast_single_orig to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mcast_single_orig, align 4
  %tobool116.not286 = icmp eq ptr %97, null
  br i1 %tobool116.not286, label %if.else115.thread.if.else124_crit_edge, label %if.else115.thread.if.then117_crit_edge

if.else115.thread.if.then117_crit_edge:           ; preds = %if.else115.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then117

if.else115.thread.if.else124_crit_edge:           ; preds = %if.else115.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else124

if.then117:                                       ; preds = %if.else115.thread.if.then117_crit_edge, %if.else115.if.then117_crit_edge
  %98 = phi ptr [ %97, %if.else115.thread.if.then117_crit_edge ], [ %95, %if.else115.if.then117_crit_edge ]
  %call118 = call i32 @batadv_mcast_forw_send_orig(ptr noundef %add.ptr.i, ptr noundef %skb, i16 noundef zeroext %call2, ptr noundef nonnull %98) #14
  br label %if.end131

if.else119:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %forw_mode.0.ph.ph)
  %cmp120 = icmp eq i32 %forw_mode.0.ph.ph, 1
  br i1 %cmp120, label %if.then122, label %if.else119.if.else124_crit_edge

if.else119.if.else124_crit_edge:                  ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else124

if.then122:                                       ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #16
  %99 = ptrtoint ptr %mcast_is_routable to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mcast_is_routable, align 4
  %call123 = call i32 @batadv_mcast_forw_send(ptr noundef %add.ptr.i, ptr noundef %skb, i16 noundef zeroext %call2, i32 noundef %100) #14
  br label %if.end131

if.else124:                                       ; preds = %if.else119.if.else124_crit_edge, %if.else115.thread.if.else124_crit_edge
  %dst_hint.1.ph281288292 = phi ptr [ %dst_hint.1.ph.ph, %if.else119.if.else124_crit_edge ], [ null, %if.else115.thread.if.else124_crit_edge ]
  %call125 = call zeroext i1 @batadv_dat_snoop_outgoing_arp_request(ptr noundef %add.ptr.i, ptr noundef %skb) #14
  br i1 %call125, label %if.else124.dropped_crit_edge, label %if.end127

if.else124.dropped_crit_edge:                     ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped

if.end127:                                        ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #16
  call void @batadv_dat_snoop_outgoing_arp_reply(ptr noundef %add.ptr.i, ptr noundef %skb) #14
  %call.i = call i32 @batadv_send_skb_via_tt_generic(ptr noundef %add.ptr.i, ptr noundef %skb, i32 noundef 64, i32 noundef 0, ptr noundef %dst_hint.1.ph281288292, i16 noundef zeroext %call2) #14
  br label %if.end131

if.end131:                                        ; preds = %if.end127, %if.then122, %if.then117, %if.end113
  %ret.0 = phi i32 [ %call114, %if.end113 ], [ %call118, %if.then117 ], [ %call123, %if.then122 ], [ %call.i, %if.end127 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp132.not = icmp eq i32 %ret.0, 0
  br i1 %cmp132.not, label %if.end131.if.end136_crit_edge, label %if.end131.dropped_freed_crit_edge

if.end131.dropped_freed_crit_edge:                ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #16
  br label %dropped_freed

if.end131.if.end136_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end136

if.end136:                                        ; preds = %if.end131.if.end136_crit_edge, %if.end101
  %primary_if.0 = phi ptr [ %call89, %if.end101 ], [ null, %if.end131.if.end136_crit_edge ]
  call fastcc void @batadv_add_counter(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1)
  call fastcc void @batadv_add_counter(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %3)
  br label %end

dropped:                                          ; preds = %if.else124.dropped_crit_edge, %if.then108.dropped_crit_edge, %if.end92.dropped_crit_edge, %if.then88.dropped_crit_edge, %if.then73.dropped_crit_edge, %if.else.dropped_crit_edge, %if.end29.dropped_crit_edge, %if.then23.dropped_crit_edge, %sw.epilog.dropped_crit_edge, %if.end6.dropped_crit_edge, %pskb_may_pull.exit.dropped_crit_edge, %if.end.i.dropped_crit_edge, %netif_trans_update.exit.dropped_crit_edge, %entry.dropped_crit_edge
  %primary_if.1 = phi ptr [ null, %entry.dropped_crit_edge ], [ null, %sw.epilog.dropped_crit_edge ], [ null, %if.end29.dropped_crit_edge ], [ %call89, %if.end92.dropped_crit_edge ], [ null, %if.then88.dropped_crit_edge ], [ null, %if.then108.dropped_crit_edge ], [ null, %if.else124.dropped_crit_edge ], [ null, %if.then73.dropped_crit_edge ], [ null, %if.then23.dropped_crit_edge ], [ null, %netif_trans_update.exit.dropped_crit_edge ], [ null, %if.end6.dropped_crit_edge ], [ null, %pskb_may_pull.exit.dropped_crit_edge ], [ null, %if.else.dropped_crit_edge ], [ null, %if.end.i.dropped_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %dropped_freed

dropped_freed:                                    ; preds = %dropped, %if.end131.dropped_freed_crit_edge
  %primary_if.2 = phi ptr [ %primary_if.1, %dropped ], [ null, %if.end131.dropped_freed_crit_edge ]
  %101 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !68
  %bat_counters.i = getelementptr i8, ptr %soft_iface, i32 2312
  %102 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %103, i32 2
  %104 = ptrtoint ptr %arrayidx.i to i32
  %105 = call i32 @llvm.read_register.i32(metadata !53) #14
  %and.i.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %108
  %109 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %110, %104
  %111 = inttoptr i32 %add.i to ptr
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %111, align 8
  %add15.i = add i64 %113, 1
  store i64 %add15.i, ptr %111, align 8
  %114 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !69
  %and.i.i.i = and i32 %114, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %dropped_freed.batadv_add_counter.exit_crit_edge, !prof !67

dropped_freed.batadv_add_counter.exit_crit_edge:  ; preds = %dropped_freed
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_add_counter.exit

if.then.i:                                        ; preds = %dropped_freed
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i, %dropped_freed.batadv_add_counter.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %101) #14, !srcloc !70
  br label %end

end:                                              ; preds = %batadv_add_counter.exit, %if.end136
  %primary_if.3 = phi ptr [ %primary_if.2, %batadv_add_counter.exit ], [ %primary_if.0, %if.end136 ]
  %115 = ptrtoint ptr %mcast_single_orig to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mcast_single_orig, align 4
  %tobool.not.i246 = icmp eq ptr %116, null
  br i1 %tobool.not.i246, label %end.batadv_orig_node_put.exit_crit_edge, label %if.end.i247

end.batadv_orig_node_put.exit_crit_edge:          ; preds = %end
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_orig_node_put.exit

if.end.i247:                                      ; preds = %end
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %116, i32 0, i32 27
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !63
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %117 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !65

if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_orig_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %batadv_orig_node_put.exit

if.then.i.i:                                      ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !66
  call void @batadv_orig_node_release(ptr noundef %refcount.i) #14, !callees !79
  br label %batadv_orig_node_put.exit

batadv_orig_node_put.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge, %end.batadv_orig_node_put.exit_crit_edge
  %tobool.not.i248 = icmp eq ptr %primary_if.3, null
  br i1 %tobool.not.i248, label %batadv_orig_node_put.exit.batadv_hardif_put.exit_crit_edge, label %if.end.i253

batadv_orig_node_put.exit.batadv_hardif_put.exit_crit_edge: ; preds = %batadv_orig_node_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_hardif_put.exit

if.end.i253:                                      ; preds = %batadv_orig_node_put.exit
  %refcount.i249 = getelementptr inbounds %struct.batadv_hard_iface, ptr %primary_if.3, i32 0, i32 5
  %call.i.i.i.i.i.i.i250 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i249, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !63
  call void @llvm.prefetch.p0(ptr %refcount.i249, i32 1, i32 3, i32 1) #14
  %118 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i249, ptr %refcount.i249, i32 1, ptr elementtype(i32) %refcount.i249) #14, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i251 = extractvalue { i32, i32, i32 } %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i251)
  %cmp.i.i.i.i.i252 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i251, 1
  br i1 %cmp.i.i.i.i.i252, label %if.then.i.i257, label %if.end5.i.i.i.i.i255

if.end5.i.i.i.i.i255:                             ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i251)
  %.not.i.i.i.i.i254 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i251, 0
  br i1 %.not.i.i.i.i.i254, label %if.end5.i.i.i.i.i255.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i256, !prof !65

if.end5.i.i.i.i.i255.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i255
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i256:                           ; preds = %if.end5.i.i.i.i.i255
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i249, i32 noundef 3) #14
  br label %batadv_hardif_put.exit

if.then.i.i257:                                   ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !66
  call void @batadv_hardif_release(ptr noundef %refcount.i249) #14, !callees !79
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i257, %if.then10.i.i.i.i.i256, %if.end5.i.i.i.i.i255.batadv_hardif_put.exit_crit_edge, %batadv_orig_node_put.exit.batadv_hardif_put.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcast_is_routable) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcast_single_orig) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header_len) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %chaddr) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_softif_init_early(ptr noundef %dev) #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #14
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @batadv_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %1 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %needs_free_netdev, align 8
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %2 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @batadv_softif_free, ptr %priv_destructor, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %3 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %features, align 16
  %or2 = or i64 %4, 12800
  store i64 %or2, ptr %features, align 16
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %5 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %priv_flags, align 16
  %or3 = or i64 %6, 524288
  store i64 %or3, ptr %priv_flags, align 16
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %7 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1500, ptr %mtu, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #14
  %8 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #14
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %addr.i, align 1
  %11 = and i8 %10, -4
  %12 = or i8 %11, 2
  store i8 %12, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #14
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %13 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #14
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %14 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @batadv_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_softif_validate(ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %call4 = tail call ptr @batadv_algo_get(ptr noundef %add.ptr.i) #14
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then2.cleanup_crit_edge, label %if.then2.if.end8_crit_edge

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_softif_newlink(ptr nocapture noundef readnone %src_net, ptr noundef %dev, ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end7_crit_edge, label %if.then

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %add.ptr.i14 = getelementptr i8, ptr %1, i32 4
  %call4 = tail call i32 @batadv_algo_select(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call8 = tail call i32 @register_netdevice(ptr noundef %dev) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_softif_destroy_netlink(ptr noundef %soft_iface, ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %soft_iface, i32 2304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.018 = load ptr, ptr @batadv_hardif_list, align 4
  %cmp.not19 = icmp eq ptr %hard_iface.018, @batadv_hardif_list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %hard_iface.020 = phi ptr [ %hard_iface.0, %for.inc.for.body_crit_edge ], [ %hard_iface.018, %entry.for.body_crit_edge ]
  %soft_iface1 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.020, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface1, align 4
  %cmp2 = icmp eq ptr %1, %soft_iface
  br i1 %cmp2, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @batadv_hardif_disable_interface(ptr noundef %hard_iface.020) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %hard_iface.020 to i32
  call void @__asan_load4_noabort(i32 %2)
  %hard_iface.0 = load ptr, ptr %hard_iface.020, align 4
  %cmp.not = icmp eq ptr %hard_iface.0, @batadv_hardif_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call7 = tail call ptr @batadv_softif_vlan_get(ptr noundef %add.ptr.i, i16 noundef zeroext 0)
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %for.end.if.end9_crit_edge, label %if.end.i

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.end.i:                                         ; preds = %for.end
  tail call fastcc void @batadv_softif_destroy_vlan(ptr noundef %add.ptr.i, ptr noundef nonnull %call7)
  %refcount.i = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call7, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end9_crit_edge, label %if.then10.i.i.i.i.i, !prof !65

if.end5.i.i.i.i.i.if.end9_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %if.end9

if.then.i.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !66
  %4 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call7, align 4
  %softif_vlan_list_lock.i.i = getelementptr inbounds %struct.batadv_priv, ptr %5, i32 0, i32 32
  tail call void @_raw_spin_lock_bh(ptr noundef %softif_vlan_list_lock.i.i) #14
  %list.i.i = getelementptr %struct.batadv_softif_vlan, ptr %call7, i32 0, i32 4
  %6 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list.i.i, align 4
  %pprev2.i.i.i.i = getelementptr %struct.batadv_softif_vlan, ptr %call7, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %7, ptr %9, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.hlist_del_rcu.exit.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.hlist_del_rcu.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del_rcu.exit.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %pprev14.i.i.i.i, align 4
  br label %hlist_del_rcu.exit.i.i

hlist_del_rcu.exit.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.hlist_del_rcu.exit.i.i_crit_edge
  %12 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %13 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7, align 4
  %softif_vlan_list_lock2.i.i = getelementptr inbounds %struct.batadv_priv, ptr %14, i32 0, i32 32
  tail call void @_raw_spin_unlock_bh(ptr noundef %softif_vlan_list_lock2.i.i) #14
  %rcu.i.i = getelementptr %struct.batadv_softif_vlan, ptr %call7, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 32 to ptr)) #14
  br label %if.end9

if.end9:                                          ; preds = %hlist_del_rcu.exit.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end9_crit_edge, %for.end.if.end9_crit_edge
  tail call void @unregister_netdevice_queue(ptr noundef %soft_iface, ptr noundef %head) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_bla_tx(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_dat_snoop_outgoing_dhcp_ack(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_gw_dhcp_recipient_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_mcast_forw_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_skb_set_priority(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv) unnamed_addr #3 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !53) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %primary_if = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 29
  %4 = ptrtoint ptr %primary_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %primary_if, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b18 = load i1, ptr @batadv_primary_if_get_selected.__warned, align 1
  br i1 %.b18, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @batadv_primary_if_get_selected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 110, ptr noundef nonnull @.str.7) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.out_crit_edge, label %if.end11

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end11:                                         ; preds = %do.end7
  %refcount = getelementptr inbounds %struct.batadv_hard_iface, ptr %5, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #14
  %6 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end11
  %8 = phi i32 [ %7, %if.end11 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #14
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #14, !srcloc !72
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !65

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !65

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #14
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %spec.select = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %5
  br label %out

out:                                              ; preds = %kref_get_unless_zero.exit, %do.end7.out_crit_edge
  %hard_iface.0 = phi ptr [ null, %do.end7.out_crit_edge ], [ %spec.select, %kref_get_unless_zero.exit ]
  %call.i19 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i19, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %out
  %call1.i20 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !73
  %18 = call i32 @llvm.read_register.i32(metadata !53) #14
  %and.i.i.i.i.i26 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %hard_iface.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_dat_snoop_outgoing_arp_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_send_bcast_packet(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_gw_out_of_range(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_send_skb_via_gw(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_mcast_forw_send_orig(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_mcast_forw_send(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_dat_snoop_outgoing_arp_reply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_send_skb_via_tt_generic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_softif_free(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @batadv_mesh_free(ptr noundef %dev) #14
  tail call void @rcu_barrier() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_softif_init_late(ptr noundef %dev) #0 align 64 {
entry:
  %random_seqno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %random_seqno) #14
  %0 = ptrtoint ptr %random_seqno to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %random_seqno, align 4, !annotation !80
  %dep_map.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4
  %wait_type_inner.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4, i32 4
  %1 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %wait_type_inner.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @batadv_netdev_addr_lock_key, i32 noundef 0, i8 noundef zeroext %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %num_tx_queues.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %3 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not.i.i = icmp eq i32 %4, 0
  br i1 %cmp1.not.i.i, label %entry.batadv_set_lockdep_class.exit_crit_edge, label %for.body.lr.ph.i.i

entry.batadv_set_lockdep_class.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_set_lockdep_class.exit

for.body.lr.ph.i.i:                               ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  %dep_map.i.i.i = getelementptr %struct.netdev_queue, ptr %6, i32 %i.02.i.i, i32 10, i32 0, i32 0, i32 4
  %wait_type_inner.i.i.i = getelementptr %struct.netdev_queue, ptr %6, i32 %i.02.i.i, i32 10, i32 0, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %wait_type_inner.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wait_type_inner.i.i.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @batadv_netdev_xmit_lock_key, i32 noundef 0, i8 noundef zeroext %8, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %9 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %10
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.batadv_set_lockdep_class.exit_crit_edge

for.body.i.i.batadv_set_lockdep_class.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_set_lockdep_class.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

batadv_set_lockdep_class.exit:                    ; preds = %for.body.i.i.batadv_set_lockdep_class.exit_crit_edge, %entry.batadv_set_lockdep_class.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %soft_iface = getelementptr i8, ptr %dev, i32 2308
  %11 = ptrtoint ptr %soft_iface to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %soft_iface, align 4
  %call1 = tail call noalias ptr @__alloc_percpu(i32 noundef 296, i32 noundef 8) #18
  %bat_counters = getelementptr i8, ptr %dev, i32 2312
  %12 = ptrtoint ptr %bat_counters to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1, ptr %bat_counters, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %batadv_set_lockdep_class.exit.cleanup_crit_edge, label %if.end

batadv_set_lockdep_class.exit.cleanup_crit_edge:  ; preds = %batadv_set_lockdep_class.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %batadv_set_lockdep_class.exit
  %aggregated_ogms = getelementptr i8, ptr %dev, i32 2316
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aggregated_ogms, i32 noundef 4) #14
  %13 = ptrtoint ptr %aggregated_ogms to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %aggregated_ogms, align 4
  %bonding = getelementptr i8, ptr %dev, i32 2320
  %call.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bonding, i32 noundef 4) #14
  %14 = ptrtoint ptr %bonding to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %bonding, align 4
  %bridge_loop_avoidance = getelementptr i8, ptr %dev, i32 2336
  %call.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bridge_loop_avoidance, i32 noundef 4) #14
  %15 = ptrtoint ptr %bridge_loop_avoidance to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %bridge_loop_avoidance, align 4
  %distributed_arp_table = getelementptr i8, ptr %dev, i32 2340
  %call.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %distributed_arp_table, i32 noundef 4) #14
  %16 = ptrtoint ptr %distributed_arp_table to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 1, ptr %distributed_arp_table, align 4
  %multicast_mode = getelementptr i8, ptr %dev, i32 2344
  %call.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %multicast_mode, i32 noundef 4) #14
  %17 = ptrtoint ptr %multicast_mode to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %multicast_mode, align 4
  %multicast_fanout = getelementptr i8, ptr %dev, i32 2348
  %call.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %multicast_fanout, i32 noundef 4) #14
  %18 = ptrtoint ptr %multicast_fanout to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 16, ptr %multicast_fanout, align 4
  %num_want_all_unsnoopables = getelementptr i8, ptr %dev, i32 3856
  %call.i.i75 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_want_all_unsnoopables, i32 noundef 4) #14
  %19 = ptrtoint ptr %num_want_all_unsnoopables to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %num_want_all_unsnoopables, align 4
  %num_want_all_ipv4 = getelementptr i8, ptr %dev, i32 3860
  %call.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_want_all_ipv4, i32 noundef 4) #14
  %20 = ptrtoint ptr %num_want_all_ipv4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %num_want_all_ipv4, align 4
  %num_want_all_ipv6 = getelementptr i8, ptr %dev, i32 3864
  %call.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_want_all_ipv6, i32 noundef 4) #14
  %21 = ptrtoint ptr %num_want_all_ipv6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %num_want_all_ipv6, align 4
  %mode = getelementptr i8, ptr %dev, i32 3192
  %call.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mode, i32 noundef 4) #14
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %mode, align 4
  %bandwidth_down = getelementptr i8, ptr %dev, i32 3200
  %call.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bandwidth_down, i32 noundef 4) #14
  %23 = ptrtoint ptr %bandwidth_down to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 100, ptr %bandwidth_down, align 4
  %bandwidth_up = getelementptr i8, ptr %dev, i32 3204
  %call.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bandwidth_up, i32 noundef 4) #14
  %24 = ptrtoint ptr %bandwidth_up to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 20, ptr %bandwidth_up, align 4
  %orig_interval = getelementptr i8, ptr %dev, i32 2352
  %call.i.i81 = tail call zeroext i1 @__kasan_check_write(ptr noundef %orig_interval, i32 noundef 4) #14
  %25 = ptrtoint ptr %orig_interval to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1000, ptr %orig_interval, align 4
  %hop_penalty = getelementptr i8, ptr %dev, i32 2356
  %call.i.i82 = tail call zeroext i1 @__kasan_check_write(ptr noundef %hop_penalty, i32 noundef 4) #14
  %26 = ptrtoint ptr %hop_penalty to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 30, ptr %hop_penalty, align 4
  %log_level = getelementptr i8, ptr %dev, i32 2360
  %call.i.i83 = tail call zeroext i1 @__kasan_check_write(ptr noundef %log_level, i32 noundef 4) #14
  %27 = ptrtoint ptr %log_level to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %log_level, align 4
  %fragmentation = getelementptr i8, ptr %dev, i32 2324
  %call.i.i84 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fragmentation, i32 noundef 4) #14
  %28 = ptrtoint ptr %fragmentation to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %fragmentation, align 4
  %packet_size_max = getelementptr i8, ptr %dev, i32 2328
  %call.i.i85 = tail call zeroext i1 @__kasan_check_write(ptr noundef %packet_size_max, i32 noundef 4) #14
  %29 = ptrtoint ptr %packet_size_max to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 1500, ptr %packet_size_max, align 4
  %bcast_queue_left = getelementptr i8, ptr %dev, i32 2376
  %call.i.i86 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bcast_queue_left, i32 noundef 4) #14
  %30 = ptrtoint ptr %bcast_queue_left to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 256, ptr %bcast_queue_left, align 4
  %batman_queue_left = getelementptr i8, ptr %dev, i32 2380
  %call.i.i87 = tail call zeroext i1 @__kasan_check_write(ptr noundef %batman_queue_left, i32 noundef 4) #14
  %31 = ptrtoint ptr %batman_queue_left to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 256, ptr %batman_queue_left, align 4
  %call.i.i88 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #14
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %add.ptr.i, align 4
  %bcast_seqno = getelementptr i8, ptr %dev, i32 2372
  %call.i.i89 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bcast_seqno, i32 noundef 4) #14
  %33 = ptrtoint ptr %bcast_seqno to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 1, ptr %bcast_seqno, align 4
  %tt = getelementptr i8, ptr %dev, i32 3212
  %call.i.i90 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tt, i32 noundef 4) #14
  %34 = ptrtoint ptr %tt to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 0, ptr %tt, align 4
  %local_changes = getelementptr i8, ptr %dev, i32 3220
  %call.i.i91 = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_changes, i32 noundef 4) #14
  %35 = ptrtoint ptr %local_changes to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 0, ptr %local_changes, align 4
  %ogm_append_cnt = getelementptr i8, ptr %dev, i32 3216
  %call.i.i92 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ogm_append_cnt, i32 noundef 4) #14
  %36 = ptrtoint ptr %ogm_append_cnt to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 0, ptr %ogm_append_cnt, align 4
  %bla = getelementptr i8, ptr %dev, i32 2692
  %call.i.i93 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bla, i32 noundef 4) #14
  %37 = ptrtoint ptr %bla to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 0, ptr %bla, align 4
  %tp_num = getelementptr i8, ptr %dev, i32 2532
  %call.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tp_num, i32 noundef 4) #14
  %38 = ptrtoint ptr %tp_num to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 0, ptr %tp_num, align 4
  %last_changeset = getelementptr i8, ptr %dev, i32 3384
  %39 = ptrtoint ptr %last_changeset to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %last_changeset, align 4
  %last_changeset_len = getelementptr i8, ptr %dev, i32 3388
  %40 = ptrtoint ptr %last_changeset_len to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %last_changeset_len, align 4
  %isolation_mark = getelementptr i8, ptr %dev, i32 2364
  %41 = ptrtoint ptr %isolation_mark to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %isolation_mark, align 4
  %isolation_mark_mask = getelementptr i8, ptr %dev, i32 2368
  %42 = ptrtoint ptr %isolation_mark_mask to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %isolation_mark_mask, align 4
  call void @get_random_bytes(ptr noundef nonnull %random_seqno, i32 noundef 4) #14
  %frag_seqno = getelementptr i8, ptr %dev, i32 2332
  %43 = ptrtoint ptr %random_seqno to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %random_seqno, align 4
  %call.i.i95 = call zeroext i1 @__kasan_check_write(ptr noundef %frag_seqno, i32 noundef 4) #14
  %45 = ptrtoint ptr %frag_seqno to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %44, ptr %frag_seqno, align 4
  %primary_if = getelementptr i8, ptr %dev, i32 2636
  %46 = ptrtoint ptr %primary_if to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %primary_if, align 4
  call void @batadv_nc_init_bat_priv(ptr noundef %add.ptr.i) #14
  %algo_ops = getelementptr i8, ptr %dev, i32 2640
  %47 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %algo_ops, align 4
  %tobool11.not = icmp eq ptr %48, null
  br i1 %tobool11.not, label %if.then12, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then12:                                        ; preds = %if.end
  %call13 = call i32 @batadv_algo_select(ptr noundef %add.ptr.i, ptr noundef nonnull @batadv_routing_algo) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.then12.free_bat_counters_crit_edge, label %if.then12.if.end16_crit_edge

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then12.free_bat_counters_crit_edge:            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_bat_counters

if.end16:                                         ; preds = %if.then12.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %call17 = call i32 @batadv_mesh_init(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.free_bat_counters_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16.free_bat_counters_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_bat_counters

free_bat_counters:                                ; preds = %if.end16.free_bat_counters_crit_edge, %if.then12.free_bat_counters_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end16.free_bat_counters_crit_edge ], [ %call13, %if.then12.free_bat_counters_crit_edge ]
  %49 = ptrtoint ptr %bat_counters to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bat_counters, align 4
  call void @free_percpu(ptr noundef %50) #14
  %51 = ptrtoint ptr %bat_counters to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %bat_counters, align 4
  br label %cleanup

cleanup:                                          ; preds = %free_bat_counters, %if.end16.cleanup_crit_edge, %batadv_set_lockdep_class.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_bat_counters ], [ -12, %batadv_set_lockdep_class.exit.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %random_seqno) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_interface_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_interface_release(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @batadv_interface_set_rx_mode(ptr nocapture noundef %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_interface_set_mac_addr(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  %old_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %old_addr) #14
  %0 = getelementptr inbounds [6 x i8], ptr %old_addr, i32 0, i32 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %1 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sa_data, align 4
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %or.i.i = or i32 %2, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %old_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %old_addr, align 4
  %add.ptr.i62 = getelementptr i8, ptr %7, i32 4
  %11 = ptrtoint ptr %add.ptr.i62 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i62, align 2
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %0, align 4
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #14
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.not = icmp eq i32 %15, 1
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %16 = tail call i32 @llvm.read_register.i32(metadata !53) #14
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end7.rcu_read_lock.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end7.rcu_read_lock.exit_crit_edge
  %call8 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true11

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b60 = load i1, ptr @batadv_interface_set_mac_addr.__warned, align 1
  br i1 %.b60, label %land.lhs.true11.do.end_crit_edge, label %if.then13

land.lhs.true11.do.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @batadv_interface_set_mac_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 144, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then13, %land.lhs.true11.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %softif_vlan_list = getelementptr i8, ptr %dev, i32 2644
  %20 = ptrtoint ptr %softif_vlan_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %softif_vlan_list, align 4
  %tobool20.not = icmp eq ptr %21, null
  %add.ptr = getelementptr i8, ptr %21, i32 -20
  %tobool22.not7476 = icmp eq ptr %add.ptr, null
  %tobool22.not74 = or i1 %tobool20.not, %tobool22.not7476
  br i1 %tobool22.not74, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %vlan.075 = phi ptr [ %add.ptr40, %for.body.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %vid = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan.075, i32 0, i32 1
  %22 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vid, align 4
  %call24 = call zeroext i16 @batadv_tt_local_remove(ptr noundef %add.ptr.i, ptr noundef nonnull %old_addr, i16 noundef zeroext %23, ptr noundef nonnull @.str.10, i1 noundef zeroext false) #14
  %24 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vid, align 4
  %call28 = call zeroext i1 @batadv_tt_local_add(ptr noundef %dev, ptr noundef %sa_data, i16 noundef zeroext %25, i32 noundef 0, i32 noundef 0) #14
  %list = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan.075, i32 0, i32 4
  %26 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %list, align 4
  %tobool36.not = icmp eq ptr %27, null
  %add.ptr40 = getelementptr i8, ptr %27, i32 -20
  %tobool22.not77 = icmp eq ptr %add.ptr40, null
  %tobool22.not = or i1 %tobool36.not, %tobool22.not77
  br i1 %tobool22.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i63 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i63, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i66

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i66:                                ; preds = %for.end
  %call1.i64 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool.not.i65, label %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i68

land.lhs.true.i66.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i68:                               ; preds = %land.lhs.true.i66
  %.b4.i67 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i67, label %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, label %if.then.i69

land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i69:                                      ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i69, %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !73
  %28 = call i32 @llvm.read_register.i32(metadata !53) #14
  %and.i.i.i.i.i70 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i70 to ptr
  %preempt_count.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i71, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i71, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %old_addr) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_interface_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %new_mtu)
  %cmp = icmp slt i32 %new_mtu, 68
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @batadv_hardif_min_mtu(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %new_mtu)
  %cmp1 = icmp slt i32 %call, %new_mtu
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @batadv_interface_stats(ptr noundef %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call7.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %0)
  %cmp8.i = icmp ult i32 %call7.i, %0
  br i1 %cmp8.i, label %do.body.lr.ph.i, label %entry.batadv_sum_counter.exit_crit_edge

entry.batadv_sum_counter.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_sum_counter.exit

do.body.lr.ph.i:                                  ; preds = %entry
  %bat_counters.i = getelementptr i8, ptr %dev, i32 2312
  %1 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bat_counters.i, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call10.i = phi i32 [ %call7.i, %do.body.lr.ph.i ], [ %call.i, %do.body.i.do.body.i_crit_edge ]
  %sum.09.i = phi i64 [ 0, %do.body.lr.ph.i ], [ %add3.i, %do.body.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call10.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, %3
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  %add3.i = add i64 %8, %sum.09.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call10.i, ptr noundef nonnull @__cpu_possible_mask) #19
  %cmp.i = icmp ult i32 %call.i, %0
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %batadv_sum_counter.exit.loopexit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

batadv_sum_counter.exit.loopexit:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t.le = trunc i64 %add3.i to i32
  br label %batadv_sum_counter.exit

batadv_sum_counter.exit:                          ; preds = %batadv_sum_counter.exit.loopexit, %entry.batadv_sum_counter.exit_crit_edge
  %sum.0.lcssa.i.off0 = phi i32 [ 0, %entry.batadv_sum_counter.exit_crit_edge ], [ %extract.t.le, %batadv_sum_counter.exit.loopexit ]
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %9 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sum.0.lcssa.i.off0, ptr %tx_packets, align 4
  %call7.i21 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i21, i32 %0)
  %cmp8.i22 = icmp ult i32 %call7.i21, %0
  br i1 %cmp8.i22, label %do.body.lr.ph.i24, label %batadv_sum_counter.exit.batadv_sum_counter.exit34_crit_edge

batadv_sum_counter.exit.batadv_sum_counter.exit34_crit_edge: ; preds = %batadv_sum_counter.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_sum_counter.exit34

do.body.lr.ph.i24:                                ; preds = %batadv_sum_counter.exit
  %bat_counters.i23 = getelementptr i8, ptr %dev, i32 2312
  %10 = ptrtoint ptr %bat_counters.i23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bat_counters.i23, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %do.body.i32

do.body.i32:                                      ; preds = %do.body.i32.do.body.i32_crit_edge, %do.body.lr.ph.i24
  %call10.i25 = phi i32 [ %call7.i21, %do.body.lr.ph.i24 ], [ %call.i30, %do.body.i32.do.body.i32_crit_edge ]
  %sum.09.i26 = phi i64 [ 0, %do.body.lr.ph.i24 ], [ %add3.i29, %do.body.i32.do.body.i32_crit_edge ]
  %arrayidx.i27 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call10.i25
  %13 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i27, align 4
  %add.i28 = add i32 %14, %12
  %15 = inttoptr i32 %add.i28 to ptr
  %arrayidx2.i = getelementptr i64, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx2.i, align 8
  %add3.i29 = add i64 %17, %sum.09.i26
  %call.i30 = tail call i32 @cpumask_next(i32 noundef %call10.i25, ptr noundef nonnull @__cpu_possible_mask) #19
  %cmp.i31 = icmp ult i32 %call.i30, %0
  br i1 %cmp.i31, label %do.body.i32.do.body.i32_crit_edge, label %batadv_sum_counter.exit34.loopexit

do.body.i32.do.body.i32_crit_edge:                ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i32

batadv_sum_counter.exit34.loopexit:               ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t80.le = trunc i64 %add3.i29 to i32
  br label %batadv_sum_counter.exit34

batadv_sum_counter.exit34:                        ; preds = %batadv_sum_counter.exit34.loopexit, %batadv_sum_counter.exit.batadv_sum_counter.exit34_crit_edge
  %sum.0.lcssa.i33.off0 = phi i32 [ 0, %batadv_sum_counter.exit.batadv_sum_counter.exit34_crit_edge ], [ %extract.t80.le, %batadv_sum_counter.exit34.loopexit ]
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %18 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sum.0.lcssa.i33.off0, ptr %tx_bytes, align 4
  %call7.i35 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i35, i32 %0)
  %cmp8.i36 = icmp ult i32 %call7.i35, %0
  br i1 %cmp8.i36, label %do.body.lr.ph.i38, label %batadv_sum_counter.exit34.batadv_sum_counter.exit49_crit_edge

batadv_sum_counter.exit34.batadv_sum_counter.exit49_crit_edge: ; preds = %batadv_sum_counter.exit34
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_sum_counter.exit49

do.body.lr.ph.i38:                                ; preds = %batadv_sum_counter.exit34
  %bat_counters.i37 = getelementptr i8, ptr %dev, i32 2312
  %19 = ptrtoint ptr %bat_counters.i37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bat_counters.i37, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %do.body.i47

do.body.i47:                                      ; preds = %do.body.i47.do.body.i47_crit_edge, %do.body.lr.ph.i38
  %call10.i39 = phi i32 [ %call7.i35, %do.body.lr.ph.i38 ], [ %call.i45, %do.body.i47.do.body.i47_crit_edge ]
  %sum.09.i40 = phi i64 [ 0, %do.body.lr.ph.i38 ], [ %add3.i44, %do.body.i47.do.body.i47_crit_edge ]
  %arrayidx.i41 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call10.i39
  %22 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i41, align 4
  %add.i42 = add i32 %23, %21
  %24 = inttoptr i32 %add.i42 to ptr
  %arrayidx2.i43 = getelementptr i64, ptr %24, i32 2
  %25 = ptrtoint ptr %arrayidx2.i43 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx2.i43, align 8
  %add3.i44 = add i64 %26, %sum.09.i40
  %call.i45 = tail call i32 @cpumask_next(i32 noundef %call10.i39, ptr noundef nonnull @__cpu_possible_mask) #19
  %cmp.i46 = icmp ult i32 %call.i45, %0
  br i1 %cmp.i46, label %do.body.i47.do.body.i47_crit_edge, label %batadv_sum_counter.exit49.loopexit

do.body.i47.do.body.i47_crit_edge:                ; preds = %do.body.i47
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i47

batadv_sum_counter.exit49.loopexit:               ; preds = %do.body.i47
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t81.le = trunc i64 %add3.i44 to i32
  br label %batadv_sum_counter.exit49

batadv_sum_counter.exit49:                        ; preds = %batadv_sum_counter.exit49.loopexit, %batadv_sum_counter.exit34.batadv_sum_counter.exit49_crit_edge
  %sum.0.lcssa.i48.off0 = phi i32 [ 0, %batadv_sum_counter.exit34.batadv_sum_counter.exit49_crit_edge ], [ %extract.t81.le, %batadv_sum_counter.exit49.loopexit ]
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %27 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sum.0.lcssa.i48.off0, ptr %tx_dropped, align 4
  %call7.i50 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i50, i32 %0)
  %cmp8.i51 = icmp ult i32 %call7.i50, %0
  br i1 %cmp8.i51, label %do.body.lr.ph.i53, label %batadv_sum_counter.exit49.batadv_sum_counter.exit64_crit_edge

batadv_sum_counter.exit49.batadv_sum_counter.exit64_crit_edge: ; preds = %batadv_sum_counter.exit49
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_sum_counter.exit64

do.body.lr.ph.i53:                                ; preds = %batadv_sum_counter.exit49
  %bat_counters.i52 = getelementptr i8, ptr %dev, i32 2312
  %28 = ptrtoint ptr %bat_counters.i52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bat_counters.i52, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %do.body.i62

do.body.i62:                                      ; preds = %do.body.i62.do.body.i62_crit_edge, %do.body.lr.ph.i53
  %call10.i54 = phi i32 [ %call7.i50, %do.body.lr.ph.i53 ], [ %call.i60, %do.body.i62.do.body.i62_crit_edge ]
  %sum.09.i55 = phi i64 [ 0, %do.body.lr.ph.i53 ], [ %add3.i59, %do.body.i62.do.body.i62_crit_edge ]
  %arrayidx.i56 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call10.i54
  %31 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i56, align 4
  %add.i57 = add i32 %32, %30
  %33 = inttoptr i32 %add.i57 to ptr
  %arrayidx2.i58 = getelementptr i64, ptr %33, i32 3
  %34 = ptrtoint ptr %arrayidx2.i58 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx2.i58, align 8
  %add3.i59 = add i64 %35, %sum.09.i55
  %call.i60 = tail call i32 @cpumask_next(i32 noundef %call10.i54, ptr noundef nonnull @__cpu_possible_mask) #19
  %cmp.i61 = icmp ult i32 %call.i60, %0
  br i1 %cmp.i61, label %do.body.i62.do.body.i62_crit_edge, label %batadv_sum_counter.exit64.loopexit

do.body.i62.do.body.i62_crit_edge:                ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i62

batadv_sum_counter.exit64.loopexit:               ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t82.le = trunc i64 %add3.i59 to i32
  br label %batadv_sum_counter.exit64

batadv_sum_counter.exit64:                        ; preds = %batadv_sum_counter.exit64.loopexit, %batadv_sum_counter.exit49.batadv_sum_counter.exit64_crit_edge
  %sum.0.lcssa.i63.off0 = phi i32 [ 0, %batadv_sum_counter.exit49.batadv_sum_counter.exit64_crit_edge ], [ %extract.t82.le, %batadv_sum_counter.exit64.loopexit ]
  %36 = ptrtoint ptr %stats1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sum.0.lcssa.i63.off0, ptr %stats1, align 4
  %call7.i65 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i65, i32 %0)
  %cmp8.i66 = icmp ult i32 %call7.i65, %0
  br i1 %cmp8.i66, label %do.body.lr.ph.i68, label %batadv_sum_counter.exit64.batadv_sum_counter.exit79_crit_edge

batadv_sum_counter.exit64.batadv_sum_counter.exit79_crit_edge: ; preds = %batadv_sum_counter.exit64
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_sum_counter.exit79

do.body.lr.ph.i68:                                ; preds = %batadv_sum_counter.exit64
  %bat_counters.i67 = getelementptr i8, ptr %dev, i32 2312
  %37 = ptrtoint ptr %bat_counters.i67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bat_counters.i67, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %do.body.i77

do.body.i77:                                      ; preds = %do.body.i77.do.body.i77_crit_edge, %do.body.lr.ph.i68
  %call10.i69 = phi i32 [ %call7.i65, %do.body.lr.ph.i68 ], [ %call.i75, %do.body.i77.do.body.i77_crit_edge ]
  %sum.09.i70 = phi i64 [ 0, %do.body.lr.ph.i68 ], [ %add3.i74, %do.body.i77.do.body.i77_crit_edge ]
  %arrayidx.i71 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call10.i69
  %40 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i71, align 4
  %add.i72 = add i32 %41, %39
  %42 = inttoptr i32 %add.i72 to ptr
  %arrayidx2.i73 = getelementptr i64, ptr %42, i32 4
  %43 = ptrtoint ptr %arrayidx2.i73 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx2.i73, align 8
  %add3.i74 = add i64 %44, %sum.09.i70
  %call.i75 = tail call i32 @cpumask_next(i32 noundef %call10.i69, ptr noundef nonnull @__cpu_possible_mask) #19
  %cmp.i76 = icmp ult i32 %call.i75, %0
  br i1 %cmp.i76, label %do.body.i77.do.body.i77_crit_edge, label %batadv_sum_counter.exit79.loopexit

do.body.i77.do.body.i77_crit_edge:                ; preds = %do.body.i77
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i77

batadv_sum_counter.exit79.loopexit:               ; preds = %do.body.i77
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t83.le = trunc i64 %add3.i74 to i32
  br label %batadv_sum_counter.exit79

batadv_sum_counter.exit79:                        ; preds = %batadv_sum_counter.exit79.loopexit, %batadv_sum_counter.exit64.batadv_sum_counter.exit79_crit_edge
  %sum.0.lcssa.i78.off0 = phi i32 [ 0, %batadv_sum_counter.exit64.batadv_sum_counter.exit79_crit_edge ], [ %extract.t83.le, %batadv_sum_counter.exit79.loopexit ]
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %45 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sum.0.lcssa.i78.off0, ptr %rx_bytes, align 4
  ret ptr %stats1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_interface_add_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %proto)
  %cmp.not = icmp eq i16 %proto, -32512
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = or i16 %vid, -32768
  %call4 = tail call ptr @batadv_softif_vlan_get(ptr noundef %add.ptr.i, i16 noundef zeroext %0)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call i32 @batadv_softif_create_vlan(ptr noundef %add.ptr.i, i16 noundef zeroext %0)
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %soft_iface = getelementptr i8, ptr %dev, i32 2308
  %1 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %soft_iface, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 86
  %3 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_addr, align 64
  %call9 = tail call zeroext i1 @batadv_tt_local_add(ptr noundef %2, ptr noundef %4, i16 noundef zeroext %0, i32 noundef 0, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call6, %if.then5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_interface_kill_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %proto)
  %cmp.not = icmp eq i16 %proto, -32512
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = or i16 %vid, -32768
  %call4 = tail call ptr @batadv_softif_vlan_get(ptr noundef %add.ptr.i, i16 noundef zeroext %0)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  tail call fastcc void @batadv_softif_destroy_vlan(ptr noundef %add.ptr.i, ptr noundef nonnull %call4)
  %refcount.i = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call4, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !65

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !66
  %2 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call4, align 4
  %softif_vlan_list_lock.i.i = getelementptr inbounds %struct.batadv_priv, ptr %3, i32 0, i32 32
  tail call void @_raw_spin_lock_bh(ptr noundef %softif_vlan_list_lock.i.i) #14
  %list.i.i = getelementptr %struct.batadv_softif_vlan, ptr %call4, i32 0, i32 4
  %4 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.i.i, align 4
  %pprev2.i.i.i.i = getelementptr %struct.batadv_softif_vlan, ptr %call4, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %5, ptr %7, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.hlist_del_rcu.exit.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.hlist_del_rcu.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del_rcu.exit.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %pprev14.i.i.i.i, align 4
  br label %hlist_del_rcu.exit.i.i

hlist_del_rcu.exit.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.hlist_del_rcu.exit.i.i_crit_edge
  %10 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %11 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call4, align 4
  %softif_vlan_list_lock2.i.i = getelementptr inbounds %struct.batadv_priv, ptr %12, i32 0, i32 32
  tail call void @_raw_spin_unlock_bh(ptr noundef %softif_vlan_list_lock2.i.i) #14
  %rcu.i.i = getelementptr %struct.batadv_softif_vlan, ptr %call4, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 32 to ptr)) #14
  br label %cleanup

cleanup:                                          ; preds = %hlist_del_rcu.exit.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %hlist_del_rcu.exit.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_softif_slave_add(ptr noundef %dev, ptr noundef %slave_dev, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @batadv_hardif_get_by_netdev(ptr noundef %slave_dev) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.batadv_hardif_put.exit_crit_edge, label %lor.lhs.false

entry.batadv_hardif_put.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_hardif_put.exit

lor.lhs.false:                                    ; preds = %entry
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.if.end.i_crit_edge

lor.lhs.false.if.end.i_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 @batadv_hardif_enable_interface(ptr noundef nonnull %call, ptr noundef %dev) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.end, %lor.lhs.false.if.end.i_crit_edge
  %ret.0.ph = phi i32 [ %call2, %if.end ], [ -22, %lor.lhs.false.if.end.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !65

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %batadv_hardif_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !66
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #14, !callees !79
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %entry.batadv_hardif_put.exit_crit_edge
  %ret.08 = phi i32 [ %ret.0.ph, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge ], [ %ret.0.ph, %if.then10.i.i.i.i.i ], [ %ret.0.ph, %if.then.i.i ], [ -22, %entry.batadv_hardif_put.exit_crit_edge ]
  ret i32 %ret.08
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_softif_slave_del(ptr noundef readnone %dev, ptr noundef %slave_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @batadv_hardif_get_by_netdev(ptr noundef %slave_dev) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.batadv_hardif_put.exit_crit_edge, label %lor.lhs.false

entry.batadv_hardif_put.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_hardif_put.exit

lor.lhs.false:                                    ; preds = %entry
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %cmp.not = icmp eq ptr %1, %dev
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.if.end.i_crit_edge

lor.lhs.false.if.end.i_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @batadv_hardif_disable_interface(ptr noundef nonnull %call) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.end, %lor.lhs.false.if.end.i_crit_edge
  %ret.0.ph = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.if.end.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !65

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %batadv_hardif_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !66
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #14, !callees !79
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %entry.batadv_hardif_put.exit_crit_edge
  %ret.06 = phi i32 [ %ret.0.ph, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge ], [ %ret.0.ph, %if.then10.i.i.i.i.i ], [ %ret.0.ph, %if.then.i.i ], [ -22, %entry.batadv_hardif_put.exit_crit_edge ]
  ret i32 %ret.06
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_nc_init_bat_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_algo_select(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_mesh_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @batadv_tt_local_remove(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_hardif_min_mtu(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_softif_destroy_vlan(ptr noundef %bat_priv, ptr noundef %vlan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %vid = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan, i32 0, i32 1
  %4 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid, align 4
  %call = tail call zeroext i16 @batadv_tt_local_remove(ptr noundef %bat_priv, ptr noundef %3, i16 noundef zeroext %5, ptr noundef nonnull @.str.11, i1 noundef zeroext false) #14
  %tobool.not.i = icmp eq ptr %vlan, null
  br i1 %tobool.not.i, label %entry.batadv_softif_vlan_put.exit_crit_edge, label %if.end.i

entry.batadv_softif_vlan_put.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_softif_vlan_put.exit

if.end.i:                                         ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_softif_vlan_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !65

if.end5.i.i.i.i.i.batadv_softif_vlan_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_softif_vlan_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %batadv_softif_vlan_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !66
  %7 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vlan, align 4
  %softif_vlan_list_lock.i.i = getelementptr inbounds %struct.batadv_priv, ptr %8, i32 0, i32 32
  tail call void @_raw_spin_lock_bh(ptr noundef %softif_vlan_list_lock.i.i) #14
  %list.i.i = getelementptr %struct.batadv_softif_vlan, ptr %vlan, i32 0, i32 4
  %9 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list.i.i, align 4
  %pprev2.i.i.i.i = getelementptr %struct.batadv_softif_vlan, ptr %vlan, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %10, ptr %12, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.hlist_del_rcu.exit.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.hlist_del_rcu.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del_rcu.exit.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %pprev14.i.i.i.i, align 4
  br label %hlist_del_rcu.exit.i.i

hlist_del_rcu.exit.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.hlist_del_rcu.exit.i.i_crit_edge
  %15 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %16 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vlan, align 4
  %softif_vlan_list_lock2.i.i = getelementptr inbounds %struct.batadv_priv, ptr %17, i32 0, i32 32
  tail call void @_raw_spin_unlock_bh(ptr noundef %softif_vlan_list_lock2.i.i) #14
  %rcu.i.i = getelementptr %struct.batadv_softif_vlan, ptr %vlan, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 32 to ptr)) #14
  br label %batadv_softif_vlan_put.exit

batadv_softif_vlan_put.exit:                      ; preds = %hlist_del_rcu.exit.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_softif_vlan_put.exit_crit_edge, %entry.batadv_softif_vlan_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_hardif_get_by_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_hardif_enable_interface(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_disable_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_mesh_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @.str.12, i32 noundef 32) #14
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strscpy(ptr noundef %version, ptr noundef nonnull @.str.13, i32 noundef 32) #14
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %call4 = tail call i32 @strscpy(ptr noundef %fw_version, ptr noundef nonnull @.str.14, i32 noundef 32) #14
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.15, i32 noundef 32) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @batadv_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp = icmp eq i32 %stringset, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = call ptr @memcpy(ptr %data, ptr @batadv_counters_strings, i32 1184)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_get_ethtool_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bat_counters.i = getelementptr i8, ptr %dev, i32 2312
  br label %for.body

for.body:                                         ; preds = %batadv_sum_counter.exit.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %batadv_sum_counter.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call7.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %0)
  %cmp8.i = icmp ult i32 %call7.i, %0
  br i1 %cmp8.i, label %do.body.lr.ph.i, label %for.body.batadv_sum_counter.exit_crit_edge

for.body.batadv_sum_counter.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_sum_counter.exit

do.body.lr.ph.i:                                  ; preds = %for.body
  %1 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bat_counters.i, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call10.i = phi i32 [ %call7.i, %do.body.lr.ph.i ], [ %call.i, %do.body.i.do.body.i_crit_edge ]
  %sum.09.i = phi i64 [ 0, %do.body.lr.ph.i ], [ %add3.i, %do.body.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call10.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, %3
  %6 = inttoptr i32 %add.i to ptr
  %arrayidx2.i = getelementptr i64, ptr %6, i32 %i.05
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx2.i, align 8
  %add3.i = add i64 %8, %sum.09.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call10.i, ptr noundef nonnull @__cpu_possible_mask) #19
  %cmp.i = icmp ult i32 %call.i, %0
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.batadv_sum_counter.exit_crit_edge

do.body.i.batadv_sum_counter.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %batadv_sum_counter.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

batadv_sum_counter.exit:                          ; preds = %do.body.i.batadv_sum_counter.exit_crit_edge, %for.body.batadv_sum_counter.exit_crit_edge
  %sum.0.lcssa.i = phi i64 [ 0, %for.body.batadv_sum_counter.exit_crit_edge ], [ %add3.i, %do.body.i.batadv_sum_counter.exit_crit_edge ]
  %arrayidx = getelementptr i64, ptr %data, i32 %i.05
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %sum.0.lcssa.i, ptr %arrayidx, align 8
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 37
  br i1 %exitcond.not, label %for.end, label %batadv_sum_counter.exit.for.body_crit_edge

batadv_sum_counter.exit.for.body_crit_edge:       ; preds = %batadv_sum_counter.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %batadv_sum_counter.exit
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @batadv_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %stringset) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp = icmp eq i32 %stringset, 1
  %. = select i1 %cmp, i32 37, i32 -95
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_algo_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !12, !14, !15, !17, !19, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/batman-adv/soft-interface.c", i32 532, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/batman-adv/soft-interface.c", i32 1121, i32 11}
!6 = !{ptr @batadv_link_ops, !7, !"batadv_link_ops", i1 false, i1 false}
!7 = !{!"../net/batman-adv/soft-interface.c", i32 1120, i32 22}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"stp_addr", i1 false, i1 false}
!16 = !{!"../net/batman-adv/soft-interface.c", i32 185, i32 18}
!17 = distinct !{null, !18, !"ectp_addr", i1 false, i1 false}
!18 = !{!"../net/batman-adv/soft-interface.c", i32 187, i32 18}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/batman-adv/hard-interface.h", i32 110, i32 15}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @batadv_netdev_ops, !24, !"batadv_netdev_ops", i1 false, i1 false}
!24 = !{!"../net/batman-adv/soft-interface.c", i32 872, i32 36}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/batman-adv/soft-interface.c", i32 721, i32 2}
!27 = !{ptr @batadv_netdev_addr_lock_key, !28, !"batadv_netdev_addr_lock_key", i1 false, i1 false}
!28 = !{!"../net/batman-adv/soft-interface.c", i32 700, i32 30}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/batman-adv/soft-interface.c", i32 712, i32 2}
!31 = !{ptr @batadv_netdev_xmit_lock_key, !32, !"batadv_netdev_xmit_lock_key", i1 false, i1 false}
!32 = !{!"../net/batman-adv/soft-interface.c", i32 699, i32 30}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/batman-adv/soft-interface.c", i32 144, i32 2}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/batman-adv/soft-interface.c", i32 146, i32 12}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/batman-adv/soft-interface.c", i32 608, i32 22}
!39 = !{ptr @batadv_ethtool_ops, !40, !"batadv_ethtool_ops", i1 false, i1 false}
!40 = !{!"../net/batman-adv/soft-interface.c", i32 972, i32 33}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/batman-adv/soft-interface.c", i32 891, i32 24}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/batman-adv/soft-interface.c", i32 892, i32 25}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/batman-adv/soft-interface.c", i32 893, i32 28}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/batman-adv/soft-interface.c", i32 894, i32 26}
!49 = !{ptr @batadv_counters_strings, !50, !"batadv_counters_strings", i1 false, i1 false}
!50 = !{!"../net/batman-adv/soft-interface.c", i32 903, i32 3}
!51 = !{ptr @batadv_ifla_policy, !52, !"batadv_ifla_policy", i1 false, i1 false}
!52 = !{!"../net/batman-adv/soft-interface.c", i32 1116, i32 32}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2148251528}
!64 = !{i64 2148165992, i64 2148166024, i64 2148166053, i64 2148166087, i64 2148166118, i64 2148166141}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2150582539}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{i64 615324, i64 615385}
!69 = !{i64 618056}
!70 = !{i64 618341}
!71 = !{i64 2149707992}
!72 = !{i64 536831, i64 536855, i64 536876, i64 536893, i64 536910}
!73 = !{i64 2149708258}
!74 = !{i64 2148163527, i64 2148163559, i64 2148163588, i64 2148163622, i64 2148163653, i64 2148163676}
!75 = !{i64 2149809603}
!76 = !{i64 2148247408}
!77 = !{i64 2148162717, i64 2148162749, i64 2148162778, i64 2148162812, i64 2148162843, i64 2148162866}
!78 = !{i64 2148247637}
!79 = !{ptr @batadv_hardif_release, ptr @batadv_orig_node_release, ptr @batadv_softif_vlan_release}
!80 = !{!"auto-init"}
