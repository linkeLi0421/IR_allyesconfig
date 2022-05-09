; ModuleID = '/llk/IR_all_yes/net/batman-adv/bat_iv_ogm.c_pt.bc'
source_filename = "../net/batman-adv/bat_iv_ogm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.batadv_algo_ops = type { %struct.hlist_node, ptr, %struct.batadv_algo_iface_ops, %struct.batadv_algo_neigh_ops, %struct.batadv_algo_orig_ops, %struct.batadv_algo_gw_ops }
%struct.hlist_node = type { ptr, ptr }
%struct.batadv_algo_iface_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_algo_neigh_ops = type { ptr, ptr, ptr, ptr }
%struct.batadv_algo_orig_ops = type { ptr }
%struct.batadv_algo_gw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.batadv_hard_iface_bat_iv = type { ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.99, %union.anon.100, [48 x i8], %union.anon.101, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.103, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.99 = type { ptr }
%union.anon.100 = type { i64 }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { i32, ptr }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.105, i32, i32, i32, i16, i16, %union.anon.107, i32, %union.anon.108, %union.anon.109, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.105 = type { i32 }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i16 }
%struct.batadv_ogm_packet = type { i8, i8, i8, i8, i32, [6 x i8], [6 x i8], i8, i8, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.98, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.98 = type { ptr }
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
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }
%struct.batadv_orig_ifinfo = type { %struct.hlist_node, ptr, ptr, i32, i8, i32, i32, %struct.batadv_orig_ifinfo_bat_iv, %struct.kref, %struct.callback_head }
%struct.batadv_orig_ifinfo_bat_iv = type { [2 x i32], i8 }
%struct.batadv_priv = type { %struct.atomic_t, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, ptr, %struct.hlist_head, %struct.spinlock, %struct.batadv_priv_bla, ptr, %struct.batadv_priv_gw, %struct.batadv_priv_tt, %struct.batadv_priv_tvlv, %struct.batadv_priv_dat, %struct.batadv_priv_mcast, %struct.atomic_t, %struct.batadv_priv_nc, %struct.batadv_priv_bat_v }
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
%struct.batadv_hashtable = type { ptr, ptr, i32, %struct.atomic_t }
%struct.batadv_neigh_node = type { %struct.hlist_node, ptr, [6 x i8], %struct.hlist_head, %struct.spinlock, ptr, i32, ptr, %struct.kref, %struct.callback_head }
%struct.batadv_neigh_ifinfo = type { %struct.hlist_node, ptr, %struct.batadv_neigh_ifinfo_bat_iv, %struct.batadv_neigh_ifinfo_bat_v, i8, %struct.kref, %struct.callback_head }
%struct.batadv_neigh_ifinfo_bat_iv = type { [5 x i8], i8, i8, [2 x i32], i8 }
%struct.batadv_neigh_ifinfo_bat_v = type { i32, i32 }
%struct.batadv_hardif_neigh_node = type { %struct.hlist_node, [6 x i8], [6 x i8], ptr, i32, %struct.batadv_hardif_neigh_node_bat_v, %struct.kref, %struct.callback_head }
%struct.batadv_hardif_neigh_node_bat_v = type { %struct.ewma_throughput, i32, i32, i32, %struct.work_struct }
%struct.ewma_throughput = type { i32 }
%struct.batadv_forw_packet = type { %struct.hlist_node, %struct.hlist_node, i32, i8, ptr, i16, i32, i8, %struct.delayed_work, ptr, ptr, ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.88 }
%union.anon.88 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.batadv_gw_node = type { %struct.hlist_node, ptr, i32, i32, %struct.kref, %struct.callback_head }

@batadv_batman_iv = internal global %struct.batadv_algo_ops { %struct.hlist_node zeroinitializer, ptr @.str.47, %struct.batadv_algo_iface_ops { ptr null, ptr @batadv_iv_ogm_iface_enable, ptr @batadv_iv_iface_enabled, ptr @batadv_iv_ogm_iface_disable, ptr @batadv_iv_ogm_iface_update_mac, ptr @batadv_iv_ogm_primary_iface_set }, %struct.batadv_algo_neigh_ops { ptr null, ptr @batadv_iv_ogm_neigh_cmp, ptr @batadv_iv_ogm_neigh_is_sob, ptr @batadv_iv_ogm_neigh_dump }, %struct.batadv_algo_orig_ops { ptr @batadv_iv_ogm_orig_dump }, %struct.batadv_algo_gw_ops { ptr @batadv_iv_init_sel_class, ptr null, ptr @batadv_iv_gw_get_best_gw_node, ptr @batadv_iv_gw_is_eligible, ptr @batadv_iv_gw_dump } }, section ".data..read_mostly", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"Received BATMAN packet via NB: %pM, IF: %s [%pM] (from OG: %pM, via prev OG: %pM, seqno %u, tq %d, TTL %d, V %d, IDF %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@batadv_iv_ogm_process.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/batman-adv/bat_iv_ogm.c\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@batadv_hardif_list = external dso_local global %struct.list_head, align 4
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Drop packet: received my own broadcast (sender: %pM)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Drop packet: originator packet from myself (via neighbor)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Drop packet: ignoring all rebroadcast echos (sender: %pM)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Drop packet: ignoring all packets not forwarded from the best next hop (sender: %pM)\0A\00", [42 x i8] zeroinitializer }, align 32
@batadv_iv_ogm_process.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@batadv_iv_ogm_orig_get.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&orig_node->bat_iv.ogm_cnt_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Drop packet: packet within seqno protection time (sender: %pM)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Drop packet: originator packet with tq equal 0\0A\00", [48 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.14 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Drop packet: ignoring all rebroadcast packets that may make me loop (sender: %pM)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Drop packet: OGM via unknown neighbor!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Drop packet: OGM from secondary interface and wrong outgoing interface\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Forwarding packet: rebroadcast neighbor packet with direct link flag\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Drop packet: not received via bidirectional link\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Drop packet: duplicate packet received\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Forwarding packet: rebroadcast originator packet\0A\00", [46 x i8] zeroinitializer }, align 32
@batadv_iv_ogm_update_seqnos.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s updating last_seqno: old %u, new %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DEFAULT\00", [24 x i8] zeroinitializer }, align 32
@batadv_iv_ogm_calc_tq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [184 x i8], [40 x i8] } { [184 x i8] c"bidirectional: orig = %pM neigh = %pM => own_bcast = %2i, real recv = %2i, local tq: %3i, asym_penalty: %3i, iface_hop_penalty: %3i, total tq: %3i, if_incoming = %s, if_outgoing = %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s(): Searching and updating originator entry of received packet\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.batadv_iv_ogm_orig_update = private unnamed_addr constant [26 x i8] c"batadv_iv_ogm_orig_update\00", align 1
@batadv_iv_ogm_orig_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"too many matching neigh_nodes\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Updating existing last-hop neighbor of originator\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ttl exceeded\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Forwarding packet: tq: %i, ttl: %i\0A\00", [60 x i8] zeroinitializer }, align 32
@batadv_primary_if_get_selected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.h\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@batadv_iv_ogm_aggregate_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"(work_completion)(&(&forw_packet_aggr->delayed_work)->work)\00", [36 x i8] zeroinitializer }, align 32
@batadv_iv_ogm_aggregate_new.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"&(&forw_packet_aggr->delayed_work)->timer\00", [54 x i8] zeroinitializer }, align 32
@batadv_iv_ogm_emit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.1, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013batman_adv: Error - can't forward packet: incoming iface not specified\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"batadv_iv_ogm_emit\00", [45 x i8] zeroinitializer }, align 32
@batadv_iv_ogm_emit._entry_ptr = internal global ptr @batadv_iv_ogm_emit._entry, section ".printk_index", align 4
@batadv_iv_ogm_emit._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.1, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014batman_adv: %s: soft interface switch for queued OGM\0A\00", [40 x i8] zeroinitializer }, align 32
@batadv_iv_ogm_emit._entry_ptr.38 = internal global ptr @batadv_iv_ogm_emit._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Forwarding\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Sending own\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"%s %spacket (originator %pM, seqno %u, TQ %d, TTL %d, IDF %s) on interface %s [%pM]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aggregated \00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@batadv_iv_ogm_schedule_buff.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_iv_ogm_slide_own_bcast_window.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_iv_ogm_slide_own_bcast_window.__warned.46 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BATMAN_IV\00", [22 x i8] zeroinitializer }, align 32
@batadv_iv_ogm_neigh_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_iv_ogm_neigh_dump_hardif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_netlink_family = external dso_local global %struct.genl_family, align 4
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@batadv_iv_ogm_orig_dump_bucket.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_iv_ogm_orig_dump_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_iv_gw_get_best_gw_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Restarting gateway selection: better gateway found (tq curr: %i, tq new: %i)\0A\00", [50 x i8] zeroinitializer }, align 32
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1590, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1599, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1621, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1636, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1643, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1650, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 695, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 723, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 153, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1347, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1354, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1383, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1415, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1454, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1464, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1471, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1477, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1482, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1284, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1176, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 933, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 944, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 985, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 694, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 720, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [35 x i8] c"../net/batman-adv/hard-interface.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 110, i32 15 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 585, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 403, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 413, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 365, i32 14 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 367, i32 14 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 369, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 2502, i32 10 }
@___asan_gen_.195 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 991, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [31 x i8] c"../net/batman-adv/bat_iv_ogm.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 2376, i32 2 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @batadv_iv_ogm_emit._entry, ptr @batadv_iv_ogm_emit._entry.36, ptr @batadv_iv_ogm_emit._entry_ptr, ptr @batadv_iv_ogm_emit._entry_ptr.38, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @batadv_iv_ogm_orig_get.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @batadv_iv_ogm_aggregate_new.__key, ptr @.str.31, ptr @batadv_iv_ogm_aggregate_new.__key.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_iv_ogm_orig_get.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_iv_ogm_aggregate_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_iv_ogm_aggregate_new.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_iv_ogm_emit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_iv_ogm_emit._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_iv_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @batadv_recv_handler_register(i8 noundef zeroext 0, ptr noundef nonnull @batadv_iv_ogm_receive) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @batadv_algo_register(ptr noundef nonnull @batadv_batman_iv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %handler_unregister, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

handler_unregister:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @batadv_recv_handler_unregister(i8 noundef zeroext 0) #11
  br label %out

out:                                              ; preds = %handler_unregister, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %handler_unregister ], [ %call1, %if.end.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_recv_handler_register(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_iv_ogm_receive(ptr noundef %skb, ptr noundef %if_incoming) #3 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_incoming, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %call1 = tail call zeroext i1 @batadv_check_management_packet(ptr noundef %skb, ptr noundef %if_incoming, i32 noundef 24) #11
  br i1 %call1, label %if.end, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end:                                           ; preds = %entry
  %algo_ops = getelementptr i8, ptr %1, i32 2640
  %2 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo_ops, align 4
  %enable = getelementptr inbounds %struct.batadv_algo_ops, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable, align 4
  %cmp.not = icmp eq ptr %5, @batadv_iv_ogm_iface_enable
  br i1 %cmp.not, label %if.end3, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end3:                                          ; preds = %if.end
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !128
  %bat_counters.i = getelementptr i8, ptr %1, i32 2312
  %7 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %8, i32 9
  %9 = ptrtoint ptr %arrayidx.i to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  %add15.i = add i64 %18, 1
  store i64 %add15.i, ptr %16, align 8
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !129
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end3.batadv_add_counter.exit_crit_edge, !prof !130

if.end3.batadv_add_counter.exit_crit_edge:        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_add_counter.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i, %if.end3.batadv_add_counter.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #11, !srcloc !131
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %add = add i32 %21, 14
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !128
  %conv6.i = zext i32 %add to i64
  %23 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i31 = getelementptr i64, ptr %24, i32 10
  %25 = ptrtoint ptr %arrayidx.i31 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i32 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i32 to ptr
  %cpu.i33 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i33, align 4
  %arrayidx14.i34 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx14.i34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx14.i34, align 4
  %add.i35 = add i32 %31, %25
  %32 = inttoptr i32 %add.i35 to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %32, align 8
  %add15.i36 = add i64 %34, %conv6.i
  store i64 %add15.i36, ptr %32, align 8
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !129
  %and.i.i.i37 = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i37)
  %tobool.not.i38 = icmp eq i32 %and.i.i.i37, 0
  br i1 %tobool.not.i38, label %if.then.i39, label %batadv_add_counter.exit.batadv_add_counter.exit40_crit_edge, !prof !130

batadv_add_counter.exit.batadv_add_counter.exit40_crit_edge: ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_add_counter.exit40

if.then.i39:                                      ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %batadv_add_counter.exit40

batadv_add_counter.exit40:                        ; preds = %if.then.i39, %batadv_add_counter.exit.batadv_add_counter.exit40_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #11, !srcloc !131
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %38 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i, align 8
  %sub.i62 = sub i32 %37, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i62)
  %cmp.i63 = icmp slt i32 %sub.i62, 24
  br i1 %cmp.i63, label %batadv_add_counter.exit40.if.then11_crit_edge, label %batadv_iv_ogm_aggr_packet.exit.lr.ph

batadv_add_counter.exit40.if.then11_crit_edge:    ; preds = %batadv_add_counter.exit40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

batadv_iv_ogm_aggr_packet.exit.lr.ph:             ; preds = %batadv_add_counter.exit40
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %ogm_seqno.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_incoming, i32 0, i32 10, i32 2
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_incoming, i32 0, i32 4
  br label %batadv_iv_ogm_aggr_packet.exit

batadv_iv_ogm_aggr_packet.exit:                   ; preds = %batadv_iv_ogm_process.exit.batadv_iv_ogm_aggr_packet.exit_crit_edge, %batadv_iv_ogm_aggr_packet.exit.lr.ph
  %add.i4167 = phi i32 [ 24, %batadv_iv_ogm_aggr_packet.exit.lr.ph ], [ %add.i41, %batadv_iv_ogm_process.exit.batadv_iv_ogm_aggr_packet.exit_crit_edge ]
  %sub.i66 = phi i32 [ %sub.i62, %batadv_iv_ogm_aggr_packet.exit.lr.ph ], [ %sub.i, %batadv_iv_ogm_process.exit.batadv_iv_ogm_aggr_packet.exit_crit_edge ]
  %ogm_offset.065 = phi i32 [ 0, %batadv_iv_ogm_aggr_packet.exit.lr.ph ], [ %add7, %batadv_iv_ogm_process.exit.batadv_iv_ogm_aggr_packet.exit_crit_edge ]
  %ogm_packet.064 = phi ptr [ %41, %batadv_iv_ogm_aggr_packet.exit.lr.ph ], [ %add.ptr, %batadv_iv_ogm_process.exit.batadv_iv_ogm_aggr_packet.exit_crit_edge ]
  %tvlv_len.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %ogm_packet.064, i32 0, i32 9
  %42 = ptrtoint ptr %tvlv_len.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tvlv_len.i, align 2
  %conv.i = zext i16 %43 to i32
  %add2.i = add i32 %add.i4167, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %sub.i66)
  %cmp3.not.i = icmp sle i32 %add2.i, %sub.i66
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %add2.i)
  %cmp5.i = icmp slt i32 %add2.i, 513
  %spec.select.i = and i1 %cmp3.not.i, %cmp5.i
  br i1 %spec.select.i, label %while.body, label %batadv_iv_ogm_aggr_packet.exit.if.then11_crit_edge

batadv_iv_ogm_aggr_packet.exit.if.then11_crit_edge: ; preds = %batadv_iv_ogm_aggr_packet.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

while.body:                                       ; preds = %batadv_iv_ogm_aggr_packet.exit
  %44 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 2304
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %add.ptr.i42 = getelementptr i8, ptr %47, i32 %ogm_offset.065
  %48 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i.i, align 8
  %50 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %51 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %49, i32 %conv.i.i.i
  %52 = ptrtoint ptr %add.ptr.i42 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr.i42, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp.not.i = icmp eq i8 %53, 0
  br i1 %cmp.not.i, label %if.end.i43, label %while.body.batadv_iv_ogm_process.exit_crit_edge

while.body.batadv_iv_ogm_process.exit_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_process.exit

if.end.i43:                                       ; preds = %while.body
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ogm_seqno.i, i32 noundef 4) #11
  %54 = ptrtoint ptr %ogm_seqno.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %ogm_seqno.i, align 4
  %flags.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr.i42, i32 0, i32 3
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %flags.i, align 1
  %log_level.i = getelementptr i8, ptr %45, i32 2360
  %call.i.i294.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %58 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %log_level.i, align 4
  %and8.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end.i43.if.end21.i_crit_edge, label %if.then10.i

if.end.i43.if.end21.i_crit_edge:                  ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then10.i:                                      ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #13
  %60 = lshr i8 %57, 2
  %.lobit.i = and i8 %60, 1
  %61 = zext i8 %.lobit.i to i32
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %net_dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 86
  %64 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_addr.i, align 64
  %orig.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr.i42, i32 0, i32 5
  %prev_sender.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr.i42, i32 0, i32 6
  %seqno.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr.i42, i32 0, i32 4
  %66 = ptrtoint ptr %seqno.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %seqno.i, align 2
  %tq.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr.i42, i32 0, i32 8
  %68 = ptrtoint ptr %tq.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %tq.i, align 1
  %conv15.i = zext i8 %69 to i32
  %ttl.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr.i42, i32 0, i32 2
  %70 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ttl.i, align 2
  %conv16.i = zext i8 %71 to i32
  %version.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr.i42, i32 0, i32 1
  %72 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %version.i, align 1
  %conv17.i = zext i8 %73 to i32
  %call20.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str, ptr noundef %h_source.i, ptr noundef %63, ptr noundef %65, ptr noundef %orig.i, ptr noundef %prev_sender.i, i32 noundef %67, i32 noundef %conv15.i, i32 noundef %conv16.i, i32 noundef %conv17.i, i32 noundef %61) #11
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then10.i, %if.end.i43.if.end21.i_crit_edge
  %74 = call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %77, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.end21.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end21.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end21.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end21.i.rcu_read_lock.exit.i_crit_edge
  %call23.i = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end32.i_crit_edge

rcu_read_lock.exit.i.do.end32.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call25.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %land.lhs.true.i.do.end32.i_crit_edge, label %land.lhs.true27.i

land.lhs.true.i.do.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32.i

land.lhs.true27.i:                                ; preds = %land.lhs.true.i
  %.b292.i = load i1, ptr @batadv_iv_ogm_process.__warned, align 1
  br i1 %.b292.i, label %land.lhs.true27.i.do.end32.i_crit_edge, label %if.then29.i

land.lhs.true27.i.do.end32.i_crit_edge:           ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32.i

if.then29.i:                                      ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_iv_ogm_process.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1599, ptr noundef nonnull @.str.2) #11
  br label %do.end32.i

do.end32.i:                                       ; preds = %if.then29.i, %land.lhs.true27.i.do.end32.i_crit_edge, %land.lhs.true.i.do.end32.i_crit_edge, %rcu_read_lock.exit.i.do.end32.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.0347.i = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp38.not348.i = icmp eq ptr %hard_iface.0347.i, @batadv_hardif_list
  br i1 %cmp38.not348.i, label %do.end32.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.end32.i.for.end.i_crit_edge:                   ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end32.i
  %h_source51.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %add.ptr.i.i.i.i = getelementptr i8, ptr %h_source51.i, i32 4
  %orig58.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr.i42, i32 0, i32 5
  %add.ptr.i.i.i311.i = getelementptr i8, ptr %orig58.i, i32 4
  %prev_sender65.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr.i42, i32 0, i32 6
  %add.ptr.i.i.i318.i = getelementptr i8, ptr %prev_sender65.i, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %hard_iface.0352.i = phi ptr [ %hard_iface.0347.i, %for.body.lr.ph.i ], [ %hard_iface.0.i, %for.inc.i.for.body.i_crit_edge ]
  %is_my_oldorig.0.off0351.i = phi i1 [ false, %for.body.lr.ph.i ], [ %is_my_oldorig.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %is_my_addr.0.off0350.i = phi i1 [ false, %for.body.lr.ph.i ], [ %is_my_addr.2.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %is_my_orig.0.off0349.i = phi i1 [ false, %for.body.lr.ph.i ], [ %is_my_orig.2.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %if_status.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0352.i, i32 0, i32 1
  %78 = ptrtoint ptr %if_status.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %if_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %79)
  %cmp41.not.i = icmp eq i8 %79, 3
  br i1 %cmp41.not.i, label %if.end44.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end44.i:                                       ; preds = %for.body.i
  %soft_iface45.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0352.i, i32 0, i32 7
  %80 = ptrtoint ptr %soft_iface45.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %soft_iface45.i, align 4
  %82 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %soft_iface, align 4
  %cmp47.not.i = icmp eq ptr %81, %83
  br i1 %cmp47.not.i, label %if.end50.i, label %if.end44.i.for.inc.i_crit_edge

if.end44.i.for.inc.i_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end50.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev53.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0352.i, i32 0, i32 4
  %84 = ptrtoint ptr %net_dev53.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %net_dev53.i, align 4
  %dev_addr54.i = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 86
  %86 = ptrtoint ptr %dev_addr54.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_addr54.i, align 64
  %88 = ptrtoint ptr %h_source51.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %h_source51.i, align 4
  %90 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %87, align 4
  %xor.i.i.i.i = xor i32 %91, %89
  %92 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %87, i32 4
  %94 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %add.ptr1.i.i.i.i, align 2
  %xor37.i.i.i.i = xor i16 %95, %93
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  %spec.select.i44 = select i1 %cmp.i.i.i.i, i1 true, i1 %is_my_addr.0.off0350.i
  %96 = ptrtoint ptr %orig58.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %orig58.i, align 4
  %xor.i.i.i310.i = xor i32 %97, %91
  %98 = ptrtoint ptr %add.ptr.i.i.i311.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %add.ptr.i.i.i311.i, align 2
  %xor37.i.i.i313.i = xor i16 %99, %95
  %xor3.i.i.i314.i = zext i16 %xor37.i.i.i313.i to i32
  %or.i.i.i315.i = or i32 %xor.i.i.i310.i, %xor3.i.i.i314.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i315.i)
  %cmp.i.i.i316.i = icmp eq i32 %or.i.i.i315.i, 0
  %is_my_orig.1.off0.i = select i1 %cmp.i.i.i316.i, i1 true, i1 %is_my_orig.0.off0349.i
  %100 = ptrtoint ptr %prev_sender65.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %prev_sender65.i, align 4
  %xor.i.i.i317.i = xor i32 %101, %91
  %102 = ptrtoint ptr %add.ptr.i.i.i318.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %add.ptr.i.i.i318.i, align 2
  %xor37.i.i.i320.i = xor i16 %103, %95
  %xor3.i.i.i321.i = zext i16 %xor37.i.i.i320.i to i32
  %or.i.i.i322.i = or i32 %xor.i.i.i317.i, %xor3.i.i.i321.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i322.i)
  %cmp.i.i.i323.i = icmp eq i32 %or.i.i.i322.i, 0
  %spec.select293.i = select i1 %cmp.i.i.i323.i, i1 true, i1 %is_my_oldorig.0.off0351.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end50.i, %if.end44.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %is_my_orig.2.off0.i = phi i1 [ %is_my_orig.0.off0349.i, %for.body.i.for.inc.i_crit_edge ], [ %is_my_orig.0.off0349.i, %if.end44.i.for.inc.i_crit_edge ], [ %is_my_orig.1.off0.i, %if.end50.i ]
  %is_my_addr.2.off0.i = phi i1 [ %is_my_addr.0.off0350.i, %for.body.i.for.inc.i_crit_edge ], [ %is_my_addr.0.off0350.i, %if.end44.i.for.inc.i_crit_edge ], [ %spec.select.i44, %if.end50.i ]
  %is_my_oldorig.1.off0.i = phi i1 [ %is_my_oldorig.0.off0351.i, %for.body.i.for.inc.i_crit_edge ], [ %is_my_oldorig.0.off0351.i, %if.end44.i.for.inc.i_crit_edge ], [ %spec.select293.i, %if.end50.i ]
  %104 = ptrtoint ptr %hard_iface.0352.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %hard_iface.0.i = load volatile ptr, ptr %hard_iface.0352.i, align 4
  %cmp38.not.i = icmp eq ptr %hard_iface.0.i, @batadv_hardif_list
  br i1 %cmp38.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end32.i.for.end.i_crit_edge
  %is_my_orig.0.off0.lcssa.i = phi i1 [ false, %do.end32.i.for.end.i_crit_edge ], [ %is_my_orig.2.off0.i, %for.inc.i.for.end.i_crit_edge ]
  %is_my_addr.0.off0.lcssa.i = phi i1 [ false, %do.end32.i.for.end.i_crit_edge ], [ %is_my_addr.2.off0.i, %for.inc.i.for.end.i_crit_edge ]
  %is_my_oldorig.0.off0.lcssa.i = phi i1 [ false, %do.end32.i.for.end.i_crit_edge ], [ %is_my_oldorig.1.off0.i, %for.inc.i.for.end.i_crit_edge ]
  %call.i324.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i324.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i327.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i327.i:                             ; preds = %for.end.i
  %call1.i325.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i325.i)
  %tobool.not.i326.i = icmp eq i32 %call1.i325.i, 0
  br i1 %tobool.not.i326.i, label %land.lhs.true.i327.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i329.i

land.lhs.true.i327.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i327.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i329.i:                            ; preds = %land.lhs.true.i327.i
  %.b4.i328.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i328.i, label %land.lhs.true2.i329.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i330.i

land.lhs.true2.i329.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i329.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i330.i:                                   ; preds = %land.lhs.true2.i329.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i330.i, %land.lhs.true2.i329.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i327.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %105 = call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i331.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i331.i to ptr
  %preempt_count.i.i.i.i332.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i.i.i332.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i.i.i332.i, align 4
  %sub.i.i.i.i = add i32 %108, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i332.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br i1 %is_my_addr.0.off0.lcssa.i, label %do.body82.i, label %if.end95.i

do.body82.i:                                      ; preds = %rcu_read_unlock.exit.i
  %call.i.i295.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %109 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %log_level.i, align 4
  %and86.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %do.body82.i.batadv_iv_ogm_process.exit_crit_edge, label %if.then88.i

do.body82.i.batadv_iv_ogm_process.exit_crit_edge: ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_process.exit

if.then88.i:                                      ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #13
  %h_source89.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %call91.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.3, ptr noundef %h_source89.i) #11
  br label %batadv_iv_ogm_process.exit

if.end95.i:                                       ; preds = %rcu_read_unlock.exit.i
  br i1 %is_my_orig.0.off0.lcssa.i, label %if.then97.i, label %if.end115.i

if.then97.i:                                      ; preds = %if.end95.i
  %h_source98.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %call100.i = call fastcc ptr @batadv_iv_ogm_orig_get(ptr noundef %add.ptr.i.i, ptr noundef %h_source98.i) #11
  %tobool101.not.i = icmp eq ptr %call100.i, null
  br i1 %tobool101.not.i, label %if.then97.i.batadv_iv_ogm_process.exit_crit_edge, label %if.end103.i

if.then97.i.batadv_iv_ogm_process.exit_crit_edge: ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_process.exit

if.end103.i:                                      ; preds = %if.then97.i
  %111 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %flags.i, align 1
  %113 = and i8 %112, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i333.i = icmp eq i8 %113, 0
  br i1 %tobool.not.i333.i, label %if.end103.i.batadv_iv_ogm_process_reply.exit.i_crit_edge, label %if.end.i.i

if.end103.i.batadv_iv_ogm_process_reply.exit.i_crit_edge: ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_process_reply.exit.i

if.end.i.i:                                       ; preds = %if.end103.i
  %114 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %net_dev.i, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %115, i32 0, i32 86
  %116 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev_addr.i.i, align 64
  %orig.i.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr.i42, i32 0, i32 5
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %117, align 4
  %120 = ptrtoint ptr %orig.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %orig.i.i, align 4
  %xor.i.i.i.i.i = xor i32 %121, %119
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %117, i32 4
  %122 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %add.ptr.i.i.i.i.i, align 2
  %add.ptr1.i.i.i.i.i = getelementptr %struct.batadv_ogm_packet, ptr %add.ptr.i42, i32 0, i32 5, i32 4
  %124 = ptrtoint ptr %add.ptr1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %add.ptr1.i.i.i.i.i, align 2
  %xor37.i.i.i.i.i = xor i16 %125, %123
  %xor3.i.i.i.i.i = zext i16 %xor37.i.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %xor.i.i.i.i.i, %xor3.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %or.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.end2.i.i, label %if.end.i.i.batadv_iv_ogm_process_reply.exit.i_crit_edge

if.end.i.i.batadv_iv_ogm_process_reply.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_process_reply.exit.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  %call3.i.i = call ptr @batadv_orig_ifinfo_get(ptr noundef nonnull %call100.i, ptr noundef %if_incoming) #11
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %if.end2.i.i.batadv_iv_ogm_process_reply.exit.i_crit_edge, label %if.end6.i.i

if.end2.i.i.batadv_iv_ogm_process_reply.exit.i_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_process_reply.exit.i

if.end6.i.i:                                      ; preds = %if.end2.i.i
  %bat_iv.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call100.i, i32 0, i32 36
  call void @_raw_spin_lock_bh(ptr noundef %bat_iv.i.i) #11
  %sub.i.i = add i32 %55, -2
  %seqno.i.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr.i42, i32 0, i32 4
  %126 = ptrtoint ptr %seqno.i.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %seqno.i.i, align 2
  %sub7.i.i = sub i32 %sub.i.i, %127
  %bat_iv8.i.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call3.i.i, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub7.i.i)
  %128 = icmp ugt i32 %sub7.i.i, 63
  br i1 %128, label %if.end6.i.i.if.end.i30.i.i_crit_edge, label %if.end.i.i.i

if.end6.i.i.if.end.i30.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i30.i.i

if.end.i.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef %sub7.i.i, ptr noundef %bat_iv8.i.i) #11
  br label %if.end.i30.i.i

if.end.i30.i.i:                                   ; preds = %if.end.i.i.i, %if.end6.i.i.if.end.i30.i.i_crit_edge
  %bcast_own_sum.i.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call3.i.i, i32 0, i32 7, i32 1
  %call4.i.i.i = call i32 @__bitmap_weight(ptr noundef %bat_iv8.i.i, i32 noundef 64) #11
  %conv15.i.i = trunc i32 %call4.i.i.i to i8
  %129 = ptrtoint ptr %bcast_own_sum.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv15.i.i, ptr %bcast_own_sum.i.i, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %bat_iv.i.i) #11
  %refcount.i.i.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call3.i.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #11
  %130 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %130, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.end.i30.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.batadv_iv_ogm_process_reply.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.i.i.batadv_iv_ogm_process_reply.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_process_reply.exit.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef 3) #11
  br label %batadv_iv_ogm_process_reply.exit.i

if.then.i.i.i.i:                                  ; preds = %if.end.i30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_orig_ifinfo_release(ptr noundef %refcount.i.i.i) #11
  br label %batadv_iv_ogm_process_reply.exit.i

batadv_iv_ogm_process_reply.exit.i:               ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.batadv_iv_ogm_process_reply.exit.i_crit_edge, %if.end2.i.i.batadv_iv_ogm_process_reply.exit.i_crit_edge, %if.end.i.i.batadv_iv_ogm_process_reply.exit.i_crit_edge, %if.end103.i.batadv_iv_ogm_process_reply.exit.i_crit_edge
  %call.i.i296.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %131 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %log_level.i, align 4
  %and108.i = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i = icmp eq i32 %and108.i, 0
  br i1 %tobool109.not.i, label %batadv_iv_ogm_process_reply.exit.i.if.end.i335.i_crit_edge, label %if.then110.i

batadv_iv_ogm_process_reply.exit.i.if.end.i335.i_crit_edge: ; preds = %batadv_iv_ogm_process_reply.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i335.i

if.then110.i:                                     ; preds = %batadv_iv_ogm_process_reply.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call111.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.4) #11
  br label %if.end.i335.i

if.end.i335.i:                                    ; preds = %if.then110.i, %batadv_iv_ogm_process_reply.exit.i.if.end.i335.i_crit_edge
  %refcount.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call100.i, i32 0, i32 27
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %133 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %133, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i335.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.batadv_iv_ogm_process.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.i.batadv_iv_ogm_process.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_process.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #11
  br label %batadv_iv_ogm_process.exit

if.then.i.i.i:                                    ; preds = %if.end.i335.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_orig_node_release(ptr noundef %refcount.i.i) #11
  br label %batadv_iv_ogm_process.exit

if.end115.i:                                      ; preds = %if.end95.i
  br i1 %is_my_oldorig.0.off0.lcssa.i, label %do.body118.i, label %if.end131.i

do.body118.i:                                     ; preds = %if.end115.i
  %call.i.i297.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %134 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %log_level.i, align 4
  %and122.i = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122.i)
  %tobool123.not.i = icmp eq i32 %and122.i, 0
  br i1 %tobool123.not.i, label %do.body118.i.batadv_iv_ogm_process.exit_crit_edge, label %if.then124.i

do.body118.i.batadv_iv_ogm_process.exit_crit_edge: ; preds = %do.body118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_process.exit

if.then124.i:                                     ; preds = %do.body118.i
  call void @__sanitizer_cov_trace_pc() #13
  %h_source125.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %call127.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.5, ptr noundef %h_source125.i) #11
  br label %batadv_iv_ogm_process.exit

if.end131.i:                                      ; preds = %if.end115.i
  %136 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %flags.i, align 1
  %138 = and i8 %137, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool135.not.i = icmp eq i8 %138, 0
  br i1 %tobool135.not.i, label %if.end150.i, label %do.body137.i

do.body137.i:                                     ; preds = %if.end131.i
  %call.i.i298.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %139 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %log_level.i, align 4
  %and141.i = and i32 %140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141.i)
  %tobool142.not.i = icmp eq i32 %and141.i, 0
  br i1 %tobool142.not.i, label %do.body137.i.batadv_iv_ogm_process.exit_crit_edge, label %if.then143.i

do.body137.i.batadv_iv_ogm_process.exit_crit_edge: ; preds = %do.body137.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_process.exit

if.then143.i:                                     ; preds = %do.body137.i
  call void @__sanitizer_cov_trace_pc() #13
  %h_source144.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %call146.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.6, ptr noundef %h_source144.i) #11
  br label %batadv_iv_ogm_process.exit

if.end150.i:                                      ; preds = %if.end131.i
  %orig151.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr.i42, i32 0, i32 5
  %call153.i = call fastcc ptr @batadv_iv_ogm_orig_get(ptr noundef %add.ptr.i.i, ptr noundef %orig151.i) #11
  %tobool154.not.i = icmp eq ptr %call153.i, null
  br i1 %tobool154.not.i, label %if.end150.i.batadv_iv_ogm_process.exit_crit_edge, label %if.end156.i

if.end150.i.batadv_iv_ogm_process.exit_crit_edge: ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_process.exit

if.end156.i:                                      ; preds = %if.end150.i
  call fastcc void @batadv_iv_ogm_process_per_outif(ptr noundef %skb, i32 noundef %ogm_offset.065, ptr noundef nonnull %call153.i, ptr noundef %if_incoming, ptr noundef null) #11
  %141 = call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i299.i = and i32 %141, -16384
  %142 = inttoptr i32 %and.i.i.i.i.i299.i to ptr
  %preempt_count.i.i.i.i300.i = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %preempt_count.i.i.i.i300.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %preempt_count.i.i.i.i300.i, align 4
  %add.i.i.i301.i = add i32 %144, 1
  store volatile i32 %add.i.i.i301.i, ptr %preempt_count.i.i.i.i300.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i302.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i302.i, label %if.end156.i.rcu_read_lock.exit309.i_crit_edge, label %land.lhs.true.i305.i

if.end156.i.rcu_read_lock.exit309.i_crit_edge:    ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit309.i

land.lhs.true.i305.i:                             ; preds = %if.end156.i
  %call1.i303.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i303.i)
  %tobool.not.i304.i = icmp eq i32 %call1.i303.i, 0
  br i1 %tobool.not.i304.i, label %land.lhs.true.i305.i.rcu_read_lock.exit309.i_crit_edge, label %land.lhs.true2.i307.i

land.lhs.true.i305.i.rcu_read_lock.exit309.i_crit_edge: ; preds = %land.lhs.true.i305.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit309.i

land.lhs.true2.i307.i:                            ; preds = %land.lhs.true.i305.i
  %.b4.i306.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i306.i, label %land.lhs.true2.i307.i.rcu_read_lock.exit309.i_crit_edge, label %if.then.i308.i

land.lhs.true2.i307.i.rcu_read_lock.exit309.i_crit_edge: ; preds = %land.lhs.true2.i307.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit309.i

if.then.i308.i:                                   ; preds = %land.lhs.true2.i307.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_lock.exit309.i

rcu_read_lock.exit309.i:                          ; preds = %if.then.i308.i, %land.lhs.true2.i307.i.rcu_read_lock.exit309.i_crit_edge, %land.lhs.true.i305.i.rcu_read_lock.exit309.i_crit_edge, %if.end156.i.rcu_read_lock.exit309.i_crit_edge
  %call158.i = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158.i)
  %tobool159.not.i = icmp eq i32 %call158.i, 0
  br i1 %tobool159.not.i, label %land.lhs.true160.i, label %rcu_read_lock.exit309.i.do.end168.i_crit_edge

rcu_read_lock.exit309.i.do.end168.i_crit_edge:    ; preds = %rcu_read_lock.exit309.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end168.i

land.lhs.true160.i:                               ; preds = %rcu_read_lock.exit309.i
  %call161.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.i)
  %tobool162.not.i = icmp eq i32 %call161.i, 0
  br i1 %tobool162.not.i, label %land.lhs.true160.i.do.end168.i_crit_edge, label %land.lhs.true163.i

land.lhs.true160.i.do.end168.i_crit_edge:         ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end168.i

land.lhs.true163.i:                               ; preds = %land.lhs.true160.i
  %.b277291.i = load i1, ptr @batadv_iv_ogm_process.__warned.7, align 1
  br i1 %.b277291.i, label %land.lhs.true163.i.do.end168.i_crit_edge, label %if.then165.i

land.lhs.true163.i.do.end168.i_crit_edge:         ; preds = %land.lhs.true163.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end168.i

if.then165.i:                                     ; preds = %land.lhs.true163.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_iv_ogm_process.__warned.7, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1664, ptr noundef nonnull @.str.2) #11
  br label %do.end168.i

do.end168.i:                                      ; preds = %if.then165.i, %land.lhs.true163.i.do.end168.i_crit_edge, %land.lhs.true160.i.do.end168.i_crit_edge, %rcu_read_lock.exit309.i.do.end168.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.1355.i = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp178.not356.i = icmp eq ptr %hard_iface.1355.i, @batadv_hardif_list
  br i1 %cmp178.not356.i, label %do.end168.i.for.end207.i_crit_edge, label %for.body180.lr.ph.i

do.end168.i.for.end207.i_crit_edge:               ; preds = %do.end168.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end207.i

for.body180.lr.ph.i:                              ; preds = %do.end168.i
  %soft_iface188.i = getelementptr i8, ptr %45, i32 2308
  br label %for.body180.i

for.body180.i:                                    ; preds = %for.inc197.i.for.body180.i_crit_edge, %for.body180.lr.ph.i
  %hard_iface.1357.i = phi ptr [ %hard_iface.1355.i, %for.body180.lr.ph.i ], [ %hard_iface.1.i, %for.inc197.i.for.body180.i_crit_edge ]
  %if_status181.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.1357.i, i32 0, i32 1
  %145 = ptrtoint ptr %if_status181.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %if_status181.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %146)
  %cmp183.not.i = icmp eq i8 %146, 3
  br i1 %cmp183.not.i, label %if.end186.i, label %for.body180.i.for.inc197.i_crit_edge

for.body180.i.for.inc197.i_crit_edge:             ; preds = %for.body180.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc197.i

if.end186.i:                                      ; preds = %for.body180.i
  %soft_iface187.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.1357.i, i32 0, i32 7
  %147 = ptrtoint ptr %soft_iface187.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %soft_iface187.i, align 4
  %149 = ptrtoint ptr %soft_iface188.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %soft_iface188.i, align 4
  %cmp189.not.i = icmp eq ptr %148, %150
  br i1 %cmp189.not.i, label %if.end192.i, label %if.end186.i.for.inc197.i_crit_edge

if.end186.i.for.inc197.i_crit_edge:               ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc197.i

if.end192.i:                                      ; preds = %if.end186.i
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.1357.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #11
  %call.i.i.i.i.i.i.i336.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #11
  %151 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end192.i
  %153 = phi i32 [ %152, %if.end192.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %154 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool.not.i.i.i.i.i = icmp eq i32 %153, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %153, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #11
  %155 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %157 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %156, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i) #11, !srcloc !138
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %157, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %157, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %156
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !136

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %158 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %159, 1
  %160 = or i32 %add5.i.i.i.i.i, %159
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %160)
  %.not.i.i.i.i.i = icmp sgt i32 %160, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !136

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #11
  %161 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %162 = phi i32 [ %159, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %162, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #11
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.for.inc197.i_crit_edge, label %if.end196.i

kref_get_unless_zero.exit.i.for.inc197.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc197.i

if.end196.i:                                      ; preds = %kref_get_unless_zero.exit.i
  call fastcc void @batadv_iv_ogm_process_per_outif(ptr noundef %skb, i32 noundef %ogm_offset.065, ptr noundef nonnull %call153.i, ptr noundef %if_incoming, ptr noundef %hard_iface.1357.i) #11
  %tobool.not.i337.i = icmp eq ptr %hard_iface.1357.i, null
  br i1 %tobool.not.i337.i, label %if.end196.i.for.inc197.i_crit_edge, label %if.end.i342.i

if.end196.i.for.inc197.i_crit_edge:               ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc197.i

if.end.i342.i:                                    ; preds = %if.end196.i
  %call.i.i.i.i.i.i.i339.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %163 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i340.i = extractvalue { i32, i32, i32 } %163, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i340.i)
  %cmp.i.i.i.i.i341.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i340.i, 1
  br i1 %cmp.i.i.i.i.i341.i, label %if.then.i.i346.i, label %if.end5.i.i.i.i.i344.i

if.end5.i.i.i.i.i344.i:                           ; preds = %if.end.i342.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i340.i)
  %.not.i.i.i.i.i343.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i340.i, 0
  br i1 %.not.i.i.i.i.i343.i, label %if.end5.i.i.i.i.i344.i.for.inc197.i_crit_edge, label %if.then10.i.i.i.i.i345.i, !prof !136

if.end5.i.i.i.i.i344.i.for.inc197.i_crit_edge:    ; preds = %if.end5.i.i.i.i.i344.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc197.i

if.then10.i.i.i.i.i345.i:                         ; preds = %if.end5.i.i.i.i.i344.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %for.inc197.i

if.then.i.i346.i:                                 ; preds = %if.end.i342.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_hardif_release(ptr noundef %refcount.i) #11
  br label %for.inc197.i

for.inc197.i:                                     ; preds = %if.then.i.i346.i, %if.then10.i.i.i.i.i345.i, %if.end5.i.i.i.i.i344.i.for.inc197.i_crit_edge, %if.end196.i.for.inc197.i_crit_edge, %kref_get_unless_zero.exit.i.for.inc197.i_crit_edge, %if.end186.i.for.inc197.i_crit_edge, %for.body180.i.for.inc197.i_crit_edge
  %164 = ptrtoint ptr %hard_iface.1357.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %hard_iface.1.i = load volatile ptr, ptr %hard_iface.1357.i, align 4
  %cmp178.not.i = icmp eq ptr %hard_iface.1.i, @batadv_hardif_list
  br i1 %cmp178.not.i, label %for.inc197.i.for.end207.i_crit_edge, label %for.inc197.i.for.body180.i_crit_edge

for.inc197.i.for.body180.i_crit_edge:             ; preds = %for.inc197.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body180.i

for.inc197.i.for.end207.i_crit_edge:              ; preds = %for.inc197.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end207.i

for.end207.i:                                     ; preds = %for.inc197.i.for.end207.i_crit_edge, %do.end168.i.for.end207.i_crit_edge
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %for.end207.i.if.end.i50_crit_edge, label %land.lhs.true.i55

for.end207.i.if.end.i50_crit_edge:                ; preds = %for.end207.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i50

land.lhs.true.i55:                                ; preds = %for.end207.i
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i54 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i55.if.end.i50_crit_edge, label %land.lhs.true2.i

land.lhs.true.i55.if.end.i50_crit_edge:           ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i50

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i55
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.if.end.i50_crit_edge, label %if.then.i56

land.lhs.true2.i.if.end.i50_crit_edge:            ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i50

if.then.i56:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #11
  br label %if.end.i50

if.end.i50:                                       ; preds = %if.then.i56, %land.lhs.true2.i.if.end.i50_crit_edge, %land.lhs.true.i55.if.end.i50_crit_edge, %for.end207.i.if.end.i50_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %165 = call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i = and i32 %165, -16384
  %166 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %168, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %refcount.i46 = getelementptr inbounds %struct.batadv_orig_node, ptr %call153.i, i32 0, i32 27
  %call.i.i.i.i.i.i.i47 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i46, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i46, i32 1, i32 3, i32 1) #11
  %169 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i46, ptr %refcount.i46, i32 1, ptr elementtype(i32) %refcount.i46) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i48 = extractvalue { i32, i32, i32 } %169, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i48)
  %cmp.i.i.i.i.i49 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i48, 1
  br i1 %cmp.i.i.i.i.i49, label %if.then.i.i53, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i48)
  %.not.i.i.i.i.i51 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i48, 0
  br i1 %.not.i.i.i.i.i51, label %if.end5.i.i.i.i.i.batadv_iv_ogm_process.exit_crit_edge, label %if.then10.i.i.i.i.i52, !prof !136

if.end5.i.i.i.i.i.batadv_iv_ogm_process.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_process.exit

if.then10.i.i.i.i.i52:                            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i46, i32 noundef 3) #11
  br label %batadv_iv_ogm_process.exit

if.then.i.i53:                                    ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_orig_node_release(ptr noundef %refcount.i46) #11
  br label %batadv_iv_ogm_process.exit

batadv_iv_ogm_process.exit:                       ; preds = %if.then.i.i53, %if.then10.i.i.i.i.i52, %if.end5.i.i.i.i.i.batadv_iv_ogm_process.exit_crit_edge, %if.end150.i.batadv_iv_ogm_process.exit_crit_edge, %if.then143.i, %do.body137.i.batadv_iv_ogm_process.exit_crit_edge, %if.then124.i, %do.body118.i.batadv_iv_ogm_process.exit_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.batadv_iv_ogm_process.exit_crit_edge, %if.then97.i.batadv_iv_ogm_process.exit_crit_edge, %if.then88.i, %do.body82.i.batadv_iv_ogm_process.exit_crit_edge, %while.body.batadv_iv_ogm_process.exit_crit_edge
  %170 = ptrtoint ptr %tvlv_len.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %tvlv_len.i, align 2
  %conv = zext i16 %171 to i32
  %add7 = add i32 %add.i4167, %conv
  %172 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %173, i32 %add7
  %174 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %len, align 4
  %176 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %175, %177
  %add.i41 = add i32 %add7, 24
  %cmp.i = icmp sgt i32 %add.i41, %sub.i
  br i1 %cmp.i, label %batadv_iv_ogm_process.exit.if.then11_crit_edge, label %batadv_iv_ogm_process.exit.batadv_iv_ogm_aggr_packet.exit_crit_edge

batadv_iv_ogm_process.exit.batadv_iv_ogm_aggr_packet.exit_crit_edge: ; preds = %batadv_iv_ogm_process.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_aggr_packet.exit

batadv_iv_ogm_process.exit.if.then11_crit_edge:   ; preds = %batadv_iv_ogm_process.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

if.then11:                                        ; preds = %batadv_iv_ogm_process.exit.if.then11_crit_edge, %batadv_iv_ogm_aggr_packet.exit.if.then11_crit_edge, %batadv_add_counter.exit40.if.then11_crit_edge
  call void @consume_skb(ptr noundef %skb) #11
  br label %if.end12

if.else:                                          ; preds = %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %ret.060 = phi i32 [ 1, %if.else ], [ 0, %if.then11 ]
  ret i32 %ret.060
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_algo_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_recv_handler_unregister(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_check_management_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_iv_ogm_iface_enable(ptr noundef %hard_iface) #3 align 64 {
entry:
  %random_seqno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %random_seqno) #11
  %0 = ptrtoint ptr %random_seqno to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %random_seqno, align 4, !annotation !139
  %ogm_buff_mutex = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 10, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ogm_buff_mutex, i32 noundef 0) #11
  call void @get_random_bytes(ptr noundef nonnull %random_seqno, i32 noundef 4) #11
  %ogm_seqno = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 10, i32 2
  %1 = ptrtoint ptr %random_seqno to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %random_seqno, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ogm_seqno, i32 noundef 4) #11
  %3 = ptrtoint ptr %ogm_seqno to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %2, ptr %ogm_seqno, align 4
  %ogm_buff_len = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %ogm_buff_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 24, ptr %ogm_buff_len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2592, i32 noundef 24) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bat_iv = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 10
  %6 = ptrtoint ptr %bat_iv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %bat_iv, align 4
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %call7.i, align 8
  %version = getelementptr inbounds %struct.batadv_ogm_packet, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 15, ptr %version, align 1
  %ttl = getelementptr inbounds %struct.batadv_ogm_packet, ptr %call7.i, i32 0, i32 2
  %9 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %ttl, align 2
  %flags = getelementptr inbounds %struct.batadv_ogm_packet, ptr %call7.i, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %flags, align 1
  %reserved = getelementptr inbounds %struct.batadv_ogm_packet, ptr %call7.i, i32 0, i32 7
  %11 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %reserved, align 4
  %tq = getelementptr inbounds %struct.batadv_ogm_packet, ptr %call7.i, i32 0, i32 8
  %12 = ptrtoint ptr %tq to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %tq, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %ogm_buff_mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %random_seqno) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_iv_ogm_orig_get(ptr noundef %bat_priv, ptr noundef %addr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @batadv_orig_hash_find(ptr noundef %bat_priv, ptr noundef %addr) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @batadv_orig_node_new(ptr noundef %bat_priv, ptr noundef %addr) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  %bat_iv = getelementptr inbounds %struct.batadv_orig_node, ptr %call1, i32 0, i32 36
  tail call void @__raw_spin_lock_init(ptr noundef %bat_iv, ptr noundef nonnull @.str.11, ptr noundef nonnull @batadv_iv_ogm_orig_get.__key, i16 noundef signext 3) #11
  %refcount = getelementptr inbounds %struct.batadv_orig_node, ptr %call1, i32 0, i32 27
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !140
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.body.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !130

do.body.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.body
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !136

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.body.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.body.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %orig_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 23
  %2 = ptrtoint ptr %orig_hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig_hash, align 4
  %hash_entry = getelementptr inbounds %struct.batadv_orig_node, ptr %call1, i32 0, i32 24
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %kref_get.exit.if.end.i23_crit_edge, label %if.end.i

kref_get.exit.if.end.i23_crit_edge:               ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i23

if.end.i:                                         ; preds = %kref_get.exit
  %size.i = getelementptr inbounds %struct.batadv_hashtable, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %arrayidx58.i.i.i = getelementptr i8, ptr %call1, i32 5
  %6 = ptrtoint ptr %arrayidx58.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx58.i.i.i, align 1
  %conv59.i.i.i = zext i8 %7 to i32
  %shl60.i.i.i = shl nuw nsw i32 %conv59.i.i.i, 8
  %add61.i.i.i = add nuw nsw i32 %shl60.i.i.i, -559038731
  %arrayidx63.i.i.i = getelementptr i8, ptr %call1, i32 4
  %8 = ptrtoint ptr %arrayidx63.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx63.i.i.i, align 1
  %conv64.i.i.i = zext i8 %9 to i32
  %add65.i.i.i = add nuw nsw i32 %add61.i.i.i, %conv64.i.i.i
  %arrayidx67.i.i.i = getelementptr i8, ptr %call1, i32 3
  %10 = ptrtoint ptr %arrayidx67.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx67.i.i.i, align 1
  %conv68.i.i.i = zext i8 %11 to i32
  %shl69.i.i.i = shl nuw i32 %conv68.i.i.i, 24
  %add70.i.i.i = add i32 %shl69.i.i.i, -559038731
  %arrayidx72.i.i.i = getelementptr i8, ptr %call1, i32 2
  %12 = ptrtoint ptr %arrayidx72.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx72.i.i.i, align 1
  %conv73.i.i.i = zext i8 %13 to i32
  %shl74.i.i.i = shl nuw nsw i32 %conv73.i.i.i, 16
  %add75.i.i.i = add i32 %add70.i.i.i, %shl74.i.i.i
  %arrayidx77.i.i.i = getelementptr i8, ptr %call1, i32 1
  %14 = ptrtoint ptr %arrayidx77.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx77.i.i.i, align 1
  %conv78.i.i.i = zext i8 %15 to i32
  %shl79.i.i.i = shl nuw nsw i32 %conv78.i.i.i, 8
  %add80.i.i.i = add i32 %add75.i.i.i, %shl79.i.i.i
  %16 = ptrtoint ptr %call1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call1, align 1
  %conv83.i.i.i = zext i8 %17 to i32
  %add84.i.i.i = add i32 %add80.i.i.i, %conv83.i.i.i
  %xor85.i.i.i = xor i32 %add65.i.i.i, -559038731
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i.i, i32 %add65.i.i.i, i32 14) #11
  %sub87.i.i.i = sub i32 %xor85.i.i.i, %or.i.i.i.i
  %xor88.i.i.i = xor i32 %add84.i.i.i, %sub87.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i.i, i32 %sub87.i.i.i, i32 11) #11
  %sub90.i.i.i = sub i32 %xor88.i.i.i, %or.i1.i.i.i
  %xor91.i.i.i = xor i32 %sub90.i.i.i, %add65.i.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i.i, i32 %sub90.i.i.i, i32 25) #11
  %sub93.i.i.i = sub i32 %xor91.i.i.i, %or.i2.i.i.i
  %xor94.i.i.i = xor i32 %sub93.i.i.i, %sub87.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i.i, i32 %sub93.i.i.i, i32 16) #11
  %sub96.i.i.i = sub i32 %xor94.i.i.i, %or.i3.i.i.i
  %xor97.i.i.i = xor i32 %sub96.i.i.i, %sub90.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i.i, i32 %sub96.i.i.i, i32 4) #11
  %sub99.i.i.i = sub i32 %xor97.i.i.i, %or.i4.i.i.i
  %xor100.i.i.i = xor i32 %sub99.i.i.i, %sub93.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i.i, i32 %sub99.i.i.i, i32 14) #11
  %sub102.i.i.i = sub i32 %xor100.i.i.i, %or.i5.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i.i, i32 %sub102.i.i.i, i32 24) #11
  %xor103.i.i.i = xor i32 %sub102.i.i.i, %sub96.i.i.i
  %sub105.i.i.i = sub i32 %xor103.i.i.i, %or.i6.i.i.i
  %rem.i.i = urem i32 %sub105.i.i.i, %5
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %19, i32 %rem.i.i
  %list_locks.i = getelementptr inbounds %struct.batadv_hashtable, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %list_locks.i, align 4
  %arrayidx1.i = getelementptr %struct.spinlock, ptr %21, i32 %rem.i.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx1.i) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %node.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %22 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %node.0.i = load ptr, ptr %node.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %call3.i = tail call zeroext i1 @batadv_compare_orig(ptr noundef nonnull %node.0.i, ptr noundef nonnull %call1) #11
  br i1 %call3.i, label %batadv_hash_add.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %25 = ptrtoint ptr %hash_entry to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %hash_entry, align 4
  %pprev.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call1, i32 0, i32 24, i32 1
  %26 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !141
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %hash_entry, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %for.end.i.batadv_hash_add.exit.thread37_crit_edge, label %do.body49.i.i

for.end.i.batadv_hash_add.exit.thread37_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hash_add.exit.thread37

do.body49.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %hash_entry, ptr %pprev51.i.i, align 4
  br label %batadv_hash_add.exit.thread37

batadv_hash_add.exit.thread37:                    ; preds = %do.body49.i.i, %for.end.i.batadv_hash_add.exit.thread37_crit_edge
  %generation.i = getelementptr inbounds %struct.batadv_hashtable, ptr %3, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %generation.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %generation.i, i32 1, i32 3, i32 1) #11
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %generation.i, ptr %generation.i, i32 1, ptr elementtype(i32) %generation.i) #11, !srcloc !142
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1.i) #11
  br label %cleanup

batadv_hash_add.exit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1.i) #11
  br label %if.end.i23

if.end.i23:                                       ; preds = %batadv_hash_add.exit, %kref_get.exit.if.end.i23_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end.i29_crit_edge, label %if.then10.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.if.end.i29_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i29

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %if.end.i29

if.then.i.i:                                      ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @batadv_orig_node_release(ptr noundef %refcount) #11
  br label %if.end.i29

if.end.i29:                                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end.i29_crit_edge
  %call.i.i.i.i.i.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i27 = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i27)
  %cmp.i.i.i.i.i28 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i27, 1
  br i1 %cmp.i.i.i.i.i28, label %if.then.i.i33, label %if.end5.i.i.i.i.i31

if.end5.i.i.i.i.i31:                              ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i27)
  %.not.i.i.i.i.i30 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i27, 0
  br i1 %.not.i.i.i.i.i30, label %if.end5.i.i.i.i.i31.cleanup_crit_edge, label %if.then10.i.i.i.i.i32, !prof !136

if.end5.i.i.i.i.i31.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i32:                            ; preds = %if.end5.i.i.i.i.i31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %cleanup

if.then.i.i33:                                    ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @batadv_orig_node_release(ptr noundef %refcount) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i33, %if.then10.i.i.i.i.i32, %if.end5.i.i.i.i.i31.cleanup_crit_edge, %batadv_hash_add.exit.thread37, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call1, %batadv_hash_add.exit.thread37 ], [ null, %if.end5.i.i.i.i.i31.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i.i32 ], [ null, %if.then.i.i33 ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_orig_node_put(ptr noundef %orig_node) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tobool.not = icmp eq ptr %orig_node, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 27
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !136

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @batadv_orig_node_release(ptr noundef %refcount) #11
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_iv_ogm_process_per_outif(ptr noundef %skb, i32 noundef %ogm_offset, ptr noundef %orig_node, ptr noundef %if_incoming, ptr noundef %if_outgoing) unnamed_addr #3 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_incoming, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call1 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %ogm_offset
  %8 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i.i377 = getelementptr i8, ptr %9, i32 2304
  %seqno1.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr, i32 0, i32 4
  %10 = ptrtoint ptr %seqno1.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %seqno1.i, align 2
  %orig.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr, i32 0, i32 5
  %call2.i = tail call fastcc ptr @batadv_iv_ogm_orig_get(ptr noundef %add.ptr.i.i377, ptr noundef %orig.i) #11
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.batadv_iv_ogm_update_seqnos.exit_crit_edge, label %if.end.i

if.end.batadv_iv_ogm_update_seqnos.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_update_seqnos.exit

if.end.i:                                         ; preds = %if.end
  %call3.i = tail call ptr @batadv_orig_ifinfo_new(ptr noundef nonnull %call2.i, ptr noundef %if_outgoing) #11
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %do.end.i, label %if.end29.i, !prof !130

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1231, i32 noundef 9, ptr noundef null) #11
  tail call fastcc void @batadv_orig_node_put(ptr noundef nonnull %call2.i) #11
  br label %batadv_iv_ogm_update_seqnos.exit

if.end29.i:                                       ; preds = %if.end.i
  %bat_iv.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call2.i, i32 0, i32 36
  tail call void @_raw_spin_lock_bh(ptr noundef %bat_iv.i) #11
  %last_real_seqno.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call3.i, i32 0, i32 3
  %12 = ptrtoint ptr %last_real_seqno.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_real_seqno.i, align 4
  %sub.i = sub i32 %11, %13
  %neigh_list.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call2.i, i32 0, i32 22
  %14 = ptrtoint ptr %neigh_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %neigh_list.i, align 4
  %tobool.not.i188.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i188.not.i, label %if.end29.i.if.end34.i_crit_edge, label %land.lhs.true.i

if.end29.i.if.end34.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

land.lhs.true.i:                                  ; preds = %if.end29.i
  %batman_seqno_reset.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call3.i, i32 0, i32 6
  %call32.i = tail call zeroext i1 @batadv_window_protected(ptr noundef %add.ptr.i.i377, i32 noundef %sub.i, i32 noundef 64, ptr noundef %batman_seqno_reset.i, ptr noundef null) #11
  br i1 %call32.i, label %land.lhs.true.i.if.end.i205.i_crit_edge, label %land.lhs.true.i.if.end34.i_crit_edge

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

land.lhs.true.i.if.end.i205.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i205.i

if.end34.i:                                       ; preds = %land.lhs.true.i.if.end34.i_crit_edge, %if.end29.i.if.end34.i_crit_edge
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i378 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i378, label %if.end34.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end34.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end34.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end34.i.rcu_read_lock.exit.i_crit_edge
  %call36.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %land.lhs.true38.i, label %rcu_read_lock.exit.i.do.end46.i_crit_edge

rcu_read_lock.exit.i.do.end46.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end46.i

land.lhs.true38.i:                                ; preds = %rcu_read_lock.exit.i
  %call39.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %land.lhs.true38.i.do.end46.i_crit_edge, label %land.lhs.true41.i

land.lhs.true38.i.do.end46.i_crit_edge:           ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end46.i

land.lhs.true41.i:                                ; preds = %land.lhs.true38.i
  %.b185.i = load i1, ptr @batadv_iv_ogm_update_seqnos.__warned, align 1
  br i1 %.b185.i, label %land.lhs.true41.i.do.end46.i_crit_edge, label %if.then43.i

land.lhs.true41.i.do.end46.i_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end46.i

if.then43.i:                                      ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_iv_ogm_update_seqnos.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1249, ptr noundef nonnull @.str.2) #11
  br label %do.end46.i

do.end46.i:                                       ; preds = %if.then43.i, %land.lhs.true41.i.do.end46.i_crit_edge, %land.lhs.true38.i.do.end46.i_crit_edge, %rcu_read_lock.exit.i.do.end46.i_crit_edge
  %20 = ptrtoint ptr %neigh_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %neigh_node.0220.i = load volatile ptr, ptr %neigh_list.i, align 4
  %tobool56.not221.i = icmp eq ptr %neigh_node.0220.i, null
  br i1 %tobool56.not221.i, label %do.end46.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.end46.i.for.end.i_crit_edge:                   ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end46.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %add.ptr1.i.i.i.i = getelementptr %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %neigh_node.0224.i = phi ptr [ %neigh_node.0220.i, %for.body.lr.ph.i ], [ %neigh_node.0.i, %for.inc.i.for.body.i_crit_edge ]
  %need_update.0.off0223.i = phi i1 [ false, %for.body.lr.ph.i ], [ %need_update.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %ret.0222.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ret.2.i, %for.inc.i.for.body.i_crit_edge ]
  %call57.i = tail call ptr @batadv_neigh_ifinfo_new(ptr noundef nonnull %neigh_node.0224.i, ptr noundef %if_outgoing) #11
  %tobool58.not.i = icmp eq ptr %call57.i, null
  br i1 %tobool58.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end60.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end60.i:                                       ; preds = %for.body.i
  %addr.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.0224.i, i32 0, i32 2
  %real_bits.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call57.i, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %last_real_seqno.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_real_seqno.i, align 4
  %sub.i.i = sub i32 %22, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i.i)
  %23 = icmp ugt i32 %sub.i.i, 63
  br i1 %23, label %if.end60.i.batadv_test_bit.exit.i_crit_edge, label %if.end.i.i

if.end60.i.batadv_test_bit.exit.i_crit_edge:      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_test_bit.exit.i

if.end.i.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  %div3.i.i.i = lshr i32 %sub.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %real_bits.i, i32 %div3.i.i.i
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %sub.i.i, 31
  %26 = shl nuw i32 1, %and.i.i.i
  %27 = and i32 %25, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp2.i.i = icmp ne i32 %27, 0
  br label %batadv_test_bit.exit.i

batadv_test_bit.exit.i:                           ; preds = %if.end.i.i, %if.end60.i.batadv_test_bit.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp2.i.i, %if.end.i.i ], [ false, %if.end60.i.batadv_test_bit.exit.i_crit_edge ]
  %28 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i, align 4
  %30 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %h_source.i, align 4
  %xor.i.i.i.i = xor i32 %31, %29
  %add.ptr.i.i.i.i = getelementptr %struct.batadv_neigh_node, ptr %neigh_node.0224.i, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %34 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr1.i.i.i.i, align 2
  %xor37.i.i.i.i = xor i16 %35, %33
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %land.lhs.true68.i, label %batadv_test_bit.exit.i.if.else.i_crit_edge

batadv_test_bit.exit.i.if.else.i_crit_edge:       ; preds = %batadv_test_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true68.i:                                ; preds = %batadv_test_bit.exit.i
  %if_incoming69.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.0224.i, i32 0, i32 5
  %36 = ptrtoint ptr %if_incoming69.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %if_incoming69.i, align 4
  %cmp.i = icmp eq ptr %37, %if_incoming
  br i1 %cmp.i, label %if.then70.i, label %land.lhs.true68.i.if.else.i_crit_edge

land.lhs.true68.i.if.else.i_crit_edge:            ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then70.i:                                      ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select186.i = select i1 %retval.0.i.i, i32 2, i32 %ret.0222.i
  br label %if.end.i190.i

if.else.i:                                        ; preds = %land.lhs.true68.i.if.else.i_crit_edge, %batadv_test_bit.exit.i.if.else.i_crit_edge
  br i1 %retval.0.i.i, label %land.lhs.true75.i, label %if.else.i.if.end.i190.i_crit_edge

if.else.i.if.end.i190.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i190.i

land.lhs.true75.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0222.i)
  %cmp76.not.i = icmp eq i32 %ret.0222.i, 2
  %spec.store.select.i = select i1 %cmp76.not.i, i32 2, i32 1
  br label %if.end.i190.i

if.end.i190.i:                                    ; preds = %land.lhs.true75.i, %if.else.i.if.end.i190.i_crit_edge, %if.then70.i
  %ret.1.i = phi i32 [ %spec.store.select.i, %land.lhs.true75.i ], [ %ret.0222.i, %if.else.i.if.end.i190.i_crit_edge ], [ %spec.select186.i, %if.then70.i ]
  %set_mark.0.i = phi i32 [ 0, %land.lhs.true75.i ], [ 0, %if.else.i.if.end.i190.i_crit_edge ], [ 1, %if.then70.i ]
  %call83.i = tail call zeroext i1 @batadv_bit_get_packet(ptr noundef %add.ptr.i.i377, ptr noundef %real_bits.i, i32 noundef %sub.i, i32 noundef %set_mark.0.i) #11
  %or184.i = or i1 %need_update.0.off0223.i, %call83.i
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %real_bits.i, i32 noundef 64) #11
  %conv89.i = trunc i32 %call4.i.i to i8
  %real_packet_count.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call57.i, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %real_packet_count.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv89.i, ptr %real_packet_count.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call57.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i190.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.for.inc.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.i.for.inc.i_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #11
  br label %for.inc.i

if.then.i.i.i:                                    ; preds = %if.end.i190.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %ret.2.i = phi i32 [ %ret.0222.i, %for.body.i.for.inc.i_crit_edge ], [ %ret.1.i, %if.end5.i.i.i.i.i.i.for.inc.i_crit_edge ], [ %ret.1.i, %if.then10.i.i.i.i.i.i ], [ %ret.1.i, %if.then.i.i.i ]
  %need_update.1.off0.i = phi i1 [ %need_update.0.off0223.i, %for.body.i.for.inc.i_crit_edge ], [ %or184.i, %if.end5.i.i.i.i.i.i.for.inc.i_crit_edge ], [ %or184.i, %if.then10.i.i.i.i.i.i ], [ %or184.i, %if.then.i.i.i ]
  %40 = ptrtoint ptr %neigh_node.0224.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %neigh_node.0.i = load volatile ptr, ptr %neigh_node.0224.i, align 4
  %tobool56.not.i = icmp eq ptr %neigh_node.0.i, null
  br i1 %tobool56.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end46.i.for.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %do.end46.i.for.end.i_crit_edge ], [ %ret.2.i, %for.inc.i.for.end.i_crit_edge ]
  %need_update.0.off0.lcssa.i = phi i1 [ false, %do.end46.i.for.end.i_crit_edge ], [ %need_update.1.off0.i, %for.inc.i.for.end.i_crit_edge ]
  %call.i191.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i191.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i194.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i194.i:                             ; preds = %for.end.i
  %call1.i192.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i192.i)
  %tobool.not.i193.i = icmp eq i32 %call1.i192.i, 0
  br i1 %tobool.not.i193.i, label %land.lhs.true.i194.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i196.i

land.lhs.true.i194.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i194.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i196.i:                            ; preds = %land.lhs.true.i194.i
  %.b4.i195.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i195.i, label %land.lhs.true2.i196.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i197.i

land.lhs.true2.i196.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i196.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i197.i:                                   ; preds = %land.lhs.true2.i196.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i197.i, %land.lhs.true2.i196.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i194.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %41 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i198.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i198.i to ptr
  %preempt_count.i.i.i.i199.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i199.i, align 4
  %sub.i.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i199.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br i1 %need_update.0.off0.lcssa.i, label %do.body108.i, label %rcu_read_unlock.exit.i.if.end.i205.i_crit_edge

rcu_read_unlock.exit.i.if.end.i205.i_crit_edge:   ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i205.i

do.body108.i:                                     ; preds = %rcu_read_unlock.exit.i
  %log_level.i = getelementptr i8, ptr %9, i32 2360
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %45 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool110.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool110.not.i, label %do.body108.i.if.end120.i_crit_edge, label %if.then111.i

do.body108.i.if.end120.i_crit_edge:               ; preds = %do.body108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120.i

if.then111.i:                                     ; preds = %do.body108.i
  %tobool112.not.i = icmp eq ptr %if_outgoing, null
  br i1 %tobool112.not.i, label %if.then111.i.cond.end116.i_crit_edge, label %cond.true113.i

if.then111.i.cond.end116.i_crit_edge:             ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end116.i

cond.true113.i:                                   ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_outgoing, i32 0, i32 4
  %47 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net_dev.i, align 4
  br label %cond.end116.i

cond.end116.i:                                    ; preds = %cond.true113.i, %if.then111.i.cond.end116.i_crit_edge
  %cond117.i = phi ptr [ %48, %cond.true113.i ], [ @.str.22, %if.then111.i.cond.end116.i_crit_edge ]
  %49 = ptrtoint ptr %last_real_seqno.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %last_real_seqno.i, align 4
  %call119.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i377, ptr noundef nonnull @.str.21, ptr noundef %cond117.i, i32 noundef %50, i32 noundef %11) #11
  br label %if.end120.i

if.end120.i:                                      ; preds = %cond.end116.i, %do.body108.i.if.end120.i_crit_edge
  %51 = ptrtoint ptr %last_real_seqno.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %11, ptr %last_real_seqno.i, align 4
  br label %if.end.i205.i

if.end.i205.i:                                    ; preds = %if.end120.i, %rcu_read_unlock.exit.i.if.end.i205.i_crit_edge, %land.lhs.true.i.if.end.i205.i_crit_edge
  %ret.3.i = phi i32 [ %ret.0.lcssa.i, %if.end120.i ], [ %ret.0.lcssa.i, %rcu_read_unlock.exit.i.if.end.i205.i_crit_edge ], [ 3, %land.lhs.true.i.if.end.i205.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %bat_iv.i) #11
  %refcount.i201.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call2.i, i32 0, i32 27
  %call.i.i.i.i.i.i.i202.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i201.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcount.i201.i, i32 1, i32 3, i32 1) #11
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i201.i, ptr %refcount.i201.i, i32 1, ptr elementtype(i32) %refcount.i201.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i203.i = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i203.i)
  %cmp.i.i.i.i.i204.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i203.i, 1
  br i1 %cmp.i.i.i.i.i204.i, label %if.then.i.i209.i, label %if.end5.i.i.i.i.i207.i

if.end5.i.i.i.i.i207.i:                           ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i203.i)
  %.not.i.i.i.i.i206.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i203.i, 0
  br i1 %.not.i.i.i.i.i206.i, label %if.end5.i.i.i.i.i207.i.if.end.i215.i_crit_edge, label %if.then10.i.i.i.i.i208.i, !prof !136

if.end5.i.i.i.i.i207.i.if.end.i215.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i207.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i215.i

if.then10.i.i.i.i.i208.i:                         ; preds = %if.end5.i.i.i.i.i207.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i201.i, i32 noundef 3) #11
  br label %if.end.i215.i

if.then.i.i209.i:                                 ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i201.i) #11
  br label %if.end.i215.i

if.end.i215.i:                                    ; preds = %if.then.i.i209.i, %if.then10.i.i.i.i.i208.i, %if.end5.i.i.i.i.i207.i.if.end.i215.i_crit_edge
  %refcount.i211.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call3.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i212.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i211.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcount.i211.i, i32 1, i32 3, i32 1) #11
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i211.i, ptr %refcount.i211.i, i32 1, ptr elementtype(i32) %refcount.i211.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i213.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i213.i)
  %cmp.i.i.i.i.i214.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i213.i, 1
  br i1 %cmp.i.i.i.i.i214.i, label %if.then.i.i219.i, label %if.end5.i.i.i.i.i217.i

if.end5.i.i.i.i.i217.i:                           ; preds = %if.end.i215.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i213.i)
  %.not.i.i.i.i.i216.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i213.i, 0
  br i1 %.not.i.i.i.i.i216.i, label %if.end5.i.i.i.i.i217.i.batadv_iv_ogm_update_seqnos.exit_crit_edge, label %if.then10.i.i.i.i.i218.i, !prof !136

if.end5.i.i.i.i.i217.i.batadv_iv_ogm_update_seqnos.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i217.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_update_seqnos.exit

if.then10.i.i.i.i.i218.i:                         ; preds = %if.end5.i.i.i.i.i217.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i211.i, i32 noundef 3) #11
  br label %batadv_iv_ogm_update_seqnos.exit

if.then.i.i219.i:                                 ; preds = %if.end.i215.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @batadv_orig_ifinfo_release(ptr noundef %refcount.i211.i) #11
  br label %batadv_iv_ogm_update_seqnos.exit

batadv_iv_ogm_update_seqnos.exit:                 ; preds = %if.then.i.i219.i, %if.then10.i.i.i.i.i218.i, %if.end5.i.i.i.i.i217.i.batadv_iv_ogm_update_seqnos.exit_crit_edge, %do.end.i, %if.end.batadv_iv_ogm_update_seqnos.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 0, %if.end.batadv_iv_ogm_update_seqnos.exit_crit_edge ], [ %ret.3.i, %if.end5.i.i.i.i.i217.i.batadv_iv_ogm_update_seqnos.exit_crit_edge ], [ %ret.3.i, %if.then10.i.i.i.i.i218.i ], [ %ret.3.i, %if.then.i.i219.i ]
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %h_source, align 4
  %56 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %orig.i, align 4
  %xor.i.i.i = xor i32 %57, %55
  %add.ptr.i.i.i = getelementptr i8, ptr %h_source, i32 4
  %58 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %orig.i, i32 4
  %60 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %61, %59
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 3
  br i1 %cmp, label %do.body, label %if.end16

do.body:                                          ; preds = %batadv_iv_ogm_update_seqnos.exit
  %log_level = getelementptr i8, ptr %1, i32 2360
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %62 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.batadv_hardif_neigh_put.exit_crit_edge, label %if.then11

do.body.batadv_hardif_neigh_put.exit_crit_edge:   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hardif_neigh_put.exit

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.12, ptr noundef %h_source) #11
  br label %batadv_hardif_neigh_put.exit

if.end16:                                         ; preds = %batadv_iv_ogm_update_seqnos.exit
  %tq = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr, i32 0, i32 8
  %64 = ptrtoint ptr %tq to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %tq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp17 = icmp eq i8 %65, 0
  br i1 %cmp17, label %do.body20, label %if.end31

do.body20:                                        ; preds = %if.end16
  %log_level22 = getelementptr i8, ptr %1, i32 2360
  %call.i.i369 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level22, i32 noundef 4) #11
  %66 = ptrtoint ptr %log_level22 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %log_level22, align 4
  %and24 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body20.batadv_hardif_neigh_put.exit_crit_edge, label %if.then26

do.body20.batadv_hardif_neigh_put.exit_crit_edge: ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hardif_neigh_put.exit

if.then26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.13) #11
  br label %batadv_hardif_neigh_put.exit

if.end31:                                         ; preds = %if.end16
  br i1 %cmp.i.i.i, label %if.then33, label %if.end31.if.end40_crit_edge

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then33:                                        ; preds = %if.end31
  %call36 = tail call ptr @batadv_hardif_neigh_get(ptr noundef %if_incoming, ptr noundef %h_source) #11
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.then33.if.end40_crit_edge, label %if.then38

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %last_seen = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %call36, i32 0, i32 4
  %69 = ptrtoint ptr %last_seen to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %last_seen, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then33.if.end40_crit_edge, %if.end31.if.end40_crit_edge
  %hardif_neigh.0 = phi ptr [ %call36, %if.then38 ], [ null, %if.then33.if.end40_crit_edge ], [ null, %if.end31.if.end40_crit_edge ]
  %call41 = tail call ptr @batadv_orig_router_get(ptr noundef %orig_node, ptr noundef %if_outgoing) #11
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.end40.if.end95_crit_edge, label %if.end47

if.end40.if.end95_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.end47:                                         ; preds = %if.end40
  %orig_node44 = getelementptr inbounds %struct.batadv_neigh_node, ptr %call41, i32 0, i32 1
  %70 = ptrtoint ptr %orig_node44 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %orig_node44, align 4
  %call45 = tail call ptr @batadv_orig_router_get(ptr noundef %71, ptr noundef %if_outgoing) #11
  %call46 = tail call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %call41, ptr noundef %if_outgoing) #11
  %tobool48.not = icmp eq ptr %call46, null
  br i1 %tobool48.not, label %if.end47.if.end59_crit_edge, label %land.lhs.true

if.end47.if.end59_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end47
  %tq_avg = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call46, i32 0, i32 2, i32 2
  %72 = ptrtoint ptr %tq_avg to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %tq_avg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp50.not = icmp eq i8 %73, 0
  br i1 %cmp50.not, label %land.lhs.true.if.end59_crit_edge, label %land.lhs.true52

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

land.lhs.true52:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %addr = getelementptr inbounds %struct.batadv_neigh_node, ptr %call41, i32 0, i32 2
  %74 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %addr, align 4
  %76 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %h_source, align 4
  %xor.i.i.i379 = xor i32 %77, %75
  %add.ptr.i.i.i380 = getelementptr %struct.batadv_neigh_node, ptr %call41, i32 0, i32 2, i32 4
  %78 = ptrtoint ptr %add.ptr.i.i.i380 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr.i.i.i380, align 2
  %80 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr.i.i.i, align 2
  %xor37.i.i.i382 = xor i16 %81, %79
  %xor3.i.i.i383 = zext i16 %xor37.i.i.i382 to i32
  %or.i.i.i384 = or i32 %xor.i.i.i379, %xor3.i.i.i383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i384)
  %cmp.i.i.i385 = icmp eq i32 %or.i.i.i384, 0
  br label %if.end59

if.end59:                                         ; preds = %land.lhs.true52, %land.lhs.true.if.end59_crit_edge, %if.end47.if.end59_crit_edge
  %is_from_best_next_hop.0.off0 = phi i1 [ false, %land.lhs.true.if.end59_crit_edge ], [ false, %if.end47.if.end59_crit_edge ], [ %cmp.i.i.i385, %land.lhs.true52 ]
  %tobool64.not = icmp eq ptr %call45, null
  br i1 %tobool64.not, label %if.end59.if.end95_crit_edge, label %land.lhs.true65

if.end59.if.end95_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

land.lhs.true65:                                  ; preds = %if.end59
  %prev_sender60 = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr, i32 0, i32 6
  %addr66 = getelementptr inbounds %struct.batadv_neigh_node, ptr %call41, i32 0, i32 2
  %82 = ptrtoint ptr %addr66 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %addr66, align 4
  %84 = ptrtoint ptr %prev_sender60 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %prev_sender60, align 4
  %xor.i.i.i386 = xor i32 %85, %83
  %add.ptr.i.i.i387 = getelementptr %struct.batadv_neigh_node, ptr %call41, i32 0, i32 2, i32 4
  %86 = ptrtoint ptr %add.ptr.i.i.i387 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %add.ptr.i.i.i387, align 2
  %add.ptr1.i.i.i388 = getelementptr i8, ptr %prev_sender60, i32 4
  %88 = ptrtoint ptr %add.ptr1.i.i.i388 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %add.ptr1.i.i.i388, align 2
  %xor37.i.i.i389 = xor i16 %89, %87
  %xor3.i.i.i390 = zext i16 %xor37.i.i.i389 to i32
  %or.i.i.i391 = or i32 %xor.i.i.i386, %xor3.i.i.i390
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i391)
  %cmp.i.i.i392 = icmp eq i32 %or.i.i.i391, 0
  br i1 %cmp.i.i.i392, label %land.lhs.true70, label %land.lhs.true65.if.end95_crit_edge

land.lhs.true65.if.end95_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

land.lhs.true70:                                  ; preds = %land.lhs.true65
  %90 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %orig.i, align 4
  %xor.i.i.i393 = xor i32 %91, %85
  %92 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i396 = xor i16 %93, %89
  %xor3.i.i.i397 = zext i16 %xor37.i.i.i396 to i32
  %or.i.i.i398 = or i32 %xor.i.i.i393, %xor3.i.i.i397
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i398)
  %cmp.i.i.i399 = icmp eq i32 %or.i.i.i398, 0
  br i1 %cmp.i.i.i399, label %land.lhs.true70.if.end95_crit_edge, label %land.lhs.true74

land.lhs.true70.if.end95_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

land.lhs.true74:                                  ; preds = %land.lhs.true70
  %addr77 = getelementptr inbounds %struct.batadv_neigh_node, ptr %call45, i32 0, i32 2
  %94 = ptrtoint ptr %addr77 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %addr77, align 4
  %xor.i.i.i400 = xor i32 %95, %83
  %add.ptr1.i.i.i402 = getelementptr %struct.batadv_neigh_node, ptr %call45, i32 0, i32 2, i32 4
  %96 = ptrtoint ptr %add.ptr1.i.i.i402 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %add.ptr1.i.i.i402, align 2
  %xor37.i.i.i403 = xor i16 %97, %87
  %xor3.i.i.i404 = zext i16 %xor37.i.i.i403 to i32
  %or.i.i.i405 = or i32 %xor.i.i.i400, %xor3.i.i.i404
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i405)
  %cmp.i.i.i406 = icmp eq i32 %or.i.i.i405, 0
  br i1 %cmp.i.i.i406, label %do.body82, label %land.lhs.true74.if.end95_crit_edge

land.lhs.true74.if.end95_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

do.body82:                                        ; preds = %land.lhs.true74
  %log_level84 = getelementptr i8, ptr %1, i32 2360
  %call.i.i370 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level84, i32 noundef 4) #11
  %98 = ptrtoint ptr %log_level84 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %log_level84, align 4
  %and86 = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.body82.out_crit_edge, label %if.then88

do.body82.out_crit_edge:                          ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then88:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #13
  %call91 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.14, ptr noundef %h_source) #11
  br label %out

if.end95:                                         ; preds = %land.lhs.true74.if.end95_crit_edge, %land.lhs.true70.if.end95_crit_edge, %land.lhs.true65.if.end95_crit_edge, %if.end59.if.end95_crit_edge, %if.end40.if.end95_crit_edge
  %is_from_best_next_hop.0.off0543 = phi i1 [ %is_from_best_next_hop.0.off0, %land.lhs.true74.if.end95_crit_edge ], [ %is_from_best_next_hop.0.off0, %land.lhs.true70.if.end95_crit_edge ], [ %is_from_best_next_hop.0.off0, %land.lhs.true65.if.end95_crit_edge ], [ %is_from_best_next_hop.0.off0, %if.end59.if.end95_crit_edge ], [ false, %if.end40.if.end95_crit_edge ]
  %router_ifinfo.0534542 = phi ptr [ %call46, %land.lhs.true74.if.end95_crit_edge ], [ %call46, %land.lhs.true70.if.end95_crit_edge ], [ %call46, %land.lhs.true65.if.end95_crit_edge ], [ %call46, %if.end59.if.end95_crit_edge ], [ null, %if.end40.if.end95_crit_edge ]
  %router_router.0532 = phi ptr [ %call45, %land.lhs.true74.if.end95_crit_edge ], [ %call45, %land.lhs.true70.if.end95_crit_edge ], [ %call45, %land.lhs.true65.if.end95_crit_edge ], [ null, %if.end59.if.end95_crit_edge ], [ null, %if.end40.if.end95_crit_edge ]
  %cmp96 = icmp eq ptr %if_outgoing, null
  br i1 %cmp96, label %if.then98, label %if.end95.if.end99_crit_edge

if.end95.if.end99_crit_edge:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @batadv_tvlv_ogm_receive(ptr noundef %add.ptr.i, ptr noundef %add.ptr, ptr noundef %orig_node) #11
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end95.if.end99_crit_edge
  br i1 %cmp.i.i.i, label %if.end99.if.end105_crit_edge, label %if.else

if.end99.if.end105_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.else:                                          ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  %call104 = tail call fastcc ptr @batadv_iv_ogm_orig_get(ptr noundef %add.ptr.i, ptr noundef %h_source)
  br label %if.end105

if.end105:                                        ; preds = %if.else, %if.end99.if.end105_crit_edge
  %orig_neigh_node.0 = phi ptr [ %call104, %if.else ], [ %orig_node, %if.end99.if.end105_crit_edge ]
  %tobool106.not = icmp eq ptr %orig_neigh_node.0, null
  br i1 %tobool106.not, label %if.end105.out_crit_edge, label %if.end108

if.end105.out_crit_edge:                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end108:                                        ; preds = %if.end105
  %conv110 = zext i1 %cmp.i.i.i to i32
  tail call void @batadv_nc_update_nc_node(ptr noundef %add.ptr.i, ptr noundef %orig_node, ptr noundef nonnull %orig_neigh_node.0, ptr noundef %add.ptr, i32 noundef %conv110) #11
  %call111 = tail call ptr @batadv_orig_router_get(ptr noundef nonnull %orig_neigh_node.0, ptr noundef %if_outgoing) #11
  %call5.not = xor i1 %cmp.i.i.i, true
  %tobool114.not = icmp eq ptr %call111, null
  %or.cond366 = select i1 %call5.not, i1 %tobool114.not, i1 false
  br i1 %or.cond366, label %do.body116, label %if.end127

do.body116:                                       ; preds = %if.end108
  %log_level118 = getelementptr i8, ptr %1, i32 2360
  %call.i.i371 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level118, i32 noundef 4) #11
  %100 = ptrtoint ptr %log_level118 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %log_level118, align 4
  %and120 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %do.body116.land.lhs.true236_crit_edge, label %if.then122

do.body116.land.lhs.true236_crit_edge:            ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true236

if.then122:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #13
  %call123 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.15) #11
  br label %land.lhs.true236

if.end127:                                        ; preds = %if.end108
  %102 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i.i408 = getelementptr i8, ptr %103, i32 2304
  %104 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i.i409 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i.i.i.i409 to ptr
  %preempt_count.i.i.i.i.i410 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %preempt_count.i.i.i.i.i410 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %preempt_count.i.i.i.i.i410, align 4
  %add.i.i.i.i411 = add i32 %107, 1
  store volatile i32 %add.i.i.i.i411, ptr %preempt_count.i.i.i.i.i410, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i412 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i412, label %if.end127.rcu_read_lock.exit.i420_crit_edge, label %land.lhs.true.i.i415

if.end127.rcu_read_lock.exit.i420_crit_edge:      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i420

land.lhs.true.i.i415:                             ; preds = %if.end127
  %call1.i.i413 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i413)
  %tobool.not.i.i414 = icmp eq i32 %call1.i.i413, 0
  br i1 %tobool.not.i.i414, label %land.lhs.true.i.i415.rcu_read_lock.exit.i420_crit_edge, label %land.lhs.true2.i.i417

land.lhs.true.i.i415.rcu_read_lock.exit.i420_crit_edge: ; preds = %land.lhs.true.i.i415
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i420

land.lhs.true2.i.i417:                            ; preds = %land.lhs.true.i.i415
  %.b4.i.i416 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i416, label %land.lhs.true2.i.i417.rcu_read_lock.exit.i420_crit_edge, label %if.then.i.i418

land.lhs.true2.i.i417.rcu_read_lock.exit.i420_crit_edge: ; preds = %land.lhs.true2.i.i417
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i420

if.then.i.i418:                                   ; preds = %land.lhs.true2.i.i417
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_lock.exit.i420

rcu_read_lock.exit.i420:                          ; preds = %if.then.i.i418, %land.lhs.true2.i.i417.rcu_read_lock.exit.i420_crit_edge, %land.lhs.true.i.i415.rcu_read_lock.exit.i420_crit_edge, %if.end127.rcu_read_lock.exit.i420_crit_edge
  %call1.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i419 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i419, label %land.lhs.true.i422, label %rcu_read_lock.exit.i420.do.end.i424_crit_edge

rcu_read_lock.exit.i420.do.end.i424_crit_edge:    ; preds = %rcu_read_lock.exit.i420
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i424

land.lhs.true.i422:                               ; preds = %rcu_read_lock.exit.i420
  %call2.i421 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i421)
  %tobool3.not.i = icmp eq i32 %call2.i421, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i422.do.end.i424_crit_edge, label %land.lhs.true4.i

land.lhs.true.i422.do.end.i424_crit_edge:         ; preds = %land.lhs.true.i422
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i424

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i422
  %.b198.i = load i1, ptr @batadv_iv_ogm_calc_tq.__warned, align 1
  br i1 %.b198.i, label %land.lhs.true4.i.do.end.i424_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i424_crit_edge:           ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i424

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_iv_ogm_calc_tq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1083, ptr noundef nonnull @.str.2) #11
  br label %do.end.i424

do.end.i424:                                      ; preds = %if.then.i, %land.lhs.true4.i.do.end.i424_crit_edge, %land.lhs.true.i422.do.end.i424_crit_edge, %rcu_read_lock.exit.i420.do.end.i424_crit_edge
  %neigh_list.i423 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_neigh_node.0, i32 0, i32 22
  %108 = ptrtoint ptr %neigh_list.i423 to i32
  call void @__asan_load4_noabort(i32 %108)
  %tmp_neigh_node.0239.i = load volatile ptr, ptr %neigh_list.i423, align 4
  %tobool13.not240.i = icmp eq ptr %tmp_neigh_node.0239.i, null
  br i1 %tobool13.not240.i, label %do.end.i424.for.end.i437_crit_edge, label %for.body.lr.ph.i426

do.end.i424.for.end.i437_crit_edge:               ; preds = %do.end.i424
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i437

for.body.lr.ph.i426:                              ; preds = %do.end.i424
  %add.ptr1.i.i.i.i425 = getelementptr i8, ptr %orig_neigh_node.0, i32 4
  br label %for.body.i434

for.body.i434:                                    ; preds = %for.inc.i436.for.body.i434_crit_edge, %for.body.lr.ph.i426
  %tmp_neigh_node.0241.i = phi ptr [ %tmp_neigh_node.0239.i, %for.body.lr.ph.i426 ], [ %tmp_neigh_node.0.i, %for.inc.i436.for.body.i434_crit_edge ]
  %addr.i427 = getelementptr inbounds %struct.batadv_neigh_node, ptr %tmp_neigh_node.0241.i, i32 0, i32 2
  %109 = ptrtoint ptr %addr.i427 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %addr.i427, align 4
  %111 = ptrtoint ptr %orig_neigh_node.0 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %orig_neigh_node.0, align 4
  %xor.i.i.i.i428 = xor i32 %112, %110
  %add.ptr.i.i.i.i429 = getelementptr %struct.batadv_neigh_node, ptr %tmp_neigh_node.0241.i, i32 0, i32 2, i32 4
  %113 = ptrtoint ptr %add.ptr.i.i.i.i429 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %add.ptr.i.i.i.i429, align 2
  %115 = ptrtoint ptr %add.ptr1.i.i.i.i425 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %add.ptr1.i.i.i.i425, align 2
  %xor37.i.i.i.i430 = xor i16 %116, %114
  %xor3.i.i.i.i431 = zext i16 %xor37.i.i.i.i430 to i32
  %or.i.i.i.i432 = or i32 %xor.i.i.i.i428, %xor3.i.i.i.i431
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i432)
  %cmp.i.i.i.i433 = icmp eq i32 %or.i.i.i.i432, 0
  br i1 %cmp.i.i.i.i433, label %if.end17.i, label %for.body.i434.for.inc.i436_crit_edge

for.body.i434.for.inc.i436_crit_edge:             ; preds = %for.body.i434
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i436

if.end17.i:                                       ; preds = %for.body.i434
  %if_incoming18.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %tmp_neigh_node.0241.i, i32 0, i32 5
  %117 = ptrtoint ptr %if_incoming18.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %if_incoming18.i, align 4
  %cmp.not.i = icmp eq ptr %118, %if_incoming
  br i1 %cmp.not.i, label %if.end20.i, label %if.end17.i.for.inc.i436_crit_edge

if.end17.i.for.inc.i436_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i436

if.end20.i:                                       ; preds = %if.end17.i
  %refcount.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %tmp_neigh_node.0241.i, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #11
  %call.i.i.i.i.i.i.i.i435 = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #11
  %119 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end20.i
  %121 = phi i32 [ %120, %if.end20.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %122 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i.i.i.i.i = icmp eq i32 %121, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %121, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #11
  %123 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %125 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %124, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i) #11, !srcloc !138
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %125, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %125, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %124
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !136

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %126 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %127, 1
  %128 = or i32 %add5.i.i.i.i.i, %127
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %128)
  %.not.i.i.i.i.i = icmp sgt i32 %128, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !136

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #11
  %129 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %130 = phi i32 [ %127, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %130, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #11
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.for.inc.i436_crit_edge, label %kref_get_unless_zero.exit.i.for.end.i437_crit_edge

kref_get_unless_zero.exit.i.for.end.i437_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i437

kref_get_unless_zero.exit.i.for.inc.i436_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i436

for.inc.i436:                                     ; preds = %kref_get_unless_zero.exit.i.for.inc.i436_crit_edge, %if.end17.i.for.inc.i436_crit_edge, %for.body.i434.for.inc.i436_crit_edge
  %131 = ptrtoint ptr %tmp_neigh_node.0241.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %tmp_neigh_node.0.i = load volatile ptr, ptr %tmp_neigh_node.0241.i, align 4
  %tobool13.not.i = icmp eq ptr %tmp_neigh_node.0.i, null
  br i1 %tobool13.not.i, label %for.inc.i436.for.end.i437_crit_edge, label %for.inc.i436.for.body.i434_crit_edge

for.inc.i436.for.body.i434_crit_edge:             ; preds = %for.inc.i436
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i434

for.inc.i436.for.end.i437_crit_edge:              ; preds = %for.inc.i436
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i437

for.end.i437:                                     ; preds = %for.inc.i436.for.end.i437_crit_edge, %kref_get_unless_zero.exit.i.for.end.i437_crit_edge, %do.end.i424.for.end.i437_crit_edge
  %tmp_neigh_node.0.lcssa.i = phi ptr [ null, %do.end.i424.for.end.i437_crit_edge ], [ null, %for.inc.i436.for.end.i437_crit_edge ], [ %tmp_neigh_node.0241.i, %kref_get_unless_zero.exit.i.for.end.i437_crit_edge ]
  %call.i203.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i203.i, label %for.end.i437.rcu_read_unlock.exit.i440_crit_edge, label %land.lhs.true.i206.i

for.end.i437.rcu_read_unlock.exit.i440_crit_edge: ; preds = %for.end.i437
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i440

land.lhs.true.i206.i:                             ; preds = %for.end.i437
  %call1.i204.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i204.i)
  %tobool.not.i205.i = icmp eq i32 %call1.i204.i, 0
  br i1 %tobool.not.i205.i, label %land.lhs.true.i206.i.rcu_read_unlock.exit.i440_crit_edge, label %land.lhs.true2.i208.i

land.lhs.true.i206.i.rcu_read_unlock.exit.i440_crit_edge: ; preds = %land.lhs.true.i206.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i440

land.lhs.true2.i208.i:                            ; preds = %land.lhs.true.i206.i
  %.b4.i207.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i207.i, label %land.lhs.true2.i208.i.rcu_read_unlock.exit.i440_crit_edge, label %if.then.i209.i

land.lhs.true2.i208.i.rcu_read_unlock.exit.i440_crit_edge: ; preds = %land.lhs.true2.i208.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i440

if.then.i209.i:                                   ; preds = %land.lhs.true2.i208.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #11
  br label %rcu_read_unlock.exit.i440

rcu_read_unlock.exit.i440:                        ; preds = %if.then.i209.i, %land.lhs.true2.i208.i.rcu_read_unlock.exit.i440_crit_edge, %land.lhs.true.i206.i.rcu_read_unlock.exit.i440_crit_edge, %for.end.i437.rcu_read_unlock.exit.i440_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %132 = call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i210.i = and i32 %132, -16384
  %133 = inttoptr i32 %and.i.i.i.i.i210.i to ptr
  %preempt_count.i.i.i.i211.i = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %preempt_count.i.i.i.i211.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %preempt_count.i.i.i.i211.i, align 4
  %sub.i.i.i.i438 = add i32 %135, -1
  store volatile i32 %sub.i.i.i.i438, ptr %preempt_count.i.i.i.i211.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %tobool40.not.i439 = icmp eq ptr %tmp_neigh_node.0.lcssa.i, null
  br i1 %tobool40.not.i439, label %if.then41.i, label %rcu_read_unlock.exit.i440.if.end48.i_crit_edge

rcu_read_unlock.exit.i440.if.end48.i_crit_edge:   ; preds = %rcu_read_unlock.exit.i440
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

if.then41.i:                                      ; preds = %rcu_read_unlock.exit.i440
  %call.i212.i = call ptr @batadv_neigh_node_get_or_create(ptr noundef nonnull %orig_neigh_node.0, ptr noundef %if_incoming, ptr noundef nonnull %orig_neigh_node.0) #11
  %tobool.not.i213.i = icmp eq ptr %call.i212.i, null
  br i1 %tobool.not.i213.i, label %batadv_iv_ogm_calc_tq.exit.thread, label %if.end.i.i441

if.end.i.i441:                                    ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #13
  %orig_node1.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call.i212.i, i32 0, i32 1
  %136 = ptrtoint ptr %orig_node1.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %orig_neigh_node.0, ptr %orig_node1.i.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end.i.i441, %rcu_read_unlock.exit.i440.if.end48.i_crit_edge
  %neigh_node.1.ph.i = phi ptr [ %call.i212.i, %if.end.i.i441 ], [ %tmp_neigh_node.0.lcssa.i, %rcu_read_unlock.exit.i440.if.end48.i_crit_edge ]
  %cmp49.i = icmp eq ptr %orig_neigh_node.0, %orig_node
  br i1 %cmp49.i, label %if.then50.i, label %if.end48.i.if.end51.i_crit_edge

if.end48.i.if.end51.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i

if.then50.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %137 = load volatile i32, ptr @jiffies, align 128
  %last_seen.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.1.ph.i, i32 0, i32 6
  %138 = ptrtoint ptr %last_seen.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %last_seen.i, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then50.i, %if.end48.i.if.end51.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %139 = load volatile i32, ptr @jiffies, align 128
  %last_seen52.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 4
  %140 = ptrtoint ptr %last_seen52.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %last_seen52.i, align 4
  %call53.i = call fastcc zeroext i8 @batadv_iv_orig_ifinfo_sum(ptr noundef nonnull %orig_neigh_node.0, ptr noundef %if_incoming) #11
  %call54.i = call ptr @batadv_neigh_ifinfo_new(ptr noundef nonnull %neigh_node.1.ph.i, ptr noundef %if_outgoing) #11
  %tobool55.not.i = icmp eq ptr %call54.i, null
  br i1 %tobool55.not.i, label %if.end51.i.if.end57.i_crit_edge, label %if.end.i216.i

if.end51.i.if.end57.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

if.end.i216.i:                                    ; preds = %if.end51.i
  %real_packet_count.i442 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call54.i, i32 0, i32 2, i32 4
  %141 = ptrtoint ptr %real_packet_count.i442 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %real_packet_count.i442, align 4
  %refcount.i.i443 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call54.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i215.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i443, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i.i443, i32 1, i32 3, i32 1) #11
  %143 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i443, ptr %refcount.i.i443, i32 1, ptr elementtype(i32) %refcount.i.i443) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i.i444 = extractvalue { i32, i32, i32 } %143, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i444)
  %cmp.i.i.i.i.i.i445 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i444, 1
  br i1 %cmp.i.i.i.i.i.i445, label %if.then.i.i.i449, label %if.end5.i.i.i.i.i.i447

if.end5.i.i.i.i.i.i447:                           ; preds = %if.end.i216.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i444)
  %.not.i.i.i.i.i.i446 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i444, 0
  br i1 %.not.i.i.i.i.i.i446, label %if.end5.i.i.i.i.i.i447.if.end57.i_crit_edge, label %if.then10.i.i.i.i.i.i448, !prof !136

if.end5.i.i.i.i.i.i447.if.end57.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i.i447
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

if.then10.i.i.i.i.i.i448:                         ; preds = %if.end5.i.i.i.i.i.i447
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i443, i32 noundef 3) #11
  br label %if.end57.i

if.then.i.i.i449:                                 ; preds = %if.end.i216.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i.i443) #11
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then.i.i.i449, %if.then10.i.i.i.i.i.i448, %if.end5.i.i.i.i.i.i447.if.end57.i_crit_edge, %if.end51.i.if.end57.i_crit_edge
  %neigh_rq_count.0.i = phi i8 [ 0, %if.end51.i.if.end57.i_crit_edge ], [ %142, %if.end5.i.i.i.i.i.i447.if.end57.i_crit_edge ], [ %142, %if.then10.i.i.i.i.i.i448 ], [ %142, %if.then.i.i.i449 ]
  %conv58.i = zext i8 %neigh_rq_count.0.i to i32
  %144 = call i8 @llvm.umin.i8(i8 %call53.i, i8 %neigh_rq_count.0.i) #11
  %conv64.i = zext i8 %144 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp65.i = icmp eq i8 %144, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %neigh_rq_count.0.i)
  %cmp68.i = icmp eq i8 %neigh_rq_count.0.i, 0
  %or.cond.i = select i1 %cmp65.i, i1 true, i1 %cmp68.i
  br i1 %or.cond.i, label %if.end57.i.if.end75.i_crit_edge, label %if.else71.i

if.end57.i.if.end75.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.i

if.else71.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  %145 = zext i8 %144 to i16
  %div.lhs.trunc.i = mul nuw i16 %145, 255
  %div.rhs.trunc.i = zext i8 %neigh_rq_count.0.i to i16
  %div238.i = udiv i16 %div.lhs.trunc.i, %div.rhs.trunc.i
  %146 = and i16 %div238.i, 255
  %phi.cast.i = zext i16 %146 to i32
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.else71.i, %if.end57.i.if.end75.i_crit_edge
  %tq_own.0.i = phi i32 [ %phi.cast.i, %if.else71.i ], [ 0, %if.end57.i.if.end75.i_crit_edge ]
  %sub.i450 = sub i8 64, %neigh_rq_count.0.i
  %conv78.i = zext i8 %sub.i450 to i32
  %mul80.i = mul nuw nsw i32 %conv78.i, 255
  %mul82.i = mul nuw nsw i32 %mul80.i, %conv78.i
  %mul83.i = mul nuw i32 %mul82.i, %conv78.i
  %div84197.i = lshr i32 %mul83.i, 18
  %sub85.i = sub nsw i32 255, %div84197.i
  %hop_penalty.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_incoming, i32 0, i32 9
  %call.i.i.i451 = call zeroext i1 @__kasan_check_read(ptr noundef %hop_penalty.i, i32 noundef 4) #11
  %147 = ptrtoint ptr %hop_penalty.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %hop_penalty.i, align 4
  %sub87.i = sub i32 255, %148
  %cmp90.i = icmp ne ptr %if_incoming, %if_outgoing
  %149 = or i1 %cmp96, %cmp90.i
  br i1 %149, label %if.end75.i.if.end99.i_crit_edge, label %land.lhs.true92.i

if.end75.i.if.end99.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99.i

land.lhs.true92.i:                                ; preds = %if.end75.i
  %call93.i = call zeroext i1 @batadv_is_wifi_hardif(ptr noundef nonnull %if_incoming) #11
  br i1 %call93.i, label %if.then95.i, label %land.lhs.true92.i.if.end99.i_crit_edge

land.lhs.true92.i.if.end99.i_crit_edge:           ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99.i

if.then95.i:                                      ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #13
  %hop_penalty1.i.i = getelementptr i8, ptr %103, i32 2356
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %hop_penalty1.i.i, i32 noundef 4) #11
  %150 = ptrtoint ptr %hop_penalty1.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %hop_penalty1.i.i, align 4
  %conv.i217.i = and i32 %sub87.i, 255
  %sub.i.i452 = sub i32 255, %151
  %mul.i.i = mul i32 %sub.i.i452, %conv.i217.i
  %div.i.i = sdiv i32 %mul.i.i, 255
  %conv98.i = and i32 %div.i.i, 255
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then95.i, %land.lhs.true92.i.if.end99.i_crit_edge, %if.end75.i.if.end99.i_crit_edge
  %tq_iface_hop_penalty.0.i = phi i32 [ %conv98.i, %if.then95.i ], [ %sub87.i, %land.lhs.true92.i.if.end99.i_crit_edge ], [ %sub87.i, %if.end75.i.if.end99.i_crit_edge ]
  %152 = ptrtoint ptr %tq to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %tq, align 1
  %conv100.i = zext i8 %153 to i32
  %mul102.i = mul nsw i32 %tq_own.0.i, %sub85.i
  %mul103.i = mul i32 %mul102.i, %tq_iface_hop_penalty.0.i
  %mul104.i = mul i32 %mul103.i, %conv100.i
  %div105.i = udiv i32 %mul104.i, 16581375
  %conv106.i = trunc i32 %div105.i to i8
  store i8 %conv106.i, ptr %tq, align 1
  %log_level.i453 = getelementptr i8, ptr %103, i32 2360
  %call.i.i202.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i453, i32 noundef 4) #11
  %154 = ptrtoint ptr %log_level.i453 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %log_level.i453, align 4
  %and.i454 = and i32 %155, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i454)
  %tobool110.not.i455 = icmp eq i32 %and.i454, 0
  br i1 %tobool110.not.i455, label %if.end99.i.if.end.i223.i_crit_edge, label %if.then111.i457

if.end99.i.if.end.i223.i_crit_edge:               ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i223.i

if.then111.i457:                                  ; preds = %if.end99.i
  %156 = ptrtoint ptr %tq to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %tq, align 1
  %conv120.i = zext i8 %157 to i32
  %net_dev.i456 = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_incoming, i32 0, i32 4
  %158 = ptrtoint ptr %net_dev.i456 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %net_dev.i456, align 4
  br i1 %cmp96, label %if.then111.i457.cond.end128.i_crit_edge, label %cond.true123.i

if.then111.i457.cond.end128.i_crit_edge:          ; preds = %if.then111.i457
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end128.i

cond.true123.i:                                   ; preds = %if.then111.i457
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev124.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_outgoing, i32 0, i32 4
  %160 = ptrtoint ptr %net_dev124.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %net_dev124.i, align 4
  br label %cond.end128.i

cond.end128.i:                                    ; preds = %cond.true123.i, %if.then111.i457.cond.end128.i_crit_edge
  %cond129.i = phi ptr [ %161, %cond.true123.i ], [ @.str.22, %if.then111.i457.cond.end128.i_crit_edge ]
  %call130.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i408, ptr noundef nonnull @.str.23, ptr noundef %orig_node, ptr noundef nonnull %orig_neigh_node.0, i32 noundef %conv64.i, i32 noundef %conv58.i, i32 noundef %tq_own.0.i, i32 noundef %sub85.i, i32 noundef %tq_iface_hop_penalty.0.i, i32 noundef %conv120.i, ptr noundef %159, ptr noundef %cond129.i) #11
  br label %if.end.i223.i

if.end.i223.i:                                    ; preds = %cond.end128.i, %if.end99.i.if.end.i223.i_crit_edge
  %162 = ptrtoint ptr %tq to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %tq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %cmp136.not.i.not = icmp eq i8 %163, 0
  %refcount.i219.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.1.ph.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i220.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i219.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i219.i, i32 1, i32 3, i32 1) #11
  %164 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i219.i, ptr %refcount.i219.i, i32 1, ptr elementtype(i32) %refcount.i219.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i221.i = extractvalue { i32, i32, i32 } %164, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i221.i)
  %cmp.i.i.i.i.i222.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i221.i, 1
  br i1 %cmp.i.i.i.i.i222.i, label %if.then.i.i227.i, label %if.end5.i.i.i.i.i225.i

if.end5.i.i.i.i.i225.i:                           ; preds = %if.end.i223.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i221.i)
  %.not.i.i.i.i.i224.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i221.i, 0
  br i1 %.not.i.i.i.i.i224.i, label %if.end5.i.i.i.i.i225.i.batadv_iv_ogm_calc_tq.exit_crit_edge, label %if.then10.i.i.i.i.i226.i, !prof !136

if.end5.i.i.i.i.i225.i.batadv_iv_ogm_calc_tq.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i225.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_calc_tq.exit

if.then10.i.i.i.i.i226.i:                         ; preds = %if.end5.i.i.i.i.i225.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i219.i, i32 noundef 3) #11
  br label %batadv_iv_ogm_calc_tq.exit

if.then.i.i227.i:                                 ; preds = %if.end.i223.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_node_release(ptr noundef %refcount.i219.i) #11
  br label %batadv_iv_ogm_calc_tq.exit

batadv_iv_ogm_calc_tq.exit:                       ; preds = %if.then.i.i227.i, %if.then10.i.i.i.i.i226.i, %if.end5.i.i.i.i.i225.i.batadv_iv_ogm_calc_tq.exit_crit_edge
  %call129 = call ptr @batadv_orig_ifinfo_new(ptr noundef %orig_node, ptr noundef %if_outgoing) #11
  %tobool130.not = icmp eq ptr %call129, null
  br i1 %tobool130.not, label %batadv_iv_ogm_calc_tq.exit.land.lhs.true236_crit_edge, label %if.end132

batadv_iv_ogm_calc_tq.exit.land.lhs.true236_crit_edge: ; preds = %batadv_iv_ogm_calc_tq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true236

batadv_iv_ogm_calc_tq.exit.thread:                ; preds = %if.then41.i
  %call129577 = call ptr @batadv_orig_ifinfo_new(ptr noundef %orig_node, ptr noundef %if_outgoing) #11
  %tobool130.not578 = icmp eq ptr %call129577, null
  br i1 %tobool130.not578, label %batadv_iv_ogm_calc_tq.exit.thread.land.lhs.true236_crit_edge, label %if.end132.thread

batadv_iv_ogm_calc_tq.exit.thread.land.lhs.true236_crit_edge: ; preds = %batadv_iv_ogm_calc_tq.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true236

if.end132.thread:                                 ; preds = %batadv_iv_ogm_calc_tq.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  %ttl584 = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr, i32 0, i32 2
  br label %if.end.i462

if.end132:                                        ; preds = %batadv_iv_ogm_calc_tq.exit
  %ttl = getelementptr inbounds %struct.batadv_ogm_packet, ptr %add.ptr, i32 0, i32 2
  br i1 %cmp136.not.i.not, label %if.end132.if.end.i462_crit_edge, label %land.lhs.true143

if.end132.if.end.i462_crit_edge:                  ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i462

land.lhs.true143:                                 ; preds = %if.end132
  %last_ttl = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call129, i32 0, i32 4
  %165 = ptrtoint ptr %last_ttl to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %last_ttl, align 4
  %conv136 = zext i8 %166 to i32
  %sub = add nsw i32 %conv136, -3
  %167 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %ttl, align 2
  %conv137 = zext i8 %168 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv137)
  %cmp138.not = icmp sgt i32 %sub, %conv137
  %last_real_seqno = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call129, i32 0, i32 3
  %169 = ptrtoint ptr %last_real_seqno to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %last_real_seqno, align 4
  %171 = ptrtoint ptr %seqno1.i to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %172 = load i32, ptr %seqno1.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %172)
  %cmp133 = icmp ne i32 %170, %172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp144 = icmp ne i32 %retval.0.i, 0
  %brmerge = select i1 %cmp133, i1 true, i1 %cmp138.not
  %or.cond368 = select i1 %cmp144, i1 %brmerge, i1 false
  br i1 %or.cond368, label %land.lhs.true143.if.end.i462_crit_edge, label %if.then151

land.lhs.true143.if.end.i462_crit_edge:           ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i462

if.then151:                                       ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @batadv_iv_ogm_orig_update(ptr noundef %add.ptr.i, ptr noundef %orig_node, ptr noundef nonnull %call129, ptr noundef %add.ptr.i.i, ptr noundef %add.ptr, ptr noundef %if_incoming, ptr noundef %if_outgoing, i32 noundef %retval.0.i)
  br label %if.end.i462

if.end.i462:                                      ; preds = %if.then151, %land.lhs.true143.if.end.i462_crit_edge, %if.end132.if.end.i462_crit_edge, %if.end132.thread
  %ttl586 = phi ptr [ %ttl, %if.end132.if.end.i462_crit_edge ], [ %ttl, %if.then151 ], [ %ttl, %land.lhs.true143.if.end.i462_crit_edge ], [ %ttl584, %if.end132.thread ]
  %ret.0.off0237.i579585 = phi i1 [ false, %if.end132.if.end.i462_crit_edge ], [ true, %if.then151 ], [ true, %land.lhs.true143.if.end.i462_crit_edge ], [ false, %if.end132.thread ]
  %call129581 = phi ptr [ %call129, %if.end132.if.end.i462_crit_edge ], [ %call129, %if.then151 ], [ %call129, %land.lhs.true143.if.end.i462_crit_edge ], [ %call129577, %if.end132.thread ]
  %refcount.i459 = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call129581, i32 0, i32 8
  %call.i.i.i.i.i.i.i460 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i459, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i459, i32 1, i32 3, i32 1) #11
  %173 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i459, ptr %refcount.i459, i32 1, ptr elementtype(i32) %refcount.i459) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i461 = extractvalue { i32, i32, i32 } %173, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i461)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i461, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i465, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i462
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i461)
  %.not.i.i.i.i.i463 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i461, 0
  br i1 %.not.i.i.i.i.i463, label %if.end5.i.i.i.i.i.batadv_orig_ifinfo_put.exit_crit_edge, label %if.then10.i.i.i.i.i464, !prof !136

if.end5.i.i.i.i.i.batadv_orig_ifinfo_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_orig_ifinfo_put.exit

if.then10.i.i.i.i.i464:                           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i459, i32 noundef 3) #11
  br label %batadv_orig_ifinfo_put.exit

if.then.i.i465:                                   ; preds = %if.end.i462
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_orig_ifinfo_release(ptr noundef %refcount.i459) #11
  br label %batadv_orig_ifinfo_put.exit

batadv_orig_ifinfo_put.exit:                      ; preds = %if.then.i.i465, %if.then10.i.i.i.i.i464, %if.end5.i.i.i.i.i.batadv_orig_ifinfo_put.exit_crit_edge
  br i1 %cmp96, label %batadv_orig_ifinfo_put.exit.land.lhs.true236_crit_edge, label %if.end156

batadv_orig_ifinfo_put.exit.land.lhs.true236_crit_edge: ; preds = %batadv_orig_ifinfo_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true236

if.end156:                                        ; preds = %batadv_orig_ifinfo_put.exit
  br i1 %cmp.i.i.i, label %if.then158, label %if.end192

if.then158:                                       ; preds = %if.end156
  %174 = ptrtoint ptr %ttl586 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %ttl586, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %175)
  %cmp161 = icmp ugt i8 %175, 2
  %cmp164.not = icmp eq ptr %if_incoming, %if_outgoing
  %or.cond367 = or i1 %cmp164.not, %cmp161
  br i1 %or.cond367, label %if.end178, label %do.body167

do.body167:                                       ; preds = %if.then158
  %log_level169 = getelementptr i8, ptr %1, i32 2360
  %call.i.i372 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level169, i32 noundef 4) #11
  %176 = ptrtoint ptr %log_level169 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %log_level169, align 4
  %and171 = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %do.body167.out_crit_edge, label %if.then173

do.body167.out_crit_edge:                         ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then173:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #13
  %call174 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.16) #11
  br label %out

if.end178:                                        ; preds = %if.then158
  call fastcc void @batadv_iv_ogm_forward(ptr noundef %add.ptr.i.i, ptr noundef %add.ptr, i1 noundef zeroext true, i1 noundef zeroext %is_from_best_next_hop.0.off0543, ptr noundef %if_incoming, ptr noundef nonnull %if_outgoing)
  %log_level183 = getelementptr i8, ptr %1, i32 2360
  %call.i.i373 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level183, i32 noundef 4) #11
  %178 = ptrtoint ptr %log_level183 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %log_level183, align 4
  %and185 = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.end178.out_crit_edge, label %if.then187

if.end178.out_crit_edge:                          ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then187:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  %call188 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.17) #11
  br label %out

if.end192:                                        ; preds = %if.end156
  br i1 %ret.0.off0237.i579585, label %if.end206, label %do.body195

do.body195:                                       ; preds = %if.end192
  %log_level197 = getelementptr i8, ptr %1, i32 2360
  %call.i.i374 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level197, i32 noundef 4) #11
  %180 = ptrtoint ptr %log_level197 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %log_level197, align 4
  %and199 = and i32 %181, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %do.body195.if.end.i471_crit_edge, label %if.then201

do.body195.if.end.i471_crit_edge:                 ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i471

if.then201:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #13
  %call202 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.18) #11
  br label %if.end.i471

if.end206:                                        ; preds = %if.end192
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i)
  %cmp207 = icmp eq i32 %retval.0.i, 2
  %log_level212 = getelementptr i8, ptr %1, i32 2360
  %call.i.i375 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level212, i32 noundef 4) #11
  %182 = ptrtoint ptr %log_level212 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %log_level212, align 4
  %and214 = and i32 %183, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %cmp207, label %do.body210, label %do.body222

do.body210:                                       ; preds = %if.end206
  br i1 %tobool215.not, label %do.body210.if.end.i471_crit_edge, label %if.then216

do.body210.if.end.i471_crit_edge:                 ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i471

if.then216:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #13
  %call217 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.19) #11
  br label %if.end.i471

do.body222:                                       ; preds = %if.end206
  br i1 %tobool215.not, label %do.body222.if.end230_crit_edge, label %if.then228

do.body222.if.end230_crit_edge:                   ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end230

if.then228:                                       ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #13
  %call229 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.20) #11
  br label %if.end230

if.end230:                                        ; preds = %if.then228, %do.body222.if.end230_crit_edge
  call fastcc void @batadv_iv_ogm_forward(ptr noundef %add.ptr.i.i, ptr noundef %add.ptr, i1 noundef zeroext false, i1 noundef zeroext %is_from_best_next_hop.0.off0543, ptr noundef %if_incoming, ptr noundef nonnull %if_outgoing)
  br label %if.end.i471

land.lhs.true236:                                 ; preds = %batadv_orig_ifinfo_put.exit.land.lhs.true236_crit_edge, %batadv_iv_ogm_calc_tq.exit.thread.land.lhs.true236_crit_edge, %batadv_iv_ogm_calc_tq.exit.land.lhs.true236_crit_edge, %if.then122, %do.body116.land.lhs.true236_crit_edge
  br i1 %cmp.i.i.i, label %land.lhs.true236.out_crit_edge, label %land.lhs.true236.if.end.i471_crit_edge

land.lhs.true236.if.end.i471_crit_edge:           ; preds = %land.lhs.true236
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i471

land.lhs.true236.out_crit_edge:                   ; preds = %land.lhs.true236
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i471:                                      ; preds = %land.lhs.true236.if.end.i471_crit_edge, %if.end230, %if.then216, %do.body210.if.end.i471_crit_edge, %if.then201, %do.body195.if.end.i471_crit_edge
  %refcount.i467 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_neigh_node.0, i32 0, i32 27
  %call.i.i.i.i.i.i.i468 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i467, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i467, i32 1, i32 3, i32 1) #11
  %184 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i467, ptr %refcount.i467, i32 1, ptr elementtype(i32) %refcount.i467) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i469 = extractvalue { i32, i32, i32 } %184, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i469)
  %cmp.i.i.i.i.i470 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i469, 1
  br i1 %cmp.i.i.i.i.i470, label %if.then.i.i475, label %if.end5.i.i.i.i.i473

if.end5.i.i.i.i.i473:                             ; preds = %if.end.i471
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i469)
  %.not.i.i.i.i.i472 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i469, 0
  br i1 %.not.i.i.i.i.i472, label %if.end5.i.i.i.i.i473.out_crit_edge, label %if.then10.i.i.i.i.i474, !prof !136

if.end5.i.i.i.i.i473.out_crit_edge:               ; preds = %if.end5.i.i.i.i.i473
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then10.i.i.i.i.i474:                           ; preds = %if.end5.i.i.i.i.i473
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i467, i32 noundef 3) #11
  br label %out

if.then.i.i475:                                   ; preds = %if.end.i471
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_orig_node_release(ptr noundef %refcount.i467) #11
  br label %out

out:                                              ; preds = %if.then.i.i475, %if.then10.i.i.i.i.i474, %if.end5.i.i.i.i.i473.out_crit_edge, %land.lhs.true236.out_crit_edge, %if.then187, %if.end178.out_crit_edge, %if.then173, %do.body167.out_crit_edge, %if.end105.out_crit_edge, %if.then88, %do.body82.out_crit_edge
  %router_router.1 = phi ptr [ %router_router.0532, %land.lhs.true236.out_crit_edge ], [ %router_router.0532, %if.end105.out_crit_edge ], [ %call45, %if.then88 ], [ %call45, %do.body82.out_crit_edge ], [ %router_router.0532, %if.end5.i.i.i.i.i473.out_crit_edge ], [ %router_router.0532, %if.then10.i.i.i.i.i474 ], [ %router_router.0532, %if.then.i.i475 ], [ %router_router.0532, %if.then173 ], [ %router_router.0532, %do.body167.out_crit_edge ], [ %router_router.0532, %if.then187 ], [ %router_router.0532, %if.end178.out_crit_edge ]
  %orig_neigh_router.0 = phi ptr [ %call111, %land.lhs.true236.out_crit_edge ], [ null, %if.end105.out_crit_edge ], [ null, %if.then88 ], [ null, %do.body82.out_crit_edge ], [ %call111, %if.end5.i.i.i.i.i473.out_crit_edge ], [ %call111, %if.then10.i.i.i.i.i474 ], [ %call111, %if.then.i.i475 ], [ %call111, %if.then173 ], [ %call111, %do.body167.out_crit_edge ], [ %call111, %if.then187 ], [ %call111, %if.end178.out_crit_edge ]
  %router_ifinfo.1 = phi ptr [ %router_ifinfo.0534542, %land.lhs.true236.out_crit_edge ], [ %router_ifinfo.0534542, %if.end105.out_crit_edge ], [ %call46, %if.then88 ], [ %call46, %do.body82.out_crit_edge ], [ %router_ifinfo.0534542, %if.end5.i.i.i.i.i473.out_crit_edge ], [ %router_ifinfo.0534542, %if.then10.i.i.i.i.i474 ], [ %router_ifinfo.0534542, %if.then.i.i475 ], [ %router_ifinfo.0534542, %if.then173 ], [ %router_ifinfo.0534542, %do.body167.out_crit_edge ], [ %router_ifinfo.0534542, %if.then187 ], [ %router_ifinfo.0534542, %if.end178.out_crit_edge ]
  %tobool.not.i476 = icmp eq ptr %router_ifinfo.1, null
  br i1 %tobool.not.i476, label %out.batadv_neigh_ifinfo_put.exit_crit_edge, label %if.end.i481

out.batadv_neigh_ifinfo_put.exit_crit_edge:       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_ifinfo_put.exit

if.end.i481:                                      ; preds = %out
  %refcount.i477 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %router_ifinfo.1, i32 0, i32 5
  %call.i.i.i.i.i.i.i478 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i477, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i477, i32 1, i32 3, i32 1) #11
  %185 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i477, ptr %refcount.i477, i32 1, ptr elementtype(i32) %refcount.i477) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i479 = extractvalue { i32, i32, i32 } %185, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i479)
  %cmp.i.i.i.i.i480 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i479, 1
  br i1 %cmp.i.i.i.i.i480, label %if.then.i.i485, label %if.end5.i.i.i.i.i483

if.end5.i.i.i.i.i483:                             ; preds = %if.end.i481
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i479)
  %.not.i.i.i.i.i482 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i479, 0
  br i1 %.not.i.i.i.i.i482, label %if.end5.i.i.i.i.i483.batadv_neigh_ifinfo_put.exit_crit_edge, label %if.then10.i.i.i.i.i484, !prof !136

if.end5.i.i.i.i.i483.batadv_neigh_ifinfo_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i483
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_ifinfo_put.exit

if.then10.i.i.i.i.i484:                           ; preds = %if.end5.i.i.i.i.i483
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i477, i32 noundef 3) #11
  br label %batadv_neigh_ifinfo_put.exit

if.then.i.i485:                                   ; preds = %if.end.i481
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i477) #11
  br label %batadv_neigh_ifinfo_put.exit

batadv_neigh_ifinfo_put.exit:                     ; preds = %if.then.i.i485, %if.then10.i.i.i.i.i484, %if.end5.i.i.i.i.i483.batadv_neigh_ifinfo_put.exit_crit_edge, %out.batadv_neigh_ifinfo_put.exit_crit_edge
  br i1 %tobool42.not, label %batadv_neigh_ifinfo_put.exit.batadv_neigh_node_put.exit_crit_edge, label %if.end.i491

batadv_neigh_ifinfo_put.exit.batadv_neigh_node_put.exit_crit_edge: ; preds = %batadv_neigh_ifinfo_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_node_put.exit

if.end.i491:                                      ; preds = %batadv_neigh_ifinfo_put.exit
  %refcount.i487 = getelementptr inbounds %struct.batadv_neigh_node, ptr %call41, i32 0, i32 8
  %call.i.i.i.i.i.i.i488 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i487, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i487, i32 1, i32 3, i32 1) #11
  %186 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i487, ptr %refcount.i487, i32 1, ptr elementtype(i32) %refcount.i487) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i489 = extractvalue { i32, i32, i32 } %186, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i489)
  %cmp.i.i.i.i.i490 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i489, 1
  br i1 %cmp.i.i.i.i.i490, label %if.then.i.i495, label %if.end5.i.i.i.i.i493

if.end5.i.i.i.i.i493:                             ; preds = %if.end.i491
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i489)
  %.not.i.i.i.i.i492 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i489, 0
  br i1 %.not.i.i.i.i.i492, label %if.end5.i.i.i.i.i493.batadv_neigh_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i494, !prof !136

if.end5.i.i.i.i.i493.batadv_neigh_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i493
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_node_put.exit

if.then10.i.i.i.i.i494:                           ; preds = %if.end5.i.i.i.i.i493
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i487, i32 noundef 3) #11
  br label %batadv_neigh_node_put.exit

if.then.i.i495:                                   ; preds = %if.end.i491
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_node_release(ptr noundef %refcount.i487) #11
  br label %batadv_neigh_node_put.exit

batadv_neigh_node_put.exit:                       ; preds = %if.then.i.i495, %if.then10.i.i.i.i.i494, %if.end5.i.i.i.i.i493.batadv_neigh_node_put.exit_crit_edge, %batadv_neigh_ifinfo_put.exit.batadv_neigh_node_put.exit_crit_edge
  %tobool.not.i496 = icmp eq ptr %router_router.1, null
  br i1 %tobool.not.i496, label %batadv_neigh_node_put.exit.batadv_neigh_node_put.exit506_crit_edge, label %if.end.i501

batadv_neigh_node_put.exit.batadv_neigh_node_put.exit506_crit_edge: ; preds = %batadv_neigh_node_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_node_put.exit506

if.end.i501:                                      ; preds = %batadv_neigh_node_put.exit
  %refcount.i497 = getelementptr inbounds %struct.batadv_neigh_node, ptr %router_router.1, i32 0, i32 8
  %call.i.i.i.i.i.i.i498 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i497, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i497, i32 1, i32 3, i32 1) #11
  %187 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i497, ptr %refcount.i497, i32 1, ptr elementtype(i32) %refcount.i497) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i499 = extractvalue { i32, i32, i32 } %187, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i499)
  %cmp.i.i.i.i.i500 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i499, 1
  br i1 %cmp.i.i.i.i.i500, label %if.then.i.i505, label %if.end5.i.i.i.i.i503

if.end5.i.i.i.i.i503:                             ; preds = %if.end.i501
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i499)
  %.not.i.i.i.i.i502 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i499, 0
  br i1 %.not.i.i.i.i.i502, label %if.end5.i.i.i.i.i503.batadv_neigh_node_put.exit506_crit_edge, label %if.then10.i.i.i.i.i504, !prof !136

if.end5.i.i.i.i.i503.batadv_neigh_node_put.exit506_crit_edge: ; preds = %if.end5.i.i.i.i.i503
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_node_put.exit506

if.then10.i.i.i.i.i504:                           ; preds = %if.end5.i.i.i.i.i503
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i497, i32 noundef 3) #11
  br label %batadv_neigh_node_put.exit506

if.then.i.i505:                                   ; preds = %if.end.i501
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_node_release(ptr noundef %refcount.i497) #11
  br label %batadv_neigh_node_put.exit506

batadv_neigh_node_put.exit506:                    ; preds = %if.then.i.i505, %if.then10.i.i.i.i.i504, %if.end5.i.i.i.i.i503.batadv_neigh_node_put.exit506_crit_edge, %batadv_neigh_node_put.exit.batadv_neigh_node_put.exit506_crit_edge
  %tobool.not.i507 = icmp eq ptr %orig_neigh_router.0, null
  br i1 %tobool.not.i507, label %batadv_neigh_node_put.exit506.batadv_neigh_node_put.exit517_crit_edge, label %if.end.i512

batadv_neigh_node_put.exit506.batadv_neigh_node_put.exit517_crit_edge: ; preds = %batadv_neigh_node_put.exit506
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_node_put.exit517

if.end.i512:                                      ; preds = %batadv_neigh_node_put.exit506
  %refcount.i508 = getelementptr inbounds %struct.batadv_neigh_node, ptr %orig_neigh_router.0, i32 0, i32 8
  %call.i.i.i.i.i.i.i509 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i508, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i508, i32 1, i32 3, i32 1) #11
  %188 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i508, ptr %refcount.i508, i32 1, ptr elementtype(i32) %refcount.i508) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i510 = extractvalue { i32, i32, i32 } %188, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i510)
  %cmp.i.i.i.i.i511 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i510, 1
  br i1 %cmp.i.i.i.i.i511, label %if.then.i.i516, label %if.end5.i.i.i.i.i514

if.end5.i.i.i.i.i514:                             ; preds = %if.end.i512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i510)
  %.not.i.i.i.i.i513 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i510, 0
  br i1 %.not.i.i.i.i.i513, label %if.end5.i.i.i.i.i514.batadv_neigh_node_put.exit517_crit_edge, label %if.then10.i.i.i.i.i515, !prof !136

if.end5.i.i.i.i.i514.batadv_neigh_node_put.exit517_crit_edge: ; preds = %if.end5.i.i.i.i.i514
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_node_put.exit517

if.then10.i.i.i.i.i515:                           ; preds = %if.end5.i.i.i.i.i514
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i508, i32 noundef 3) #11
  br label %batadv_neigh_node_put.exit517

if.then.i.i516:                                   ; preds = %if.end.i512
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_node_release(ptr noundef %refcount.i508) #11
  br label %batadv_neigh_node_put.exit517

batadv_neigh_node_put.exit517:                    ; preds = %if.then.i.i516, %if.then10.i.i.i.i.i515, %if.end5.i.i.i.i.i514.batadv_neigh_node_put.exit517_crit_edge, %batadv_neigh_node_put.exit506.batadv_neigh_node_put.exit517_crit_edge
  %tobool.not.i518 = icmp eq ptr %hardif_neigh.0, null
  br i1 %tobool.not.i518, label %batadv_neigh_node_put.exit517.batadv_hardif_neigh_put.exit_crit_edge, label %if.end.i523

batadv_neigh_node_put.exit517.batadv_hardif_neigh_put.exit_crit_edge: ; preds = %batadv_neigh_node_put.exit517
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hardif_neigh_put.exit

if.end.i523:                                      ; preds = %batadv_neigh_node_put.exit517
  %refcount.i519 = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh.0, i32 0, i32 6
  %call.i.i.i.i.i.i.i520 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i519, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i519, i32 1, i32 3, i32 1) #11
  %189 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i519, ptr %refcount.i519, i32 1, ptr elementtype(i32) %refcount.i519) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i521 = extractvalue { i32, i32, i32 } %189, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i521)
  %cmp.i.i.i.i.i522 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i521, 1
  br i1 %cmp.i.i.i.i.i522, label %if.then.i.i527, label %if.end5.i.i.i.i.i525

if.end5.i.i.i.i.i525:                             ; preds = %if.end.i523
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i521)
  %.not.i.i.i.i.i524 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i521, 0
  br i1 %.not.i.i.i.i.i524, label %if.end5.i.i.i.i.i525.batadv_hardif_neigh_put.exit_crit_edge, label %if.then10.i.i.i.i.i526, !prof !136

if.end5.i.i.i.i.i525.batadv_hardif_neigh_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i525
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hardif_neigh_put.exit

if.then10.i.i.i.i.i526:                           ; preds = %if.end5.i.i.i.i.i525
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i519, i32 noundef 3) #11
  br label %batadv_hardif_neigh_put.exit

if.then.i.i527:                                   ; preds = %if.end.i523
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_hardif_neigh_release(ptr noundef %refcount.i519) #11
  br label %batadv_hardif_neigh_put.exit

batadv_hardif_neigh_put.exit:                     ; preds = %if.then.i.i527, %if.then10.i.i.i.i.i526, %if.end5.i.i.i.i.i525.batadv_hardif_neigh_put.exit_crit_edge, %batadv_neigh_node_put.exit517.batadv_hardif_neigh_put.exit_crit_edge, %if.then26, %do.body20.batadv_hardif_neigh_put.exit_crit_edge, %if.then11, %do.body.batadv_hardif_neigh_put.exit_crit_edge
  call void @consume_skb(ptr noundef nonnull %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %batadv_hardif_neigh_put.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_node_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_compare_orig(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_ifinfo_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_ifinfo_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_hardif_neigh_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_router_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_neigh_ifinfo_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_ogm_receive(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_nc_update_nc_node(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_ifinfo_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_iv_ogm_orig_update(ptr noundef %bat_priv, ptr noundef %orig_node, ptr nocapture noundef writeonly %orig_ifinfo, ptr noundef %ethhdr, ptr nocapture noundef readonly %batadv_ogm_packet, ptr noundef %if_incoming, ptr noundef %if_outgoing, i32 noundef %dup_status) unnamed_addr #3 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %0 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.batadv_iv_ogm_orig_update) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call3 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b250 = load i1, ptr @batadv_iv_ogm_orig_update.__warned, align 1
  br i1 %.b250, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_iv_ogm_orig_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 939, ptr noundef nonnull @.str.2) #11
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %neigh_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 22
  %6 = ptrtoint ptr %neigh_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp_neigh_node.0401 = load volatile ptr, ptr %neigh_list, align 4
  %tobool20.not402 = icmp eq ptr %tmp_neigh_node.0401, null
  br i1 %tobool20.not402, label %do.end12.if.then91_crit_edge, label %for.body.lr.ph

do.end12.if.then91_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then91

for.body.lr.ph:                                   ; preds = %do.end12
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %ethhdr, i32 0, i32 1
  %add.ptr1.i.i.i = getelementptr %struct.ethhdr, ptr %ethhdr, i32 0, i32 1, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dup_status)
  %cmp59.not = icmp eq i32 %dup_status, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp_neigh_node.0404 = phi ptr [ %tmp_neigh_node.0401, %for.body.lr.ph ], [ %tmp_neigh_node.0, %for.inc.for.body_crit_edge ]
  %neigh_node.0403 = phi ptr [ null, %for.body.lr.ph ], [ %neigh_node.1, %for.inc.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.batadv_neigh_node, ptr %tmp_neigh_node.0404, i32 0, i32 2
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %9 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %h_source, align 4
  %xor.i.i.i = xor i32 %10, %8
  %add.ptr.i.i.i = getelementptr %struct.batadv_neigh_node, ptr %tmp_neigh_node.0404, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i.i, align 2
  %13 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %14, %12
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true23, label %for.body.if.end58_crit_edge

for.body.if.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

land.lhs.true23:                                  ; preds = %for.body
  %if_incoming24 = getelementptr inbounds %struct.batadv_neigh_node, ptr %tmp_neigh_node.0404, i32 0, i32 5
  %15 = ptrtoint ptr %if_incoming24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %if_incoming24, align 4
  %cmp = icmp eq ptr %16, %if_incoming
  br i1 %cmp, label %land.lhs.true25, label %land.lhs.true23.if.end58_crit_edge

land.lhs.true23.if.end58_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %refcount = getelementptr inbounds %struct.batadv_neigh_node, ptr %tmp_neigh_node.0404, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
  %17 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true25
  %19 = phi i32 [ %18, %land.lhs.true25 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %20 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %19, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #11
  %21 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %23 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %22, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #11, !srcloc !138
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %22
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !136

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %24 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %25, 1
  %26 = or i32 %add5.i.i.i.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !136

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #11
  %27 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %28 = phi i32 [ %25, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool12.i.i.i.i.not = icmp eq i32 %28, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.if.end58_crit_edge, label %if.then28

kref_get_unless_zero.exit.if.end58_crit_edge:     ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then28:                                        ; preds = %kref_get_unless_zero.exit
  %tobool29.not = icmp eq ptr %neigh_node.0403, null
  br i1 %tobool29.not, label %if.then28.for.inc_crit_edge, label %do.end41, !prof !136

if.then28.for.inc_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end41:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 944, i32 noundef 9, ptr noundef nonnull @.str.25) #11
  call fastcc void @batadv_neigh_node_put(ptr noundef nonnull %neigh_node.0403)
  br label %for.inc

if.end58:                                         ; preds = %kref_get_unless_zero.exit.if.end58_crit_edge, %land.lhs.true23.if.end58_crit_edge, %for.body.if.end58_crit_edge
  br i1 %cmp59.not, label %if.end61, label %if.end58.for.inc_crit_edge

if.end58.for.inc_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end61:                                         ; preds = %if.end58
  %call62 = call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %tmp_neigh_node.0404, ptr noundef %if_outgoing) #11
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.end61.for.inc_crit_edge, label %if.end65

if.end61.for.inc_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end65:                                         ; preds = %if.end61
  %ifinfo_lock = getelementptr inbounds %struct.batadv_neigh_node, ptr %tmp_neigh_node.0404, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %ifinfo_lock) #11
  %bat_iv = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call62, i32 0, i32 2
  %tq_index = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call62, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %tq_index to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tq_index, align 1
  %idxprom.i = zext i8 %30 to i32
  %arrayidx.i = getelementptr i8, ptr %bat_iv, i32 %idxprom.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx.i, align 1
  %32 = load i8, ptr %tq_index, align 1
  %conv.i253 = zext i8 %32 to i16
  %add.i = add nuw nsw i16 %conv.i253, 1
  %rem.i = urem i16 %add.i, 5
  %conv1.i = trunc i16 %rem.i to i8
  store i8 %conv1.i, ptr %tq_index, align 1
  %33 = ptrtoint ptr %bat_iv to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bat_iv, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp3.not.i = icmp ne i8 %34, 0
  %inc.i = zext i1 %cmp3.not.i to i16
  %incdec.ptr.i = getelementptr %struct.batadv_neigh_ifinfo, ptr %call62, i32 0, i32 2, i32 0, i32 1
  %35 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp3.not.1.i = icmp ne i8 %36, 0
  %inc.1.i = zext i1 %cmp3.not.1.i to i16
  %count.1.1.i = add nuw nsw i16 %inc.1.i, %inc.i
  %incdec.ptr.1.i = getelementptr %struct.batadv_neigh_ifinfo, ptr %call62, i32 0, i32 2, i32 0, i32 2
  %37 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp3.not.2.i = icmp ne i8 %38, 0
  %inc.2.i = zext i1 %cmp3.not.2.i to i16
  %count.1.2.i = add nuw nsw i16 %count.1.1.i, %inc.2.i
  %incdec.ptr.2.i = getelementptr %struct.batadv_neigh_ifinfo, ptr %call62, i32 0, i32 2, i32 0, i32 3
  %39 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp3.not.3.i = icmp ne i8 %40, 0
  %inc.3.i = zext i1 %cmp3.not.3.i to i16
  %count.1.3.i = add nuw nsw i16 %count.1.2.i, %inc.3.i
  %incdec.ptr.3.i = getelementptr %struct.batadv_neigh_ifinfo, ptr %call62, i32 0, i32 2, i32 0, i32 4
  %41 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %incdec.ptr.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp3.not.4.i = icmp ne i8 %42, 0
  %inc.4.i = zext i1 %cmp3.not.4.i to i16
  %count.1.4.i = add nuw nsw i16 %count.1.3.i, %inc.4.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count.1.4.i)
  %cmp10.i = icmp eq i16 %count.1.4.i, 0
  br i1 %cmp10.i, label %if.end65.if.end.i_crit_edge, label %if.end13.i

if.end65.if.end.i_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end13.i:                                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i = zext i8 %34 to i16
  %conv2.1.i = zext i8 %36 to i16
  %sum.1.1.i = add nuw nsw i16 %conv2.1.i, %conv2.i
  %conv2.2.i = zext i8 %38 to i16
  %sum.1.2.i = add nuw nsw i16 %sum.1.1.i, %conv2.2.i
  %conv2.3.i = zext i8 %40 to i16
  %sum.1.3.i = add nuw nsw i16 %sum.1.2.i, %conv2.3.i
  %conv2.4.i = zext i8 %42 to i16
  %sum.1.4.i = add nuw nsw i16 %sum.1.3.i, %conv2.4.i
  %43 = udiv i16 %sum.1.4.i, %count.1.4.i
  %conv16.i = trunc i16 %43 to i8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end13.i, %if.end65.if.end.i_crit_edge
  %retval.0.i = phi i8 [ %conv16.i, %if.end13.i ], [ 0, %if.end65.if.end.i_crit_edge ]
  %tq_avg73 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call62, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %tq_avg73 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %retval.0.i, ptr %tq_avg73, align 2
  call void @_raw_spin_unlock_bh(ptr noundef %ifinfo_lock) #11
  %refcount.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call62, i32 0, i32 5
  %call.i.i.i.i.i.i.i255 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %for.inc

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc_crit_edge, %if.end61.for.inc_crit_edge, %if.end58.for.inc_crit_edge, %do.end41, %if.then28.for.inc_crit_edge
  %neigh_node.1 = phi ptr [ %neigh_node.0403, %if.end58.for.inc_crit_edge ], [ %neigh_node.0403, %if.end61.for.inc_crit_edge ], [ %tmp_neigh_node.0404, %if.then28.for.inc_crit_edge ], [ %tmp_neigh_node.0404, %do.end41 ], [ %neigh_node.0403, %if.end5.i.i.i.i.i.for.inc_crit_edge ], [ %neigh_node.0403, %if.then10.i.i.i.i.i ], [ %neigh_node.0403, %if.then.i.i ]
  %46 = ptrtoint ptr %tmp_neigh_node.0404 to i32
  call void @__asan_load4_noabort(i32 %46)
  %tmp_neigh_node.0 = load volatile ptr, ptr %tmp_neigh_node.0404, align 4
  %tobool20.not = icmp eq ptr %tmp_neigh_node.0, null
  br i1 %tobool20.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool90.not = icmp eq ptr %neigh_node.1, null
  br i1 %tobool90.not, label %for.end.if.then91_crit_edge, label %do.body104

for.end.if.then91_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then91

if.then91:                                        ; preds = %for.end.if.then91_crit_edge, %do.end12.if.then91_crit_edge
  %h_source92 = getelementptr inbounds %struct.ethhdr, ptr %ethhdr, i32 0, i32 1
  %call94 = call fastcc ptr @batadv_iv_ogm_orig_get(ptr noundef %bat_priv, ptr noundef %h_source92)
  %tobool95.not = icmp eq ptr %call94, null
  br i1 %tobool95.not, label %if.then91.unlock_crit_edge, label %if.end97

if.then91.unlock_crit_edge:                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end97:                                         ; preds = %if.then91
  %call.i256 = call ptr @batadv_neigh_node_get_or_create(ptr noundef %orig_node, ptr noundef %if_incoming, ptr noundef %h_source92) #11
  %tobool.not.i257 = icmp eq ptr %call.i256, null
  br i1 %tobool.not.i257, label %if.end97.if.end.i264_crit_edge, label %if.end.i258

if.end97.if.end.i264_crit_edge:                   ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i264

if.end.i258:                                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  %orig_node1.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call.i256, i32 0, i32 1
  %47 = ptrtoint ptr %orig_node1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call94, ptr %orig_node1.i, align 4
  br label %if.end.i264

if.end.i264:                                      ; preds = %if.end.i258, %if.end97.if.end.i264_crit_edge
  %refcount.i260 = getelementptr inbounds %struct.batadv_orig_node, ptr %call94, i32 0, i32 27
  %call.i.i.i.i.i.i.i261 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i260, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i260, i32 1, i32 3, i32 1) #11
  %48 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i260, ptr %refcount.i260, i32 1, ptr elementtype(i32) %refcount.i260) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i262 = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i262)
  %cmp.i.i.i.i.i263 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i262, 1
  br i1 %cmp.i.i.i.i.i263, label %if.then.i.i268, label %if.end5.i.i.i.i.i266

if.end5.i.i.i.i.i266:                             ; preds = %if.end.i264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i262)
  %.not.i.i.i.i.i265 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i262, 0
  br i1 %.not.i.i.i.i.i265, label %if.end5.i.i.i.i.i266.batadv_orig_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i267, !prof !136

if.end5.i.i.i.i.i266.batadv_orig_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i266
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_orig_node_put.exit

if.then10.i.i.i.i.i267:                           ; preds = %if.end5.i.i.i.i.i266
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i260, i32 noundef 3) #11
  br label %batadv_orig_node_put.exit

if.then.i.i268:                                   ; preds = %if.end.i264
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_orig_node_release(ptr noundef %refcount.i260) #11
  br label %batadv_orig_node_put.exit

batadv_orig_node_put.exit:                        ; preds = %if.then.i.i268, %if.then10.i.i.i.i.i267, %if.end5.i.i.i.i.i266.batadv_orig_node_put.exit_crit_edge
  br i1 %tobool.not.i257, label %batadv_orig_node_put.exit.unlock_crit_edge, label %batadv_orig_node_put.exit.if.end115_crit_edge

batadv_orig_node_put.exit.if.end115_crit_edge:    ; preds = %batadv_orig_node_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

batadv_orig_node_put.exit.unlock_crit_edge:       ; preds = %batadv_orig_node_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

do.body104:                                       ; preds = %for.end
  %call.i.i252 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %49 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %log_level, align 4
  %and108 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %do.body104.if.end115_crit_edge, label %if.then110

do.body104.if.end115_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then110:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #13
  %call111 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.26) #11
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %do.body104.if.end115_crit_edge, %batadv_orig_node_put.exit.if.end115_crit_edge
  %neigh_node.3 = phi ptr [ %neigh_node.1, %if.then110 ], [ %neigh_node.1, %do.body104.if.end115_crit_edge ], [ %call.i256, %batadv_orig_node_put.exit.if.end115_crit_edge ]
  %call.i269 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i269, label %if.end115.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i272

if.end115.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i272:                               ; preds = %if.end115
  %call1.i270 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i270)
  %tobool.not.i271 = icmp eq i32 %call1.i270, 0
  br i1 %tobool.not.i271, label %land.lhs.true.i272.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i274

land.lhs.true.i272.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i272
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i274:                              ; preds = %land.lhs.true.i272
  %.b4.i273 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i273, label %land.lhs.true2.i274.rcu_read_unlock.exit_crit_edge, label %if.then.i275

land.lhs.true2.i274.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i274
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i275:                                     ; preds = %land.lhs.true2.i274
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i275, %land.lhs.true2.i274.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i272.rcu_read_unlock.exit_crit_edge, %if.end115.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %51 = call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i276 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i276 to ptr
  %preempt_count.i.i.i.i277 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i277 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i277, align 4
  %sub.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i277, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %call116 = call ptr @batadv_neigh_ifinfo_new(ptr noundef nonnull %neigh_node.3, ptr noundef %if_outgoing) #11
  %tobool117.not = icmp eq ptr %call116, null
  br i1 %tobool117.not, label %rcu_read_unlock.exit.if.end.i332_crit_edge, label %if.end119

rcu_read_unlock.exit.if.end.i332_crit_edge:       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i332

if.end119:                                        ; preds = %rcu_read_unlock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %last_seen = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.3, i32 0, i32 6
  %56 = ptrtoint ptr %last_seen to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %last_seen, align 4
  %ifinfo_lock120 = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.3, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %ifinfo_lock120) #11
  %bat_iv121 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call116, i32 0, i32 2
  %tq_index125 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call116, i32 0, i32 2, i32 1
  %tq = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet, i32 0, i32 8
  %57 = ptrtoint ptr %tq to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %tq, align 1
  %59 = ptrtoint ptr %tq_index125 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %tq_index125, align 1
  %idxprom.i278 = zext i8 %60 to i32
  %arrayidx.i279 = getelementptr i8, ptr %bat_iv121, i32 %idxprom.i278
  %61 = ptrtoint ptr %arrayidx.i279 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %58, ptr %arrayidx.i279, align 1
  %62 = load i8, ptr %tq_index125, align 1
  %conv.i280 = zext i8 %62 to i16
  %add.i281 = add nuw nsw i16 %conv.i280, 1
  %rem.i282 = urem i16 %add.i281, 5
  %conv1.i283 = trunc i16 %rem.i282 to i8
  store i8 %conv1.i283, ptr %tq_index125, align 1
  %63 = ptrtoint ptr %bat_iv121 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bat_iv121, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp3.not.i284 = icmp ne i8 %64, 0
  %inc.i285 = zext i1 %cmp3.not.i284 to i16
  %incdec.ptr.i286 = getelementptr %struct.batadv_neigh_ifinfo, ptr %call116, i32 0, i32 2, i32 0, i32 1
  %65 = ptrtoint ptr %incdec.ptr.i286 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %incdec.ptr.i286, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp3.not.1.i287 = icmp ne i8 %66, 0
  %inc.1.i288 = zext i1 %cmp3.not.1.i287 to i16
  %count.1.1.i289 = add nuw nsw i16 %inc.1.i288, %inc.i285
  %incdec.ptr.1.i290 = getelementptr %struct.batadv_neigh_ifinfo, ptr %call116, i32 0, i32 2, i32 0, i32 2
  %67 = ptrtoint ptr %incdec.ptr.1.i290 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %incdec.ptr.1.i290, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp3.not.2.i291 = icmp ne i8 %68, 0
  %inc.2.i292 = zext i1 %cmp3.not.2.i291 to i16
  %count.1.2.i293 = add nuw nsw i16 %count.1.1.i289, %inc.2.i292
  %incdec.ptr.2.i294 = getelementptr %struct.batadv_neigh_ifinfo, ptr %call116, i32 0, i32 2, i32 0, i32 3
  %69 = ptrtoint ptr %incdec.ptr.2.i294 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %incdec.ptr.2.i294, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp3.not.3.i295 = icmp ne i8 %70, 0
  %inc.3.i296 = zext i1 %cmp3.not.3.i295 to i16
  %count.1.3.i297 = add nuw nsw i16 %count.1.2.i293, %inc.3.i296
  %incdec.ptr.3.i298 = getelementptr %struct.batadv_neigh_ifinfo, ptr %call116, i32 0, i32 2, i32 0, i32 4
  %71 = ptrtoint ptr %incdec.ptr.3.i298 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %incdec.ptr.3.i298, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp3.not.4.i299 = icmp ne i8 %72, 0
  %inc.4.i300 = zext i1 %cmp3.not.4.i299 to i16
  %count.1.4.i301 = add nuw nsw i16 %count.1.3.i297, %inc.4.i300
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count.1.4.i301)
  %cmp10.i302 = icmp eq i16 %count.1.4.i301, 0
  br i1 %cmp10.i302, label %if.end119.batadv_ring_buffer_avg.exit315_crit_edge, label %if.end13.i313

if.end119.batadv_ring_buffer_avg.exit315_crit_edge: ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_ring_buffer_avg.exit315

if.end13.i313:                                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i303 = zext i8 %64 to i16
  %conv2.1.i304 = zext i8 %66 to i16
  %sum.1.1.i305 = add nuw nsw i16 %conv2.1.i304, %conv2.i303
  %conv2.2.i306 = zext i8 %68 to i16
  %sum.1.2.i307 = add nuw nsw i16 %sum.1.1.i305, %conv2.2.i306
  %conv2.3.i308 = zext i8 %70 to i16
  %sum.1.3.i309 = add nuw nsw i16 %sum.1.2.i307, %conv2.3.i308
  %conv2.4.i310 = zext i8 %72 to i16
  %sum.1.4.i311 = add nuw nsw i16 %sum.1.3.i309, %conv2.4.i310
  %73 = udiv i16 %sum.1.4.i311, %count.1.4.i301
  %conv16.i312 = trunc i16 %73 to i8
  br label %batadv_ring_buffer_avg.exit315

batadv_ring_buffer_avg.exit315:                   ; preds = %if.end13.i313, %if.end119.batadv_ring_buffer_avg.exit315_crit_edge
  %retval.0.i314 = phi i8 [ %conv16.i312, %if.end13.i313 ], [ 0, %if.end119.batadv_ring_buffer_avg.exit315_crit_edge ]
  %tq_avg131 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call116, i32 0, i32 2, i32 2
  %74 = ptrtoint ptr %tq_avg131 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %retval.0.i314, ptr %tq_avg131, align 2
  call void @_raw_spin_unlock_bh(ptr noundef %ifinfo_lock120) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dup_status)
  %cmp133 = icmp eq i32 %dup_status, 0
  br i1 %cmp133, label %if.then134, label %batadv_ring_buffer_avg.exit315.if.end137_crit_edge

batadv_ring_buffer_avg.exit315.if.end137_crit_edge: ; preds = %batadv_ring_buffer_avg.exit315
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

if.then134:                                       ; preds = %batadv_ring_buffer_avg.exit315
  call void @__sanitizer_cov_trace_pc() #13
  %ttl = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet, i32 0, i32 2
  %75 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ttl, align 2
  %last_ttl = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %orig_ifinfo, i32 0, i32 4
  %77 = ptrtoint ptr %last_ttl to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %last_ttl, align 4
  %78 = load i8, ptr %ttl, align 2
  %last_ttl136 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call116, i32 0, i32 4
  %79 = ptrtoint ptr %last_ttl136 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %last_ttl136, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then134, %batadv_ring_buffer_avg.exit315.if.end137_crit_edge
  %call138 = call ptr @batadv_orig_router_get(ptr noundef %orig_node, ptr noundef %if_outgoing) #11
  %cmp139 = icmp eq ptr %call138, %neigh_node.3
  br i1 %cmp139, label %if.end137.if.end.i332_crit_edge, label %if.end141

if.end137.if.end.i332_crit_edge:                  ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i332

if.end141:                                        ; preds = %if.end137
  %tobool142.not = icmp eq ptr %call138, null
  br i1 %tobool142.not, label %if.end141.if.end181_crit_edge, label %if.then143

if.end141.if.end181_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181

if.then143:                                       ; preds = %if.end141
  %call144 = call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %call138, ptr noundef %if_outgoing) #11
  %tobool145.not = icmp eq ptr %call144, null
  br i1 %tobool145.not, label %if.then143.if.end.i332_crit_edge, label %if.end147

if.then143.if.end.i332_crit_edge:                 ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i332

if.end147:                                        ; preds = %if.then143
  %tq_avg149 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call144, i32 0, i32 2, i32 2
  %80 = ptrtoint ptr %tq_avg149 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %tq_avg149, align 2
  %82 = ptrtoint ptr %tq_avg131 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %tq_avg131, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %81, i8 %83)
  %cmp153 = icmp ugt i8 %81, %83
  br i1 %cmp153, label %if.end147.if.end.i332_crit_edge, label %land.lhs.true159

if.end147.if.end.i332_crit_edge:                  ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i332

land.lhs.true159:                                 ; preds = %if.end147
  %84 = ptrtoint ptr %tq_avg131 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %tq_avg131, align 2
  %86 = ptrtoint ptr %tq_avg149 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %tq_avg149, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %87)
  %cmp166 = icmp eq i8 %85, %87
  br i1 %cmp166, label %if.then168, label %land.lhs.true159.if.end181_crit_edge

land.lhs.true159.if.end181_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181

if.then168:                                       ; preds = %land.lhs.true159
  %orig_node169 = getelementptr inbounds %struct.batadv_neigh_node, ptr %call138, i32 0, i32 1
  %88 = ptrtoint ptr %orig_node169 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %orig_node169, align 4
  %if_incoming170 = getelementptr inbounds %struct.batadv_neigh_node, ptr %call138, i32 0, i32 5
  %90 = ptrtoint ptr %if_incoming170 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %if_incoming170, align 4
  %call171 = call fastcc zeroext i8 @batadv_iv_orig_ifinfo_sum(ptr noundef %89, ptr noundef %91)
  %orig_node172 = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.3, i32 0, i32 1
  %92 = ptrtoint ptr %orig_node172 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %orig_node172, align 4
  %if_incoming173 = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.3, i32 0, i32 5
  %94 = ptrtoint ptr %if_incoming173 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %if_incoming173, align 4
  %call174 = call fastcc zeroext i8 @batadv_iv_orig_ifinfo_sum(ptr noundef %93, ptr noundef %95)
  call void @__sanitizer_cov_trace_cmp1(i8 %call171, i8 %call174)
  %cmp177.not = icmp ult i8 %call171, %call174
  br i1 %cmp177.not, label %if.then168.if.end181_crit_edge, label %if.then168.if.end.i332_crit_edge

if.then168.if.end.i332_crit_edge:                 ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i332

if.then168.if.end181_crit_edge:                   ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181

if.end181:                                        ; preds = %if.then168.if.end181_crit_edge, %land.lhs.true159.if.end181_crit_edge, %if.end141.if.end181_crit_edge
  %router_ifinfo.0376 = phi ptr [ %call144, %if.then168.if.end181_crit_edge ], [ %call144, %land.lhs.true159.if.end181_crit_edge ], [ null, %if.end141.if.end181_crit_edge ]
  call void @batadv_update_route(ptr noundef %bat_priv, ptr noundef %orig_node, ptr noundef %if_outgoing, ptr noundef nonnull %neigh_node.3) #11
  br label %if.end.i332

unlock:                                           ; preds = %batadv_orig_node_put.exit.unlock_crit_edge, %if.then91.unlock_crit_edge
  %call.i316 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i316, label %unlock.batadv_neigh_ifinfo_put.exit358.thread_crit_edge, label %land.lhs.true.i319

unlock.batadv_neigh_ifinfo_put.exit358.thread_crit_edge: ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_ifinfo_put.exit358.thread

land.lhs.true.i319:                               ; preds = %unlock
  %call1.i317 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i317)
  %tobool.not.i318 = icmp eq i32 %call1.i317, 0
  br i1 %tobool.not.i318, label %land.lhs.true.i319.batadv_neigh_ifinfo_put.exit358.thread_crit_edge, label %land.lhs.true2.i321

land.lhs.true.i319.batadv_neigh_ifinfo_put.exit358.thread_crit_edge: ; preds = %land.lhs.true.i319
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_ifinfo_put.exit358.thread

land.lhs.true2.i321:                              ; preds = %land.lhs.true.i319
  %.b4.i320 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i320, label %land.lhs.true2.i321.batadv_neigh_ifinfo_put.exit358.thread_crit_edge, label %if.then.i322

land.lhs.true2.i321.batadv_neigh_ifinfo_put.exit358.thread_crit_edge: ; preds = %land.lhs.true2.i321
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_ifinfo_put.exit358.thread

if.then.i322:                                     ; preds = %land.lhs.true2.i321
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #11
  br label %batadv_neigh_ifinfo_put.exit358.thread

batadv_neigh_ifinfo_put.exit358.thread:           ; preds = %if.then.i322, %land.lhs.true2.i321.batadv_neigh_ifinfo_put.exit358.thread_crit_edge, %land.lhs.true.i319.batadv_neigh_ifinfo_put.exit358.thread_crit_edge, %unlock.batadv_neigh_ifinfo_put.exit358.thread_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %96 = call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i323 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i.i.i323 to ptr
  %preempt_count.i.i.i.i324 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i.i.i.i324 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i.i.i.i324, align 4
  %sub.i.i.i325 = add i32 %99, -1
  store volatile i32 %sub.i.i.i325, ptr %preempt_count.i.i.i.i324, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %batadv_neigh_ifinfo_put.exit369

if.end.i332:                                      ; preds = %if.end181, %if.then168.if.end.i332_crit_edge, %if.end147.if.end.i332_crit_edge, %if.then143.if.end.i332_crit_edge, %if.end137.if.end.i332_crit_edge, %rcu_read_unlock.exit.if.end.i332_crit_edge
  %router.0.ph = phi ptr [ null, %rcu_read_unlock.exit.if.end.i332_crit_edge ], [ %call138, %if.then143.if.end.i332_crit_edge ], [ %call138, %if.end181 ], [ %call138, %if.then168.if.end.i332_crit_edge ], [ %call138, %if.end147.if.end.i332_crit_edge ], [ %neigh_node.3, %if.end137.if.end.i332_crit_edge ]
  %router_ifinfo.1.ph = phi ptr [ null, %rcu_read_unlock.exit.if.end.i332_crit_edge ], [ null, %if.then143.if.end.i332_crit_edge ], [ %router_ifinfo.0376, %if.end181 ], [ %call144, %if.then168.if.end.i332_crit_edge ], [ %call144, %if.end147.if.end.i332_crit_edge ], [ null, %if.end137.if.end.i332_crit_edge ]
  %refcount.i328 = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.3, i32 0, i32 8
  %call.i.i.i.i.i.i.i329 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i328, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i328, i32 1, i32 3, i32 1) #11
  %100 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i328, ptr %refcount.i328, i32 1, ptr elementtype(i32) %refcount.i328) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i330 = extractvalue { i32, i32, i32 } %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i330)
  %cmp.i.i.i.i.i331 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i330, 1
  br i1 %cmp.i.i.i.i.i331, label %if.then.i.i336, label %if.end5.i.i.i.i.i334

if.end5.i.i.i.i.i334:                             ; preds = %if.end.i332
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i330)
  %.not.i.i.i.i.i333 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i330, 0
  br i1 %.not.i.i.i.i.i333, label %if.end5.i.i.i.i.i334.batadv_neigh_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i335, !prof !136

if.end5.i.i.i.i.i334.batadv_neigh_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i334
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_node_put.exit

if.then10.i.i.i.i.i335:                           ; preds = %if.end5.i.i.i.i.i334
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i328, i32 noundef 3) #11
  br label %batadv_neigh_node_put.exit

if.then.i.i336:                                   ; preds = %if.end.i332
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_node_release(ptr noundef %refcount.i328) #11
  br label %batadv_neigh_node_put.exit

batadv_neigh_node_put.exit:                       ; preds = %if.then.i.i336, %if.then10.i.i.i.i.i335, %if.end5.i.i.i.i.i334.batadv_neigh_node_put.exit_crit_edge
  %tobool.not.i337 = icmp eq ptr %router.0.ph, null
  br i1 %tobool.not.i337, label %batadv_neigh_node_put.exit.batadv_neigh_node_put.exit347_crit_edge, label %if.end.i342

batadv_neigh_node_put.exit.batadv_neigh_node_put.exit347_crit_edge: ; preds = %batadv_neigh_node_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_node_put.exit347

if.end.i342:                                      ; preds = %batadv_neigh_node_put.exit
  %refcount.i338 = getelementptr inbounds %struct.batadv_neigh_node, ptr %router.0.ph, i32 0, i32 8
  %call.i.i.i.i.i.i.i339 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i338, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i338, i32 1, i32 3, i32 1) #11
  %101 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i338, ptr %refcount.i338, i32 1, ptr elementtype(i32) %refcount.i338) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i340 = extractvalue { i32, i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i340)
  %cmp.i.i.i.i.i341 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i340, 1
  br i1 %cmp.i.i.i.i.i341, label %if.then.i.i346, label %if.end5.i.i.i.i.i344

if.end5.i.i.i.i.i344:                             ; preds = %if.end.i342
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i340)
  %.not.i.i.i.i.i343 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i340, 0
  br i1 %.not.i.i.i.i.i343, label %if.end5.i.i.i.i.i344.batadv_neigh_node_put.exit347_crit_edge, label %if.then10.i.i.i.i.i345, !prof !136

if.end5.i.i.i.i.i344.batadv_neigh_node_put.exit347_crit_edge: ; preds = %if.end5.i.i.i.i.i344
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_node_put.exit347

if.then10.i.i.i.i.i345:                           ; preds = %if.end5.i.i.i.i.i344
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i338, i32 noundef 3) #11
  br label %batadv_neigh_node_put.exit347

if.then.i.i346:                                   ; preds = %if.end.i342
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_node_release(ptr noundef %refcount.i338) #11
  br label %batadv_neigh_node_put.exit347

batadv_neigh_node_put.exit347:                    ; preds = %if.then.i.i346, %if.then10.i.i.i.i.i345, %if.end5.i.i.i.i.i344.batadv_neigh_node_put.exit347_crit_edge, %batadv_neigh_node_put.exit.batadv_neigh_node_put.exit347_crit_edge
  br i1 %tobool117.not, label %batadv_neigh_node_put.exit347.batadv_neigh_ifinfo_put.exit358_crit_edge, label %if.end.i353

batadv_neigh_node_put.exit347.batadv_neigh_ifinfo_put.exit358_crit_edge: ; preds = %batadv_neigh_node_put.exit347
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_ifinfo_put.exit358

if.end.i353:                                      ; preds = %batadv_neigh_node_put.exit347
  %refcount.i349 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call116, i32 0, i32 5
  %call.i.i.i.i.i.i.i350 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i349, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i349, i32 1, i32 3, i32 1) #11
  %102 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i349, ptr %refcount.i349, i32 1, ptr elementtype(i32) %refcount.i349) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i351 = extractvalue { i32, i32, i32 } %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i351)
  %cmp.i.i.i.i.i352 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i351, 1
  br i1 %cmp.i.i.i.i.i352, label %if.then.i.i357, label %if.end5.i.i.i.i.i355

if.end5.i.i.i.i.i355:                             ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i351)
  %.not.i.i.i.i.i354 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i351, 0
  br i1 %.not.i.i.i.i.i354, label %if.end5.i.i.i.i.i355.batadv_neigh_ifinfo_put.exit358_crit_edge, label %if.then10.i.i.i.i.i356, !prof !136

if.end5.i.i.i.i.i355.batadv_neigh_ifinfo_put.exit358_crit_edge: ; preds = %if.end5.i.i.i.i.i355
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_ifinfo_put.exit358

if.then10.i.i.i.i.i356:                           ; preds = %if.end5.i.i.i.i.i355
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i349, i32 noundef 3) #11
  br label %batadv_neigh_ifinfo_put.exit358

if.then.i.i357:                                   ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i349) #11
  br label %batadv_neigh_ifinfo_put.exit358

batadv_neigh_ifinfo_put.exit358:                  ; preds = %if.then.i.i357, %if.then10.i.i.i.i.i356, %if.end5.i.i.i.i.i355.batadv_neigh_ifinfo_put.exit358_crit_edge, %batadv_neigh_node_put.exit347.batadv_neigh_ifinfo_put.exit358_crit_edge
  %tobool.not.i359 = icmp eq ptr %router_ifinfo.1.ph, null
  br i1 %tobool.not.i359, label %batadv_neigh_ifinfo_put.exit358.batadv_neigh_ifinfo_put.exit369_crit_edge, label %if.end.i364

batadv_neigh_ifinfo_put.exit358.batadv_neigh_ifinfo_put.exit369_crit_edge: ; preds = %batadv_neigh_ifinfo_put.exit358
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_ifinfo_put.exit369

if.end.i364:                                      ; preds = %batadv_neigh_ifinfo_put.exit358
  %refcount.i360 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %router_ifinfo.1.ph, i32 0, i32 5
  %call.i.i.i.i.i.i.i361 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i360, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i360, i32 1, i32 3, i32 1) #11
  %103 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i360, ptr %refcount.i360, i32 1, ptr elementtype(i32) %refcount.i360) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i362 = extractvalue { i32, i32, i32 } %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i362)
  %cmp.i.i.i.i.i363 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i362, 1
  br i1 %cmp.i.i.i.i.i363, label %if.then.i.i368, label %if.end5.i.i.i.i.i366

if.end5.i.i.i.i.i366:                             ; preds = %if.end.i364
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i362)
  %.not.i.i.i.i.i365 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i362, 0
  br i1 %.not.i.i.i.i.i365, label %if.end5.i.i.i.i.i366.batadv_neigh_ifinfo_put.exit369_crit_edge, label %if.then10.i.i.i.i.i367, !prof !136

if.end5.i.i.i.i.i366.batadv_neigh_ifinfo_put.exit369_crit_edge: ; preds = %if.end5.i.i.i.i.i366
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_ifinfo_put.exit369

if.then10.i.i.i.i.i367:                           ; preds = %if.end5.i.i.i.i.i366
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i360, i32 noundef 3) #11
  br label %batadv_neigh_ifinfo_put.exit369

if.then.i.i368:                                   ; preds = %if.end.i364
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i360) #11
  br label %batadv_neigh_ifinfo_put.exit369

batadv_neigh_ifinfo_put.exit369:                  ; preds = %if.then.i.i368, %if.then10.i.i.i.i.i367, %if.end5.i.i.i.i.i366.batadv_neigh_ifinfo_put.exit369_crit_edge, %batadv_neigh_ifinfo_put.exit358.batadv_neigh_ifinfo_put.exit369_crit_edge, %batadv_neigh_ifinfo_put.exit358.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_iv_ogm_forward(ptr nocapture noundef readonly %ethhdr, ptr nocapture noundef %batadv_ogm_packet, i1 noundef zeroext %is_single_hop_neigh, i1 noundef zeroext %is_from_best_next_hop, ptr noundef %if_incoming, ptr noundef %if_outgoing) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_incoming, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %ttl = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet, i32 0, i32 2
  %2 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ttl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ult i8 %3, 2
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  %log_level = getelementptr i8, ptr %1, i32 2360
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %4 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end6:                                          ; preds = %entry
  br i1 %is_from_best_next_hop, label %if.end6.if.end14_crit_edge, label %if.then8

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  br i1 %is_single_hop_neigh, label %if.then10, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 1
  %8 = or i8 %7, 1
  store i8 %8, ptr %flags, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end6.if.end14_crit_edge
  %tvlv_len15 = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet, i32 0, i32 9
  %9 = ptrtoint ptr %tvlv_len15 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tvlv_len15, align 2
  %dec = add i8 %3, -1
  %11 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %dec, ptr %ttl, align 2
  %prev_sender = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet, i32 0, i32 6
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %ethhdr, i32 0, i32 1
  %12 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %h_source, align 4
  %14 = ptrtoint ptr %prev_sender to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %prev_sender, align 4
  %add.ptr.i2 = getelementptr %struct.ethhdr, ptr %ethhdr, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %add.ptr.i2 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i2, align 2
  %add.ptr1.i = getelementptr %struct.batadv_ogm_packet, ptr %batadv_ogm_packet, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %add.ptr1.i, align 2
  %tq = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet, i32 0, i32 8
  %18 = ptrtoint ptr %tq to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tq, align 1
  %hop_penalty1.i = getelementptr i8, ptr %1, i32 2356
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hop_penalty1.i, i32 noundef 4) #11
  %20 = ptrtoint ptr %hop_penalty1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %hop_penalty1.i, align 4
  %conv.i = zext i8 %19 to i32
  %sub.i = sub i32 255, %21
  %mul.i = mul i32 %sub.i, %conv.i
  %div.i = sdiv i32 %mul.i, 255
  %conv2.i = trunc i32 %div.i to i8
  %22 = ptrtoint ptr %tq to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv2.i, ptr %tq, align 1
  %log_level22 = getelementptr i8, ptr %1, i32 2360
  %call.i.i1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level22, i32 noundef 4) #11
  %23 = ptrtoint ptr %log_level22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %log_level22, align 4
  %and24 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end14.if.end32_crit_edge, label %if.then26

if.end14.if.end32_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then26:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %tq to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tq, align 1
  %conv28 = zext i8 %26 to i32
  %27 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ttl, align 2
  %conv30 = zext i8 %28 to i32
  %call31 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.28, i32 noundef %conv28, i32 noundef %conv30) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end14.if.end32_crit_edge
  %flags37 = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet, i32 0, i32 3
  %29 = ptrtoint ptr %flags37 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags37, align 1
  %31 = and i8 %30, -5
  %masksel = select i1 %is_single_hop_neigh, i8 4, i8 0
  %.sink = or i8 %31, %masksel
  store i8 %.sink, ptr %flags37, align 1
  %conv47 = zext i16 %10 to i32
  %add = add nuw nsw i32 %conv47, 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %call.i.i3 = tail call i32 @prandom_u32() #11
  %conv.i.i = zext i32 %call.i.i3 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 10
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv2.i.i) #11
  %add.i = add i32 %call2.i.i, %32
  tail call fastcc void @batadv_iv_ogm_queue_add(ptr noundef %add.ptr.i, ptr noundef %batadv_ogm_packet, i32 noundef %add, ptr noundef %if_incoming, ptr noundef %if_outgoing, i32 noundef 0, i32 noundef %add.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then8.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_neigh_node_put(ptr noundef %neigh_node) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tobool.not = icmp eq ptr %neigh_node, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !136

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @batadv_neigh_node_release(ptr noundef %refcount) #11
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_window_protected(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_neigh_ifinfo_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_bit_get_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @batadv_iv_orig_ifinfo_sum(ptr noundef %orig_node, ptr noundef %if_outgoing) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @batadv_orig_ifinfo_get(ptr noundef %orig_node, ptr noundef %if_outgoing) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %bat_iv = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 36
  tail call void @_raw_spin_lock_bh(ptr noundef %bat_iv) #11
  %bcast_own_sum = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %bcast_own_sum to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bcast_own_sum, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bat_iv) #11
  %refcount.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @batadv_orig_ifinfo_release(ptr noundef %refcount.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ %1, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %1, %if.then10.i.i.i.i.i ], [ %1, %if.then.i.i ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_is_wifi_hardif(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_neigh_node_get_or_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_update_route(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_iv_ogm_queue_add(ptr noundef %bat_priv, ptr nocapture noundef readonly %packet_buff, i32 noundef %packet_len, ptr noundef %if_incoming, ptr noundef %if_outgoing, i32 noundef %own_packet, i32 noundef %send_time) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.batadv_ogm_packet, ptr %packet_buff, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %forw_bat_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 24
  tail call void @_raw_spin_lock_bh(ptr noundef %forw_bat_list_lock) #11
  %aggregated_ogms = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aggregated_ogms, i32 noundef 4) #11
  %3 = ptrtoint ptr %aggregated_ogms to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %aggregated_ogms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp ne i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %own_packet)
  %tobool4.not = icmp eq i32 %own_packet, 0
  %or.cond = and i1 %tobool4.not, %tobool3.not
  br i1 %or.cond, label %if.then, label %entry.if.then23_crit_edge

entry.if.then23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

if.then:                                          ; preds = %entry
  %forw_bat_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 20
  %5 = ptrtoint ptr %forw_bat_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %forw_packet_pos.079 = load ptr, ptr %forw_bat_list, align 4
  %tobool7.not80 = icmp eq ptr %forw_packet_pos.079, null
  br i1 %tobool7.not80, label %if.then.if.then23_crit_edge, label %for.body.lr.ph

if.then.if.then23_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

for.body.lr.ph:                                   ; preds = %if.then
  %add2.i = add i32 %send_time, 10
  %ttl39.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %packet_buff, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %forw_packet_pos.081 = phi ptr [ %forw_packet_pos.079, %for.body.lr.ph ], [ %forw_packet_pos.0, %for.inc.for.body_crit_edge ]
  %skb.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet_pos.081, i32 0, i32 4
  %6 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %send_time3.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet_pos.081, i32 0, i32 2
  %10 = ptrtoint ptr %send_time3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %send_time3.i, align 4
  %sub.i = sub i32 %send_time, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %lor.lhs.false.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %for.body
  %packet_len1.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet_pos.081, i32 0, i32 5
  %12 = ptrtoint ptr %packet_len1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %packet_len1.i, align 4
  %conv.i = zext i16 %13 to i32
  %add.i = add i32 %conv.i, %packet_len
  %sub6.i = sub i32 %add2.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i)
  %cmp7.i = icmp slt i32 %sub6.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add.i)
  %cmp9.i = icmp sgt i32 %add.i, 512
  %or.cond86.i = select i1 %cmp7.i, i1 true, i1 %cmp9.i
  br i1 %or.cond86.i, label %lor.lhs.false.i.for.inc_crit_edge, label %if.end12.i

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end12.i:                                       ; preds = %lor.lhs.false.i
  %if_outgoing13.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet_pos.081, i32 0, i32 10
  %14 = ptrtoint ptr %if_outgoing13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %if_outgoing13.i, align 4
  %cmp14.not.i = icmp eq ptr %15, %if_outgoing
  br i1 %cmp14.not.i, label %if.end17.i, label %if.end12.i.for.inc_crit_edge

if.end12.i.for.inc_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end17.i:                                       ; preds = %if.end12.i
  %call18.i = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv) #11
  %tobool.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool.not.i, label %if.end17.i.for.inc_crit_edge, label %if.end20.i

if.end17.i.for.inc_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end20.i:                                       ; preds = %if.end17.i
  br i1 %tobool.not, label %land.lhs.true.i, label %land.lhs.true38.critedge.i

land.lhs.true.i:                                  ; preds = %if.end20.i
  %flags.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags.i, align 1
  %18 = and i8 %17, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool23.not.i = icmp eq i8 %18, 0
  br i1 %tobool23.not.i, label %land.lhs.true24.i, label %land.lhs.true.i.if.end.i.i_crit_edge

land.lhs.true.i.if.end.i.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true24.i:                                ; preds = %land.lhs.true.i
  %ttl.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %9, i32 0, i32 2
  %19 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ttl.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp26.not.i = icmp eq i8 %20, 1
  br i1 %cmp26.not.i, label %land.lhs.true24.i.if.end.i.i_crit_edge, label %land.lhs.true28.i

land.lhs.true24.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true28.i:                                ; preds = %land.lhs.true24.i
  %own.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet_pos.081, i32 0, i32 3
  %21 = ptrtoint ptr %own.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %own.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool29.not.i = icmp eq i8 %22, 0
  br i1 %tobool29.not.i, label %land.lhs.true28.i.if.end.i.i_crit_edge, label %lor.lhs.false30.i

land.lhs.true28.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

lor.lhs.false30.i:                                ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #13
  %if_incoming31.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet_pos.081, i32 0, i32 9
  %23 = ptrtoint ptr %if_incoming31.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %if_incoming31.i, align 4
  %cmp32.i = icmp eq ptr %24, %call18.i
  br label %if.end.i.i

land.lhs.true38.critedge.i:                       ; preds = %if.end20.i
  %25 = ptrtoint ptr %ttl39.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ttl39.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp41.i = icmp eq i8 %26, 1
  br i1 %cmp41.i, label %land.lhs.true43.i, label %land.lhs.true38.critedge.i.if.end.i.i_crit_edge

land.lhs.true38.critedge.i.if.end.i.i_crit_edge:  ; preds = %land.lhs.true38.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true43.i:                                ; preds = %land.lhs.true38.critedge.i
  %if_incoming44.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet_pos.081, i32 0, i32 9
  %27 = ptrtoint ptr %if_incoming44.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %if_incoming44.i, align 4
  %cmp45.i = icmp eq ptr %28, %if_incoming
  br i1 %cmp45.i, label %land.lhs.true47.i, label %land.lhs.true43.i.if.end.i.i_crit_edge

land.lhs.true43.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true47.i:                                ; preds = %land.lhs.true43.i
  %flags48.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %9, i32 0, i32 3
  %29 = ptrtoint ptr %flags48.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags48.i, align 1
  %31 = and i8 %30, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool51.not.i = icmp eq i8 %31, 0
  br i1 %tobool51.not.i, label %lor.lhs.false52.i, label %land.lhs.true47.i.if.then60.i_crit_edge

land.lhs.true47.i.if.then60.i_crit_edge:          ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60.i

lor.lhs.false52.i:                                ; preds = %land.lhs.true47.i
  %own53.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet_pos.081, i32 0, i32 3
  %32 = ptrtoint ptr %own53.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %own53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool55.not.i = icmp eq i8 %33, 0
  %cmp58.not.i = icmp eq ptr %call18.i, %if_incoming
  %or.cond.i = select i1 %tobool55.not.i, i1 true, i1 %cmp58.not.i
  br i1 %or.cond.i, label %lor.lhs.false52.i.if.end.i.i_crit_edge, label %lor.lhs.false52.i.if.then60.i_crit_edge

lor.lhs.false52.i.if.then60.i_crit_edge:          ; preds = %lor.lhs.false52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60.i

lor.lhs.false52.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then60.i:                                      ; preds = %lor.lhs.false52.i.if.then60.i_crit_edge, %land.lhs.true47.i.if.then60.i_crit_edge
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then60.i, %lor.lhs.false52.i.if.end.i.i_crit_edge, %land.lhs.true43.i.if.end.i.i_crit_edge, %land.lhs.true38.critedge.i.if.end.i.i_crit_edge, %lor.lhs.false30.i, %land.lhs.true28.i.if.end.i.i_crit_edge, %land.lhs.true24.i.if.end.i.i_crit_edge, %land.lhs.true.i.if.end.i.i_crit_edge
  %res.0.off0.i = phi i1 [ true, %if.then60.i ], [ false, %lor.lhs.false52.i.if.end.i.i_crit_edge ], [ false, %land.lhs.true43.i.if.end.i.i_crit_edge ], [ false, %land.lhs.true38.critedge.i.if.end.i.i_crit_edge ], [ true, %land.lhs.true28.i.if.end.i.i_crit_edge ], [ false, %land.lhs.true24.i.if.end.i.i_crit_edge ], [ false, %land.lhs.true.i.if.end.i.i_crit_edge ], [ %cmp32.i, %lor.lhs.false30.i ]
  %refcount.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call18.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %batadv_iv_ogm_can_aggregate.exit, label %if.then10.i.i.i.i.i.i, !prof !136

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #11
  br i1 %res.0.off0.i, label %if.then10.i.i.i.i.i.i.if.else_crit_edge, label %if.then10.i.i.i.i.i.i.for.inc_crit_edge

if.then10.i.i.i.i.i.i.for.inc_crit_edge:          ; preds = %if.then10.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10.i.i.i.i.i.i.if.else_crit_edge:          ; preds = %if.then10.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then.i.i.i:                                    ; preds = %if.end.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @batadv_hardif_release(ptr noundef %refcount.i.i) #11
  br i1 %res.0.off0.i, label %if.then.i.i.i.if.else_crit_edge, label %if.then.i.i.i.for.inc_crit_edge

if.then.i.i.i.for.inc_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i.i.i.if.else_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

batadv_iv_ogm_can_aggregate.exit:                 ; preds = %if.end5.i.i.i.i.i.i
  br i1 %res.0.off0.i, label %batadv_iv_ogm_can_aggregate.exit.if.else_crit_edge, label %batadv_iv_ogm_can_aggregate.exit.for.inc_crit_edge

batadv_iv_ogm_can_aggregate.exit.for.inc_crit_edge: ; preds = %batadv_iv_ogm_can_aggregate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

batadv_iv_ogm_can_aggregate.exit.if.else_crit_edge: ; preds = %batadv_iv_ogm_can_aggregate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

for.inc:                                          ; preds = %batadv_iv_ogm_can_aggregate.exit.for.inc_crit_edge, %if.then.i.i.i.for.inc_crit_edge, %if.then10.i.i.i.i.i.i.for.inc_crit_edge, %if.end17.i.for.inc_crit_edge, %if.end12.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %35 = ptrtoint ptr %forw_packet_pos.081 to i32
  call void @__asan_load4_noabort(i32 %35)
  %forw_packet_pos.0 = load ptr, ptr %forw_packet_pos.081, align 4
  %tobool7.not = icmp eq ptr %forw_packet_pos.0, null
  br i1 %tobool7.not, label %for.inc.if.then23_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.then23_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

if.then23:                                        ; preds = %for.inc.if.then23_crit_edge, %if.then.if.then23_crit_edge, %entry.if.then23_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %forw_bat_list_lock) #11
  br i1 %tobool4.not, label %land.lhs.true26, label %if.then23.if.end31_crit_edge

if.then23.if.end31_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true26:                                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i64 = tail call zeroext i1 @__kasan_check_read(ptr noundef %aggregated_ogms, i32 noundef 4) #11
  %36 = ptrtoint ptr %aggregated_ogms to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %aggregated_ogms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool29.not = icmp eq i32 %37, 0
  %add = add i32 %send_time, 10
  %spec.select63 = select i1 %tobool29.not, i32 %send_time, i32 %add
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true26, %if.then23.if.end31_crit_edge
  %send_time.addr.0 = phi i32 [ %send_time, %if.then23.if.end31_crit_edge ], [ %spec.select63, %land.lhs.true26 ]
  %soft_iface.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_incoming, i32 0, i32 7
  %38 = ptrtoint ptr %soft_iface.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %soft_iface.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 2304
  %aggregated_ogms.i = getelementptr i8, ptr %39, i32 2316
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aggregated_ogms.i, i32 noundef 4) #11
  %40 = ptrtoint ptr %aggregated_ogms.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %aggregated_ogms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool2.not.i = icmp ne i32 %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %packet_len)
  %cmp.i65 = icmp slt i32 %packet_len, 512
  %or.cond.i66 = and i1 %cmp.i65, %tobool2.not.i
  %phi.bo.op.i = add i32 %packet_len, 16
  %add.i.i.i = select i1 %or.cond.i66, i32 528, i32 %phi.bo.op.i
  %call.i.i71.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i.i.i, i32 noundef 2592) #11
  %tobool.not.i.i.i = icmp eq ptr %call.i.i71.i, null
  br i1 %tobool.not.i.i.i, label %if.end31.if.end35_crit_edge, label %if.end6.i

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.end6.i:                                        ; preds = %if.end31
  %batman_queue_left.i = getelementptr i8, ptr %39, i32 2380
  %spec.select.i = select i1 %tobool4.not, ptr %batman_queue_left.i, ptr null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i71.i, i32 0, i32 19
  %42 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %43, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i71.i, i32 0, i32 16
  %44 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %45, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %call7.i = tail call ptr @batadv_forw_packet_alloc(ptr noundef %if_incoming, ptr noundef %if_outgoing, ptr noundef %spec.select.i, ptr noundef %add.ptr.i.i, ptr noundef nonnull %call.i.i71.i) #11
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i71.i, i32 noundef 0) #11
  br label %if.end35

if.end10.i:                                       ; preds = %if.end6.i
  %skb11.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call7.i, i32 0, i32 4
  %46 = ptrtoint ptr %skb11.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skb11.i, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 15, i32 0, i32 6
  %48 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 7, ptr %priority.i, align 4
  %49 = load ptr, ptr %skb11.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %51, i32 14
  store ptr %add.ptr.i72.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 16
  %52 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %53, i32 14
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %54 = load ptr, ptr %skb11.i, align 4
  %call14.i = tail call ptr @skb_put(ptr noundef %54, i32 noundef %packet_len) #11
  %conv.i68 = trunc i32 %packet_len to i16
  %packet_len15.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call7.i, i32 0, i32 5
  %55 = ptrtoint ptr %packet_len15.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i68, ptr %packet_len15.i, align 4
  %56 = call ptr @memcpy(ptr %call14.i, ptr %packet_buff, i32 %packet_len)
  %conv16.i = trunc i32 %own_packet to i8
  %own.i69 = getelementptr inbounds %struct.batadv_forw_packet, ptr %call7.i, i32 0, i32 3
  %57 = ptrtoint ptr %own.i69 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv16.i, ptr %own.i69, align 4
  %direct_link_flags.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call7.i, i32 0, i32 6
  %58 = ptrtoint ptr %direct_link_flags.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %direct_link_flags.i, align 4
  %send_time17.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call7.i, i32 0, i32 2
  %59 = ptrtoint ptr %send_time17.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %send_time.addr.0, ptr %send_time17.i, align 4
  br i1 %tobool.not, label %if.end10.i.do.body22.i_crit_edge, label %if.then19.i

if.end10.i.do.body22.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body22.i

if.then19.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %direct_link_flags.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %direct_link_flags.i, align 4
  br label %do.body22.i

do.body22.i:                                      ; preds = %if.then19.i, %if.end10.i.do.body22.i_crit_edge
  %delayed_work.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call7.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %delayed_work.i, i32 noundef 0) #11
  %61 = ptrtoint ptr %delayed_work.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -64, ptr %delayed_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call7.i, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @batadv_iv_ogm_aggregate_new.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry29.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call7.i, i32 0, i32 8, i32 0, i32 1
  %62 = ptrtoint ptr %entry29.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %entry29.i, ptr %entry29.i, align 4
  %prev.i.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call7.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %entry29.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call7.i, i32 0, i32 8, i32 0, i32 2
  %64 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @batadv_iv_send_outstanding_bat_ogm_packet, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call7.i, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.33, ptr noundef nonnull @batadv_iv_ogm_aggregate_new.__key.32) #11
  tail call void @batadv_forw_packet_ogmv1_queue(ptr noundef %add.ptr.i.i, ptr noundef nonnull %call7.i, i32 noundef %send_time.addr.0) #11
  br label %if.end35

if.else:                                          ; preds = %batadv_iv_ogm_can_aggregate.exit.if.else_crit_edge, %if.then.i.i.i.if.else_crit_edge, %if.then10.i.i.i.i.i.i.if.else_crit_edge
  %skb.i.le = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet_pos.081, i32 0, i32 4
  %packet_len1.i.le = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet_pos.081, i32 0, i32 5
  %65 = ptrtoint ptr %skb.i.le to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %skb.i.le, align 4
  %call.i.i71 = tail call ptr @skb_put(ptr noundef %66, i32 noundef %packet_len) #11
  %67 = call ptr @memcpy(ptr %call.i.i71, ptr %packet_buff, i32 %packet_len)
  %68 = ptrtoint ptr %packet_len1.i.le to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %packet_len1.i.le, align 4
  %70 = trunc i32 %packet_len to i16
  %conv2.i = add i16 %69, %70
  store i16 %conv2.i, ptr %packet_len1.i.le, align 4
  %num_packets.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet_pos.081, i32 0, i32 7
  %71 = ptrtoint ptr %num_packets.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %num_packets.i, align 4
  %inc.i = add i8 %72, 1
  store i8 %inc.i, ptr %num_packets.i, align 4
  br i1 %tobool.not, label %if.else.batadv_iv_ogm_aggregate.exit_crit_edge, label %if.then.i

if.else.batadv_iv_ogm_aggregate.exit_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_aggregate.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv4.i = zext i8 %inc.i to i32
  %shl.i = shl nuw i32 1, %conv4.i
  %direct_link_flags.i73 = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet_pos.081, i32 0, i32 6
  %73 = ptrtoint ptr %direct_link_flags.i73 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %direct_link_flags.i73, align 4
  %or.i = or i32 %74, %shl.i
  store i32 %or.i, ptr %direct_link_flags.i73, align 4
  br label %batadv_iv_ogm_aggregate.exit

batadv_iv_ogm_aggregate.exit:                     ; preds = %if.then.i, %if.else.batadv_iv_ogm_aggregate.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %forw_bat_list_lock) #11
  br label %if.end35

if.end35:                                         ; preds = %batadv_iv_ogm_aggregate.exit, %do.body22.i, %if.then9.i, %if.end31.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv) unnamed_addr #6 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %primary_if = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 29
  %4 = ptrtoint ptr %primary_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %primary_if, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b18 = load i1, ptr @batadv_primary_if_get_selected.__warned, align 1
  br i1 %.b18, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_primary_if_get_selected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 110, ptr noundef nonnull @.str.30) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.out_crit_edge, label %if.end11

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %do.end7
  %refcount = getelementptr inbounds %struct.batadv_hard_iface, ptr %5, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #11
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #11, !srcloc !138
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !136

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !136

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #11
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %spec.select = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %5
  br label %out

out:                                              ; preds = %kref_get_unless_zero.exit, %do.end7.out_crit_edge
  %hard_iface.0 = phi ptr [ null, %do.end7.out_crit_edge ], [ %spec.select, %kref_get_unless_zero.exit ]
  %call.i19 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i19, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %out
  %call1.i20 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %18 = call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i26 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %hard_iface.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_forw_packet_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_iv_send_outstanding_bat_ogm_packet(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -40
  %if_incoming = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_incoming, align 4
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_incoming, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #15
  br label %batadv_iv_ogm_emit.exit

if.end.i:                                         ; preds = %if.end
  %if_outgoing.i = getelementptr i8, ptr %work, i32 104
  %8 = ptrtoint ptr %if_outgoing.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %if_outgoing.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %do.end16.i, label %if.end32.i, !prof !130

do.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 409, i32 noundef 9, ptr noundef null) #11
  br label %batadv_iv_ogm_emit.exit

if.end32.i:                                       ; preds = %if.end.i
  %soft_iface2.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %soft_iface2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soft_iface2.i, align 4
  %soft_iface34.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %9, i32 0, i32 7
  %12 = ptrtoint ptr %soft_iface34.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soft_iface34.i, align 4
  %cmp.not.i = icmp eq ptr %13, %11
  br i1 %cmp.not.i, label %if.end41.i, label %do.end38.i

do.end38.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35) #15
  br label %batadv_iv_ogm_emit.exit

if.end41.i:                                       ; preds = %if.end32.i
  %if_status.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %if_status.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %if_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp43.not.i = icmp eq i8 %15, 3
  br i1 %cmp43.not.i, label %if.end46.i, label %if.end41.i.batadv_iv_ogm_emit.exit_crit_edge

if.end41.i.batadv_iv_ogm_emit.exit_crit_edge:     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_emit.exit

if.end46.i:                                       ; preds = %if.end41.i
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 2304
  %if_status.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %if_status.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %if_status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp.not.i.i = icmp eq i8 %17, 3
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end46.i.batadv_iv_ogm_emit.exit_crit_edge

if.end46.i.batadv_iv_ogm_emit.exit_crit_edge:     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_emit.exit

if.end.i.i:                                       ; preds = %if.end46.i
  %skb2.i.i = getelementptr i8, ptr %work, i32 -16
  %packet_len.i.i = getelementptr i8, ptr %work, i32 -12
  %18 = ptrtoint ptr %packet_len.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %packet_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %19)
  %cmp.i111.i.i = icmp ult i16 %19, 24
  br i1 %cmp.i111.i.i, label %if.end.i.i.while.end.i.i_crit_edge, label %batadv_iv_ogm_aggr_packet.exit.lr.ph.i.i

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

batadv_iv_ogm_aggr_packet.exit.lr.ph.i.i:         ; preds = %if.end.i.i
  %conv4110.i.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb2.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %direct_link_flags.i.i = getelementptr i8, ptr %work, i32 -8
  %own.i.i = getelementptr i8, ptr %work, i32 -20
  %log_level.i.i = getelementptr i8, ptr %11, i32 2360
  %net_dev.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %9, i32 0, i32 4
  br label %batadv_iv_ogm_aggr_packet.exit.i.i

batadv_iv_ogm_aggr_packet.exit.i.i:               ; preds = %if.end41.i.i.batadv_iv_ogm_aggr_packet.exit.i.i_crit_edge, %batadv_iv_ogm_aggr_packet.exit.lr.ph.i.i
  %add.i117.i.i = phi i32 [ 24, %batadv_iv_ogm_aggr_packet.exit.lr.ph.i.i ], [ %add.i.i.i, %if.end41.i.i.batadv_iv_ogm_aggr_packet.exit.i.i_crit_edge ]
  %conv4116.i.i = phi i32 [ %conv4110.i.i, %batadv_iv_ogm_aggr_packet.exit.lr.ph.i.i ], [ %conv4.i.i, %if.end41.i.i.batadv_iv_ogm_aggr_packet.exit.i.i_crit_edge ]
  %sext115.i.i = phi i32 [ 0, %batadv_iv_ogm_aggr_packet.exit.lr.ph.i.i ], [ %59, %if.end41.i.i.batadv_iv_ogm_aggr_packet.exit.i.i_crit_edge ]
  %batadv_ogm_packet.0113.i.i = phi ptr [ %23, %batadv_iv_ogm_aggr_packet.exit.lr.ph.i.i ], [ %add.ptr.i.i, %if.end41.i.i.batadv_iv_ogm_aggr_packet.exit.i.i_crit_edge ]
  %packet_num.0112.i.i = phi i8 [ 0, %batadv_iv_ogm_aggr_packet.exit.lr.ph.i.i ], [ %inc.i.i, %if.end41.i.i.batadv_iv_ogm_aggr_packet.exit.i.i_crit_edge ]
  %tvlv_len.i.i.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet.0113.i.i, i32 0, i32 9
  %24 = ptrtoint ptr %tvlv_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tvlv_len.i.i.i, align 2
  %conv.i.i.i = zext i16 %25 to i32
  %add2.i.i.i = add nsw i32 %add.i117.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i.i.i, i32 %conv4116.i.i)
  %cmp3.not.i.i.i = icmp sle i32 %add2.i.i.i, %conv4116.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %add2.i.i.i)
  %cmp5.i.i.i = icmp slt i32 %add2.i.i.i, 513
  %spec.select.i.i.i = and i1 %cmp3.not.i.i.i, %cmp5.i.i.i
  br i1 %spec.select.i.i.i, label %while.body.i.i, label %batadv_iv_ogm_aggr_packet.exit.i.i.while.end.i.i_crit_edge

batadv_iv_ogm_aggr_packet.exit.i.i.while.end.i.i_crit_edge: ; preds = %batadv_iv_ogm_aggr_packet.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %batadv_iv_ogm_aggr_packet.exit.i.i
  %26 = ptrtoint ptr %direct_link_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %direct_link_flags.i.i, align 4
  %conv6.i.i = zext i8 %packet_num.0112.i.i to i32
  %shl.i.i = shl nuw i32 1, %conv6.i.i
  %and.i.i = and i32 %27, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

while.body.i.i.if.else.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %28 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %if_incoming, align 4
  %cmp7.i.i = icmp eq ptr %29, %9
  br i1 %cmp7.i.i, label %if.then9.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet.0113.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flags.i.i, align 1
  %32 = or i8 %31, 4
  store i8 %32, ptr %flags.i.i, align 1
  br label %if.end16.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %while.body.i.i.if.else.i.i_crit_edge
  %flags12.i.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet.0113.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %flags12.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flags12.i.i, align 1
  %35 = and i8 %34, -5
  store i8 %35, ptr %flags12.i.i, align 1
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.else.i.i, %if.then9.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %packet_num.0112.i.i)
  %cmp18.not.i.i = icmp eq i8 %packet_num.0112.i.i, 0
  br i1 %cmp18.not.i.i, label %lor.lhs.false.i.i, label %if.end16.i.i.do.body.i.i_crit_edge

if.end16.i.i.do.body.i.i_crit_edge:               ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

lor.lhs.false.i.i:                                ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %own.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %own.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool20.not.i.i = icmp eq i8 %37, 0
  %spec.select.i.i = select i1 %tobool20.not.i.i, ptr @.str.39, ptr @.str.40
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %lor.lhs.false.i.i, %if.end16.i.i.do.body.i.i_crit_edge
  %fwd_str.0.i.i = phi ptr [ @.str.39, %if.end16.i.i.do.body.i.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i.i, i32 noundef 4) #11
  %38 = ptrtoint ptr %log_level.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %log_level.i.i, align 4
  %and25.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %do.body.i.i.if.end41.i.i_crit_edge, label %if.then27.i.i

do.body.i.i.if.end41.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i.i

if.then27.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %cond.i.i = select i1 %cmp18.not.i.i, ptr @.str.43, ptr @.str.42
  %orig.i.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet.0113.i.i, i32 0, i32 5
  %seqno.i.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet.0113.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %seqno.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %seqno.i.i, align 2
  %tq.i.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet.0113.i.i, i32 0, i32 8
  %42 = ptrtoint ptr %tq.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tq.i.i, align 1
  %conv31.i.i = zext i8 %43 to i32
  %ttl.i.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet.0113.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %ttl.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ttl.i.i, align 2
  %conv32.i.i = zext i8 %45 to i32
  %flags33.i.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet.0113.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %flags33.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %flags33.i.i, align 1
  %48 = and i8 %47, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool36.not.i.i = icmp eq i8 %48, 0
  %cond37.i.i = select i1 %tobool36.not.i.i, ptr @.str.45, ptr @.str.44
  %49 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net_dev.i.i, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 86
  %51 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_addr.i.i, align 64
  %call40.i.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull @.str.41, ptr noundef nonnull %fwd_str.0.i.i, ptr noundef nonnull %cond.i.i, ptr noundef %orig.i.i, i32 noundef %41, i32 noundef %conv31.i.i, i32 noundef %conv32.i.i, ptr noundef nonnull %cond37.i.i, ptr noundef %50, ptr noundef %52) #11
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then27.i.i, %do.body.i.i.if.end41.i.i_crit_edge
  %53 = ptrtoint ptr %tvlv_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %tvlv_len.i.i.i, align 2
  %conv44.i.i = zext i16 %54 to i32
  %sext95.i.i = add i32 %sext115.i.i, 1572864
  %inc.i.i = add i8 %packet_num.0112.i.i, 1
  %55 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skb2.i.i, align 4
  %data49.i.i = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 19
  %57 = ptrtoint ptr %data49.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data49.i.i, align 4
  %add46118.i.i = shl nuw i32 %conv44.i.i, 16
  %59 = add i32 %sext95.i.i, %add46118.i.i
  %conv50.i.i = ashr exact i32 %59, 16
  %add.ptr.i.i = getelementptr i8, ptr %58, i32 %conv50.i.i
  %60 = ptrtoint ptr %packet_len.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %packet_len.i.i, align 4
  %conv4.i.i = zext i16 %61 to i32
  %add.i.i.i = add nsw i32 %conv50.i.i, 24
  %cmp.i.i.i = icmp sgt i32 %add.i.i.i, %conv4.i.i
  br i1 %cmp.i.i.i, label %if.end41.i.i.while.end.i.i_crit_edge, label %if.end41.i.i.batadv_iv_ogm_aggr_packet.exit.i.i_crit_edge

if.end41.i.i.batadv_iv_ogm_aggr_packet.exit.i.i_crit_edge: ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_aggr_packet.exit.i.i

if.end41.i.i.while.end.i.i_crit_edge:             ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end41.i.i.while.end.i.i_crit_edge, %batadv_iv_ogm_aggr_packet.exit.i.i.while.end.i.i_crit_edge, %if.end.i.i.while.end.i.i_crit_edge
  %62 = ptrtoint ptr %skb2.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skb2.i.i, align 4
  %call52.i.i = tail call ptr @skb_clone(ptr noundef %63, i32 noundef 2592) #11
  %tobool53.not.i.i = icmp eq ptr %call52.i.i, null
  br i1 %tobool53.not.i.i, label %while.end.i.i.batadv_iv_ogm_emit.exit_crit_edge, label %if.then54.i.i

while.end.i.i.batadv_iv_ogm_emit.exit_crit_edge:  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_emit.exit

if.then54.i.i:                                    ; preds = %while.end.i.i
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !128
  %bat_counters.i.i.i = getelementptr i8, ptr %11, i32 2312
  %65 = ptrtoint ptr %bat_counters.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bat_counters.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i64, ptr %66, i32 7
  %67 = ptrtoint ptr %arrayidx.i.i.i to i32
  %68 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx14.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx14.i.i.i, align 4
  %add.i97.i.i = add i32 %73, %67
  %74 = inttoptr i32 %add.i97.i.i to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %74, align 8
  %add15.i.i.i = add i64 %76, 1
  store i64 %add15.i.i.i, ptr %74, align 8
  %77 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !129
  %and.i.i.i.i.i = and i32 %77, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then54.i.i.batadv_add_counter.exit.i.i_crit_edge, !prof !130

if.then54.i.i.batadv_add_counter.exit.i.i_crit_edge: ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_add_counter.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %batadv_add_counter.exit.i.i

batadv_add_counter.exit.i.i:                      ; preds = %if.then.i.i.i, %if.then54.i.i.batadv_add_counter.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %64) #11, !srcloc !131
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call52.i.i, i32 0, i32 6
  %78 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i.i, align 4
  %add55.i.i = add i32 %79, 14
  %80 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !128
  %conv6.i.i.i = zext i32 %add55.i.i to i64
  %81 = ptrtoint ptr %bat_counters.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bat_counters.i.i.i, align 4
  %arrayidx.i99.i.i = getelementptr i64, ptr %82, i32 8
  %83 = ptrtoint ptr %arrayidx.i99.i.i to i32
  %84 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i100.i.i = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i100.i.i to ptr
  %cpu.i101.i.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %cpu.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cpu.i101.i.i, align 4
  %arrayidx14.i102.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx14.i102.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx14.i102.i.i, align 4
  %add.i103.i.i = add i32 %89, %83
  %90 = inttoptr i32 %add.i103.i.i to ptr
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %90, align 8
  %add15.i104.i.i = add i64 %92, %conv6.i.i.i
  store i64 %add15.i104.i.i, ptr %90, align 8
  %93 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !129
  %and.i.i.i105.i.i = and i32 %93, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i105.i.i)
  %tobool.not.i106.i.i = icmp eq i32 %and.i.i.i105.i.i, 0
  br i1 %tobool.not.i106.i.i, label %if.then.i107.i.i, label %batadv_add_counter.exit.i.i.batadv_add_counter.exit108.i.i_crit_edge, !prof !130

batadv_add_counter.exit.i.i.batadv_add_counter.exit108.i.i_crit_edge: ; preds = %batadv_add_counter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_add_counter.exit108.i.i

if.then.i107.i.i:                                 ; preds = %batadv_add_counter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %batadv_add_counter.exit108.i.i

batadv_add_counter.exit108.i.i:                   ; preds = %if.then.i107.i.i, %batadv_add_counter.exit.i.i.batadv_add_counter.exit108.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %80) #11, !srcloc !131
  %call56.i.i = tail call i32 @batadv_send_broadcast_skb(ptr noundef nonnull %call52.i.i, ptr noundef nonnull %9) #11
  br label %batadv_iv_ogm_emit.exit

batadv_iv_ogm_emit.exit:                          ; preds = %batadv_add_counter.exit108.i.i, %while.end.i.i.batadv_iv_ogm_emit.exit_crit_edge, %if.end46.i.batadv_iv_ogm_emit.exit_crit_edge, %if.end41.i.batadv_iv_ogm_emit.exit_crit_edge, %do.end38.i, %do.end16.i, %do.end.i
  %own = getelementptr i8, ptr %work, i32 -20
  %94 = ptrtoint ptr %own to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %own, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not = icmp eq i8 %95, 0
  br i1 %tobool.not, label %batadv_iv_ogm_emit.exit.out_crit_edge, label %land.lhs.true

batadv_iv_ogm_emit.exit.out_crit_edge:            ; preds = %batadv_iv_ogm_emit.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true:                                    ; preds = %batadv_iv_ogm_emit.exit
  %96 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %if_incoming, align 4
  %if_outgoing = getelementptr i8, ptr %work, i32 104
  %98 = ptrtoint ptr %if_outgoing to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %if_outgoing, align 4
  %cmp4 = icmp eq ptr %97, %99
  br i1 %cmp4, label %if.then6, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @batadv_iv_ogm_schedule(ptr noundef %97)
  br label %out

out:                                              ; preds = %if.then6, %land.lhs.true.out_crit_edge, %batadv_iv_ogm_emit.exit.out_crit_edge, %entry.out_crit_edge
  %forw_bat_list_lock = getelementptr i8, ptr %3, i32 2400
  %call9 = tail call zeroext i1 @batadv_forw_packet_steal(ptr noundef %add.ptr, ptr noundef %forw_bat_list_lock) #11
  br i1 %call9, label %if.then10, label %out.if.end12_crit_edge

out.if.end12_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @batadv_forw_packet_free(ptr noundef %add.ptr, i1 noundef zeroext %cmp) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %out.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_forw_packet_ogmv1_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_iv_ogm_schedule(ptr noundef %hard_iface) unnamed_addr #3 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 1
  %0 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch = icmp ult i8 %1, 2
  br i1 %switch, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %ogm_buff_mutex = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 10, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ogm_buff_mutex, i32 noundef 0) #11
  %soft_iface.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 7
  %2 = ptrtoint ptr %soft_iface.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soft_iface.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  %bat_iv.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 10
  %ogm_buff_len3.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 10, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 10, i32 3, i32 5
  %call.i135.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135.i)
  %cmp.not.i = icmp eq i32 %call.i135.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !130

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 791, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %5 = ptrtoint ptr %bat_iv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bat_iv.i, align 4
  %tobool29.not.i = icmp eq ptr %6, null
  br i1 %tobool29.not.i, label %if.end.i.batadv_iv_ogm_schedule_buff.exit_crit_edge, label %if.end31.i

if.end.i.batadv_iv_ogm_schedule_buff.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_schedule_buff.exit

if.end31.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp32.i = icmp eq i8 %8, 4
  br i1 %cmp32.i, label %if.then34.i, label %if.end31.i.if.end36.i_crit_edge

if.end31.i.if.end36.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %if_status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %if_status, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then34.i, %if.end31.i.if.end36.i_crit_edge
  %call37.i = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i.i) #11
  %cmp38.i = icmp eq ptr %call37.i, %hard_iface
  br i1 %cmp38.i, label %if.then40.i, label %if.end36.i.if.end42.i_crit_edge

if.end36.i.if.end42.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.then40.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @batadv_tt_local_commit_changes(ptr noundef %add.ptr.i.i) #11
  %call41.i = tail call zeroext i16 @batadv_tvlv_container_ogm_append(ptr noundef %add.ptr.i.i, ptr noundef %bat_iv.i, ptr noundef %ogm_buff_len3.i, i32 noundef 24) #11
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then40.i, %if.end36.i.if.end42.i_crit_edge
  %tvlv_len.0.i = phi i16 [ %call41.i, %if.then40.i ], [ 0, %if.end36.i.if.end42.i_crit_edge ]
  %10 = ptrtoint ptr %bat_iv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bat_iv.i, align 4
  %tvlv_len43.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %tvlv_len43.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %tvlv_len.0.i, ptr %tvlv_len43.i, align 2
  %ogm_seqno.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 10, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ogm_seqno.i, i32 noundef 4) #11
  %13 = ptrtoint ptr %ogm_seqno.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %ogm_seqno.i, align 4
  %seqno46.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %11, i32 0, i32 4
  %15 = ptrtoint ptr %seqno46.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %seqno46.i, align 2
  %call.i.i134.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ogm_seqno.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %ogm_seqno.i, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ogm_seqno.i, ptr %ogm_seqno.i, i32 1, ptr elementtype(i32) %ogm_seqno.i) #11, !srcloc !142
  %17 = ptrtoint ptr %soft_iface.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %soft_iface.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 2304
  %orig_hash.i.i = getelementptr i8, ptr %18, i32 2396
  %19 = ptrtoint ptr %orig_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %orig_hash.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.batadv_hashtable, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp135.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp135.not.i.i, label %if.end42.i.batadv_iv_ogm_slide_own_bcast_window.exit.i_crit_edge, label %if.end42.i.for.body.i.i_crit_edge

if.end42.i.for.body.i.i_crit_edge:                ; preds = %if.end42.i
  br label %for.body.i.i

if.end42.i.batadv_iv_ogm_slide_own_bcast_window.exit.i_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_slide_own_bcast_window.exit.i

for.body.i.i:                                     ; preds = %rcu_read_unlock.exit.i.i.for.body.i.i_crit_edge, %if.end42.i.for.body.i.i_crit_edge
  %i.0136.i.i = phi i32 [ %inc.i.i, %rcu_read_unlock.exit.i.i.for.body.i.i_crit_edge ], [ 0, %if.end42.i.for.body.i.i_crit_edge ]
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %24, i32 %i.0136.i.i
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i136.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i136.i, label %for.body.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.rcu_read_lock.exit.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %for.body.i.i.rcu_read_lock.exit.i.i_crit_edge
  %call1.i137.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i137.i)
  %tobool.not.i138.i = icmp eq i32 %call1.i137.i, 0
  br i1 %tobool.not.i138.i, label %land.lhs.true.i139.i, label %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true.i139.i:                             ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i139.i.do.end.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i139.i.do.end.i.i_crit_edge:        ; preds = %land.lhs.true.i139.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i139.i
  %.b114.i.i = load i1, ptr @batadv_iv_ogm_slide_own_bcast_window.__warned, align 1
  br i1 %.b114.i.i, label %land.lhs.true4.i.i.do.end.i.i_crit_edge, label %if.then.i140.i

land.lhs.true4.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then.i140.i:                                   ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_iv_ogm_slide_own_bcast_window.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 756, ptr noundef nonnull @.str.2) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i140.i, %land.lhs.true4.i.i.do.end.i.i_crit_edge, %land.lhs.true.i139.i.do.end.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %30, null
  %add.ptr.i141.i = getelementptr i8, ptr %30, i32 -284
  %tobool14.not132137.i.i = icmp eq ptr %add.ptr.i141.i, null
  %tobool14.not132.i.i = or i1 %tobool11.not.i.i, %tobool14.not132137.i.i
  br i1 %tobool14.not132.i.i, label %do.end.i.i.for.end88.i.i_crit_edge, label %do.end.i.i.do.body16.i.i_crit_edge

do.end.i.i.do.body16.i.i_crit_edge:               ; preds = %do.end.i.i
  br label %do.body16.i.i

do.end.i.i.for.end88.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end88.i.i

do.body16.i.i:                                    ; preds = %for.inc71.i.i.do.body16.i.i_crit_edge, %do.end.i.i.do.body16.i.i_crit_edge
  %orig_node.0133.i.i = phi ptr [ %add.ptr84.i.i, %for.inc71.i.i.do.body16.i.i_crit_edge ], [ %add.ptr.i141.i, %do.end.i.i.do.body16.i.i_crit_edge ]
  %call17.i.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %land.lhs.true19.i.i, label %do.body16.i.i.do.end27.i.i_crit_edge

do.body16.i.i.do.end27.i.i_crit_edge:             ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27.i.i

land.lhs.true19.i.i:                              ; preds = %do.body16.i.i
  %call20.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %land.lhs.true19.i.i.do.end27.i.i_crit_edge, label %land.lhs.true22.i.i

land.lhs.true19.i.i.do.end27.i.i_crit_edge:       ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27.i.i

land.lhs.true22.i.i:                              ; preds = %land.lhs.true19.i.i
  %.b112113.i.i = load i1, ptr @batadv_iv_ogm_slide_own_bcast_window.__warned.46, align 1
  br i1 %.b112113.i.i, label %land.lhs.true22.i.i.do.end27.i.i_crit_edge, label %if.then24.i.i

land.lhs.true22.i.i.do.end27.i.i_crit_edge:       ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27.i.i

if.then24.i.i:                                    ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_iv_ogm_slide_own_bcast_window.__warned.46, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 759, ptr noundef nonnull @.str.2) #11
  br label %do.end27.i.i

do.end27.i.i:                                     ; preds = %if.then24.i.i, %land.lhs.true22.i.i.do.end27.i.i_crit_edge, %land.lhs.true19.i.i.do.end27.i.i_crit_edge, %do.body16.i.i.do.end27.i.i_crit_edge
  %ifinfo_list.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.0133.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %ifinfo_list.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %orig_ifinfo.0129.i.i = load volatile ptr, ptr %ifinfo_list.i.i, align 4
  %tobool45.not130.i.i = icmp eq ptr %orig_ifinfo.0129.i.i, null
  br i1 %tobool45.not130.i.i, label %do.end27.i.i.for.inc71.i.i_crit_edge, label %for.body46.lr.ph.i.i

do.end27.i.i.for.inc71.i.i_crit_edge:             ; preds = %do.end27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc71.i.i

for.body46.lr.ph.i.i:                             ; preds = %do.end27.i.i
  %bat_iv.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.0133.i.i, i32 0, i32 36
  br label %for.body46.i.i

for.body46.i.i:                                   ; preds = %for.inc.i.i.for.body46.i.i_crit_edge, %for.body46.lr.ph.i.i
  %orig_ifinfo.0131.i.i = phi ptr [ %orig_ifinfo.0129.i.i, %for.body46.lr.ph.i.i ], [ %orig_ifinfo.0.i.i, %for.inc.i.i.for.body46.i.i_crit_edge ]
  %if_outgoing.i.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %orig_ifinfo.0131.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %if_outgoing.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %if_outgoing.i.i, align 4
  %cmp47.not.i.i = icmp eq ptr %33, %hard_iface
  br i1 %cmp47.not.i.i, label %if.end49.i.i, label %for.body46.i.i.for.inc.i.i_crit_edge

for.body46.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end49.i.i:                                     ; preds = %for.body46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_lock_bh(ptr noundef %bat_iv.i.i) #11
  %bat_iv50.i.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %orig_ifinfo.0131.i.i, i32 0, i32 7
  %call51.i.i = tail call zeroext i1 @batadv_bit_get_packet(ptr noundef %add.ptr.i.i.i, ptr noundef %bat_iv50.i.i, i32 noundef 1, i32 noundef 0) #11
  %bcast_own_sum.i.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %orig_ifinfo.0131.i.i, i32 0, i32 7, i32 1
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %bat_iv50.i.i, i32 noundef 64) #11
  %conv.i.i = trunc i32 %call4.i.i.i to i8
  %34 = ptrtoint ptr %bcast_own_sum.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i.i, ptr %bcast_own_sum.i.i, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %bat_iv.i.i) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end49.i.i, %for.body46.i.i.for.inc.i.i_crit_edge
  %35 = ptrtoint ptr %orig_ifinfo.0131.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %orig_ifinfo.0.i.i = load volatile ptr, ptr %orig_ifinfo.0131.i.i, align 4
  %tobool45.not.i.i = icmp eq ptr %orig_ifinfo.0.i.i, null
  br i1 %tobool45.not.i.i, label %for.inc.i.i.for.inc71.i.i_crit_edge, label %for.inc.i.i.for.body46.i.i_crit_edge

for.inc.i.i.for.body46.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body46.i.i

for.inc.i.i.for.inc71.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc71.i.i

for.inc71.i.i:                                    ; preds = %for.inc.i.i.for.inc71.i.i_crit_edge, %do.end27.i.i.for.inc71.i.i_crit_edge
  %hash_entry.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.0133.i.i, i32 0, i32 24
  %36 = ptrtoint ptr %hash_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %hash_entry.i.i, align 4
  %tobool80.not.i.i = icmp eq ptr %37, null
  %add.ptr84.i.i = getelementptr i8, ptr %37, i32 -284
  %tobool14.not138.i.i = icmp eq ptr %add.ptr84.i.i, null
  %tobool14.not.i.i = or i1 %tobool80.not.i.i, %tobool14.not138.i.i
  br i1 %tobool14.not.i.i, label %for.inc71.i.i.for.end88.i.i_crit_edge, label %for.inc71.i.i.do.body16.i.i_crit_edge

for.inc71.i.i.do.body16.i.i_crit_edge:            ; preds = %for.inc71.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16.i.i

for.inc71.i.i.for.end88.i.i_crit_edge:            ; preds = %for.inc71.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end88.i.i

for.end88.i.i:                                    ; preds = %for.inc71.i.i.for.end88.i.i_crit_edge, %do.end.i.i.for.end88.i.i_crit_edge
  %call.i118.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i118.i.i, label %for.end88.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i121.i.i

for.end88.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %for.end88.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i121.i.i:                           ; preds = %for.end88.i.i
  %call1.i119.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i119.i.i)
  %tobool.not.i120.i.i = icmp eq i32 %call1.i119.i.i, 0
  br i1 %tobool.not.i120.i.i, label %land.lhs.true.i121.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i123.i.i

land.lhs.true.i121.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i121.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i123.i.i:                          ; preds = %land.lhs.true.i121.i.i
  %.b4.i122.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i122.i.i, label %land.lhs.true2.i123.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i124.i.i

land.lhs.true2.i123.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i123.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

if.then.i124.i.i:                                 ; preds = %land.lhs.true2.i123.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #11
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i124.i.i, %land.lhs.true2.i123.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i121.i.i.rcu_read_unlock.exit.i.i_crit_edge, %for.end88.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i125.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i125.i.i to ptr
  %preempt_count.i.i.i.i126.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i126.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i126.i.i, align 4
  %sub.i.i.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i126.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %inc.i.i = add nuw i32 %i.0136.i.i, 1
  %42 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %43
  br i1 %cmp.i.i, label %rcu_read_unlock.exit.i.i.for.body.i.i_crit_edge, label %rcu_read_unlock.exit.i.i.batadv_iv_ogm_slide_own_bcast_window.exit.i_crit_edge

rcu_read_unlock.exit.i.i.batadv_iv_ogm_slide_own_bcast_window.exit.i_crit_edge: ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_slide_own_bcast_window.exit.i

rcu_read_unlock.exit.i.i.for.body.i.i_crit_edge:  ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

batadv_iv_ogm_slide_own_bcast_window.exit.i:      ; preds = %rcu_read_unlock.exit.i.i.batadv_iv_ogm_slide_own_bcast_window.exit.i_crit_edge, %if.end42.i.batadv_iv_ogm_slide_own_bcast_window.exit.i_crit_edge
  %orig_interval.i.i = getelementptr i8, ptr %3, i32 2352
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %orig_interval.i.i, i32 noundef 4) #11
  %44 = ptrtoint ptr %orig_interval.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %orig_interval.i.i, align 4
  %call.i.i142.i = tail call i32 @prandom_u32() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %45, -20
  %conv.i.i.i = zext i32 %call.i.i142.i to i64
  %mul.i.i.i = mul nuw nsw i64 %conv.i.i.i, 40
  %shr.i.i.i = lshr i64 %mul.i.i.i, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %add.i.i = add i32 %sub.i.i, %conv2.i.i.i
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %add.i.i) #11
  %add3.i.i = add i32 %call2.i.i.i, %46
  br i1 %cmp38.i, label %if.end53.i, label %if.then52.i

if.then52.i:                                      ; preds = %batadv_iv_ogm_slide_own_bcast_window.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %bat_iv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bat_iv.i, align 4
  %49 = ptrtoint ptr %ogm_buff_len3.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ogm_buff_len3.i, align 4
  tail call fastcc void @batadv_iv_ogm_queue_add(ptr noundef %add.ptr.i.i, ptr noundef %48, i32 noundef %50, ptr noundef %hard_iface, ptr noundef %hard_iface, i32 noundef 1, i32 noundef %add3.i.i) #11
  br label %out.i

if.end53.i:                                       ; preds = %batadv_iv_ogm_slide_own_bcast_window.exit.i
  %51 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %54, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.end53.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end53.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end53.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end53.i.rcu_read_lock.exit.i_crit_edge
  %call55.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end64.i_crit_edge

rcu_read_lock.exit.i.do.end64.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call57.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %land.lhs.true.i.do.end64.i_crit_edge, label %land.lhs.true59.i

land.lhs.true.i.do.end64.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64.i

land.lhs.true59.i:                                ; preds = %land.lhs.true.i
  %.b133.i = load i1, ptr @batadv_iv_ogm_schedule_buff.__warned, align 1
  br i1 %.b133.i, label %land.lhs.true59.i.do.end64.i_crit_edge, label %if.then61.i

land.lhs.true59.i.do.end64.i_crit_edge:           ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64.i

if.then61.i:                                      ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_iv_ogm_schedule_buff.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 843, ptr noundef nonnull @.str.2) #11
  br label %do.end64.i

do.end64.i:                                       ; preds = %if.then61.i, %land.lhs.true59.i.do.end64.i_crit_edge, %land.lhs.true.i.do.end64.i_crit_edge, %rcu_read_lock.exit.i.do.end64.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %tmp_hard_iface.0171.i = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp70.not172.i = icmp eq ptr %tmp_hard_iface.0171.i, @batadv_hardif_list
  br i1 %cmp70.not172.i, label %do.end64.i.for.end.i_crit_edge, label %do.end64.i.for.body.i_crit_edge

do.end64.i.for.body.i_crit_edge:                  ; preds = %do.end64.i
  br label %for.body.i

do.end64.i.for.end.i_crit_edge:                   ; preds = %do.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end64.i.for.body.i_crit_edge
  %tmp_hard_iface.0173.i = phi ptr [ %tmp_hard_iface.0.i, %for.inc.i.for.body.i_crit_edge ], [ %tmp_hard_iface.0171.i, %do.end64.i.for.body.i_crit_edge ]
  %soft_iface72.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %tmp_hard_iface.0173.i, i32 0, i32 7
  %55 = ptrtoint ptr %soft_iface72.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %soft_iface72.i, align 4
  %57 = ptrtoint ptr %soft_iface.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %soft_iface.i, align 4
  %cmp74.not.i = icmp eq ptr %56, %58
  br i1 %cmp74.not.i, label %if.end77.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end77.i:                                       ; preds = %for.body.i
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %tmp_hard_iface.0173.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #11
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #11
  %59 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end77.i
  %61 = phi i32 [ %60, %if.end77.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %62 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i.i.i.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i144.i = add i32 %61, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #11
  %63 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %65 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %64, i32 %add.i.i.i.i144.i, ptr elementtype(i32) %refcount.i) #11, !srcloc !138
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %65, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %65, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %64
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !136

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %66 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %67, 1
  %68 = or i32 %add5.i.i.i.i.i, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %.not.i.i.i.i.i = icmp sgt i32 %68, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !136

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #11
  %69 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %70 = phi i32 [ %67, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %70, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #11
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, label %if.end81.i

kref_get_unless_zero.exit.i.for.inc.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end81.i:                                       ; preds = %kref_get_unless_zero.exit.i
  %71 = ptrtoint ptr %bat_iv.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bat_iv.i, align 4
  %73 = ptrtoint ptr %ogm_buff_len3.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ogm_buff_len3.i, align 4
  call fastcc void @batadv_iv_ogm_queue_add(ptr noundef %add.ptr.i.i, ptr noundef %72, i32 noundef %74, ptr noundef %hard_iface, ptr noundef %tmp_hard_iface.0173.i, i32 noundef 1, i32 noundef %add3.i.i) #11
  %tobool.not.i146.i = icmp eq ptr %tmp_hard_iface.0173.i, null
  br i1 %tobool.not.i146.i, label %if.end81.i.for.inc.i_crit_edge, label %if.end.i.i

if.end81.i.for.inc.i_crit_edge:                   ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end81.i
  %call.i.i.i.i.i.i.i147.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %75 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i148.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.for.inc.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.i.for.inc.i_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %for.inc.i

if.then.i.i148.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_hardif_release(ptr noundef %refcount.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i148.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.for.inc.i_crit_edge, %if.end81.i.for.inc.i_crit_edge, %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %76 = ptrtoint ptr %tmp_hard_iface.0173.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %tmp_hard_iface.0.i = load volatile ptr, ptr %tmp_hard_iface.0173.i, align 4
  %cmp70.not.i = icmp eq ptr %tmp_hard_iface.0.i, @batadv_hardif_list
  br i1 %cmp70.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end64.i.for.end.i_crit_edge
  %call.i149.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i149.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i152.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i152.i:                             ; preds = %for.end.i
  %call1.i150.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i150.i)
  %tobool.not.i151.i = icmp eq i32 %call1.i150.i, 0
  br i1 %tobool.not.i151.i, label %land.lhs.true.i152.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i154.i

land.lhs.true.i152.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i154.i:                            ; preds = %land.lhs.true.i152.i
  %.b4.i153.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i153.i, label %land.lhs.true2.i154.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i155.i

land.lhs.true2.i154.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i154.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i155.i:                                   ; preds = %land.lhs.true2.i154.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i155.i, %land.lhs.true2.i154.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i152.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %77 = call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i156.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i156.i to ptr
  %preempt_count.i.i.i.i157.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i157.i, align 4
  %sub.i.i.i158.i = add i32 %80, -1
  store volatile i32 %sub.i.i.i158.i, ptr %preempt_count.i.i.i.i157.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %out.i

out.i:                                            ; preds = %rcu_read_unlock.exit.i, %if.then52.i
  %tobool.not.i160.i = icmp eq ptr %call37.i, null
  br i1 %tobool.not.i160.i, label %out.i.batadv_iv_ogm_schedule_buff.exit_crit_edge, label %if.end.i165.i

out.i.batadv_iv_ogm_schedule_buff.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_schedule_buff.exit

if.end.i165.i:                                    ; preds = %out.i
  %refcount.i161.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call37.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i162.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i161.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i161.i, i32 1, i32 3, i32 1) #11
  %81 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i161.i, ptr %refcount.i161.i, i32 1, ptr elementtype(i32) %refcount.i161.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i163.i = extractvalue { i32, i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i163.i)
  %cmp.i.i.i.i.i164.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i163.i, 1
  br i1 %cmp.i.i.i.i.i164.i, label %if.then.i.i169.i, label %if.end5.i.i.i.i.i167.i

if.end5.i.i.i.i.i167.i:                           ; preds = %if.end.i165.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i163.i)
  %.not.i.i.i.i.i166.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i163.i, 0
  br i1 %.not.i.i.i.i.i166.i, label %if.end5.i.i.i.i.i167.i.batadv_iv_ogm_schedule_buff.exit_crit_edge, label %if.then10.i.i.i.i.i168.i, !prof !136

if.end5.i.i.i.i.i167.i.batadv_iv_ogm_schedule_buff.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i167.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_schedule_buff.exit

if.then10.i.i.i.i.i168.i:                         ; preds = %if.end5.i.i.i.i.i167.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i161.i, i32 noundef 3) #11
  br label %batadv_iv_ogm_schedule_buff.exit

if.then.i.i169.i:                                 ; preds = %if.end.i165.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_hardif_release(ptr noundef %refcount.i161.i) #11
  br label %batadv_iv_ogm_schedule_buff.exit

batadv_iv_ogm_schedule_buff.exit:                 ; preds = %if.then.i.i169.i, %if.then10.i.i.i.i.i168.i, %if.end5.i.i.i.i.i167.i.batadv_iv_ogm_schedule_buff.exit_crit_edge, %out.i.batadv_iv_ogm_schedule_buff.exit_crit_edge, %if.end.i.batadv_iv_ogm_schedule_buff.exit_crit_edge
  call void @mutex_unlock(ptr noundef %ogm_buff_mutex) #11
  br label %return

return:                                           ; preds = %batadv_iv_ogm_schedule_buff.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_forw_packet_steal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_forw_packet_free(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_send_broadcast_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tt_local_commit_changes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @batadv_tvlv_container_ogm_append(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_neigh_ifinfo_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_neigh_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_neigh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_iv_iface_enabled(ptr noundef %hard_iface) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @batadv_iv_ogm_schedule(ptr noundef %hard_iface)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_iv_ogm_iface_disable(ptr noundef %hard_iface) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bat_iv = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 10
  %ogm_buff_mutex = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 10, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ogm_buff_mutex, i32 noundef 0) #11
  %0 = ptrtoint ptr %bat_iv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_iv, align 4
  tail call void @kfree(ptr noundef %1) #11
  %2 = ptrtoint ptr %bat_iv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bat_iv, align 4
  tail call void @mutex_unlock(ptr noundef %ogm_buff_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_iv_ogm_iface_update_mac(ptr noundef %hard_iface) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bat_iv = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 10
  %ogm_buff_mutex = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 10, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ogm_buff_mutex, i32 noundef 0) #11
  %0 = ptrtoint ptr %bat_iv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_iv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %orig = getelementptr inbounds %struct.batadv_ogm_packet, ptr %1, i32 0, i32 5
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 4
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %orig to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %orig, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.batadv_ogm_packet, ptr %1, i32 0, i32 5, i32 4
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %add.ptr1.i, align 2
  %prev_sender = getelementptr inbounds %struct.batadv_ogm_packet, ptr %1, i32 0, i32 6
  %12 = load ptr, ptr %net_dev, align 4
  %dev_addr5 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr5, align 64
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = ptrtoint ptr %prev_sender to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %prev_sender, align 4
  %add.ptr.i14 = getelementptr i8, ptr %14, i32 4
  %18 = ptrtoint ptr %add.ptr.i14 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i14, align 2
  %add.ptr1.i15 = getelementptr %struct.batadv_ogm_packet, ptr %1, i32 0, i32 6, i32 4
  %20 = ptrtoint ptr %add.ptr1.i15 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %add.ptr1.i15, align 2
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %ogm_buff_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_iv_ogm_primary_iface_set(ptr noundef %hard_iface) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bat_iv = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 10
  %ogm_buff_mutex = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 10, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ogm_buff_mutex, i32 noundef 0) #11
  %0 = ptrtoint ptr %bat_iv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_iv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ttl = getelementptr inbounds %struct.batadv_ogm_packet, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 50, ptr %ttl, align 2
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %ogm_buff_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_iv_ogm_neigh_cmp(ptr noundef %neigh1, ptr noundef %if_outgoing1, ptr noundef %neigh2, ptr noundef %if_outgoing2) #3 align 64 {
entry:
  %diff = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff) #11
  %0 = ptrtoint ptr %diff to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %diff, align 4, !annotation !139
  %call = call fastcc zeroext i1 @batadv_iv_ogm_neigh_diff(ptr noundef %neigh1, ptr noundef %if_outgoing1, ptr noundef %neigh2, ptr noundef %if_outgoing2, ptr noundef nonnull %diff)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %diff, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @batadv_iv_ogm_neigh_is_sob(ptr noundef %neigh1, ptr noundef %if_outgoing1, ptr noundef %neigh2, ptr noundef %if_outgoing2) #3 align 64 {
entry:
  %diff = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff) #11
  %0 = ptrtoint ptr %diff to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %diff, align 4, !annotation !139
  %call = call fastcc zeroext i1 @batadv_iv_ogm_neigh_diff(ptr noundef %neigh1, ptr noundef %if_outgoing1, ptr noundef %neigh2, ptr noundef %if_outgoing2, ptr noundef nonnull %diff)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %diff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -50, i32 %2)
  %cmp = icmp sgt i32 %2, -50
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff) #11
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_iv_ogm_neigh_dump(ptr noundef %msg, ptr nocapture noundef %cb, ptr nocapture noundef readonly %bat_priv, ptr noundef %single_hardif) #3 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #11
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %idx, align 4
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb, align 4
  %portid3 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 12
  %8 = ptrtoint ptr %portid3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %portid3, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tobool.not = icmp eq ptr %single_hardif, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then4, label %if.then.if.end43_crit_edge

if.then.if.end43_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %14 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nlmsg_seq, align 4
  %call = call fastcc i32 @batadv_iv_ogm_neigh_dump_hardif(ptr noundef %msg, i32 noundef %9, i32 noundef %17, ptr noundef nonnull %single_hardif, ptr noundef nonnull %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  %spec.select = zext i1 %cmp5 to i32
  br label %if.end43

do.body:                                          ; preds = %rcu_read_lock.exit
  %call8 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true12

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b64 = load i1, ptr @batadv_iv_ogm_neigh_dump.__warned, align 1
  br i1 %.b64, label %land.lhs.true12.do.end_crit_edge, label %if.then14

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_iv_ogm_neigh_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2155, ptr noundef nonnull @.str.2) #11
  br label %do.end

do.end:                                           ; preds = %if.then14, %land.lhs.true12.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %nlh29 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.074 = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp20.not75 = icmp eq ptr %hard_iface.074, @batadv_hardif_list
  br i1 %cmp20.not75, label %do.end.if.end43_crit_edge, label %for.body.lr.ph

do.end.if.end43_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

for.body.lr.ph:                                   ; preds = %do.end
  %soft_iface21 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %hard_iface.077 = phi ptr [ %hard_iface.074, %for.body.lr.ph ], [ %hard_iface.0, %for.inc.for.body_crit_edge ]
  %i_hardif.076 = phi i32 [ 0, %for.body.lr.ph ], [ %i_hardif.1, %for.inc.for.body_crit_edge ]
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.077, i32 0, i32 7
  %18 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soft_iface, align 4
  %20 = ptrtoint ptr %soft_iface21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soft_iface21, align 4
  %cmp22.not = icmp eq ptr %19, %21
  br i1 %cmp22.not, label %if.end24, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end24:                                         ; preds = %for.body
  %inc25 = add i32 %i_hardif.076, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i_hardif.076, i32 %2)
  %cmp26 = icmp slt i32 %i_hardif.076, %2
  br i1 %cmp26, label %if.end24.for.inc_crit_edge, label %if.end28

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end28:                                         ; preds = %if.end24
  %22 = ptrtoint ptr %nlh29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nlh29, align 4
  %nlmsg_seq30 = getelementptr inbounds %struct.nlmsghdr, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %nlmsg_seq30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nlmsg_seq30, align 4
  %call31 = call fastcc i32 @batadv_iv_ogm_neigh_dump_hardif(ptr noundef %msg, i32 noundef %9, i32 noundef %25, ptr noundef %hard_iface.077, ptr noundef nonnull %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end28.for.inc_crit_edge, label %if.end28.if.end43_crit_edge

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end28.for.inc_crit_edge, %if.end24.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i_hardif.1 = phi i32 [ %i_hardif.076, %for.body.for.inc_crit_edge ], [ %inc25, %if.end24.for.inc_crit_edge ], [ %inc25, %if.end28.for.inc_crit_edge ]
  %26 = ptrtoint ptr %hard_iface.077 to i32
  call void @__asan_load4_noabort(i32 %26)
  %hard_iface.0 = load volatile ptr, ptr %hard_iface.077, align 4
  %cmp20.not = icmp eq ptr %hard_iface.0, @batadv_hardif_list
  br i1 %cmp20.not, label %for.inc.if.end43_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end43_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.end43:                                         ; preds = %for.inc.if.end43_crit_edge, %if.end28.if.end43_crit_edge, %do.end.if.end43_crit_edge, %if.then4, %if.then.if.end43_crit_edge
  %i_hardif.2 = phi i32 [ 0, %if.then.if.end43_crit_edge ], [ %spec.select, %if.then4 ], [ 0, %do.end.if.end43_crit_edge ], [ %i_hardif.1, %for.inc.if.end43_crit_edge ], [ %i_hardif.076, %if.end28.if.end43_crit_edge ]
  %call.i65 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i65, label %if.end43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i68

if.end43.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i68:                                ; preds = %if.end43
  %call1.i66 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool.not.i67 = icmp eq i32 %call1.i66, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i70

land.lhs.true.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i70:                               ; preds = %land.lhs.true.i68
  %.b4.i69 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69, label %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, label %if.then.i71

land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i71:                                      ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i71, %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, %if.end43.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i72 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i72 to ptr
  %preempt_count.i.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i73, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i73, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %i_hardif.2, ptr %0, align 4
  %32 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %idx, align 4
  %34 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_iv_ogm_orig_dump(ptr noundef %msg, ptr nocapture noundef %cb, ptr nocapture noundef readonly %bat_priv, ptr noundef %if_outgoing) #3 align 64 {
entry:
  %tmp.i5.i.i.i = alloca i32, align 4
  %tmp.i3.i.i.i = alloca i8, align 1
  %tmp.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %orig_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 23
  %0 = ptrtoint ptr %orig_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %orig_hash, align 4
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  %9 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cb, align 4
  %portid4 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3, i32 12
  %11 = ptrtoint ptr %portid4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %portid4, align 4
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %14)
  %cmp46 = icmp ult i32 %4, %14
  br i1 %cmp46, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %cmp.not.i.i.i = icmp eq ptr %if_outgoing, null
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %bucket.049 = phi i32 [ %4, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %sub.048 = phi i32 [ %8, %while.body.lr.ph ], [ 0, %if.end.while.body_crit_edge ]
  %idx.047 = phi i32 [ %6, %while.body.lr.ph ], [ 0, %if.end.while.body_crit_edge ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %arrayidx5 = getelementptr %struct.hlist_head, ptr %16, i32 %bucket.049
  %17 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nlmsg_seq, align 4
  %21 = call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %while.body.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

while.body.rcu_read_lock.exit.i_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %while.body
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %while.body.rcu_read_lock.exit.i_crit_edge
  %call.i = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @batadv_iv_ogm_orig_dump_bucket.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_iv_ogm_orig_dump_bucket.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1947, ptr noundef nonnull @.str.2) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %25 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %arrayidx5, align 4
  %tobool10.not.i = icmp eq ptr %26, null
  %add.ptr.i = getelementptr i8, ptr %26, i32 -284
  %tobool12.not4349.i = icmp eq ptr %add.ptr.i, null
  %tobool12.not43.i = or i1 %tobool10.not.i, %tobool12.not4349.i
  br i1 %tobool12.not43.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %sub.1 = phi i32 [ %sub.2, %for.inc.i.for.body.i_crit_edge ], [ %sub.048, %do.end.i.for.body.i_crit_edge ]
  %orig_node.045.i = phi ptr [ %add.ptr31.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %idx.044.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %inc.i = add i32 %idx.044.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.044.i, i32 %idx.047)
  %cmp.i = icmp slt i32 %idx.044.i, %idx.047
  br i1 %cmp.i, label %for.body.i.for.inc.i_crit_edge, label %if.end14.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end14.i:                                       ; preds = %for.body.i
  %call.i3.i = call ptr @batadv_orig_router_get(ptr noundef nonnull %orig_node.045.i, ptr noundef %if_outgoing) #11
  %tobool.not.i4.i = icmp eq ptr %call.i3.i, null
  br i1 %tobool.not.i4.i, label %if.end14.i.for.inc.i_crit_edge, label %if.end.i.i

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end14.i
  %call.i.i.i = call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %call.i3.i, ptr noundef %if_outgoing) #11
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end.i13.i.i_crit_edge, label %if.end.i.i.i.i

if.end.i.i.if.end.i13.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i13.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  %tq_avg1.i.i.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call.i.i.i, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %tq_avg1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tq_avg1.i.i.i, align 2
  %refcount.i.i.i.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call.i.i.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i.i, i32 1, i32 3, i32 1) #11
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i.i, ptr %refcount.i.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i.if.end3.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.i.i.i.if.end3.i.i_crit_edge:    ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i.i

if.then10.i.i.i.i.i.i.i.i:                        ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i.i, i32 noundef 3) #11
  br label %if.end3.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i.i.i.i) #11
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then.i.i.i.i.i, %if.then10.i.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.i.if.end3.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp.i.i = icmp eq i8 %28, 0
  br i1 %cmp.i.i, label %if.end3.i.i.if.end.i13.i.i_crit_edge, label %do.body.i.i

if.end3.i.i.if.end.i13.i.i_crit_edge:             ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i13.i.i

do.body.i.i:                                      ; preds = %if.end3.i.i
  %call7.i.i = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i5.i, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true.i5.i:                               ; preds = %do.body.i.i
  %call9.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i5.i.do.end.i.i_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i5.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i5.i
  %.b1.i.i = load i1, ptr @batadv_iv_ogm_orig_dump_entry.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true11.i.i.do.end.i.i_crit_edge, label %if.then13.i.i

land.lhs.true11.i.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then13.i.i:                                    ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_iv_ogm_orig_dump_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1899, ptr noundef nonnull @.str.2) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then13.i.i, %land.lhs.true11.i.i.do.end.i.i_crit_edge, %land.lhs.true.i5.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %neigh_list.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.045.i, i32 0, i32 22
  %30 = ptrtoint ptr %neigh_list.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %neigh_node.028.i.i = load volatile ptr, ptr %neigh_list.i.i, align 4
  %tobool22.not29.i.i = icmp eq ptr %neigh_node.028.i.i, null
  br i1 %tobool22.not29.i.i, label %do.end.i.i.if.end.i13.i.i_crit_edge, label %for.body.lr.ph.i.i

do.end.i.i.if.end.i13.i.i_crit_edge:              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i13.i.i

for.body.lr.ph.i.i:                               ; preds = %do.end.i.i
  %last_seen.i.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.045.i, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %neigh_node.031.i.i = phi ptr [ %neigh_node.028.i.i, %for.body.lr.ph.i.i ], [ %neigh_node.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %sub.030.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %sub.030.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.030.i.i, i32 %sub.1)
  %cmp23.i.i = icmp slt i32 %sub.030.i.i, %sub.1
  br i1 %cmp23.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end26.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end26.i.i:                                     ; preds = %for.body.i.i
  %cmp27.i.i = icmp eq ptr %neigh_node.031.i.i, %call.i3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = ptrtoint ptr %last_seen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %last_seen.i.i.i, align 4
  %sub.i.i.i = sub i32 %31, %33
  %call.i3.i.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i.i.i) #11
  %call.i.i.i.i = call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %neigh_node.031.i.i, ptr noundef %if_outgoing) #11
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end26.i.i.for.inc.i.i_crit_edge, label %if.end.i.i.i.i.i

if.end26.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end26.i.i
  %tq_avg1.i.i.i.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call.i.i.i.i, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %tq_avg1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tq_avg1.i.i.i.i, align 2
  %refcount.i.i.i.i.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call.i.i.i.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i.i.i, ptr %refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i.i.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i.i.if.end.i.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.i.i.i.i.if.end.i.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then10.i.i.i.i.i.i.i.i.i:                      ; preds = %if.end5.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i.i.i, i32 noundef 3) #11
  br label %if.end.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i.i.i.i.i) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i.i.i, %if.then10.i.i.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.i.i.if.end.i.i.i_crit_edge
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i.if.end4.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.i.if.end4.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %if_incoming.i.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.031.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %if_incoming.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %if_incoming.i.i.i, align 4
  %cmp2.not.i.i.i = icmp eq ptr %38, %if_outgoing
  br i1 %cmp2.not.i.i.i, label %land.lhs.true.i.i.i.if.end4.i.i.i_crit_edge, label %land.lhs.true.i.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i.i.if.end4.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.end4.i.i.i_crit_edge, %if.end.i.i.i.if.end4.i.i.i_crit_edge
  %call5.i.i.i = call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %12, i32 noundef %20, ptr noundef nonnull @batadv_netlink_family, i32 noundef 2, i8 noundef zeroext 8) #11
  %tobool.not.i4.i.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i4.i.i, label %if.end4.i.i.i.if.end.i6.i.i_crit_edge, label %if.end7.i.i.i

if.end4.i.i.i.if.end.i6.i.i_crit_edge:            ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i6.i.i

if.end7.i.i.i:                                    ; preds = %if.end4.i.i.i
  %call8.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 9, i32 noundef 6, ptr noundef nonnull %orig_node.045.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %call8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end7.i.i.i.if.then.i.i.i.i_crit_edge

if.end7.i.i.i.if.then.i.i.i.i_crit_edge:          ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end7.i.i.i
  %addr.i.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.031.i.i, i32 0, i32 2
  %call11.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 24, i32 noundef 6, ptr noundef %addr.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %lor.lhs.false13.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then.i.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

lor.lhs.false13.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %if_incoming14.i.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.031.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %if_incoming14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %if_incoming14.i.i.i, align 4
  %net_dev.i.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net_dev.i.i.i, align 4
  %call.i1.i.i.i = call i32 @strlen(ptr noundef %42) #16
  %add.i.i.i6.i = add i32 %call.i1.i.i.i, 1
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 7, i32 noundef %add.i.i.i6.i, ptr noundef %42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %lor.lhs.false18.i.i.i, label %lor.lhs.false13.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false13.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false13.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

lor.lhs.false18.i.i.i:                            ; preds = %lor.lhs.false13.i.i.i
  %43 = ptrtoint ptr %if_incoming14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %if_incoming14.i.i.i, align 4
  %net_dev20.i.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %net_dev20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net_dev20.i.i.i, align 4
  %ifindex.i.i.i = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %ifindex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ifindex.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #11
  %49 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %tmp.i.i.i.i, align 4
  %call.i2.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i.i)
  %tobool22.not.i.i.i = icmp eq i32 %call.i2.i.i.i, 0
  br i1 %tobool22.not.i.i.i, label %lor.lhs.false23.i.i.i, label %lor.lhs.false18.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false18.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false18.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

lor.lhs.false23.i.i.i:                            ; preds = %lor.lhs.false18.i.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i3.i.i.i) #11
  %50 = ptrtoint ptr %tmp.i3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %35, ptr %tmp.i3.i.i.i, align 1
  %call.i4.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 25, i32 noundef 1, ptr noundef nonnull %tmp.i3.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i3.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i.i)
  %tobool25.not.i.i.i = icmp eq i32 %call.i4.i.i.i, 0
  br i1 %tobool25.not.i.i.i, label %lor.lhs.false26.i.i.i, label %lor.lhs.false23.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false23.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false23.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

lor.lhs.false26.i.i.i:                            ; preds = %lor.lhs.false23.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i5.i.i.i) #11
  %51 = ptrtoint ptr %tmp.i5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call.i3.i.i, ptr %tmp.i5.i.i.i, align 4
  %call.i6.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 23, i32 noundef 4, ptr noundef nonnull %tmp.i5.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i5.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end30.i.i.i, label %lor.lhs.false26.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false26.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false26.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

if.end30.i.i.i:                                   ; preds = %lor.lhs.false26.i.i.i
  br i1 %cmp27.i.i, label %land.lhs.true32.i.i.i, label %if.end30.i.i.i.if.end36.i.i.i_crit_edge

if.end30.i.i.i.if.end36.i.i.i_crit_edge:          ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i.i.i

land.lhs.true32.i.i.i:                            ; preds = %if.end30.i.i.i
  %call.i7.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 22, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i.i)
  %tobool34.not.i.i.i = icmp eq i32 %call.i7.i.i.i, 0
  br i1 %tobool34.not.i.i.i, label %land.lhs.true32.i.i.i.if.end36.i.i.i_crit_edge, label %land.lhs.true32.i.i.i.if.then.i.i.i.i_crit_edge

land.lhs.true32.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %land.lhs.true32.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

land.lhs.true32.i.i.i.if.end36.i.i.i_crit_edge:   ; preds = %land.lhs.true32.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i.i.i

if.end36.i.i.i:                                   ; preds = %land.lhs.true32.i.i.i.if.end36.i.i.i_crit_edge, %if.end30.i.i.i.if.end36.i.i.i_crit_edge
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %call5.i.i.i, i32 -20
  %52 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %54 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub.ptr.sub.i.i.i.i.i, ptr %add.ptr1.i.i.i.i, align 4
  br label %for.inc.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true32.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false26.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false23.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false18.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false13.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then.i.i.i.i_crit_edge, %if.end7.i.i.i.if.then.i.i.i.i_crit_edge
  %add.ptr1.i9.i.i.i = getelementptr i8, ptr %call5.i.i.i, i32 -20
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %add.ptr1.i9.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i.i, label %if.then.i.i.i.i.if.end.i6.i.i_crit_edge, label %if.then.i.i.i10.i.i.i

if.then.i.i.i.i.if.end.i6.i.i_crit_edge:          ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i6.i.i

if.then.i.i.i10.i.i.i:                            ; preds = %if.then.i.i.i.i
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %55 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i.i = icmp ugt ptr %56, %add.ptr1.i9.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %do.end.i.i.i.i.i.i, label %if.then.i.i.i10.i.i.i.if.end.i.i.i.i.i.i_crit_edge, !prof !130

if.then.i.i.i10.i.i.i.if.end.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i.i.i

do.end.i.i.i.i.i.i:                               ; preds = %if.then.i.i.i10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.end.i.i.i.i.i.i, %if.then.i.i.i10.i.i.i.if.end.i.i.i.i.i.i_crit_edge
  %57 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i.i = ptrtoint ptr %add.ptr1.i9.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i.i.i.i) #11
  br label %if.end.i6.i.i

if.end.i6.i.i:                                    ; preds = %if.end.i.i.i.i.i.i, %if.then.i.i.i.i.if.end.i6.i.i_crit_edge, %if.end4.i.i.i.if.end.i6.i.i_crit_edge
  %refcount.i.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call.i3.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #11
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i7.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.end.i6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.if.then17.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.i.i.if.then17.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef 3) #11
  br label %if.then17.i

if.then.i.i7.i.i:                                 ; preds = %if.end.i6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_node_release(ptr noundef %refcount.i.i.i) #11
  br label %if.then17.i

for.inc.i.i:                                      ; preds = %if.end36.i.i.i, %land.lhs.true.i.i.i.for.inc.i.i_crit_edge, %if.end26.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %60 = ptrtoint ptr %neigh_node.031.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %neigh_node.0.i.i = load volatile ptr, ptr %neigh_node.031.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %neigh_node.0.i.i, null
  br i1 %tobool22.not.i.i, label %for.inc.i.i.if.end.i13.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.end.i13.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i13.i.i

if.end.i13.i.i:                                   ; preds = %for.inc.i.i.if.end.i13.i.i_crit_edge, %do.end.i.i.if.end.i13.i.i_crit_edge, %if.end3.i.i.if.end.i13.i.i_crit_edge, %if.end.i.i.if.end.i13.i.i_crit_edge
  %refcount.i9.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call.i3.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i10.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i9.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i9.i.i, i32 1, i32 3, i32 1) #11
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i9.i.i, ptr %refcount.i9.i.i, i32 1, ptr elementtype(i32) %refcount.i9.i.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i11.i.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i11.i.i)
  %cmp.i.i.i.i.i12.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i11.i.i, 1
  br i1 %cmp.i.i.i.i.i12.i.i, label %if.then.i.i17.i.i, label %if.end5.i.i.i.i.i15.i.i

if.end5.i.i.i.i.i15.i.i:                          ; preds = %if.end.i13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i11.i.i)
  %.not.i.i.i.i.i14.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i11.i.i, 0
  br i1 %.not.i.i.i.i.i14.i.i, label %if.end5.i.i.i.i.i15.i.i.for.inc.i_crit_edge, label %if.then10.i.i.i.i.i16.i.i, !prof !136

if.end5.i.i.i.i.i15.i.i.for.inc.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then10.i.i.i.i.i16.i.i:                        ; preds = %if.end5.i.i.i.i.i15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i9.i.i, i32 noundef 3) #11
  br label %for.inc.i

if.then.i.i17.i.i:                                ; preds = %if.end.i13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_node_release(ptr noundef %refcount.i9.i.i) #11
  br label %for.inc.i

if.then17.i:                                      ; preds = %if.then.i.i7.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.if.then17.i_crit_edge
  %call.i7.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i7.i, label %if.then17.i.batadv_iv_ogm_orig_dump_bucket.exit_crit_edge, label %land.lhs.true.i10.i

if.then17.i.batadv_iv_ogm_orig_dump_bucket.exit_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_orig_dump_bucket.exit

land.lhs.true.i10.i:                              ; preds = %if.then17.i
  %call1.i8.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8.i)
  %tobool.not.i9.i = icmp eq i32 %call1.i8.i, 0
  br i1 %tobool.not.i9.i, label %land.lhs.true.i10.i.batadv_iv_ogm_orig_dump_bucket.exit_crit_edge, label %land.lhs.true2.i12.i

land.lhs.true.i10.i.batadv_iv_ogm_orig_dump_bucket.exit_crit_edge: ; preds = %land.lhs.true.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_orig_dump_bucket.exit

land.lhs.true2.i12.i:                             ; preds = %land.lhs.true.i10.i
  %.b4.i11.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11.i, label %land.lhs.true2.i12.i.batadv_iv_ogm_orig_dump_bucket.exit_crit_edge, label %if.then.i13.i

land.lhs.true2.i12.i.batadv_iv_ogm_orig_dump_bucket.exit_crit_edge: ; preds = %land.lhs.true2.i12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_ogm_orig_dump_bucket.exit

if.then.i13.i:                                    ; preds = %land.lhs.true2.i12.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #11
  br label %batadv_iv_ogm_orig_dump_bucket.exit

for.inc.i:                                        ; preds = %if.then.i.i17.i.i, %if.then10.i.i.i.i.i16.i.i, %if.end5.i.i.i.i.i15.i.i.for.inc.i_crit_edge, %if.end14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %sub.2 = phi i32 [ %sub.1, %for.body.i.for.inc.i_crit_edge ], [ 0, %if.then.i.i17.i.i ], [ 0, %if.then10.i.i.i.i.i16.i.i ], [ 0, %if.end5.i.i.i.i.i15.i.i.for.inc.i_crit_edge ], [ 0, %if.end14.i.for.inc.i_crit_edge ]
  %hash_entry.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.045.i, i32 0, i32 24
  %62 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %hash_entry.i, align 4
  %tobool27.not.i = icmp eq ptr %63, null
  %add.ptr31.i = getelementptr i8, ptr %63, i32 -284
  %tobool12.not68.i = icmp eq ptr %add.ptr31.i, null
  %tobool12.not.i = or i1 %tobool27.not.i, %tobool12.not68.i
  br i1 %tobool12.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i17.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i17.i, label %for.end.i.if.end_crit_edge, label %land.lhs.true.i20.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i20.i:                              ; preds = %for.end.i
  %call1.i18.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call1.i18.i, 0
  br i1 %tobool.not.i19.i, label %land.lhs.true.i20.i.if.end_crit_edge, label %land.lhs.true2.i22.i

land.lhs.true.i20.i.if.end_crit_edge:             ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2.i22.i:                             ; preds = %land.lhs.true.i20.i
  %.b4.i21.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i, label %land.lhs.true2.i22.i.if.end_crit_edge, label %if.then.i23.i

land.lhs.true2.i22.i.if.end_crit_edge:            ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i23.i:                                    ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #11
  br label %if.end

batadv_iv_ogm_orig_dump_bucket.exit:              ; preds = %if.then.i13.i, %land.lhs.true2.i12.i.batadv_iv_ogm_orig_dump_bucket.exit_crit_edge, %land.lhs.true.i10.i.batadv_iv_ogm_orig_dump_bucket.exit_crit_edge, %if.then17.i.batadv_iv_ogm_orig_dump_bucket.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %64 = call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i14.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i14.i to ptr
  %preempt_count.i.i.i.i15.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i15.i, align 4
  %sub.i.i.i.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i15.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %while.end

if.end:                                           ; preds = %if.then.i23.i, %land.lhs.true2.i22.i.if.end_crit_edge, %land.lhs.true.i20.i.if.end_crit_edge, %for.end.i.if.end_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %68 = call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i24.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i24.i to ptr
  %preempt_count.i.i.i.i25.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i25.i, align 4
  %sub.i.i.i26.i = add i32 %71, -1
  store volatile i32 %sub.i.i.i26.i, ptr %preempt_count.i.i.i.i25.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %inc = add nuw i32 %bucket.049, 1
  %72 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %73
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %batadv_iv_ogm_orig_dump_bucket.exit, %entry.while.end_crit_edge
  %bucket.040 = phi i32 [ %bucket.049, %batadv_iv_ogm_orig_dump_bucket.exit ], [ %4, %entry.while.end_crit_edge ], [ %inc, %if.end.while.end_crit_edge ]
  %idx.2 = phi i32 [ %idx.044.i, %batadv_iv_ogm_orig_dump_bucket.exit ], [ %6, %entry.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ]
  %sub.4 = phi i32 [ %sub.030.i.i, %batadv_iv_ogm_orig_dump_bucket.exit ], [ %8, %entry.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ]
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %bucket.040, ptr %2, align 4
  %75 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %idx.2, ptr %arrayidx1, align 4
  %76 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub.4, ptr %arrayidx2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_iv_init_sel_class(ptr noundef %bat_priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sel_class = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sel_class, i32 noundef 4) #11
  %0 = ptrtoint ptr %sel_class to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 20, ptr %sel_class, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @batadv_iv_gw_get_best_gw_node(ptr noundef %bat_priv) #3 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b113 = load i1, ptr @batadv_iv_gw_get_best_gw_node.__warned, align 1
  br i1 %.b113, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_iv_gw_get_best_gw_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2261, ptr noundef nonnull @.str.2) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %gw = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35
  %4 = ptrtoint ptr %gw to i32
  call void @__asan_load4_noabort(i32 %4)
  %gw_node.0181 = load volatile ptr, ptr %gw, align 4
  %tobool12.not182 = icmp eq ptr %gw_node.0181, null
  br i1 %tobool12.not182, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %sel_class = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %gw_node.0188 = phi ptr [ %gw_node.0181, %for.body.lr.ph ], [ %gw_node.0, %for.inc.for.body_crit_edge ]
  %curr_gw.0186 = phi ptr [ null, %for.body.lr.ph ], [ %curr_gw.3, %for.inc.for.body_crit_edge ]
  %max_gw_factor.0185 = phi i64 [ 0, %for.body.lr.ph ], [ %max_gw_factor.3, %for.inc.for.body_crit_edge ]
  %tmp_gw_factor.0184 = phi i64 [ 0, %for.body.lr.ph ], [ %tmp_gw_factor.3, %for.inc.for.body_crit_edge ]
  %max_tq.0183 = phi i8 [ 0, %for.body.lr.ph ], [ %max_tq.3, %for.inc.for.body_crit_edge ]
  %orig_node13 = getelementptr inbounds %struct.batadv_gw_node, ptr %gw_node.0188, i32 0, i32 1
  %5 = ptrtoint ptr %orig_node13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %orig_node13, align 4
  %call14 = call ptr @batadv_orig_router_get(ptr noundef %6, ptr noundef null) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %if.end17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %call18 = call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %call14, ptr noundef null) #11
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.if.end.i157_crit_edge, label %if.end21

if.end17.if.end.i157_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i157

if.end21:                                         ; preds = %if.end17
  %refcount = getelementptr inbounds %struct.batadv_gw_node, ptr %gw_node.0188, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
  %7 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end21
  %9 = phi i32 [ %8, %if.end21 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %9, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #11
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %13 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %12, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #11, !srcloc !138
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %12
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !136

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %15, 1
  %16 = or i32 %add5.i.i.i.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !136

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #11
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %18 = phi i32 [ %15, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.i.i.i.i.not = icmp eq i32 %18, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.if.end.i157_crit_edge, label %if.end25

kref_get_unless_zero.exit.if.end.i157_crit_edge:  ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i157

if.end25:                                         ; preds = %kref_get_unless_zero.exit
  %tq_avg26 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call18, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %tq_avg26 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tq_avg26, align 2
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sel_class, i32 noundef 4) #11
  %21 = ptrtoint ptr %sel_class to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %sel_class, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cond78 = icmp eq i32 %22, 1
  br i1 %cond78, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end25
  %conv = zext i8 %20 to i32
  %mul = mul nuw nsw i32 %conv, %conv
  %bandwidth_down = getelementptr inbounds %struct.batadv_gw_node, ptr %gw_node.0188, i32 0, i32 2
  %23 = ptrtoint ptr %bandwidth_down to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bandwidth_down, align 4
  %conv31 = zext i32 %24 to i64
  %narrow = mul nuw nsw i32 %mul, 10000
  %mul32 = zext i32 %narrow to i64
  %mul33 = mul nuw nsw i64 %mul32, %conv31
  %shr = lshr i64 %mul33, 18
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %max_gw_factor.0185)
  %cmp = icmp ugt i64 %shr, %max_gw_factor.0185
  br i1 %cmp, label %sw.bb.if.then42_crit_edge, label %lor.lhs.false

sw.bb.if.then42_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then42

lor.lhs.false:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %max_gw_factor.0185)
  %cmp35 = icmp eq i64 %shr, %max_gw_factor.0185
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %max_tq.0183)
  %cmp40 = icmp ugt i8 %20, %max_tq.0183
  %or.cond = select i1 %cmp35, i1 %cmp40, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then42_crit_edge, label %lor.lhs.false.if.end.i146_crit_edge

lor.lhs.false.if.end.i146_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i146

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false.if.then42_crit_edge, %sw.bb.if.then42_crit_edge
  %tobool.not.i116 = icmp eq ptr %curr_gw.0186, null
  br i1 %tobool.not.i116, label %if.then42.batadv_gw_node_put.exit_crit_edge, label %if.end.i

if.then42.batadv_gw_node_put.exit_crit_edge:      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_gw_node_put.exit

if.end.i:                                         ; preds = %if.then42
  %refcount.i = getelementptr inbounds %struct.batadv_gw_node, ptr %curr_gw.0186, i32 0, i32 4
  %call.i.i.i.i.i.i.i117 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_gw_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.batadv_gw_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_gw_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %batadv_gw_node_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_gw_node_release(ptr noundef %refcount.i) #11
  br label %batadv_gw_node_put.exit

batadv_gw_node_put.exit:                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_gw_node_put.exit_crit_edge, %if.then42.batadv_gw_node_put.exit_crit_edge
  %call.i.i.i.i.i.i118 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !140
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %batadv_gw_node_put.exit.if.end.i146.sink.split_crit_edge, label %if.else.i.i.i.i, !prof !130

batadv_gw_node_put.exit.if.end.i146.sink.split_crit_edge: ; preds = %batadv_gw_node_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i146.sink.split

if.else.i.i.i.i:                                  ; preds = %batadv_gw_node_put.exit
  %add.i.i.i.i119 = add i32 %asmresult.i.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i.i119, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i120 = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i120, label %if.else.i.i.i.i.if.end.i146_crit_edge, label %if.else.i.i.i.i.if.end.i146.sink.split_crit_edge, !prof !136

if.else.i.i.i.i.if.end.i146.sink.split_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i146.sink.split

if.else.i.i.i.i.if.end.i146_crit_edge:            ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i146

sw.default:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %max_tq.0183)
  %cmp47 = icmp ugt i8 %20, %max_tq.0183
  br i1 %cmp47, label %if.then49, label %sw.default.if.end.i146_crit_edge

sw.default.if.end.i146_crit_edge:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i146

if.then49:                                        ; preds = %sw.default
  %tobool.not.i121 = icmp eq ptr %curr_gw.0186, null
  br i1 %tobool.not.i121, label %if.then49.batadv_gw_node_put.exit131_crit_edge, label %if.end.i126

if.then49.batadv_gw_node_put.exit131_crit_edge:   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_gw_node_put.exit131

if.end.i126:                                      ; preds = %if.then49
  %refcount.i122 = getelementptr inbounds %struct.batadv_gw_node, ptr %curr_gw.0186, i32 0, i32 4
  %call.i.i.i.i.i.i.i123 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i122, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i122, i32 1, i32 3, i32 1) #11
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i122, ptr %refcount.i122, i32 1, ptr elementtype(i32) %refcount.i122) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i124 = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i124)
  %cmp.i.i.i.i.i125 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i124, 1
  br i1 %cmp.i.i.i.i.i125, label %if.then.i.i130, label %if.end5.i.i.i.i.i128

if.end5.i.i.i.i.i128:                             ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i124)
  %.not.i.i.i.i.i127 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i124, 0
  br i1 %.not.i.i.i.i.i127, label %if.end5.i.i.i.i.i128.batadv_gw_node_put.exit131_crit_edge, label %if.then10.i.i.i.i.i129, !prof !136

if.end5.i.i.i.i.i128.batadv_gw_node_put.exit131_crit_edge: ; preds = %if.end5.i.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_gw_node_put.exit131

if.then10.i.i.i.i.i129:                           ; preds = %if.end5.i.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i122, i32 noundef 3) #11
  br label %batadv_gw_node_put.exit131

if.then.i.i130:                                   ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_gw_node_release(ptr noundef %refcount.i122) #11
  br label %batadv_gw_node_put.exit131

batadv_gw_node_put.exit131:                       ; preds = %if.then.i.i130, %if.then10.i.i.i.i.i129, %if.end5.i.i.i.i.i128.batadv_gw_node_put.exit131_crit_edge, %if.then49.batadv_gw_node_put.exit131_crit_edge
  %call.i.i.i.i.i.i132 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !140
  %asmresult.i.i.i.i.i.i133 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i133)
  %tobool1.not.i.i.i.i134 = icmp eq i32 %asmresult.i.i.i.i.i.i133, 0
  br i1 %tobool1.not.i.i.i.i134, label %batadv_gw_node_put.exit131.if.end.i146.sink.split_crit_edge, label %if.else.i.i.i.i137, !prof !130

batadv_gw_node_put.exit131.if.end.i146.sink.split_crit_edge: ; preds = %batadv_gw_node_put.exit131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i146.sink.split

if.else.i.i.i.i137:                               ; preds = %batadv_gw_node_put.exit131
  %add.i.i.i.i135 = add i32 %asmresult.i.i.i.i.i.i133, 1
  %30 = or i32 %add.i.i.i.i135, %asmresult.i.i.i.i.i.i133
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i136 = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i136, label %if.else.i.i.i.i137.if.end.i146_crit_edge, label %if.else.i.i.i.i137.if.end.i146.sink.split_crit_edge, !prof !136

if.else.i.i.i.i137.if.end.i146.sink.split_crit_edge: ; preds = %if.else.i.i.i.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i146.sink.split

if.else.i.i.i.i137.if.end.i146_crit_edge:         ; preds = %if.else.i.i.i.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i146

if.end.i146.sink.split:                           ; preds = %if.else.i.i.i.i137.if.end.i146.sink.split_crit_edge, %batadv_gw_node_put.exit131.if.end.i146.sink.split_crit_edge, %if.else.i.i.i.i.if.end.i146.sink.split_crit_edge, %batadv_gw_node_put.exit.if.end.i146.sink.split_crit_edge
  %.sink.i.i.i.i.sink = phi i32 [ 2, %batadv_gw_node_put.exit.if.end.i146.sink.split_crit_edge ], [ 1, %if.else.i.i.i.i.if.end.i146.sink.split_crit_edge ], [ 2, %batadv_gw_node_put.exit131.if.end.i146.sink.split_crit_edge ], [ 1, %if.else.i.i.i.i137.if.end.i146.sink.split_crit_edge ]
  %tmp_gw_factor.1.ph = phi i64 [ %shr, %batadv_gw_node_put.exit.if.end.i146.sink.split_crit_edge ], [ %shr, %if.else.i.i.i.i.if.end.i146.sink.split_crit_edge ], [ %tmp_gw_factor.0184, %batadv_gw_node_put.exit131.if.end.i146.sink.split_crit_edge ], [ %tmp_gw_factor.0184, %if.else.i.i.i.i137.if.end.i146.sink.split_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i.sink) #11
  br label %if.end.i146

if.end.i146:                                      ; preds = %if.end.i146.sink.split, %if.else.i.i.i.i137.if.end.i146_crit_edge, %sw.default.if.end.i146_crit_edge, %if.else.i.i.i.i.if.end.i146_crit_edge, %lor.lhs.false.if.end.i146_crit_edge
  %tmp_gw_factor.1 = phi i64 [ %shr, %lor.lhs.false.if.end.i146_crit_edge ], [ %tmp_gw_factor.0184, %sw.default.if.end.i146_crit_edge ], [ %shr, %if.else.i.i.i.i.if.end.i146_crit_edge ], [ %tmp_gw_factor.0184, %if.else.i.i.i.i137.if.end.i146_crit_edge ], [ %tmp_gw_factor.1.ph, %if.end.i146.sink.split ]
  %curr_gw.1 = phi ptr [ %curr_gw.0186, %lor.lhs.false.if.end.i146_crit_edge ], [ %curr_gw.0186, %sw.default.if.end.i146_crit_edge ], [ %gw_node.0188, %if.else.i.i.i.i.if.end.i146_crit_edge ], [ %gw_node.0188, %if.else.i.i.i.i137.if.end.i146_crit_edge ], [ %gw_node.0188, %if.end.i146.sink.split ]
  %31 = call i8 @llvm.umax.i8(i8 %20, i8 %max_tq.0183)
  %32 = call i64 @llvm.umax.i64(i64 %tmp_gw_factor.1, i64 %max_gw_factor.0185)
  %call.i.i.i.i.i.i.i143 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %33 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i144 = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i144)
  %cmp.i.i.i.i.i145 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i144, 1
  br i1 %cmp.i.i.i.i.i145, label %if.then.i.i150, label %if.end5.i.i.i.i.i148

if.end5.i.i.i.i.i148:                             ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i144)
  %.not.i.i.i.i.i147 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i144, 0
  br i1 %.not.i.i.i.i.i147, label %if.end5.i.i.i.i.i148.if.end.i157_crit_edge, label %if.then10.i.i.i.i.i149, !prof !136

if.end5.i.i.i.i.i148.if.end.i157_crit_edge:       ; preds = %if.end5.i.i.i.i.i148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i157

if.then10.i.i.i.i.i149:                           ; preds = %if.end5.i.i.i.i.i148
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %if.end.i157

if.then.i.i150:                                   ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_gw_node_release(ptr noundef %refcount) #11
  br label %if.end.i157

if.end.i157:                                      ; preds = %if.then.i.i150, %if.then10.i.i.i.i.i149, %if.end5.i.i.i.i.i148.if.end.i157_crit_edge, %kref_get_unless_zero.exit.if.end.i157_crit_edge, %if.end17.if.end.i157_crit_edge
  %max_tq.2 = phi i8 [ %max_tq.0183, %kref_get_unless_zero.exit.if.end.i157_crit_edge ], [ %max_tq.0183, %if.end17.if.end.i157_crit_edge ], [ %31, %if.end5.i.i.i.i.i148.if.end.i157_crit_edge ], [ %31, %if.then10.i.i.i.i.i149 ], [ %31, %if.then.i.i150 ]
  %tmp_gw_factor.2 = phi i64 [ %tmp_gw_factor.0184, %kref_get_unless_zero.exit.if.end.i157_crit_edge ], [ %tmp_gw_factor.0184, %if.end17.if.end.i157_crit_edge ], [ %tmp_gw_factor.1, %if.end5.i.i.i.i.i148.if.end.i157_crit_edge ], [ %tmp_gw_factor.1, %if.then10.i.i.i.i.i149 ], [ %tmp_gw_factor.1, %if.then.i.i150 ]
  %max_gw_factor.2 = phi i64 [ %max_gw_factor.0185, %kref_get_unless_zero.exit.if.end.i157_crit_edge ], [ %max_gw_factor.0185, %if.end17.if.end.i157_crit_edge ], [ %32, %if.end5.i.i.i.i.i148.if.end.i157_crit_edge ], [ %32, %if.then10.i.i.i.i.i149 ], [ %32, %if.then.i.i150 ]
  %curr_gw.2 = phi ptr [ %curr_gw.0186, %kref_get_unless_zero.exit.if.end.i157_crit_edge ], [ %curr_gw.0186, %if.end17.if.end.i157_crit_edge ], [ %curr_gw.1, %if.end5.i.i.i.i.i148.if.end.i157_crit_edge ], [ %curr_gw.1, %if.then10.i.i.i.i.i149 ], [ %curr_gw.1, %if.then.i.i150 ]
  %refcount.i153 = getelementptr inbounds %struct.batadv_neigh_node, ptr %call14, i32 0, i32 8
  %call.i.i.i.i.i.i.i154 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i153, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i153, i32 1, i32 3, i32 1) #11
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i153, ptr %refcount.i153, i32 1, ptr elementtype(i32) %refcount.i153) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i155 = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i155)
  %cmp.i.i.i.i.i156 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i155, 1
  br i1 %cmp.i.i.i.i.i156, label %if.then.i.i161, label %if.end5.i.i.i.i.i159

if.end5.i.i.i.i.i159:                             ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i155)
  %.not.i.i.i.i.i158 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i155, 0
  br i1 %.not.i.i.i.i.i158, label %if.end5.i.i.i.i.i159.batadv_neigh_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i160, !prof !136

if.end5.i.i.i.i.i159.batadv_neigh_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i159
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_node_put.exit

if.then10.i.i.i.i.i160:                           ; preds = %if.end5.i.i.i.i.i159
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i153, i32 noundef 3) #11
  br label %batadv_neigh_node_put.exit

if.then.i.i161:                                   ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_node_release(ptr noundef %refcount.i153) #11
  br label %batadv_neigh_node_put.exit

batadv_neigh_node_put.exit:                       ; preds = %if.then.i.i161, %if.then10.i.i.i.i.i160, %if.end5.i.i.i.i.i159.batadv_neigh_node_put.exit_crit_edge
  br i1 %tobool19.not, label %batadv_neigh_node_put.exit.for.inc_crit_edge, label %if.end.i167

batadv_neigh_node_put.exit.for.inc_crit_edge:     ; preds = %batadv_neigh_node_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i167:                                      ; preds = %batadv_neigh_node_put.exit
  %refcount.i163 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call18, i32 0, i32 5
  %call.i.i.i.i.i.i.i164 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i163, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i163, i32 1, i32 3, i32 1) #11
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i163, ptr %refcount.i163, i32 1, ptr elementtype(i32) %refcount.i163) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i165 = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i165)
  %cmp.i.i.i.i.i166 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i165, 1
  br i1 %cmp.i.i.i.i.i166, label %if.then.i.i171, label %if.end5.i.i.i.i.i169

if.end5.i.i.i.i.i169:                             ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i165)
  %.not.i.i.i.i.i168 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i165, 0
  br i1 %.not.i.i.i.i.i168, label %if.end5.i.i.i.i.i169.for.inc_crit_edge, label %if.then10.i.i.i.i.i170, !prof !136

if.end5.i.i.i.i.i169.for.inc_crit_edge:           ; preds = %if.end5.i.i.i.i.i169
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10.i.i.i.i.i170:                           ; preds = %if.end5.i.i.i.i.i169
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i163, i32 noundef 3) #11
  br label %for.inc

if.then.i.i171:                                   ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i163) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i171, %if.then10.i.i.i.i.i170, %if.end5.i.i.i.i.i169.for.inc_crit_edge, %batadv_neigh_node_put.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %max_tq.3 = phi i8 [ %max_tq.0183, %for.body.for.inc_crit_edge ], [ %max_tq.2, %batadv_neigh_node_put.exit.for.inc_crit_edge ], [ %max_tq.2, %if.end5.i.i.i.i.i169.for.inc_crit_edge ], [ %max_tq.2, %if.then10.i.i.i.i.i170 ], [ %max_tq.2, %if.then.i.i171 ]
  %tmp_gw_factor.3 = phi i64 [ %tmp_gw_factor.0184, %for.body.for.inc_crit_edge ], [ %tmp_gw_factor.2, %batadv_neigh_node_put.exit.for.inc_crit_edge ], [ %tmp_gw_factor.2, %if.end5.i.i.i.i.i169.for.inc_crit_edge ], [ %tmp_gw_factor.2, %if.then10.i.i.i.i.i170 ], [ %tmp_gw_factor.2, %if.then.i.i171 ]
  %max_gw_factor.3 = phi i64 [ %max_gw_factor.0185, %for.body.for.inc_crit_edge ], [ %max_gw_factor.2, %batadv_neigh_node_put.exit.for.inc_crit_edge ], [ %max_gw_factor.2, %if.end5.i.i.i.i.i169.for.inc_crit_edge ], [ %max_gw_factor.2, %if.then10.i.i.i.i.i170 ], [ %max_gw_factor.2, %if.then.i.i171 ]
  %curr_gw.3 = phi ptr [ %curr_gw.0186, %for.body.for.inc_crit_edge ], [ %curr_gw.2, %batadv_neigh_node_put.exit.for.inc_crit_edge ], [ %curr_gw.2, %if.end5.i.i.i.i.i169.for.inc_crit_edge ], [ %curr_gw.2, %if.then10.i.i.i.i.i170 ], [ %curr_gw.2, %if.then.i.i171 ]
  %36 = ptrtoint ptr %gw_node.0188 to i32
  call void @__asan_load4_noabort(i32 %36)
  %gw_node.0 = load volatile ptr, ptr %gw_node.0188, align 4
  %tobool12.not = icmp eq ptr %gw_node.0, null
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %curr_gw.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %curr_gw.3, %for.inc.for.end_crit_edge ]
  %call.i172 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i172, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i175

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i175:                               ; preds = %for.end
  %call1.i173 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i173)
  %tobool.not.i174 = icmp eq i32 %call1.i173, 0
  br i1 %tobool.not.i174, label %land.lhs.true.i175.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i177

land.lhs.true.i175.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i175
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i177:                              ; preds = %land.lhs.true.i175
  %.b4.i176 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i176, label %land.lhs.true2.i177.rcu_read_unlock.exit_crit_edge, label %if.then.i178

land.lhs.true2.i177.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i177
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i178:                                     ; preds = %land.lhs.true2.i177
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i178, %land.lhs.true2.i177.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i175.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %37 = call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i.i179 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i179 to ptr
  %preempt_count.i.i.i.i180 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i180 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i180, align 4
  %sub.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i180, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %curr_gw.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @batadv_iv_gw_is_eligible(ptr noundef %bat_priv, ptr noundef %curr_gw_orig, ptr noundef %orig_node) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sel_class = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sel_class, i32 noundef 4) #11
  %0 = ptrtoint ptr %sel_class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sel_class, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @batadv_orig_router_get(ptr noundef %curr_gw_orig, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %call1, ptr noundef null) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.if.end.i86_crit_edge, label %if.end7

if.end3.if.end.i86_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i86

if.end7:                                          ; preds = %if.end3
  %call8 = tail call ptr @batadv_orig_router_get(ptr noundef %orig_node, ptr noundef null) #11
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.if.end.i_crit_edge, label %if.end11

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end11:                                         ; preds = %if.end7
  %call12 = tail call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %call8, ptr noundef null) #11
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.if.end.i_crit_edge, label %if.end15

if.end11.if.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end15:                                         ; preds = %if.end11
  %tq_avg = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call4, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %tq_avg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tq_avg, align 2
  %tq_avg17 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call12, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %tq_avg17 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tq_avg17, align 2
  %conv = zext i8 %5 to i32
  %conv18 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %3)
  %cmp19 = icmp ult i8 %5, %3
  br i1 %cmp19, label %if.end15.if.end.i_crit_edge, label %if.end22

if.end15.if.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end22:                                         ; preds = %if.end15
  %call.i.i67 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sel_class, i32 noundef 4) #11
  %6 = ptrtoint ptr %sel_class to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sel_class, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp26 = icmp sgt i32 %7, 3
  br i1 %cmp26, label %land.lhs.true, label %if.end22.do.body_crit_edge

if.end22.do.body_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true:                                    ; preds = %if.end22
  %sub = sub nsw i32 %conv, %conv18
  %call.i.i68 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sel_class, i32 noundef 4) #11
  %8 = ptrtoint ptr %sel_class to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %sel_class, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp33 = icmp slt i32 %sub, %9
  br i1 %cmp33, label %land.lhs.true.if.end.i_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true.if.end.i_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end22.do.body_crit_edge
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i69 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %10 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %do.body.if.end.i_crit_edge, label %if.then39

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.49, i32 noundef %conv18, i32 noundef %conv) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then39, %do.body.if.end.i_crit_edge, %land.lhs.true.if.end.i_crit_edge, %if.end15.if.end.i_crit_edge, %if.end11.if.end.i_crit_edge, %if.end7.if.end.i_crit_edge
  %router_orig_ifinfo.0.ph = phi ptr [ %call12, %do.body.if.end.i_crit_edge ], [ %call12, %if.then39 ], [ null, %if.end7.if.end.i_crit_edge ], [ null, %if.end11.if.end.i_crit_edge ], [ %call12, %land.lhs.true.if.end.i_crit_edge ], [ %call12, %if.end15.if.end.i_crit_edge ]
  %ret.0.off0.ph = phi i1 [ true, %do.body.if.end.i_crit_edge ], [ true, %if.then39 ], [ false, %if.end7.if.end.i_crit_edge ], [ false, %if.end11.if.end.i_crit_edge ], [ false, %land.lhs.true.if.end.i_crit_edge ], [ false, %if.end15.if.end.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call4, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_neigh_ifinfo_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.batadv_neigh_ifinfo_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_ifinfo_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %batadv_neigh_ifinfo_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i) #11
  br label %batadv_neigh_ifinfo_put.exit

batadv_neigh_ifinfo_put.exit:                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_neigh_ifinfo_put.exit_crit_edge
  %tobool.not.i70 = icmp eq ptr %router_orig_ifinfo.0.ph, null
  br i1 %tobool.not.i70, label %batadv_neigh_ifinfo_put.exit.if.end.i86_crit_edge, label %if.end.i75

batadv_neigh_ifinfo_put.exit.if.end.i86_crit_edge: ; preds = %batadv_neigh_ifinfo_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i86

if.end.i75:                                       ; preds = %batadv_neigh_ifinfo_put.exit
  %refcount.i71 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %router_orig_ifinfo.0.ph, i32 0, i32 5
  %call.i.i.i.i.i.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i71, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcount.i71, i32 1, i32 3, i32 1) #11
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i71, ptr %refcount.i71, i32 1, ptr elementtype(i32) %refcount.i71) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i73 = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i73)
  %cmp.i.i.i.i.i74 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i73, 1
  br i1 %cmp.i.i.i.i.i74, label %if.then.i.i79, label %if.end5.i.i.i.i.i77

if.end5.i.i.i.i.i77:                              ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i73)
  %.not.i.i.i.i.i76 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i73, 0
  br i1 %.not.i.i.i.i.i76, label %if.end5.i.i.i.i.i77.if.end.i86_crit_edge, label %if.then10.i.i.i.i.i78, !prof !136

if.end5.i.i.i.i.i77.if.end.i86_crit_edge:         ; preds = %if.end5.i.i.i.i.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i86

if.then10.i.i.i.i.i78:                            ; preds = %if.end5.i.i.i.i.i77
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i71, i32 noundef 3) #11
  br label %if.end.i86

if.then.i.i79:                                    ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i71) #11
  br label %if.end.i86

if.end.i86:                                       ; preds = %if.then.i.i79, %if.then10.i.i.i.i.i78, %if.end5.i.i.i.i.i77.if.end.i86_crit_edge, %batadv_neigh_ifinfo_put.exit.if.end.i86_crit_edge, %if.end3.if.end.i86_crit_edge
  %ret.0.off0113118124 = phi i1 [ true, %if.end3.if.end.i86_crit_edge ], [ %ret.0.off0.ph, %batadv_neigh_ifinfo_put.exit.if.end.i86_crit_edge ], [ %ret.0.off0.ph, %if.end5.i.i.i.i.i77.if.end.i86_crit_edge ], [ %ret.0.off0.ph, %if.then10.i.i.i.i.i78 ], [ %ret.0.off0.ph, %if.then.i.i79 ]
  %router_orig.0111119122 = phi ptr [ null, %if.end3.if.end.i86_crit_edge ], [ %call8, %batadv_neigh_ifinfo_put.exit.if.end.i86_crit_edge ], [ %call8, %if.end5.i.i.i.i.i77.if.end.i86_crit_edge ], [ %call8, %if.then10.i.i.i.i.i78 ], [ %call8, %if.then.i.i79 ]
  %refcount.i82 = getelementptr inbounds %struct.batadv_neigh_node, ptr %call1, i32 0, i32 8
  %call.i.i.i.i.i.i.i83 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i82, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcount.i82, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i82, ptr %refcount.i82, i32 1, ptr elementtype(i32) %refcount.i82) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i84 = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i84)
  %cmp.i.i.i.i.i85 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i84, 1
  br i1 %cmp.i.i.i.i.i85, label %if.then.i.i90, label %if.end5.i.i.i.i.i88

if.end5.i.i.i.i.i88:                              ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i84)
  %.not.i.i.i.i.i87 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i84, 0
  br i1 %.not.i.i.i.i.i87, label %if.end5.i.i.i.i.i88.batadv_neigh_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i89, !prof !136

if.end5.i.i.i.i.i88.batadv_neigh_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_node_put.exit

if.then10.i.i.i.i.i89:                            ; preds = %if.end5.i.i.i.i.i88
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i82, i32 noundef 3) #11
  br label %batadv_neigh_node_put.exit

if.then.i.i90:                                    ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @batadv_neigh_node_release(ptr noundef %refcount.i82) #11
  br label %batadv_neigh_node_put.exit

batadv_neigh_node_put.exit:                       ; preds = %if.then.i.i90, %if.then10.i.i.i.i.i89, %if.end5.i.i.i.i.i88.batadv_neigh_node_put.exit_crit_edge
  %tobool.not.i91 = icmp eq ptr %router_orig.0111119122, null
  br i1 %tobool.not.i91, label %batadv_neigh_node_put.exit.cleanup_crit_edge, label %if.end.i96

batadv_neigh_node_put.exit.cleanup_crit_edge:     ; preds = %batadv_neigh_node_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i96:                                       ; preds = %batadv_neigh_node_put.exit
  %refcount.i92 = getelementptr inbounds %struct.batadv_neigh_node, ptr %router_orig.0111119122, i32 0, i32 8
  %call.i.i.i.i.i.i.i93 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i92, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcount.i92, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i92, ptr %refcount.i92, i32 1, ptr elementtype(i32) %refcount.i92) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i94 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i94)
  %cmp.i.i.i.i.i95 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i94, 1
  br i1 %cmp.i.i.i.i.i95, label %if.then.i.i100, label %if.end5.i.i.i.i.i98

if.end5.i.i.i.i.i98:                              ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i94)
  %.not.i.i.i.i.i97 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i94, 0
  br i1 %.not.i.i.i.i.i97, label %if.end5.i.i.i.i.i98.cleanup_crit_edge, label %if.then10.i.i.i.i.i99, !prof !136

if.end5.i.i.i.i.i98.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i99:                            ; preds = %if.end5.i.i.i.i.i98
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i92, i32 noundef 3) #11
  br label %cleanup

if.then.i.i100:                                   ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @batadv_neigh_node_release(ptr noundef %refcount.i92) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i100, %if.then10.i.i.i.i.i99, %if.end5.i.i.i.i.i98.cleanup_crit_edge, %batadv_neigh_node_put.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %ret.0.off0113118124, %batadv_neigh_node_put.exit.cleanup_crit_edge ], [ %ret.0.off0113118124, %if.end5.i.i.i.i.i98.cleanup_crit_edge ], [ %ret.0.off0113118124, %if.then10.i.i.i.i.i99 ], [ %ret.0.off0113118124, %if.then.i.i100 ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_iv_gw_dump(ptr noundef %msg, ptr nocapture noundef %cb, ptr noundef %bat_priv) #3 align 64 {
entry:
  %tmp.i75.i = alloca i32, align 4
  %tmp.i73.i = alloca i32, align 4
  %tmp.i71.i = alloca i32, align 4
  %tmp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %portid2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %portid2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid2, align 4
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %gw = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35
  %list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #11
  %generation = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 3
  %7 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %generation, align 4
  %shl = shl i32 %8, 1
  %or = or i32 %shl, 1
  %seq = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %9 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %seq, align 4
  %10 = ptrtoint ptr %gw to i32
  call void @__asan_load4_noabort(i32 %10)
  %gw_node.044 = load ptr, ptr %gw, align 4
  %tobool6.not45 = icmp eq ptr %gw_node.044, null
  br i1 %tobool6.not45, label %entry.unlock_crit_edge, label %for.body.lr.ph

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

for.body.lr.ph:                                   ; preds = %entry
  %nlh.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %prev_seq.i.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %gw_node.047 = phi ptr [ %gw_node.044, %for.body.lr.ph ], [ %gw_node.0, %for.inc.for.body_crit_edge ]
  %idx.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %inc = add i32 %idx.046, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.046, i32 %6)
  %cmp = icmp slt i32 %idx.046, %6
  br i1 %cmp, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %orig_node.i = getelementptr inbounds %struct.batadv_gw_node, ptr %gw_node.047, i32 0, i32 1
  %11 = ptrtoint ptr %orig_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %orig_node.i, align 4
  %call.i = call ptr @batadv_orig_router_get(ptr noundef %12, ptr noundef null) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.for.inc_crit_edge, label %if.end.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i:                                         ; preds = %if.end
  %call1.i = call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %call.i, ptr noundef null) #11
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end.i108.i_crit_edge, label %if.end4.i

if.end.i.if.end.i108.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i108.i

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call ptr @batadv_gw_get_selected_gw_node(ptr noundef %bat_priv) #11
  %13 = ptrtoint ptr %nlh.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nlh.i, align 4
  %nlmsg_seq.i = getelementptr inbounds %struct.nlmsghdr, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nlmsg_seq.i, align 4
  %call6.i = call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %3, i32 noundef %16, ptr noundef nonnull @batadv_netlink_family, i32 noundef 2, i8 noundef zeroext 10) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end4.i.out.i_crit_edge, label %if.end9.i

if.end4.i.out.i_crit_edge:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end9.i:                                        ; preds = %if.end4.i
  %17 = ptrtoint ptr %prev_seq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prev_seq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i, label %if.end9.i.genl_dump_check_consistent.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end9.i.genl_dump_check_consistent.exit.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %genl_dump_check_consistent.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end9.i
  %19 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp.not.i.i.i = icmp eq i32 %20, %18
  br i1 %cmp.not.i.i.i, label %land.lhs.true.i.i.i.genl_dump_check_consistent.exit.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.genl_dump_check_consistent.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %genl_dump_check_consistent.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %nlmsg_flags.i.i.i = getelementptr i8, ptr %call6.i, i32 -14
  %21 = ptrtoint ptr %nlmsg_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %nlmsg_flags.i.i.i, align 2
  %23 = or i16 %22, 16
  store i16 %23, ptr %nlmsg_flags.i.i.i, align 2
  br label %genl_dump_check_consistent.exit.i

genl_dump_check_consistent.exit.i:                ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.genl_dump_check_consistent.exit.i_crit_edge, %if.end9.i.genl_dump_check_consistent.exit.i_crit_edge
  %24 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %seq, align 4
  %26 = ptrtoint ptr %prev_seq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %prev_seq.i.i.i, align 4
  %cmp.i = icmp eq ptr %call5.i, %gw_node.047
  br i1 %cmp.i, label %if.then10.i, label %genl_dump_check_consistent.exit.i.if.end15.i_crit_edge

genl_dump_check_consistent.exit.i.if.end15.i_crit_edge: ; preds = %genl_dump_check_consistent.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then10.i:                                      ; preds = %genl_dump_check_consistent.exit.i
  %call.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 22, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i, label %if.then10.i.if.end15.i_crit_edge, label %if.then.i.i

if.then10.i.if.end15.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then.i.i:                                      ; preds = %if.then10.i
  %add.ptr1.i.i = getelementptr i8, ptr %call6.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.out.i_crit_edge, label %if.then.i.i.i.i

if.then.i.i.out.i_crit_edge:                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %27 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %28, %add.ptr1.i.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !130

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %29 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i.i) #11
  br label %out.i

if.end15.i:                                       ; preds = %if.then10.i.if.end15.i_crit_edge, %genl_dump_check_consistent.exit.i.if.end15.i_crit_edge
  %31 = ptrtoint ptr %orig_node.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %orig_node.i, align 4
  %call17.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 9, i32 noundef 6, ptr noundef %32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %lor.lhs.false.i, label %if.end15.i.if.then.i80.i_crit_edge

if.end15.i.if.then.i80.i_crit_edge:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i80.i

lor.lhs.false.i:                                  ; preds = %if.end15.i
  %tq_avg.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call1.i, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %tq_avg.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tq_avg.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #11
  %35 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %tmp.i.i, align 1
  %call.i70.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 25, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %tobool20.not.i = icmp eq i32 %call.i70.i, 0
  br i1 %tobool20.not.i, label %lor.lhs.false21.i, label %lor.lhs.false.i.if.then.i80.i_crit_edge

lor.lhs.false.i.if.then.i80.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i80.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false.i
  %addr.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call.i, i32 0, i32 2
  %call23.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 29, i32 noundef 6, ptr noundef %addr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %lor.lhs.false25.i, label %lor.lhs.false21.i.if.then.i80.i_crit_edge

lor.lhs.false21.i.if.then.i80.i_crit_edge:        ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i80.i

lor.lhs.false25.i:                                ; preds = %lor.lhs.false21.i
  %if_incoming.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call.i, i32 0, i32 5
  %36 = ptrtoint ptr %if_incoming.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %if_incoming.i, align 4
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net_dev.i, align 4
  %call.i40 = call i32 @strlen(ptr noundef %39) #16
  %add.i = add i32 %call.i40, 1
  %call1.i41 = call i32 @nla_put(ptr noundef %msg, i32 noundef 7, i32 noundef %add.i, ptr noundef %39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool28.not.i = icmp eq i32 %call1.i41, 0
  br i1 %tobool28.not.i, label %lor.lhs.false29.i, label %lor.lhs.false25.i.if.then.i80.i_crit_edge

lor.lhs.false25.i.if.then.i80.i_crit_edge:        ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i80.i

lor.lhs.false29.i:                                ; preds = %lor.lhs.false25.i
  %40 = ptrtoint ptr %if_incoming.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %if_incoming.i, align 4
  %net_dev31.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %net_dev31.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net_dev31.i, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 17
  %44 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i71.i) #11
  %46 = ptrtoint ptr %tmp.i71.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tmp.i71.i, align 4
  %call.i72.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i71.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i71.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i)
  %tobool33.not.i = icmp eq i32 %call.i72.i, 0
  br i1 %tobool33.not.i, label %lor.lhs.false34.i, label %lor.lhs.false29.i.if.then.i80.i_crit_edge

lor.lhs.false29.i.if.then.i80.i_crit_edge:        ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i80.i

lor.lhs.false34.i:                                ; preds = %lor.lhs.false29.i
  %bandwidth_down.i = getelementptr inbounds %struct.batadv_gw_node, ptr %gw_node.047, i32 0, i32 2
  %47 = ptrtoint ptr %bandwidth_down.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bandwidth_down.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i73.i) #11
  %49 = ptrtoint ptr %tmp.i73.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %tmp.i73.i, align 4
  %call.i74.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 28, i32 noundef 4, ptr noundef nonnull %tmp.i73.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i73.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %tobool36.not.i = icmp eq i32 %call.i74.i, 0
  br i1 %tobool36.not.i, label %lor.lhs.false37.i, label %lor.lhs.false34.i.if.then.i80.i_crit_edge

lor.lhs.false34.i.if.then.i80.i_crit_edge:        ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i80.i

lor.lhs.false37.i:                                ; preds = %lor.lhs.false34.i
  %bandwidth_up.i = getelementptr inbounds %struct.batadv_gw_node, ptr %gw_node.047, i32 0, i32 3
  %50 = ptrtoint ptr %bandwidth_up.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bandwidth_up.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i75.i) #11
  %52 = ptrtoint ptr %tmp.i75.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %tmp.i75.i, align 4
  %call.i76.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 27, i32 noundef 4, ptr noundef nonnull %tmp.i75.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i75.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %tobool39.not.i = icmp eq i32 %call.i76.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %lor.lhs.false37.i.if.then.i80.i_crit_edge

lor.lhs.false37.i.if.then.i80.i_crit_edge:        ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i80.i

if.then.i80.i:                                    ; preds = %lor.lhs.false37.i.if.then.i80.i_crit_edge, %lor.lhs.false34.i.if.then.i80.i_crit_edge, %lor.lhs.false29.i.if.then.i80.i_crit_edge, %lor.lhs.false25.i.if.then.i80.i_crit_edge, %lor.lhs.false21.i.if.then.i80.i_crit_edge, %lor.lhs.false.i.if.then.i80.i_crit_edge, %if.end15.i.if.then.i80.i_crit_edge
  %add.ptr1.i78.i = getelementptr i8, ptr %call6.i, i32 -20
  %tobool.not.i.i.i79.i = icmp eq ptr %add.ptr1.i78.i, null
  br i1 %tobool.not.i.i.i79.i, label %if.then.i80.i.out.i_crit_edge, label %if.then.i.i.i83.i

if.then.i80.i.out.i_crit_edge:                    ; preds = %if.then.i80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then.i.i.i83.i:                                ; preds = %if.then.i80.i
  %53 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i82.i = icmp ugt ptr %54, %add.ptr1.i78.i
  br i1 %cmp.i.i.i82.i, label %do.end.i.i.i84.i, label %if.then.i.i.i83.i.if.end.i.i.i88.i_crit_edge, !prof !130

if.then.i.i.i83.i.if.end.i.i.i88.i_crit_edge:     ; preds = %if.then.i.i.i83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i88.i

do.end.i.i.i84.i:                                 ; preds = %if.then.i.i.i83.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i88.i

if.end.i.i.i88.i:                                 ; preds = %do.end.i.i.i84.i, %if.then.i.i.i83.i.if.end.i.i.i88.i_crit_edge
  %55 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i85.i = ptrtoint ptr %add.ptr1.i78.i to i32
  %sub.ptr.rhs.cast.i.i.i86.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i.i87.i = sub i32 %sub.ptr.lhs.cast.i.i.i85.i, %sub.ptr.rhs.cast.i.i.i86.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i87.i) #11
  br label %out.i

if.end41.i:                                       ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr1.i90.i = getelementptr i8, ptr %call6.i, i32 -20
  %57 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i90.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %59 = ptrtoint ptr %add.ptr1.i90.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i90.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.end41.i, %if.end.i.i.i88.i, %if.then.i80.i.out.i_crit_edge, %if.end.i.i.i.i, %if.then.i.i.out.i_crit_edge, %if.end4.i.out.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end41.i ], [ -105, %if.end4.i.out.i_crit_edge ], [ -90, %if.then.i.i.out.i_crit_edge ], [ -90, %if.end.i.i.i.i ], [ -90, %if.then.i80.i.out.i_crit_edge ], [ -90, %if.end.i.i.i88.i ]
  %tobool.not.i91.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i91.i, label %out.i.if.end.i98.i_crit_edge, label %if.end.i.i

out.i.if.end.i98.i_crit_edge:                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i98.i

if.end.i.i:                                       ; preds = %out.i
  %refcount.i.i = getelementptr inbounds %struct.batadv_gw_node, ptr %call5.i, i32 0, i32 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %60 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i92.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end.i98.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.i.if.end.i98.i_crit_edge:       ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i98.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #11
  br label %if.end.i98.i

if.then.i.i92.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_gw_node_release(ptr noundef %refcount.i.i) #11
  br label %if.end.i98.i

if.end.i98.i:                                     ; preds = %if.then.i.i92.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end.i98.i_crit_edge, %out.i.if.end.i98.i_crit_edge
  %refcount.i94.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call1.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i95.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i94.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i94.i, i32 1, i32 3, i32 1) #11
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i94.i, ptr %refcount.i94.i, i32 1, ptr elementtype(i32) %refcount.i94.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i96.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i96.i)
  %cmp.i.i.i.i.i97.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i96.i, 1
  br i1 %cmp.i.i.i.i.i97.i, label %if.then.i.i102.i, label %if.end5.i.i.i.i.i100.i

if.end5.i.i.i.i.i100.i:                           ; preds = %if.end.i98.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i96.i)
  %.not.i.i.i.i.i99.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i96.i, 0
  br i1 %.not.i.i.i.i.i99.i, label %if.end5.i.i.i.i.i100.i.if.end.i108.i_crit_edge, label %if.then10.i.i.i.i.i101.i, !prof !136

if.end5.i.i.i.i.i100.i.if.end.i108.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i108.i

if.then10.i.i.i.i.i101.i:                         ; preds = %if.end5.i.i.i.i.i100.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i94.i, i32 noundef 3) #11
  br label %if.end.i108.i

if.then.i.i102.i:                                 ; preds = %if.end.i98.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i94.i) #11
  br label %if.end.i108.i

if.end.i108.i:                                    ; preds = %if.then.i.i102.i, %if.then10.i.i.i.i.i101.i, %if.end5.i.i.i.i.i100.i.if.end.i108.i_crit_edge, %if.end.i.if.end.i108.i_crit_edge
  %ret.0118123.ph.i = phi i32 [ 0, %if.end.i.if.end.i108.i_crit_edge ], [ %ret.0.i, %if.then.i.i102.i ], [ %ret.0.i, %if.then10.i.i.i.i.i101.i ], [ %ret.0.i, %if.end5.i.i.i.i.i100.i.if.end.i108.i_crit_edge ]
  %refcount.i104.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i105.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i104.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcount.i104.i, i32 1, i32 3, i32 1) #11
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i104.i, ptr %refcount.i104.i, i32 1, ptr elementtype(i32) %refcount.i104.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i106.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i106.i)
  %cmp.i.i.i.i.i107.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i106.i, 1
  br i1 %cmp.i.i.i.i.i107.i, label %if.then.i.i112.i, label %if.end5.i.i.i.i.i110.i

if.end5.i.i.i.i.i110.i:                           ; preds = %if.end.i108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i106.i)
  %.not.i.i.i.i.i109.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i106.i, 0
  br i1 %.not.i.i.i.i.i109.i, label %if.end5.i.i.i.i.i110.i.batadv_iv_gw_dump_entry.exit_crit_edge, label %if.then10.i.i.i.i.i111.i, !prof !136

if.end5.i.i.i.i.i110.i.batadv_iv_gw_dump_entry.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_iv_gw_dump_entry.exit

if.then10.i.i.i.i.i111.i:                         ; preds = %if.end5.i.i.i.i.i110.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i104.i, i32 noundef 3) #11
  br label %batadv_iv_gw_dump_entry.exit

if.then.i.i112.i:                                 ; preds = %if.end.i108.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @batadv_neigh_node_release(ptr noundef %refcount.i104.i) #11
  br label %batadv_iv_gw_dump_entry.exit

batadv_iv_gw_dump_entry.exit:                     ; preds = %if.then.i.i112.i, %if.then10.i.i.i.i.i111.i, %if.end5.i.i.i.i.i110.i.batadv_iv_gw_dump_entry.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0118123.ph.i)
  %tobool7.not = icmp eq i32 %ret.0118123.ph.i, 0
  br i1 %tobool7.not, label %batadv_iv_gw_dump_entry.exit.for.inc_crit_edge, label %batadv_iv_gw_dump_entry.exit.unlock_crit_edge

batadv_iv_gw_dump_entry.exit.unlock_crit_edge:    ; preds = %batadv_iv_gw_dump_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

batadv_iv_gw_dump_entry.exit.for.inc_crit_edge:   ; preds = %batadv_iv_gw_dump_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %batadv_iv_gw_dump_entry.exit.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %63 = ptrtoint ptr %gw_node.047 to i32
  call void @__asan_load4_noabort(i32 %63)
  %gw_node.0 = load ptr, ptr %gw_node.047, align 4
  %tobool6.not = icmp eq ptr %gw_node.0, null
  br i1 %tobool6.not, label %for.inc.unlock_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.unlock_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

unlock:                                           ; preds = %for.inc.unlock_crit_edge, %batadv_iv_gw_dump_entry.exit.unlock_crit_edge, %entry.unlock_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %entry.unlock_crit_edge ], [ %inc, %for.inc.unlock_crit_edge ], [ %idx.046, %batadv_iv_gw_dump_entry.exit.unlock_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #11
  %64 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %idx.0.lcssa, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @batadv_iv_ogm_neigh_diff(ptr noundef %neigh1, ptr noundef %if_outgoing1, ptr noundef %neigh2, ptr noundef %if_outgoing2, ptr nocapture noundef writeonly %diff) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @batadv_neigh_ifinfo_get(ptr noundef %neigh1, ptr noundef %if_outgoing1) #11
  %call1 = tail call ptr @batadv_neigh_ifinfo_get(ptr noundef %neigh2, ptr noundef %if_outgoing2) #11
  %tobool.not = icmp eq ptr %call, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tq_avg = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %tq_avg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tq_avg, align 2
  %tq_avg4 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %tq_avg4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tq_avg4, align 2
  %conv = zext i8 %1 to i32
  %conv5 = zext i8 %3 to i32
  %sub = sub nsw i32 %conv, %conv5
  %4 = ptrtoint ptr %diff to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %diff, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  br i1 %tobool.not, label %out.batadv_neigh_ifinfo_put.exit_crit_edge, label %if.end.i

out.batadv_neigh_ifinfo_put.exit_crit_edge:       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_ifinfo_put.exit

if.end.i:                                         ; preds = %out
  %refcount.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_neigh_ifinfo_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.batadv_neigh_ifinfo_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_ifinfo_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %batadv_neigh_ifinfo_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i) #11
  br label %batadv_neigh_ifinfo_put.exit

batadv_neigh_ifinfo_put.exit:                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_neigh_ifinfo_put.exit_crit_edge, %out.batadv_neigh_ifinfo_put.exit_crit_edge
  br i1 %tobool2.not, label %batadv_neigh_ifinfo_put.exit.batadv_neigh_ifinfo_put.exit21_crit_edge, label %if.end.i16

batadv_neigh_ifinfo_put.exit.batadv_neigh_ifinfo_put.exit21_crit_edge: ; preds = %batadv_neigh_ifinfo_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_ifinfo_put.exit21

if.end.i16:                                       ; preds = %batadv_neigh_ifinfo_put.exit
  %refcount.i12 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call1, i32 0, i32 5
  %call.i.i.i.i.i.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i12, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcount.i12, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i12, ptr %refcount.i12, i32 1, ptr elementtype(i32) %refcount.i12) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i14 = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i14)
  %cmp.i.i.i.i.i15 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i14, 1
  br i1 %cmp.i.i.i.i.i15, label %if.then.i.i20, label %if.end5.i.i.i.i.i18

if.end5.i.i.i.i.i18:                              ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i14)
  %.not.i.i.i.i.i17 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i14, 0
  br i1 %.not.i.i.i.i.i17, label %if.end5.i.i.i.i.i18.batadv_neigh_ifinfo_put.exit21_crit_edge, label %if.then10.i.i.i.i.i19, !prof !136

if.end5.i.i.i.i.i18.batadv_neigh_ifinfo_put.exit21_crit_edge: ; preds = %if.end5.i.i.i.i.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_ifinfo_put.exit21

if.then10.i.i.i.i.i19:                            ; preds = %if.end5.i.i.i.i.i18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i12, i32 noundef 3) #11
  br label %batadv_neigh_ifinfo_put.exit21

if.then.i.i20:                                    ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i12) #11
  br label %batadv_neigh_ifinfo_put.exit21

batadv_neigh_ifinfo_put.exit21:                   ; preds = %if.then.i.i20, %if.then10.i.i.i.i.i19, %if.end5.i.i.i.i.i18.batadv_neigh_ifinfo_put.exit21_crit_edge, %batadv_neigh_ifinfo_put.exit.batadv_neigh_ifinfo_put.exit21_crit_edge
  %7 = xor i1 %or.cond, true
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @batadv_iv_ogm_neigh_dump_hardif(ptr noundef %msg, i32 noundef %portid, i32 noundef %seq, ptr noundef %hard_iface, ptr nocapture noundef %idx_s) unnamed_addr #3 align 64 {
entry:
  %tmp.i30.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @batadv_iv_ogm_neigh_dump_hardif.__warned, align 1
  br i1 %.b1, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_iv_ogm_neigh_dump_hardif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2110, ptr noundef nonnull @.str.2) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %neigh_list = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 12
  %0 = ptrtoint ptr %neigh_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %hardif_neigh.06 = load volatile ptr, ptr %neigh_list, align 4
  %tobool12.not7 = icmp eq ptr %hardif_neigh.06, null
  br i1 %tobool12.not7, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %hardif_neigh.09 = phi ptr [ %hardif_neigh.06, %for.body.lr.ph ], [ %hardif_neigh.0, %for.inc.for.body_crit_edge ]
  %idx.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %inc = add i32 %idx.08, 1
  %1 = ptrtoint ptr %idx_s to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %idx_s, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.08, i32 %2)
  %cmp = icmp slt i32 %idx.08, %2
  br i1 %cmp, label %for.body.for.inc_crit_edge, label %if.end14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end14:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %last_seen.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh.09, i32 0, i32 4
  %4 = ptrtoint ptr %last_seen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_seen.i, align 4
  %sub.i = sub i32 %3, %5
  %call.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i) #11
  %call1.i = call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @batadv_netlink_family, i32 noundef 2, i8 noundef zeroext 9) #11
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end14.cleanup_crit_edge, label %if.end.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end14
  %addr.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh.09, i32 0, i32 1
  %call2.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 24, i32 noundef 6, ptr noundef %addr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %if_incoming.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh.09, i32 0, i32 3
  %6 = ptrtoint ptr %if_incoming.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_incoming.i, align 4
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev.i, align 4
  %call.i.i = call i32 @strlen(ptr noundef %9) #16
  %add.i.i = add i32 %call.i.i, 1
  %call1.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 7, i32 noundef %add.i.i, ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool6.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false.i.if.then.i.i_crit_edge

lor.lhs.false.i.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %10 = ptrtoint ptr %if_incoming.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %if_incoming.i, align 4
  %net_dev9.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %net_dev9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev9.i, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #11
  %16 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i.i, align 4
  %call.i29.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %tobool11.not.i = icmp eq i32 %call.i29.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false12.i, label %lor.lhs.false7.i.if.then.i.i_crit_edge

lor.lhs.false7.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i30.i) #11
  %17 = ptrtoint ptr %tmp.i30.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i, ptr %tmp.i30.i, align 4
  %call.i31.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 23, i32 noundef 4, ptr noundef nonnull %tmp.i30.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i30.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool14.not.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool14.not.i, label %batadv_iv_ogm_neigh_dump_neigh.exit, label %lor.lhs.false12.i.if.then.i.i_crit_edge

lor.lhs.false12.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false12.i.if.then.i.i_crit_edge, %lor.lhs.false7.i.if.then.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %add.ptr1.i32.i = getelementptr i8, ptr %call1.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i32.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %19, %add.ptr1.i32.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !130

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %20 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i32.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i.i) #11
  br label %cleanup

batadv_iv_ogm_neigh_dump_neigh.exit:              ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr1.i.i = getelementptr i8, ptr %call1.i, i32 -20
  %22 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %24 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %batadv_iv_ogm_neigh_dump_neigh.exit, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %hardif_neigh.09 to i32
  call void @__asan_load4_noabort(i32 %25)
  %hardif_neigh.0 = load volatile ptr, ptr %hardif_neigh.09, align 4
  %tobool12.not = icmp eq ptr %hardif_neigh.0, null
  br i1 %tobool12.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.i.i.i.i, %if.then.i.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %storemerge = phi i32 [ %idx.08, %if.then.i.i.cleanup_crit_edge ], [ %idx.08, %if.end.i.i.i.i ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %idx.08, %if.end14.cleanup_crit_edge ]
  %retval.0 = phi i32 [ -90, %if.then.i.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i.i ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -90, %if.end14.cleanup_crit_edge ]
  %26 = ptrtoint ptr %idx_s to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge, ptr %idx_s, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_gw_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_gw_get_selected_gw_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1, !3, !5, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !54, !56, !57, !59, !61, !63, !65, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89, !91, !92, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{!"sp"}
!1 = !{ptr @.str, !2, !"<string literal>", i1 false, i1 false}
!2 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1590, i32 2}
!3 = distinct !{null, !4, !"__warned", i1 false, i1 false}
!4 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1599, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1621, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1636, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1643, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1650, i32 3}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1664, i32 2}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @batadv_iv_ogm_orig_get.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 153, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1347, i32 3}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1354, i32 3}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1383, i32 3}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1415, i32 3}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1454, i32 4}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1464, i32 3}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1471, i32 3}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1477, i32 3}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1482, i32 2}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1249, i32 2}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1284, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1082, i32 2}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1176, i32 2}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 933, i32 2}
!56 = !{ptr @__func__.batadv_iv_ogm_orig_update, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 938, i32 2}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 944, i32 8}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 985, i32 3}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 694, i32 3}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 720, i32 2}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../net/batman-adv/hard-interface.h", i32 110, i32 15}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @batadv_iv_ogm_aggregate_new.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 585, i32 2}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @batadv_iv_ogm_aggregate_new.__key.32, !72, !"__key", i1 false, i1 false}
!75 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 403, i32 3}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @batadv_iv_ogm_emit._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @batadv_iv_ogm_emit._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 413, i32 3}
!83 = !{ptr @batadv_iv_ogm_emit._entry.36, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @batadv_iv_ogm_emit._entry_ptr.38, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 365, i32 14}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 367, i32 14}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 369, i32 3}
!91 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 843, i32 2}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 756, i32 3}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 757, i32 4}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 2502, i32 10}
!103 = !{ptr @batadv_batman_iv, !104, !"batadv_batman_iv", i1 false, i1 false}
!104 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 2501, i32 31}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 2154, i32 3}
!107 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!108 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 2109, i32 2}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/net/netlink.h", i32 991, i32 3}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1947, i32 2}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 1899, i32 2}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 2261, i32 2}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/batman-adv/bat_iv_ogm.c", i32 2376, i32 2}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i64 657546, i64 657607}
!129 = !{i64 660278}
!130 = !{!"branch_weights", i32 1, i32 2000}
!131 = !{i64 660563}
!132 = !{i64 2149750214}
!133 = !{i64 2149750480}
!134 = !{i64 2148293750}
!135 = !{i64 2148208214, i64 2148208246, i64 2148208275, i64 2148208309, i64 2148208340, i64 2148208363}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{i64 2150624761}
!138 = !{i64 579053, i64 579077, i64 579098, i64 579115, i64 579132}
!139 = !{!"auto-init"}
!140 = !{i64 2148205749, i64 2148205781, i64 2148205810, i64 2148205844, i64 2148205875, i64 2148205898}
!141 = !{i64 2149851825}
!142 = !{i64 2148204219, i64 2148204245, i64 2148204274, i64 2148204308, i64 2148204339, i64 2148204362}
