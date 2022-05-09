; ModuleID = '/llk/IR_all_yes/net/batman-adv/originator.c_pt.bc'
source_filename = "../net/batman-adv/originator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.batadv_priv = type { %struct.atomic_t, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, ptr, %struct.hlist_head, %struct.spinlock, %struct.batadv_priv_bla, ptr, %struct.batadv_priv_gw, %struct.batadv_priv_tt, %struct.batadv_priv_tvlv, %struct.batadv_priv_dat, %struct.batadv_priv_mcast, %struct.atomic_t, %struct.batadv_priv_nc, %struct.batadv_priv_bat_v }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
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
%struct.atomic_t = type { i32 }
%struct.batadv_priv_nc = type { %struct.delayed_work, i8, i32, i32, i32, i32, ptr, ptr }
%struct.batadv_priv_bat_v = type { ptr, i32, %struct.atomic_t, %struct.mutex, %struct.delayed_work }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.batadv_hashtable = type { ptr, ptr, i32, %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }
%struct.batadv_orig_node_vlan = type { i16, %struct.batadv_vlan_tt, %struct.hlist_node, %struct.kref, %struct.callback_head }
%struct.batadv_vlan_tt = type { i32, %struct.atomic_t }
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.batadv_hard_iface_bat_iv = type { ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.batadv_hardif_neigh_node = type { %struct.hlist_node, [6 x i8], [6 x i8], ptr, i32, %struct.batadv_hardif_neigh_node_bat_v, %struct.kref, %struct.callback_head }
%struct.batadv_hardif_neigh_node_bat_v = type { %struct.ewma_throughput, i32, i32, i32, %struct.work_struct }
%struct.ewma_throughput = type { i32 }
%struct.batadv_neigh_ifinfo = type { %struct.hlist_node, ptr, %struct.batadv_neigh_ifinfo_bat_iv, %struct.batadv_neigh_ifinfo_bat_v, i8, %struct.kref, %struct.callback_head }
%struct.batadv_neigh_ifinfo_bat_iv = type { [5 x i8], i8, i8, [2 x i32], i8 }
%struct.batadv_neigh_ifinfo_bat_v = type { i32, i32 }
%struct.batadv_orig_ifinfo = type { %struct.hlist_node, ptr, ptr, i32, i8, i32, i32, %struct.batadv_orig_ifinfo_bat_iv, %struct.kref, %struct.callback_head }
%struct.batadv_orig_ifinfo_bat_iv = type { [2 x i32], i8 }
%struct.batadv_neigh_node = type { %struct.hlist_node, ptr, [6 x i8], %struct.hlist_head, %struct.spinlock, ptr, i32, ptr, %struct.kref, %struct.callback_head }
%struct.batadv_algo_ops = type { %struct.hlist_node, ptr, %struct.batadv_algo_iface_ops, %struct.batadv_algo_neigh_ops, %struct.batadv_algo_orig_ops, %struct.batadv_algo_gw_ops }
%struct.batadv_algo_iface_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_algo_neigh_ops = type { ptr, ptr, ptr, ptr }
%struct.batadv_algo_orig_ops = type { ptr }
%struct.batadv_algo_gw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.129 }
%union.anon.129 = type { [6 x i32], [24 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.139 = type { ptr }
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

@batadv_orig_hash_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/batman-adv/originator.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@batadv_orig_node_vlan_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_orig_hash_lock_class_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@batadv_originator_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&bat_priv->orig_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@batadv_originator_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&bat_priv->orig_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@batadv_event_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@batadv_orig_router_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_orig_router_get.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@batadv_orig_ifinfo_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@batadv_neigh_ifinfo_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_hardif_neigh_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Creating new originator: %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@batadv_orig_node_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&orig_node->bcast_seqno_lock\00", [35 x i8] zeroinitializer }, align 32
@batadv_orig_node_new.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&orig_node->neigh_list_lock\00", [36 x i8] zeroinitializer }, align 32
@batadv_orig_node_new.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&orig_node->tt_buff_lock\00", [39 x i8] zeroinitializer }, align 32
@batadv_orig_node_new.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&orig_node->tt_lock\00", [44 x i8] zeroinitializer }, align 32
@batadv_orig_node_new.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&orig_node->vlan_list_lock\00", [37 x i8] zeroinitializer }, align 32
@batadv_orig_node_new.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&orig_node->mcast_handler_lock\00", [33 x i8] zeroinitializer }, align 32
@batadv_orig_node_new.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&orig_node->fragments[i].lock\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"originator timed out\00", [43 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@batadv_neigh_node_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_neigh_node_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&neigh_node->ifinfo_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Creating new neighbor %pM for orig_node %pM on interface %s\0A\00", [35 x i8] zeroinitializer }, align 32
@batadv_primary_if_get_selected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.h\00", [32 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Originator timeout: originator %pM, last_seen %u\0A\00", [46 x i8] zeroinitializer }, align 32
@batadv_purge_orig_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_hardif_list = external dso_local global %struct.list_head, align 4
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"router/ifinfo purge: originator %pM, iface: %s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"neighbor purge: originator %pM, neighbor: %pM, iface: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"neighbor timeout: originator %pM, neighbor: %pM, last_seen: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"neighbor/ifinfo purge: neighbor %pM, iface: %s\0A\00", [48 x i8] zeroinitializer }, align 32
@batadv_find_best_neighbor.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 71, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [32 x i8] c"batadv_orig_hash_lock_class_key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 47, i32 30 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 208, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 303, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 911, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 921, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 922, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 923, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 924, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 925, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 948, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 963, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1251, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 695, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 723, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 642, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 660, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [35 x i8] c"../net/batman-adv/hard-interface.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 110, i32 15 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1177, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1047, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1098, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1103, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [31 x i8] c"../net/batman-adv/originator.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1003, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @.str, ptr @.str.1, ptr @batadv_orig_hash_lock_class_key, ptr @batadv_originator_init.__key, ptr @.str.2, ptr @batadv_originator_init.__key.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @batadv_orig_node_new.__key, ptr @.str.8, ptr @batadv_orig_node_new.__key.9, ptr @.str.10, ptr @batadv_orig_node_new.__key.11, ptr @.str.12, ptr @batadv_orig_node_new.__key.13, ptr @.str.14, ptr @batadv_orig_node_new.__key.15, ptr @.str.16, ptr @batadv_orig_node_new.__key.17, ptr @.str.18, ptr @batadv_orig_node_new.__key.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @batadv_neigh_node_create.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_orig_hash_lock_class_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_originator_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_originator_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_orig_node_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_orig_node_new.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_orig_node_new.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_orig_node_new.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_orig_node_new.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_orig_node_new.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_orig_node_new.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_neigh_node_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_orig_hash_find(ptr nocapture noundef readonly %bat_priv, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %orig_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 23
  %0 = ptrtoint ptr %orig_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %orig_hash, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %arrayidx58.i.i = getelementptr i8, ptr %data, i32 5
  %4 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx58.i.i, align 1
  %conv59.i.i = zext i8 %5 to i32
  %shl60.i.i = shl nuw nsw i32 %conv59.i.i, 8
  %add61.i.i = add nuw nsw i32 %shl60.i.i, -559038731
  %arrayidx63.i.i = getelementptr i8, ptr %data, i32 4
  %6 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx63.i.i, align 1
  %conv64.i.i = zext i8 %7 to i32
  %add65.i.i = add nuw nsw i32 %add61.i.i, %conv64.i.i
  %arrayidx67.i.i = getelementptr i8, ptr %data, i32 3
  %8 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %9 to i32
  %shl69.i.i = shl nuw i32 %conv68.i.i, 24
  %add70.i.i = add i32 %shl69.i.i, -559038731
  %arrayidx72.i.i = getelementptr i8, ptr %data, i32 2
  %10 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx72.i.i, align 1
  %conv73.i.i = zext i8 %11 to i32
  %shl74.i.i = shl nuw nsw i32 %conv73.i.i, 16
  %add75.i.i = add i32 %add70.i.i, %shl74.i.i
  %arrayidx77.i.i = getelementptr i8, ptr %data, i32 1
  %12 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = zext i8 %13 to i32
  %shl79.i.i = shl nuw nsw i32 %conv78.i.i, 8
  %add80.i.i = add i32 %add75.i.i, %shl79.i.i
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data, align 1
  %conv83.i.i = zext i8 %15 to i32
  %add84.i.i = add i32 %add80.i.i, %conv83.i.i
  %xor85.i.i = xor i32 %add65.i.i, -559038731
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i, i32 %add65.i.i, i32 14) #10
  %sub87.i.i = sub i32 %xor85.i.i, %or.i.i.i
  %xor88.i.i = xor i32 %add84.i.i, %sub87.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #10
  %sub90.i.i = sub i32 %xor88.i.i, %or.i1.i.i
  %xor91.i.i = xor i32 %sub90.i.i, %add65.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #10
  %sub93.i.i = sub i32 %xor91.i.i, %or.i2.i.i
  %xor94.i.i = xor i32 %sub93.i.i, %sub87.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #10
  %sub96.i.i = sub i32 %xor94.i.i, %or.i3.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #10
  %sub99.i.i = sub i32 %xor97.i.i, %or.i4.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #10
  %sub102.i.i = sub i32 %xor100.i.i, %or.i5.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #10
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %sub105.i.i = sub i32 %xor103.i.i, %or.i6.i.i
  %rem.i = urem i32 %sub105.i.i, %3
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %17, i32 %rem.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b54 = load i1, ptr @batadv_orig_hash_find.__warned, align 1
  br i1 %.b54, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_orig_hash_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 71, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %23, null
  %add.ptr = getelementptr i8, ptr %23, i32 -284
  %tobool16.not6872 = icmp eq ptr %add.ptr, null
  %tobool16.not68 = or i1 %tobool14.not, %tobool16.not6872
  br i1 %tobool16.not68, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %orig_node.069 = phi ptr [ %add.ptr35, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %24 = ptrtoint ptr %orig_node.069 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %orig_node.069, align 4
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data, align 4
  %xor.i.i.i = xor i32 %27, %25
  %add.ptr.i.i.i = getelementptr i8, ptr %orig_node.069, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i.i.i, align 2
  %30 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx63.i.i, align 2
  %xor37.i.i.i = xor i16 %31, %29
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i56 = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i56)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i56, 0
  br i1 %cmp.i.i.i, label %if.end19, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %refcount = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.069, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %32 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end19
  %34 = phi i32 [ %33, %if.end19 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %35 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %34, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %36 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %38 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %37, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !93
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %38, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %38, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %37
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !94

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %39 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %40, 1
  %41 = or i32 %add5.i.i.i.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %.not.i.i.i.i = icmp sgt i32 %41, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !94

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #10
  %42 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %43 = phi i32 [ %40, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool12.i.i.i.i.not = icmp eq i32 %43, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %hash_entry = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.069, i32 0, i32 24
  %44 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %hash_entry, align 4
  %tobool31.not = icmp eq ptr %45, null
  %add.ptr35 = getelementptr i8, ptr %45, i32 -284
  %tobool16.not73 = icmp eq ptr %add.ptr35, null
  %tobool16.not = or i1 %tobool31.not, %tobool16.not73
  br i1 %tobool16.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %orig_node.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %orig_node.069, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i57 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i57, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i60

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i60:                                ; preds = %for.end
  %call1.i58 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i62

land.lhs.true.i60.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i62:                               ; preds = %land.lhs.true.i60
  %.b4.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61, label %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, label %if.then.i63

land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i63:                                      ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i63, %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %46 = call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i64 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %sub.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i65, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %orig_node.0.lcssa, %rcu_read_unlock.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @batadv_compare_orig(ptr nocapture noundef readonly %node, ptr nocapture noundef readonly %data2) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %node, i32 -284
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data2, align 4
  %xor.i.i.i = xor i32 %3, %1
  %add.ptr.i.i.i = getelementptr i8, ptr %node, i32 -280
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %data2, i32 4
  %6 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %7, %5
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  ret i1 %cmp.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_orig_node_vlan_get(ptr noundef %orig_node, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b45 = load i1, ptr @batadv_orig_node_vlan_get.__warned, align 1
  br i1 %.b45, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_orig_node_vlan_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 118, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %vlan_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 34
  %4 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vlan_list, align 4
  %tobool11.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -12
  %tobool13.not5862 = icmp eq ptr %add.ptr, null
  %tobool13.not58 = or i1 %tobool11.not, %tobool13.not5862
  br i1 %tobool13.not58, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %tmp.059 = phi ptr [ %add.ptr34, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %tmp.059 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tmp.059, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %vid)
  %cmp.not = icmp eq i16 %7, %vid
  br i1 %cmp.not, label %if.end18, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end18:                                         ; preds = %for.body
  %refcount = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %tmp.059, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %8 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end18
  %10 = phi i32 [ %9, %if.end18 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %10, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %14 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %13, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !93
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %13
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !94

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %16, 1
  %17 = or i32 %add5.i.i.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !94

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #10
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %19 = phi i32 [ %16, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.i.i.i.i.not = icmp eq i32 %19, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %list = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %tmp.059, i32 0, i32 2
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %list, align 4
  %tobool30.not = icmp eq ptr %21, null
  %add.ptr34 = getelementptr i8, ptr %21, i32 -12
  %tobool13.not63 = icmp eq ptr %add.ptr34, null
  %tobool13.not = or i1 %tobool30.not, %tobool13.not63
  br i1 %tobool13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %tmp.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %tmp.059, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i47 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i47, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i50

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i50:                                ; preds = %for.end
  %call1.i48 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %22 = call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i54 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i55, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %tmp.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_orig_node_vlan_new(ptr noundef %orig_node, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_list_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 35
  tail call void @_raw_spin_lock_bh(ptr noundef %vlan_list_lock) #10
  %call = tail call ptr @batadv_orig_node_vlan_get(ptr noundef %orig_node, i16 noundef zeroext %vid)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 32) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4:                                          ; preds = %if.end
  %refcount = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %1 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %refcount, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %vid, ptr %call7.i.i, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end4.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !97

if.end4.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end4
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !94

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end4.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end4.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %list = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %call7.i.i, i32 0, i32 2
  %vlan_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 34
  %5 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vlan_list, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %list, align 4
  %pprev.i = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %call7.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %vlan_list, ptr %pprev.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  %9 = ptrtoint ptr %vlan_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %vlan_list, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %kref_get.exit.out_crit_edge, label %do.body49.i

kref_get.exit.out_crit_edge:                      ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body49.i:                                      ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %pprev51.i, align 4
  br label %out

out:                                              ; preds = %do.body49.i, %kref_get.exit.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %vlan.0 = phi ptr [ %call, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ %call7.i.i, %kref_get.exit.out_crit_edge ], [ %call7.i.i, %do.body49.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %vlan_list_lock) #10
  ret ptr %vlan.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_orig_node_vlan_release(ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -20
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr i8, ptr %ref, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 24 to ptr)) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_originator_init(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %orig_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 23
  %0 = ptrtoint ptr %orig_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %orig_hash, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call ptr @batadv_hash_new(i32 noundef 1024) #10
  %2 = ptrtoint ptr %orig_hash to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %orig_hash, align 4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.return_crit_edge, label %if.end5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @batadv_hash_set_lock_class(ptr noundef nonnull %call, ptr noundef nonnull @batadv_orig_hash_lock_class_key) #10
  %orig_work = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 28
  tail call void @__init_work(ptr noundef %orig_work, i32 noundef 0) #10
  %3 = ptrtoint ptr %orig_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %orig_work, align 4
  %lockdep_map = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 28, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @batadv_originator_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry14 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 28, i32 0, i32 1
  %4 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 28, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry14, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 28, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @batadv_purge_orig, ptr %func, align 4
  %timer = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 28, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @batadv_originator_init.__key.3) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %7 = load ptr, ptr @batadv_event_workqueue, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %orig_work, i32 noundef 100) #10
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 0, %entry.return_crit_edge ], [ -12, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_hash_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hash_set_lock_class(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_purge_orig(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -232
  tail call void @batadv_purge_orig_ref(ptr noundef %add.ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %0 = load ptr, ptr @batadv_event_workqueue, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef 100) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_neigh_ifinfo_release(ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -44
  %if_outgoing = getelementptr i8, ptr %ref, i32 -36
  %0 = ptrtoint ptr %if_outgoing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_outgoing, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.i:                                         ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.do.body_crit_edge, label %if.then10.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.do.body_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %do.body

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #10
  br label %do.body

do.body:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.do.body_crit_edge, %entry.do.body_crit_edge
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %do.body.if.end4_crit_edge, label %do.end

do.body.if.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr i8, ptr %ref, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 48 to ptr)) #10
  br label %if.end4

if.end4:                                          ; preds = %do.end, %do.body.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_hardif_neigh_release(ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -88
  %if_incoming = getelementptr i8, ptr %ref, i32 -68
  %0 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_incoming, align 4
  %neigh_list_lock = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %neigh_list_lock) #10
  %pprev.i.i = getelementptr i8, ptr %ref, i32 -84
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init_rcu.exit_crit_edge, label %if.then.i

entry.hlist_del_init_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_init_rcu.exit

if.then.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %3, align 4
  %tobool.not.i7.i = icmp eq ptr %5, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %3, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %8 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %entry.hlist_del_init_rcu.exit_crit_edge
  %9 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %if_incoming, align 4
  %neigh_list_lock2 = getelementptr inbounds %struct.batadv_hard_iface, ptr %10, i32 0, i32 13
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_list_lock2) #10
  %11 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %if_incoming, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %hlist_del_init_rcu.exit.batadv_hardif_put.exit_crit_edge, label %if.end.i

hlist_del_init_rcu.exit.batadv_hardif_put.exit_crit_edge: ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.end.i:                                         ; preds = %hlist_del_init_rcu.exit
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %12, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %batadv_hardif_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #10
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %hlist_del_init_rcu.exit.batadv_hardif_put.exit_crit_edge
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %batadv_hardif_put.exit.if.end_crit_edge, label %do.end

batadv_hardif_put.exit.if.end_crit_edge:          ; preds = %batadv_hardif_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %batadv_hardif_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr i8, ptr %ref, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 92 to ptr)) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %batadv_hardif_put.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_neigh_node_release(ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -80
  %ifinfo_list = getelementptr i8, ptr %ref, i32 -60
  %0 = ptrtoint ptr %ifinfo_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifinfo_list, align 4
  %tobool5.not41 = icmp eq ptr %1, null
  br i1 %tobool5.not41, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %neigh_ifinfo.042 = phi ptr [ %3, %land.rhs.land.rhs_crit_edge ], [ %1, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %neigh_ifinfo.042 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %neigh_ifinfo.042, align 4
  tail call fastcc void @batadv_neigh_ifinfo_put(ptr noundef nonnull %neigh_ifinfo.042)
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.rhs.for.end_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %hardif_neigh = getelementptr i8, ptr %ref, i32 -4
  %4 = ptrtoint ptr %hardif_neigh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hardif_neigh, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.end.batadv_hardif_neigh_put.exit_crit_edge, label %if.end.i

for.end.batadv_hardif_neigh_put.exit_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_neigh_put.exit

if.end.i:                                         ; preds = %for.end
  %refcount.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %5, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_neigh_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.batadv_hardif_neigh_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_neigh_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %batadv_hardif_neigh_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @batadv_hardif_neigh_release(ptr noundef %refcount.i) #10
  br label %batadv_hardif_neigh_put.exit

batadv_hardif_neigh_put.exit:                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_neigh_put.exit_crit_edge, %for.end.batadv_hardif_neigh_put.exit_crit_edge
  %if_incoming = getelementptr i8, ptr %ref, i32 -12
  %7 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %if_incoming, align 4
  %tobool.not.i31 = icmp eq ptr %8, null
  br i1 %tobool.not.i31, label %batadv_hardif_neigh_put.exit.batadv_hardif_put.exit_crit_edge, label %if.end.i36

batadv_hardif_neigh_put.exit.batadv_hardif_put.exit_crit_edge: ; preds = %batadv_hardif_neigh_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.end.i36:                                       ; preds = %batadv_hardif_neigh_put.exit
  %refcount.i32 = getelementptr inbounds %struct.batadv_hard_iface, ptr %8, i32 0, i32 5
  %call.i.i.i.i.i.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i32, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i32, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i32, ptr %refcount.i32, i32 1, ptr elementtype(i32) %refcount.i32) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i34 = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i34)
  %cmp.i.i.i.i.i35 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i34, 1
  br i1 %cmp.i.i.i.i.i35, label %if.then.i.i40, label %if.end5.i.i.i.i.i38

if.end5.i.i.i.i.i38:                              ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i34)
  %.not.i.i.i.i.i37 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i34, 0
  br i1 %.not.i.i.i.i.i37, label %if.end5.i.i.i.i.i38.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i39, !prof !94

if.end5.i.i.i.i.i38.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i39:                            ; preds = %if.end5.i.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i32, i32 noundef 3) #10
  br label %batadv_hardif_put.exit

if.then.i.i40:                                    ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @batadv_hardif_release(ptr noundef %refcount.i32) #10
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i40, %if.then10.i.i.i.i.i39, %if.end5.i.i.i.i.i38.batadv_hardif_put.exit_crit_edge, %batadv_hardif_neigh_put.exit.batadv_hardif_put.exit_crit_edge
  %tobool18.not = icmp eq ptr %add.ptr, null
  br i1 %tobool18.not, label %batadv_hardif_put.exit.if.end_crit_edge, label %do.end

batadv_hardif_put.exit.if.end_crit_edge:          ; preds = %batadv_hardif_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %batadv_hardif_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr i8, ptr %ref, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 84 to ptr)) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %batadv_hardif_put.exit.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_neigh_ifinfo_put(ptr noundef %neigh_ifinfo) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %neigh_ifinfo, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %neigh_ifinfo, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !94

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %return

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  %if_outgoing.i = getelementptr %struct.batadv_neigh_ifinfo, ptr %neigh_ifinfo, i32 0, i32 1
  %1 = ptrtoint ptr %if_outgoing.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %if_outgoing.i, align 4
  %cmp.not.i = icmp eq ptr %2, null
  br i1 %cmp.not.i, label %if.then.i.do.end.i_crit_edge, label %if.end.i.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.then.i
  %refcount.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %2, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.do.end.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.i.do.end.i_crit_edge:           ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #10
  br label %do.end.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @batadv_hardif_release(ptr noundef %refcount.i.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %rcu.i = getelementptr %struct.batadv_neigh_ifinfo, ptr %neigh_ifinfo, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 48 to ptr)) #10
  br label %return

return:                                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_orig_router_get(ptr noundef %orig_node, ptr noundef readnone %if_outgoing) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b65 = load i1, ptr @batadv_orig_router_get.__warned, align 1
  br i1 %.b65, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_orig_router_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 299, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %ifinfo_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %orig_ifinfo.0.in = phi ptr [ %ifinfo_list, %do.end ], [ %orig_ifinfo.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %orig_ifinfo.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %orig_ifinfo.0 = load volatile ptr, ptr %orig_ifinfo.0.in, align 4
  %tobool12.not = icmp eq ptr %orig_ifinfo.0, null
  br i1 %tobool12.not, label %for.cond.if.end54_crit_edge, label %for.body

for.cond.if.end54_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

for.body:                                         ; preds = %for.cond
  %if_outgoing13 = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %orig_ifinfo.0, i32 0, i32 1
  %5 = ptrtoint ptr %if_outgoing13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %if_outgoing13, align 4
  %cmp.not = icmp eq ptr %6, %if_outgoing
  br i1 %cmp.not, label %if.end15, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end15:                                         ; preds = %for.body
  %router20 = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %orig_ifinfo.0, i32 0, i32 2
  %7 = ptrtoint ptr %router20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %router20, align 4
  %call22 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true24:                                  ; preds = %if.end15
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.for.end_crit_edge, label %land.lhs.true27

land.lhs.true24.for.end_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %.b6364 = load i1, ptr @batadv_orig_router_get.__warned.5, align 1
  br i1 %.b6364, label %land.lhs.true27.for.end_crit_edge, label %if.then29

land.lhs.true27.for.end_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_orig_router_get.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 303, ptr noundef nonnull @.str.6) #10
  br label %for.end

for.end:                                          ; preds = %if.then29, %land.lhs.true27.for.end_crit_edge, %land.lhs.true24.for.end_crit_edge, %if.end15.for.end_crit_edge
  %tobool49.not = icmp eq ptr %8, null
  br i1 %tobool49.not, label %for.end.if.end54_crit_edge, label %land.lhs.true50

for.end.if.end54_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true50:                                  ; preds = %for.end
  %refcount = getelementptr inbounds %struct.batadv_neigh_node, ptr %8, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %9 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true50
  %11 = phi i32 [ %10, %land.lhs.true50 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %11, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %15 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %14, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !93
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %14
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !94

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %17, 1
  %18 = or i32 %add5.i.i.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !94

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #10
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %19 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.i.i.i.i.not = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %spec.select67 = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %8
  br label %if.end54

if.end54:                                         ; preds = %kref_get_unless_zero.exit, %for.end.if.end54_crit_edge, %for.cond.if.end54_crit_edge
  %router.1 = phi ptr [ null, %for.end.if.end54_crit_edge ], [ %spec.select67, %kref_get_unless_zero.exit ], [ null, %for.cond.if.end54_crit_edge ]
  %call.i68 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i68, label %if.end54.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i71

if.end54.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i71:                                ; preds = %if.end54
  %call1.i69 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i69)
  %tobool.not.i70 = icmp eq i32 %call1.i69, 0
  br i1 %tobool.not.i70, label %land.lhs.true.i71.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i73

land.lhs.true.i71.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i73:                               ; preds = %land.lhs.true.i71
  %.b4.i72 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i72, label %land.lhs.true2.i73.rcu_read_unlock.exit_crit_edge, label %if.then.i74

land.lhs.true2.i73.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i74:                                      ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i74, %land.lhs.true2.i73.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i71.rcu_read_unlock.exit_crit_edge, %if.end54.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %21 = call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i75 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i75 to ptr
  %preempt_count.i.i.i.i76 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i76, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i76, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %router.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_orig_ifinfo_get(ptr noundef %orig_node, ptr noundef readnone %if_outgoing) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b43 = load i1, ptr @batadv_orig_ifinfo_get.__warned, align 1
  br i1 %.b43, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_orig_ifinfo_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 331, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %ifinfo_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 1
  %4 = ptrtoint ptr %ifinfo_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.054 = load volatile ptr, ptr %ifinfo_list, align 4
  %tobool13.not55 = icmp eq ptr %tmp.054, null
  br i1 %tobool13.not55, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %tmp.056 = phi ptr [ %tmp.0, %for.inc.for.body_crit_edge ], [ %tmp.054, %do.end.for.body_crit_edge ]
  %if_outgoing14 = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %tmp.056, i32 0, i32 1
  %5 = ptrtoint ptr %if_outgoing14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %if_outgoing14, align 4
  %cmp.not = icmp eq ptr %6, %if_outgoing
  br i1 %cmp.not, label %if.end16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %refcount = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %tmp.056, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %7 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end16
  %9 = phi i32 [ %8, %if.end16 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %9, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %13 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %12, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !93
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %12
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !94

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %15, 1
  %16 = or i32 %add5.i.i.i.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !94

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #10
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %18 = phi i32 [ %15, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.i.i.i.i.not = icmp eq i32 %18, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %tmp.056 to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp.0 = load volatile ptr, ptr %tmp.056, align 4
  %tobool13.not = icmp eq ptr %tmp.0, null
  br i1 %tobool13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %tmp.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %tmp.056, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i45 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i45, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i48

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i48:                                ; preds = %for.end
  %call1.i46 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %20 = call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i52 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i53, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %tmp.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_orig_ifinfo_new(ptr noundef %orig_node, ptr noundef %if_outgoing) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %neigh_list_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef %neigh_list_lock) #10
  %call = tail call ptr @batadv_orig_ifinfo_get(ptr noundef %orig_node, ptr noundef %if_outgoing)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 56) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4:                                          ; preds = %if.end
  %cmp.not = icmp eq ptr %if_outgoing, null
  br i1 %cmp.not, label %if.end4.if.end6_crit_edge, label %if.then5

if.end4.if.end6_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.end4
  %refcount = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_outgoing, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then5.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !97

if.then5.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then5
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end6_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !94

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end6_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then5.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then5.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end6

if.end6:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end6_crit_edge, %if.end4.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub8 = add i32 %3, -3001
  %batman_seqno_reset = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %batman_seqno_reset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub8, ptr %batman_seqno_reset, align 4
  %if_outgoing9 = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %if_outgoing9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %if_outgoing, ptr %if_outgoing9, align 8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %call7.i.i, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i, align 4
  %refcount10 = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call7.i.i, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount10, i32 noundef 4) #10
  %8 = ptrtoint ptr %refcount10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %refcount10, align 4
  %call.i.i.i.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount10, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount10, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount10, ptr %refcount10, i32 1, ptr elementtype(i32) %refcount10) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i30 = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i30)
  %tobool1.not.i.i.i.i31 = icmp eq i32 %asmresult.i.i.i.i.i.i30, 0
  br i1 %tobool1.not.i.i.i.i31, label %if.end6.if.end15.sink.split.i.i.i.i36_crit_edge, label %if.else.i.i.i.i34, !prof !97

if.end6.if.end15.sink.split.i.i.i.i36_crit_edge:  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i36

if.else.i.i.i.i34:                                ; preds = %if.end6
  %add.i.i.i.i32 = add i32 %asmresult.i.i.i.i.i.i30, 1
  %10 = or i32 %add.i.i.i.i32, %asmresult.i.i.i.i.i.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i33 = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i33, label %if.else.i.i.i.i34.kref_get.exit37_crit_edge, label %if.else.i.i.i.i34.if.end15.sink.split.i.i.i.i36_crit_edge, !prof !94

if.else.i.i.i.i34.if.end15.sink.split.i.i.i.i36_crit_edge: ; preds = %if.else.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i36

if.else.i.i.i.i34.kref_get.exit37_crit_edge:      ; preds = %if.else.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit37

if.end15.sink.split.i.i.i.i36:                    ; preds = %if.else.i.i.i.i34.if.end15.sink.split.i.i.i.i36_crit_edge, %if.end6.if.end15.sink.split.i.i.i.i36_crit_edge
  %.sink.i.i.i.i35 = phi i32 [ 2, %if.end6.if.end15.sink.split.i.i.i.i36_crit_edge ], [ 1, %if.else.i.i.i.i34.if.end15.sink.split.i.i.i.i36_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount10, i32 noundef %.sink.i.i.i.i35) #10
  br label %kref_get.exit37

kref_get.exit37:                                  ; preds = %if.end15.sink.split.i.i.i.i36, %if.else.i.i.i.i34.kref_get.exit37_crit_edge
  %ifinfo_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 1
  %11 = ptrtoint ptr %ifinfo_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ifinfo_list, align 4
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %call7.i.i, align 8
  %14 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %ifinfo_list, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  %15 = ptrtoint ptr %ifinfo_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i, ptr %ifinfo_list, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %kref_get.exit37.out_crit_edge, label %do.body49.i

kref_get.exit37.out_crit_edge:                    ; preds = %kref_get.exit37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body49.i:                                      ; preds = %kref_get.exit37
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i.i, ptr %pprev51.i, align 4
  br label %out

out:                                              ; preds = %do.body49.i, %kref_get.exit37.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %orig_ifinfo.0 = phi ptr [ %call, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ %call7.i.i, %kref_get.exit37.out_crit_edge ], [ %call7.i.i, %do.body49.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_list_lock) #10
  ret ptr %orig_ifinfo.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_neigh_ifinfo_get(ptr noundef %neigh, ptr noundef readnone %if_outgoing) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b42 = load i1, ptr @batadv_neigh_ifinfo_get.__warned, align 1
  br i1 %.b42, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_neigh_ifinfo_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 410, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %ifinfo_list = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh, i32 0, i32 3
  %4 = ptrtoint ptr %ifinfo_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp_neigh_ifinfo.053 = load volatile ptr, ptr %ifinfo_list, align 4
  %tobool12.not54 = icmp eq ptr %tmp_neigh_ifinfo.053, null
  br i1 %tobool12.not54, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %tmp_neigh_ifinfo.055 = phi ptr [ %tmp_neigh_ifinfo.0, %for.inc.for.body_crit_edge ], [ %tmp_neigh_ifinfo.053, %do.end.for.body_crit_edge ]
  %if_outgoing13 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %tmp_neigh_ifinfo.055, i32 0, i32 1
  %5 = ptrtoint ptr %if_outgoing13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %if_outgoing13, align 4
  %cmp.not = icmp eq ptr %6, %if_outgoing
  br i1 %cmp.not, label %if.end15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %refcount = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %tmp_neigh_ifinfo.055, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %7 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end15
  %9 = phi i32 [ %8, %if.end15 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %9, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %13 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %12, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !93
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %12
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !94

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %15, 1
  %16 = or i32 %add5.i.i.i.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !94

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #10
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %18 = phi i32 [ %15, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.i.i.i.i.not = icmp eq i32 %18, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %tmp_neigh_ifinfo.055 to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp_neigh_ifinfo.0 = load volatile ptr, ptr %tmp_neigh_ifinfo.055, align 4
  %tobool12.not = icmp eq ptr %tmp_neigh_ifinfo.0, null
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %tmp_neigh_ifinfo.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %tmp_neigh_ifinfo.055, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i44 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i44, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i47

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i47:                                ; preds = %for.end
  %call1.i45 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool.not.i46, label %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i49

land.lhs.true.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i49:                               ; preds = %land.lhs.true.i47
  %.b4.i48 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48, label %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, label %if.then.i50

land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i50:                                      ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i50, %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %20 = call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i51 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i51 to ptr
  %preempt_count.i.i.i.i52 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i52, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i52, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %tmp_neigh_ifinfo.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_neigh_ifinfo_new(ptr noundef %neigh, ptr noundef %if_outgoing) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ifinfo_lock = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %ifinfo_lock) #10
  %call = tail call ptr @batadv_neigh_ifinfo_get(ptr noundef %neigh, ptr noundef %if_outgoing)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 56) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %if_outgoing, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  %refcount = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_outgoing, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then6.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !97

if.then6.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then6
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end7_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !94

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end7_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then6.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then6.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end7

if.end7:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end7_crit_edge, %if.end4.if.end7_crit_edge
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call7.i.i, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pprev.i, align 4
  %refcount8 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call7.i.i, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount8, i32 noundef 4) #10
  %5 = ptrtoint ptr %refcount8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %refcount8, align 4
  %if_outgoing9 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %if_outgoing9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %if_outgoing, ptr %if_outgoing9, align 8
  %call.i.i.i.i.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount8, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount8, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount8, ptr %refcount8, i32 1, ptr elementtype(i32) %refcount8) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i27 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i27)
  %tobool1.not.i.i.i.i28 = icmp eq i32 %asmresult.i.i.i.i.i.i27, 0
  br i1 %tobool1.not.i.i.i.i28, label %if.end7.if.end15.sink.split.i.i.i.i33_crit_edge, label %if.else.i.i.i.i31, !prof !97

if.end7.if.end15.sink.split.i.i.i.i33_crit_edge:  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i33

if.else.i.i.i.i31:                                ; preds = %if.end7
  %add.i.i.i.i29 = add i32 %asmresult.i.i.i.i.i.i27, 1
  %8 = or i32 %add.i.i.i.i29, %asmresult.i.i.i.i.i.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i30 = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i30, label %if.else.i.i.i.i31.kref_get.exit34_crit_edge, label %if.else.i.i.i.i31.if.end15.sink.split.i.i.i.i33_crit_edge, !prof !94

if.else.i.i.i.i31.if.end15.sink.split.i.i.i.i33_crit_edge: ; preds = %if.else.i.i.i.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i33

if.else.i.i.i.i31.kref_get.exit34_crit_edge:      ; preds = %if.else.i.i.i.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit34

if.end15.sink.split.i.i.i.i33:                    ; preds = %if.else.i.i.i.i31.if.end15.sink.split.i.i.i.i33_crit_edge, %if.end7.if.end15.sink.split.i.i.i.i33_crit_edge
  %.sink.i.i.i.i32 = phi i32 [ 2, %if.end7.if.end15.sink.split.i.i.i.i33_crit_edge ], [ 1, %if.else.i.i.i.i31.if.end15.sink.split.i.i.i.i33_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount8, i32 noundef %.sink.i.i.i.i32) #10
  br label %kref_get.exit34

kref_get.exit34:                                  ; preds = %if.end15.sink.split.i.i.i.i33, %if.else.i.i.i.i31.kref_get.exit34_crit_edge
  %ifinfo_list = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh, i32 0, i32 3
  %9 = ptrtoint ptr %ifinfo_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ifinfo_list, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call7.i.i, align 8
  %12 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %ifinfo_list, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  %13 = ptrtoint ptr %ifinfo_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i.i, ptr %ifinfo_list, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %kref_get.exit34.out_crit_edge, label %do.body49.i

kref_get.exit34.out_crit_edge:                    ; preds = %kref_get.exit34
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body49.i:                                      ; preds = %kref_get.exit34
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i, ptr %pprev51.i, align 4
  br label %out

out:                                              ; preds = %do.body49.i, %kref_get.exit34.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %neigh_ifinfo.0 = phi ptr [ %call, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ %call7.i.i, %kref_get.exit34.out_crit_edge ], [ %call7.i.i, %do.body49.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %ifinfo_lock) #10
  ret ptr %neigh_ifinfo.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_hardif_neigh_get(ptr noundef %hard_iface, ptr nocapture noundef readonly %neigh_addr) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b42 = load i1, ptr @batadv_hardif_neigh_get.__warned, align 1
  br i1 %.b42, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_hardif_neigh_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 592, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %neigh_list = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 12
  %4 = ptrtoint ptr %neigh_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp_hardif_neigh.053 = load volatile ptr, ptr %neigh_list, align 4
  %tobool12.not54 = icmp eq ptr %tmp_hardif_neigh.053, null
  br i1 %tobool12.not54, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %add.ptr1.i.i.i = getelementptr i8, ptr %neigh_addr, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp_hardif_neigh.055 = phi ptr [ %tmp_hardif_neigh.053, %for.body.lr.ph ], [ %tmp_hardif_neigh.0, %for.inc.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %tmp_hardif_neigh.055, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %7 = ptrtoint ptr %neigh_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %neigh_addr, align 4
  %xor.i.i.i = xor i32 %8, %6
  %add.ptr.i.i.i = getelementptr %struct.batadv_hardif_neigh_node, ptr %tmp_hardif_neigh.055, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i.i, align 2
  %11 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %12, %10
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %refcount = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %tmp_hardif_neigh.055, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %13 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end15
  %15 = phi i32 [ %14, %if.end15 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %15, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %19 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %18, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !93
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %18
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !94

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %20 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %21, 1
  %22 = or i32 %add5.i.i.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !94

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #10
  %23 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %24 = phi i32 [ %21, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.i.i.i.i.not = icmp eq i32 %24, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %tmp_hardif_neigh.055 to i32
  call void @__asan_load4_noabort(i32 %25)
  %tmp_hardif_neigh.0 = load volatile ptr, ptr %tmp_hardif_neigh.055, align 4
  %tobool12.not = icmp eq ptr %tmp_hardif_neigh.0, null
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %tmp_hardif_neigh.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %tmp_hardif_neigh.055, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i44 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i44, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i47

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i47:                                ; preds = %for.end
  %call1.i45 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool.not.i46, label %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i49

land.lhs.true.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i49:                               ; preds = %land.lhs.true.i47
  %.b4.i48 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48, label %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, label %if.then.i50

land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i50:                                      ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i50, %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %26 = call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i51 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i51 to ptr
  %preempt_count.i.i.i.i52 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i52, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i52, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %tmp_hardif_neigh.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_neigh_node_get_or_create(ptr noundef %orig_node, ptr noundef %hard_iface, ptr noundef %neigh_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @batadv_neigh_node_get(ptr noundef %orig_node, ptr noundef %hard_iface, ptr noundef %neigh_addr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %neigh_list_lock.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef %neigh_list_lock.i) #10
  %call.i = tail call fastcc ptr @batadv_neigh_node_get(ptr noundef %orig_node, ptr noundef %hard_iface, ptr noundef %neigh_addr) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.out.i_crit_edge

if.end.out.i_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.i:                                         ; preds = %if.end
  %call.i.i = tail call ptr @batadv_hardif_neigh_get(ptr noundef %hard_iface, ptr noundef %neigh_addr) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.end.i.i:                                       ; preds = %if.end.i
  %soft_iface.i.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface.i.i.i, align 4
  %neigh_list_lock.i.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %neigh_list_lock.i.i.i) #10
  %call1.i.i.i = tail call ptr @batadv_hardif_neigh_get(ptr noundef %hard_iface, ptr noundef %neigh_addr) #10
  %tobool.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i.batadv_hardif_neigh_get_or_create.exit.thread86.i_crit_edge

if.end.i.i.batadv_hardif_neigh_get_or_create.exit.thread86.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_neigh_get_or_create.exit.thread86.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 100) #13
  %tobool3.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool3.not.i.i.i, label %batadv_hardif_neigh_get_or_create.exit.i, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %refcount.i.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !97

if.end5.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.kref_get.exit.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !94

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.kref_get.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit.i.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.end5.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.end5.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #10
  br label %kref_get.exit.i.i.i

kref_get.exit.i.i.i:                              ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.kref_get.exit.i.i.i_crit_edge
  %5 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %call7.i.i.i.i.i, align 8
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  %addr.i.i.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %neigh_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %neigh_addr, align 4
  %9 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %addr.i.i.i, align 8
  %add.ptr.i36.i.i.i = getelementptr i8, ptr %neigh_addr, i32 4
  %10 = ptrtoint ptr %add.ptr.i36.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i36.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr %struct.batadv_hardif_neigh_node, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %add.ptr1.i.i.i.i, align 4
  %orig.i.i.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %orig_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %orig_node, align 4
  %15 = ptrtoint ptr %orig.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %orig.i.i.i, align 4
  %add.ptr.i37.i.i.i = getelementptr i8, ptr %orig_node, i32 4
  %16 = ptrtoint ptr %add.ptr.i37.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i37.i.i.i, align 2
  %add.ptr1.i38.i.i.i = getelementptr %struct.batadv_hardif_neigh_node, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %add.ptr1.i38.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %add.ptr1.i38.i.i.i, align 2
  %if_incoming.i.i.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %if_incoming.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %hard_iface, ptr %if_incoming.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %last_seen.i.i.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %last_seen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_seen.i.i.i, align 8
  %refcount9.i.i.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %call7.i.i.i.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount9.i.i.i, i32 noundef 4) #10
  %22 = ptrtoint ptr %refcount9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %refcount9.i.i.i, align 8
  %algo_ops.i.i.i = getelementptr i8, ptr %1, i32 2640
  %23 = ptrtoint ptr %algo_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %algo_ops.i.i.i, align 4
  %neigh.i.i.i = getelementptr inbounds %struct.batadv_algo_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %neigh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %neigh.i.i.i, align 4
  %tobool10.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool10.not.i.i.i, label %kref_get.exit.i.i.i.if.end15.i.i.i_crit_edge, label %if.then11.i.i.i

kref_get.exit.i.i.i.if.end15.i.i.i_crit_edge:     ; preds = %kref_get.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.i

if.then11.i.i.i:                                  ; preds = %kref_get.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %26(ptr noundef nonnull %call7.i.i.i.i.i) #10
  br label %if.end15.i.i.i

if.end15.i.i.i:                                   ; preds = %if.then11.i.i.i, %kref_get.exit.i.i.i.if.end15.i.i.i_crit_edge
  %neigh_list.i.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 12
  %27 = ptrtoint ptr %neigh_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %neigh_list.i.i.i, align 4
  %29 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %call7.i.i.i.i.i, align 8
  %30 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %neigh_list.i.i.i, ptr %pprev.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  %31 = ptrtoint ptr %neigh_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call7.i.i.i.i.i, ptr %neigh_list.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i.i, label %if.end15.i.i.i.batadv_hardif_neigh_get_or_create.exit.thread86.i_crit_edge, label %do.body49.i.i.i.i

if.end15.i.i.i.batadv_hardif_neigh_get_or_create.exit.thread86.i_crit_edge: ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_neigh_get_or_create.exit.thread86.i

do.body49.i.i.i.i:                                ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %32 = ptrtoint ptr %pprev51.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i.i.i.i, ptr %pprev51.i.i.i.i, align 4
  br label %batadv_hardif_neigh_get_or_create.exit.thread86.i

batadv_hardif_neigh_get_or_create.exit.thread86.i: ; preds = %do.body49.i.i.i.i, %if.end15.i.i.i.batadv_hardif_neigh_get_or_create.exit.thread86.i_crit_edge, %if.end.i.i.batadv_hardif_neigh_get_or_create.exit.thread86.i_crit_edge
  %hardif_neigh.0.i.i.ph.i = phi ptr [ %call7.i.i.i.i.i, %do.body49.i.i.i.i ], [ %call7.i.i.i.i.i, %if.end15.i.i.i.batadv_hardif_neigh_get_or_create.exit.thread86.i_crit_edge ], [ %call1.i.i.i, %if.end.i.i.batadv_hardif_neigh_get_or_create.exit.thread86.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_list_lock.i.i.i) #10
  br label %if.end4.i

batadv_hardif_neigh_get_or_create.exit.i:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_list_lock.i.i.i) #10
  br label %out.i

if.end4.i:                                        ; preds = %batadv_hardif_neigh_get_or_create.exit.thread86.i, %if.end.i.if.end4.i_crit_edge
  %retval.0.i85.i = phi ptr [ %hardif_neigh.0.i.i.ph.i, %batadv_hardif_neigh_get_or_create.exit.thread86.i ], [ %call.i.i, %if.end.i.if.end4.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 2848, i32 noundef 92) #13
  %tobool6.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool6.not.i, label %if.end4.i.if.end.i82.i_crit_edge, label %if.end8.i

if.end4.i.if.end.i82.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i82.i

if.end8.i:                                        ; preds = %if.end4.i
  %34 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %call7.i.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %pprev.i.i, align 4
  %ifinfo_list.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call7.i.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %ifinfo_list.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %ifinfo_list.i, align 4
  %ifinfo_lock.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %ifinfo_lock.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @batadv_neigh_node_create.__key, i16 noundef signext 3) #10
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 5
  %call.i.i.i.i.i.i59.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end8.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !97

if.end8.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end8.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %38 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %.not.i.i.i.i.i = icmp sgt i32 %38, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !94

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end8.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end8.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %addr.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call7.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %neigh_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %neigh_addr, align 4
  %41 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %neigh_addr, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.batadv_neigh_node, ptr %call7.i.i.i, i32 0, i32 2, i32 4
  %44 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %add.ptr1.i.i, align 8
  %if_incoming.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call7.i.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %if_incoming.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %hard_iface, ptr %if_incoming.i, align 4
  %orig_node10.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call7.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %orig_node10.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %orig_node, ptr %orig_node10.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %last_seen.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call7.i.i.i, i32 0, i32 6
  %48 = ptrtoint ptr %last_seen.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %last_seen.i, align 8
  %refcount11.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %retval.0.i85.i, i32 0, i32 6
  %call.i.i.i.i.i.i60.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount11.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount11.i, i32 1, i32 3, i32 1) #10
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount11.i, ptr %refcount11.i, i32 1, ptr elementtype(i32) %refcount11.i) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i61.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i61.i)
  %tobool1.not.i.i.i.i62.i = icmp eq i32 %asmresult.i.i.i.i.i.i61.i, 0
  br i1 %tobool1.not.i.i.i.i62.i, label %kref_get.exit.i.if.end15.sink.split.i.i.i.i67.i_crit_edge, label %if.else.i.i.i.i65.i, !prof !97

kref_get.exit.i.if.end15.sink.split.i.i.i.i67.i_crit_edge: ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i67.i

if.else.i.i.i.i65.i:                              ; preds = %kref_get.exit.i
  %add.i.i.i.i63.i = add i32 %asmresult.i.i.i.i.i.i61.i, 1
  %50 = or i32 %add.i.i.i.i63.i, %asmresult.i.i.i.i.i.i61.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %.not.i.i.i.i64.i = icmp sgt i32 %50, -1
  br i1 %.not.i.i.i.i64.i, label %if.else.i.i.i.i65.i.kref_get.exit68.i_crit_edge, label %if.else.i.i.i.i65.i.if.end15.sink.split.i.i.i.i67.i_crit_edge, !prof !94

if.else.i.i.i.i65.i.if.end15.sink.split.i.i.i.i67.i_crit_edge: ; preds = %if.else.i.i.i.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i67.i

if.else.i.i.i.i65.i.kref_get.exit68.i_crit_edge:  ; preds = %if.else.i.i.i.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit68.i

if.end15.sink.split.i.i.i.i67.i:                  ; preds = %if.else.i.i.i.i65.i.if.end15.sink.split.i.i.i.i67.i_crit_edge, %kref_get.exit.i.if.end15.sink.split.i.i.i.i67.i_crit_edge
  %.sink.i.i.i.i66.i = phi i32 [ 2, %kref_get.exit.i.if.end15.sink.split.i.i.i.i67.i_crit_edge ], [ 1, %if.else.i.i.i.i65.i.if.end15.sink.split.i.i.i.i67.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount11.i, i32 noundef %.sink.i.i.i.i66.i) #10
  br label %kref_get.exit68.i

kref_get.exit68.i:                                ; preds = %if.end15.sink.split.i.i.i.i67.i, %if.else.i.i.i.i65.i.kref_get.exit68.i_crit_edge
  %hardif_neigh12.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call7.i.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %hardif_neigh12.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %retval.0.i85.i, ptr %hardif_neigh12.i, align 4
  %refcount13.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call7.i.i.i, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount13.i, i32 noundef 4) #10
  %52 = ptrtoint ptr %refcount13.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 1, ptr %refcount13.i, align 8
  %call.i.i.i.i.i.i69.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount13.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount13.i, i32 1, i32 3, i32 1) #10
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount13.i, ptr %refcount13.i, i32 1, ptr elementtype(i32) %refcount13.i) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i70.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i70.i)
  %tobool1.not.i.i.i.i71.i = icmp eq i32 %asmresult.i.i.i.i.i.i70.i, 0
  br i1 %tobool1.not.i.i.i.i71.i, label %kref_get.exit68.i.if.end15.sink.split.i.i.i.i76.i_crit_edge, label %if.else.i.i.i.i74.i, !prof !97

kref_get.exit68.i.if.end15.sink.split.i.i.i.i76.i_crit_edge: ; preds = %kref_get.exit68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i76.i

if.else.i.i.i.i74.i:                              ; preds = %kref_get.exit68.i
  %add.i.i.i.i72.i = add i32 %asmresult.i.i.i.i.i.i70.i, 1
  %54 = or i32 %add.i.i.i.i72.i, %asmresult.i.i.i.i.i.i70.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %.not.i.i.i.i73.i = icmp sgt i32 %54, -1
  br i1 %.not.i.i.i.i73.i, label %if.else.i.i.i.i74.i.kref_get.exit77.i_crit_edge, label %if.else.i.i.i.i74.i.if.end15.sink.split.i.i.i.i76.i_crit_edge, !prof !94

if.else.i.i.i.i74.i.if.end15.sink.split.i.i.i.i76.i_crit_edge: ; preds = %if.else.i.i.i.i74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i76.i

if.else.i.i.i.i74.i.kref_get.exit77.i_crit_edge:  ; preds = %if.else.i.i.i.i74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit77.i

if.end15.sink.split.i.i.i.i76.i:                  ; preds = %if.else.i.i.i.i74.i.if.end15.sink.split.i.i.i.i76.i_crit_edge, %kref_get.exit68.i.if.end15.sink.split.i.i.i.i76.i_crit_edge
  %.sink.i.i.i.i75.i = phi i32 [ 2, %kref_get.exit68.i.if.end15.sink.split.i.i.i.i76.i_crit_edge ], [ 1, %if.else.i.i.i.i74.i.if.end15.sink.split.i.i.i.i76.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount13.i, i32 noundef %.sink.i.i.i.i75.i) #10
  br label %kref_get.exit77.i

kref_get.exit77.i:                                ; preds = %if.end15.sink.split.i.i.i.i76.i, %if.else.i.i.i.i74.i.kref_get.exit77.i_crit_edge
  %neigh_list.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 22
  %55 = ptrtoint ptr %neigh_list.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %neigh_list.i, align 4
  %57 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %call7.i.i.i, align 8
  %58 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %neigh_list.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  %59 = ptrtoint ptr %neigh_list.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %call7.i.i.i, ptr %neigh_list.i, align 4
  %tobool.not.i79.i = icmp eq ptr %56, null
  br i1 %tobool.not.i79.i, label %kref_get.exit77.i.hlist_add_head_rcu.exit.i_crit_edge, label %do.body49.i.i

kref_get.exit77.i.hlist_add_head_rcu.exit.i_crit_edge: ; preds = %kref_get.exit77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head_rcu.exit.i

do.body49.i.i:                                    ; preds = %kref_get.exit77.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %56, i32 0, i32 1
  %60 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %call7.i.i.i, ptr %pprev51.i.i, align 4
  br label %hlist_add_head_rcu.exit.i

hlist_add_head_rcu.exit.i:                        ; preds = %do.body49.i.i, %kref_get.exit77.i.hlist_add_head_rcu.exit.i_crit_edge
  %bat_priv.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 25
  %61 = ptrtoint ptr %bat_priv.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bat_priv.i, align 4
  %log_level.i = getelementptr inbounds %struct.batadv_priv, ptr %62, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #10
  %63 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %hlist_add_head_rcu.exit.i.if.end.i82.i_crit_edge, label %if.then19.i

hlist_add_head_rcu.exit.i.if.end.i82.i_crit_edge: ; preds = %hlist_add_head_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i82.i

if.then19.i:                                      ; preds = %hlist_add_head_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 4
  %65 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net_dev.i, align 4
  %call22.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %62, ptr noundef nonnull @.str.26, ptr noundef %neigh_addr, ptr noundef %orig_node, ptr noundef %66) #10
  br label %if.end.i82.i

out.i:                                            ; preds = %batadv_hardif_neigh_get_or_create.exit.i, %if.end.out.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_list_lock.i) #10
  br label %cleanup

if.end.i82.i:                                     ; preds = %if.then19.i, %hlist_add_head_rcu.exit.i.if.end.i82.i_crit_edge, %if.end4.i.if.end.i82.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_list_lock.i) #10
  %refcount.i.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %retval.0.i85.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i81.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i81.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i81.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i81.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i81.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @batadv_hardif_neigh_release(ptr noundef %refcount.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %out.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ %call.i, %out.i ], [ %call7.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call7.i.i.i, %if.then10.i.i.i.i.i.i ], [ %call7.i.i.i, %if.then.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_neigh_node_get(ptr noundef %orig_node, ptr noundef readnone %hard_iface, ptr nocapture noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b46 = load i1, ptr @batadv_neigh_node_get.__warned, align 1
  br i1 %.b46, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_neigh_node_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 487, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %neigh_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 22
  %4 = ptrtoint ptr %neigh_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp_neigh_node.057 = load volatile ptr, ptr %neigh_list, align 4
  %tobool12.not58 = icmp eq ptr %tmp_neigh_node.057, null
  br i1 %tobool12.not58, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %add.ptr1.i.i.i = getelementptr i8, ptr %addr, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp_neigh_node.059 = phi ptr [ %tmp_neigh_node.057, %for.body.lr.ph ], [ %tmp_neigh_node.0, %for.inc.for.body_crit_edge ]
  %addr13 = getelementptr inbounds %struct.batadv_neigh_node, ptr %tmp_neigh_node.059, i32 0, i32 2
  %5 = ptrtoint ptr %addr13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr13, align 4
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %xor.i.i.i = xor i32 %8, %6
  %add.ptr.i.i.i = getelementptr %struct.batadv_neigh_node, ptr %tmp_neigh_node.059, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i.i, align 2
  %11 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %12, %10
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %if_incoming = getelementptr inbounds %struct.batadv_neigh_node, ptr %tmp_neigh_node.059, i32 0, i32 5
  %13 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %if_incoming, align 4
  %cmp.not = icmp eq ptr %14, %hard_iface
  br i1 %cmp.not, label %if.end18, label %if.end16.for.inc_crit_edge

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end18:                                         ; preds = %if.end16
  %refcount = getelementptr inbounds %struct.batadv_neigh_node, ptr %tmp_neigh_node.059, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %15 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end18
  %17 = phi i32 [ %16, %if.end18 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %17, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %19 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %21 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %20, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !93
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %20
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !94

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %22 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %23, 1
  %24 = or i32 %add5.i.i.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !94

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #10
  %25 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %26 = phi i32 [ %23, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool12.i.i.i.i.not = icmp eq i32 %26, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %if.end16.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %27 = ptrtoint ptr %tmp_neigh_node.059 to i32
  call void @__asan_load4_noabort(i32 %27)
  %tmp_neigh_node.0 = load volatile ptr, ptr %tmp_neigh_node.059, align 4
  %tobool12.not = icmp eq ptr %tmp_neigh_node.0, null
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %tmp_neigh_node.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %tmp_neigh_node.059, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i48 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i48, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i51

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i51:                                ; preds = %for.end
  %call1.i49 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49)
  %tobool.not.i50 = icmp eq i32 %call1.i49, 0
  br i1 %tobool.not.i50, label %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i53

land.lhs.true.i51.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i53:                               ; preds = %land.lhs.true.i51
  %.b4.i52 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52, label %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, label %if.then.i54

land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i54:                                      ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i54, %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %28 = call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i55 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i55 to ptr
  %preempt_count.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i56, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i56, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %tmp_neigh_node.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_hardif_neigh_dump(ptr noundef %msg, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %7 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nlh, align 4
  %call1 = tail call i32 @batadv_netlink_get_ifindex(ptr noundef %8, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @dev_get_by_index(ptr noundef %6, i32 noundef %call1) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call zeroext i1 @batadv_softif_is_valid(ptr noundef nonnull %call2) #10
  br i1 %call4, label %if.end6, label %lor.lhs.false.do.body1.i88_crit_edge

lor.lhs.false.do.body1.i88_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i88

if.end6:                                          ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %call2, i32 2304
  %call8 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.do.body1.i88_crit_edge, label %lor.lhs.false10

if.end6.do.body1.i88_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i88

lor.lhs.false10:                                  ; preds = %if.end6
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %call8, i32 0, i32 1
  %9 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp.not = icmp eq i8 %10, 3
  br i1 %cmp.not, label %if.end13, label %lor.lhs.false10.if.end.i73_crit_edge

lor.lhs.false10.if.end.i73_crit_edge:             ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i73

if.end13:                                         ; preds = %lor.lhs.false10
  %11 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nlh, align 4
  %call15 = tail call i32 @batadv_netlink_get_ifindex(ptr noundef %12, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.if.end31_crit_edge, label %if.then17

if.end13.if.end31_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then17:                                        ; preds = %if.end13
  %call18 = tail call ptr @dev_get_by_index(ptr noundef %6, i32 noundef %call15) #10
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then17.if.end.i73_crit_edge, label %if.end22

if.then17.if.end.i73_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i73

if.end22:                                         ; preds = %if.then17
  %call21 = tail call ptr @batadv_hardif_get_by_netdev(ptr noundef nonnull %call18) #10
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.end22.do.body1.i_crit_edge, label %if.end25

if.end22.do.body1.i_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i

if.end25:                                         ; preds = %if.end22
  %soft_iface26 = getelementptr inbounds %struct.batadv_hard_iface, ptr %call21, i32 0, i32 7
  %13 = ptrtoint ptr %soft_iface26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %soft_iface26, align 4
  %cmp27.not = icmp eq ptr %14, %call2
  br i1 %cmp27.not, label %if.end25.if.end31_crit_edge, label %if.end25.if.end.i_crit_edge

if.end25.if.end.i_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end31:                                         ; preds = %if.end25.if.end31_crit_edge, %if.end13.if.end31_crit_edge
  %hard_iface.0 = phi ptr [ %call18, %if.end25.if.end31_crit_edge ], [ null, %if.end13.if.end31_crit_edge ]
  %hardif.1 = phi ptr [ %call21, %if.end25.if.end31_crit_edge ], [ null, %if.end13.if.end31_crit_edge ]
  %algo_ops = getelementptr i8, ptr %call2, i32 2640
  %15 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %algo_ops, align 4
  %dump = getelementptr inbounds %struct.batadv_algo_ops, ptr %16, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %dump to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dump, align 4
  %tobool32.not = icmp eq ptr %18, null
  br i1 %tobool32.not, label %if.end31.out_crit_edge, label %if.end34

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end34:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %18(ptr noundef %msg, ptr noundef %cb, ptr noundef %add.ptr.i, ptr noundef %hardif.1) #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  br label %out

out:                                              ; preds = %if.end34, %if.end31.out_crit_edge
  %ret.0 = phi i32 [ %20, %if.end34 ], [ -95, %if.end31.out_crit_edge ]
  %tobool.not.i = icmp eq ptr %hardif.1, null
  br i1 %tobool.not.i, label %out.batadv_hardif_put.exit_crit_edge, label %out.if.end.i_crit_edge

out.if.end.i_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

out.batadv_hardif_put.exit_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.end.i:                                         ; preds = %out.if.end.i_crit_edge, %if.end25.if.end.i_crit_edge
  %ret.0111 = phi i32 [ %ret.0, %out.if.end.i_crit_edge ], [ -2, %if.end25.if.end.i_crit_edge ]
  %hardif.2109 = phi ptr [ %hardif.1, %out.if.end.i_crit_edge ], [ %call21, %if.end25.if.end.i_crit_edge ]
  %hard_iface.1108 = phi ptr [ %hard_iface.0, %out.if.end.i_crit_edge ], [ %call18, %if.end25.if.end.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hardif.2109, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %batadv_hardif_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #10
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %out.batadv_hardif_put.exit_crit_edge
  %ret.0101 = phi i32 [ %ret.0, %out.batadv_hardif_put.exit_crit_edge ], [ %ret.0111, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge ], [ %ret.0111, %if.then10.i.i.i.i.i ], [ %ret.0111, %if.then.i.i ]
  %hard_iface.199 = phi ptr [ %hard_iface.0, %out.batadv_hardif_put.exit_crit_edge ], [ %hard_iface.1108, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge ], [ %hard_iface.1108, %if.then10.i.i.i.i.i ], [ %hard_iface.1108, %if.then.i.i ]
  %tobool.not.i67 = icmp eq ptr %hard_iface.199, null
  br i1 %tobool.not.i67, label %batadv_hardif_put.exit.if.end.i73_crit_edge, label %batadv_hardif_put.exit.do.body1.i_crit_edge

batadv_hardif_put.exit.do.body1.i_crit_edge:      ; preds = %batadv_hardif_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i

batadv_hardif_put.exit.if.end.i73_crit_edge:      ; preds = %batadv_hardif_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i73

do.body1.i:                                       ; preds = %batadv_hardif_put.exit.do.body1.i_crit_edge, %if.end22.do.body1.i_crit_edge
  %hard_iface.199125 = phi ptr [ %hard_iface.199, %batadv_hardif_put.exit.do.body1.i_crit_edge ], [ %call18, %if.end22.do.body1.i_crit_edge ]
  %ret.0101123 = phi i32 [ %ret.0101, %batadv_hardif_put.exit.do.body1.i_crit_edge ], [ -19, %if.end22.do.body1.i_crit_edge ]
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !102
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %hard_iface.199125, i32 0, i32 118
  %23 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcpu_refcnt.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %31, %25
  %32 = inttoptr i32 %add.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add13.i = add i32 %34, -1
  store i32 %add13.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !103
  %and.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !97

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #10, !srcloc !104
  br label %if.end.i73

if.end.i73:                                       ; preds = %do.end30.i, %batadv_hardif_put.exit.if.end.i73_crit_edge, %if.then17.if.end.i73_crit_edge, %lor.lhs.false10.if.end.i73_crit_edge
  %ret.0101116130 = phi i32 [ -19, %if.then17.if.end.i73_crit_edge ], [ -2, %lor.lhs.false10.if.end.i73_crit_edge ], [ %ret.0101123, %do.end30.i ], [ %ret.0101, %batadv_hardif_put.exit.if.end.i73_crit_edge ]
  %refcount.i69 = getelementptr inbounds %struct.batadv_hard_iface, ptr %call8, i32 0, i32 5
  %call.i.i.i.i.i.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i69, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i69, i32 1, i32 3, i32 1) #10
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i69, ptr %refcount.i69, i32 1, ptr elementtype(i32) %refcount.i69) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i71 = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i71)
  %cmp.i.i.i.i.i72 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i71, 1
  br i1 %cmp.i.i.i.i.i72, label %if.then.i.i77, label %if.end5.i.i.i.i.i75

if.end5.i.i.i.i.i75:                              ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i71)
  %.not.i.i.i.i.i74 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i71, 0
  br i1 %.not.i.i.i.i.i74, label %if.end5.i.i.i.i.i75.do.body1.i88_crit_edge, label %if.then10.i.i.i.i.i76, !prof !94

if.end5.i.i.i.i.i75.do.body1.i88_crit_edge:       ; preds = %if.end5.i.i.i.i.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i88

if.then10.i.i.i.i.i76:                            ; preds = %if.end5.i.i.i.i.i75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i69, i32 noundef 3) #10
  br label %do.body1.i88

if.then.i.i77:                                    ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @batadv_hardif_release(ptr noundef %refcount.i69) #10
  br label %do.body1.i88

do.body1.i88:                                     ; preds = %if.then.i.i77, %if.then10.i.i.i.i.i76, %if.end5.i.i.i.i.i75.do.body1.i88_crit_edge, %if.end6.do.body1.i88_crit_edge, %lor.lhs.false.do.body1.i88_crit_edge
  %ret.0101116131138 = phi i32 [ %ret.0101116130, %if.end5.i.i.i.i.i75.do.body1.i88_crit_edge ], [ %ret.0101116130, %if.then10.i.i.i.i.i76 ], [ %ret.0101116130, %if.then.i.i77 ], [ -19, %lor.lhs.false.do.body1.i88_crit_edge ], [ -2, %if.end6.do.body1.i88_crit_edge ]
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !102
  %pcpu_refcnt.i80 = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 118
  %38 = ptrtoint ptr %pcpu_refcnt.i80 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcpu_refcnt.i80, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i81 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i81 to ptr
  %cpu.i82 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i82 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i82, align 4
  %arrayidx.i83 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i83, align 4
  %add.i84 = add i32 %46, %40
  %47 = inttoptr i32 %add.i84 to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add13.i85 = add i32 %49, -1
  store i32 %add13.i85, ptr %47, align 4
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !103
  %and.i.i.i86 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i86)
  %tobool24.not.i87 = icmp eq i32 %and.i.i.i86, 0
  br i1 %tobool24.not.i87, label %if.then28.i89, label %do.body1.i88.do.end30.i90_crit_edge, !prof !97

do.body1.i88.do.end30.i90_crit_edge:              ; preds = %do.body1.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i90

if.then28.i89:                                    ; preds = %do.body1.i88
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i90

do.end30.i90:                                     ; preds = %if.then28.i89, %do.body1.i88.do.end30.i90_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #10, !srcloc !104
  br label %cleanup

cleanup:                                          ; preds = %do.end30.i90, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.0101116131138, %do.end30.i90 ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_netlink_get_ifindex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_softif_is_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv) unnamed_addr #4 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %primary_if = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 29
  %4 = ptrtoint ptr %primary_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %primary_if, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b18 = load i1, ptr @batadv_primary_if_get_selected.__warned, align 1
  br i1 %.b18, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_primary_if_get_selected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 110, ptr noundef nonnull @.str.6) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.out_crit_edge, label %if.end11

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end11:                                         ; preds = %do.end7
  %refcount = getelementptr inbounds %struct.batadv_hard_iface, ptr %5, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !93
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !94

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !94

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #10
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %spec.select = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %5
  br label %out

out:                                              ; preds = %kref_get_unless_zero.exit, %do.end7.out_crit_edge
  %hard_iface.0 = phi ptr [ null, %do.end7.out_crit_edge ], [ %spec.select, %kref_get_unless_zero.exit ]
  %call.i19 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i19, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %out
  %call1.i20 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %18 = call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i26 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %hard_iface.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_hardif_get_by_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_orig_ifinfo_release(ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -44
  %if_outgoing = getelementptr i8, ptr %ref, i32 -36
  %0 = ptrtoint ptr %if_outgoing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_outgoing, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.do.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.do.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %do.end

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #10
  br label %do.end

do.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.do.end_crit_edge, %entry.do.end_crit_edge
  %router3 = getelementptr i8, ptr %ref, i32 -32
  %3 = ptrtoint ptr %router3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %router3, align 4
  %tobool.not.i16 = icmp eq ptr %4, null
  br i1 %tobool.not.i16, label %do.end.batadv_neigh_node_put.exit_crit_edge, label %if.end.i21

do.end.batadv_neigh_node_put.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_neigh_node_put.exit

if.end.i21:                                       ; preds = %do.end
  %refcount.i17 = getelementptr inbounds %struct.batadv_neigh_node, ptr %4, i32 0, i32 8
  %call.i.i.i.i.i.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i17, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i17, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i17, ptr %refcount.i17, i32 1, ptr elementtype(i32) %refcount.i17) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i19 = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i19)
  %cmp.i.i.i.i.i20 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i19, 1
  br i1 %cmp.i.i.i.i.i20, label %if.then.i.i25, label %if.end5.i.i.i.i.i23

if.end5.i.i.i.i.i23:                              ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i19)
  %.not.i.i.i.i.i22 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i19, 0
  br i1 %.not.i.i.i.i.i22, label %if.end5.i.i.i.i.i23.batadv_neigh_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i24, !prof !94

if.end5.i.i.i.i.i23.batadv_neigh_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_neigh_node_put.exit

if.then10.i.i.i.i.i24:                            ; preds = %if.end5.i.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i17, i32 noundef 3) #10
  br label %batadv_neigh_node_put.exit

if.then.i.i25:                                    ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @batadv_neigh_node_release(ptr noundef %refcount.i17) #10
  br label %batadv_neigh_node_put.exit

batadv_neigh_node_put.exit:                       ; preds = %if.then.i.i25, %if.then10.i.i.i.i.i24, %if.end5.i.i.i.i.i23.batadv_neigh_node_put.exit_crit_edge, %do.end.batadv_neigh_node_put.exit_crit_edge
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %batadv_neigh_node_put.exit.if.end9_crit_edge, label %do.end8

batadv_neigh_node_put.exit.if.end9_crit_edge:     ; preds = %batadv_neigh_node_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end8:                                          ; preds = %batadv_neigh_node_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr i8, ptr %ref, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 48 to ptr)) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end8, %batadv_neigh_node_put.exit.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_orig_node_release(ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %neigh_list_lock = getelementptr i8, ptr %ref, i32 -100
  tail call void @_raw_spin_lock_bh(ptr noundef %neigh_list_lock) #10
  %neigh_list = getelementptr i8, ptr %ref, i32 -104
  %0 = ptrtoint ptr %neigh_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %neigh_list, align 4
  %tobool5.not166 = icmp eq ptr %1, null
  br i1 %tobool5.not166, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs:                                         ; preds = %batadv_neigh_node_put.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %neigh_node.0167 = phi ptr [ %3, %batadv_neigh_node_put.exit.land.rhs_crit_edge ], [ %1, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %neigh_node.0167 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %neigh_node.0167, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %neigh_node.0167, i32 0, i32 1
  %4 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev2.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %5, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %land.rhs.if.end.i_crit_edge, label %do.body13.i.i

land.rhs.if.end.i_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.body13.i.i:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %pprev14.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body13.i.i, %land.rhs.if.end.i_crit_edge
  %8 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %refcount.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.0167, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_neigh_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.batadv_neigh_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_neigh_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %batadv_neigh_node_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @batadv_neigh_node_release(ptr noundef %refcount.i) #10
  br label %batadv_neigh_node_put.exit

batadv_neigh_node_put.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_neigh_node_put.exit_crit_edge
  br i1 %tobool.not.i.i, label %batadv_neigh_node_put.exit.for.end_crit_edge, label %batadv_neigh_node_put.exit.land.rhs_crit_edge

batadv_neigh_node_put.exit.land.rhs_crit_edge:    ; preds = %batadv_neigh_node_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

batadv_neigh_node_put.exit.for.end_crit_edge:     ; preds = %batadv_neigh_node_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %batadv_neigh_node_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %ifinfo_list = getelementptr i8, ptr %ref, i32 -332
  %10 = ptrtoint ptr %ifinfo_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ifinfo_list, align 4
  %tobool31.not168 = icmp eq ptr %11, null
  br i1 %tobool31.not168, label %for.end.for.end51_crit_edge, label %for.end.land.rhs32_crit_edge

for.end.land.rhs32_crit_edge:                     ; preds = %for.end
  br label %land.rhs32

for.end.for.end51_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end51

land.rhs32:                                       ; preds = %batadv_orig_ifinfo_put.exit.land.rhs32_crit_edge, %for.end.land.rhs32_crit_edge
  %orig_ifinfo.0169 = phi ptr [ %13, %batadv_orig_ifinfo_put.exit.land.rhs32_crit_edge ], [ %11, %for.end.land.rhs32_crit_edge ]
  %12 = ptrtoint ptr %orig_ifinfo.0169 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %orig_ifinfo.0169, align 4
  %pprev2.i.i123 = getelementptr inbounds %struct.hlist_node, ptr %orig_ifinfo.0169, i32 0, i32 1
  %14 = ptrtoint ptr %pprev2.i.i123 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev2.i.i123, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %13, ptr %15, align 4
  %tobool.not.i.i124 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i124, label %land.rhs32.if.end.i133_crit_edge, label %do.body13.i.i126

land.rhs32.if.end.i133_crit_edge:                 ; preds = %land.rhs32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i133

do.body13.i.i126:                                 ; preds = %land.rhs32
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i125 = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i125 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %pprev14.i.i125, align 4
  br label %if.end.i133

if.end.i133:                                      ; preds = %do.body13.i.i126, %land.rhs32.if.end.i133_crit_edge
  %18 = ptrtoint ptr %pprev2.i.i123 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i123, align 4
  %refcount.i129 = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %orig_ifinfo.0169, i32 0, i32 8
  %call.i.i.i.i.i.i.i130 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i129, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i129, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i129, ptr %refcount.i129, i32 1, ptr elementtype(i32) %refcount.i129) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i131 = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i131)
  %cmp.i.i.i.i.i132 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i131, 1
  br i1 %cmp.i.i.i.i.i132, label %if.then.i.i137, label %if.end5.i.i.i.i.i135

if.end5.i.i.i.i.i135:                             ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i131)
  %.not.i.i.i.i.i134 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i131, 0
  br i1 %.not.i.i.i.i.i134, label %if.end5.i.i.i.i.i135.batadv_orig_ifinfo_put.exit_crit_edge, label %if.then10.i.i.i.i.i136, !prof !94

if.end5.i.i.i.i.i135.batadv_orig_ifinfo_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_orig_ifinfo_put.exit

if.then10.i.i.i.i.i136:                           ; preds = %if.end5.i.i.i.i.i135
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i129, i32 noundef 3) #10
  br label %batadv_orig_ifinfo_put.exit

if.then.i.i137:                                   ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @batadv_orig_ifinfo_release(ptr noundef %refcount.i129) #10
  br label %batadv_orig_ifinfo_put.exit

batadv_orig_ifinfo_put.exit:                      ; preds = %if.then.i.i137, %if.then10.i.i.i.i.i136, %if.end5.i.i.i.i.i135.batadv_orig_ifinfo_put.exit_crit_edge
  br i1 %tobool.not.i.i124, label %batadv_orig_ifinfo_put.exit.for.end51_crit_edge, label %batadv_orig_ifinfo_put.exit.land.rhs32_crit_edge

batadv_orig_ifinfo_put.exit.land.rhs32_crit_edge: ; preds = %batadv_orig_ifinfo_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs32

batadv_orig_ifinfo_put.exit.for.end51_crit_edge:  ; preds = %batadv_orig_ifinfo_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end51

for.end51:                                        ; preds = %batadv_orig_ifinfo_put.exit.for.end51_crit_edge, %for.end.for.end51_crit_edge
  %last_bonding_candidate = getelementptr i8, ptr %ref, i32 -328
  %20 = ptrtoint ptr %last_bonding_candidate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %last_bonding_candidate, align 4
  store ptr null, ptr %last_bonding_candidate, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_list_lock) #10
  %tobool.not.i138 = icmp eq ptr %21, null
  br i1 %tobool.not.i138, label %for.end51.batadv_orig_ifinfo_put.exit148_crit_edge, label %if.end.i143

for.end51.batadv_orig_ifinfo_put.exit148_crit_edge: ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_orig_ifinfo_put.exit148

if.end.i143:                                      ; preds = %for.end51
  %refcount.i139 = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %21, i32 0, i32 8
  %call.i.i.i.i.i.i.i140 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i139, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i139, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i139, ptr %refcount.i139, i32 1, ptr elementtype(i32) %refcount.i139) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i141 = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i141)
  %cmp.i.i.i.i.i142 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i141, 1
  br i1 %cmp.i.i.i.i.i142, label %if.then.i.i147, label %if.end5.i.i.i.i.i145

if.end5.i.i.i.i.i145:                             ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i141)
  %.not.i.i.i.i.i144 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i141, 0
  br i1 %.not.i.i.i.i.i144, label %if.end5.i.i.i.i.i145.batadv_orig_ifinfo_put.exit148_crit_edge, label %if.then10.i.i.i.i.i146, !prof !94

if.end5.i.i.i.i.i145.batadv_orig_ifinfo_put.exit148_crit_edge: ; preds = %if.end5.i.i.i.i.i145
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_orig_ifinfo_put.exit148

if.then10.i.i.i.i.i146:                           ; preds = %if.end5.i.i.i.i.i145
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i139, i32 noundef 3) #10
  br label %batadv_orig_ifinfo_put.exit148

if.then.i.i147:                                   ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @batadv_orig_ifinfo_release(ptr noundef %refcount.i139) #10
  br label %batadv_orig_ifinfo_put.exit148

batadv_orig_ifinfo_put.exit148:                   ; preds = %if.then.i.i147, %if.then10.i.i.i.i.i146, %if.end5.i.i.i.i.i145.batadv_orig_ifinfo_put.exit148_crit_edge, %for.end51.batadv_orig_ifinfo_put.exit148_crit_edge
  %vlan_list_lock = getelementptr i8, ptr %ref, i32 600
  tail call void @_raw_spin_lock_bh(ptr noundef %vlan_list_lock) #10
  %vlan_list = getelementptr i8, ptr %ref, i32 596
  %23 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vlan_list, align 4
  %tobool57.not = icmp eq ptr %24, null
  %add.ptr61 = getelementptr i8, ptr %24, i32 -12
  %tobool66.not170172 = icmp eq ptr %add.ptr61, null
  %tobool66.not170 = or i1 %tobool57.not, %tobool66.not170172
  br i1 %tobool66.not170, label %batadv_orig_ifinfo_put.exit148.for.end86_crit_edge, label %batadv_orig_ifinfo_put.exit148.land.rhs67_crit_edge

batadv_orig_ifinfo_put.exit148.land.rhs67_crit_edge: ; preds = %batadv_orig_ifinfo_put.exit148
  br label %land.rhs67

batadv_orig_ifinfo_put.exit148.for.end86_crit_edge: ; preds = %batadv_orig_ifinfo_put.exit148
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end86

land.rhs67:                                       ; preds = %batadv_orig_node_vlan_put.exit.land.rhs67_crit_edge, %batadv_orig_ifinfo_put.exit148.land.rhs67_crit_edge
  %vlan.0171 = phi ptr [ %add.ptr82, %batadv_orig_node_vlan_put.exit.land.rhs67_crit_edge ], [ %add.ptr61, %batadv_orig_ifinfo_put.exit148.land.rhs67_crit_edge ]
  %list68 = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %vlan.0171, i32 0, i32 2
  %25 = ptrtoint ptr %list68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %list68, align 4
  %pprev2.i.i149 = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %vlan.0171, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %pprev2.i.i149 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pprev2.i.i149, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %26, ptr %28, align 4
  %tobool.not.i.i150 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i150, label %land.rhs67.if.end.i159_crit_edge, label %do.body13.i.i152

land.rhs67.if.end.i159_crit_edge:                 ; preds = %land.rhs67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i159

do.body13.i.i152:                                 ; preds = %land.rhs67
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i151 = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %pprev14.i.i151 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %pprev14.i.i151, align 4
  br label %if.end.i159

if.end.i159:                                      ; preds = %do.body13.i.i152, %land.rhs67.if.end.i159_crit_edge
  %31 = ptrtoint ptr %pprev2.i.i149 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i149, align 4
  %refcount.i155 = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %vlan.0171, i32 0, i32 3
  %call.i.i.i.i.i.i.i156 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i155, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i155, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i155, ptr %refcount.i155, i32 1, ptr elementtype(i32) %refcount.i155) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i157 = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i157)
  %cmp.i.i.i.i.i158 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i157, 1
  br i1 %cmp.i.i.i.i.i158, label %if.then.i.i163, label %if.end5.i.i.i.i.i161

if.end5.i.i.i.i.i161:                             ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i157)
  %.not.i.i.i.i.i160 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i157, 0
  br i1 %.not.i.i.i.i.i160, label %if.end5.i.i.i.i.i161.batadv_orig_node_vlan_put.exit_crit_edge, label %if.then10.i.i.i.i.i162, !prof !94

if.end5.i.i.i.i.i161.batadv_orig_node_vlan_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_orig_node_vlan_put.exit

if.then10.i.i.i.i.i162:                           ; preds = %if.end5.i.i.i.i.i161
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i155, i32 noundef 3) #10
  br label %batadv_orig_node_vlan_put.exit

if.then.i.i163:                                   ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  %rcu.i.i = getelementptr %struct.batadv_orig_node_vlan, ptr %vlan.0171, i32 0, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 24 to ptr)) #10
  br label %batadv_orig_node_vlan_put.exit

batadv_orig_node_vlan_put.exit:                   ; preds = %if.then.i.i163, %if.then10.i.i.i.i.i162, %if.end5.i.i.i.i.i161.batadv_orig_node_vlan_put.exit_crit_edge
  %add.ptr82 = getelementptr i8, ptr %26, i32 -12
  %tobool66.not173 = icmp eq ptr %add.ptr82, null
  %tobool66.not = or i1 %tobool.not.i.i150, %tobool66.not173
  br i1 %tobool66.not, label %batadv_orig_node_vlan_put.exit.for.end86_crit_edge, label %batadv_orig_node_vlan_put.exit.land.rhs67_crit_edge

batadv_orig_node_vlan_put.exit.land.rhs67_crit_edge: ; preds = %batadv_orig_node_vlan_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs67

batadv_orig_node_vlan_put.exit.for.end86_crit_edge: ; preds = %batadv_orig_node_vlan_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end86

for.end86:                                        ; preds = %batadv_orig_node_vlan_put.exit.for.end86_crit_edge, %batadv_orig_ifinfo_put.exit148.for.end86_crit_edge
  %add.ptr = getelementptr i8, ptr %ref, i32 -340
  tail call void @_raw_spin_unlock_bh(ptr noundef %vlan_list_lock) #10
  %bat_priv = getelementptr i8, ptr %ref, i32 -48
  %33 = ptrtoint ptr %bat_priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bat_priv, align 4
  tail call void @batadv_nc_purge_orig(ptr noundef %34, ptr noundef %add.ptr, ptr noundef null) #10
  %rcu = getelementptr i8, ptr %ref, i32 4
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @batadv_orig_node_free_rcu) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_nc_purge_orig(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_orig_node_free_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -344
  tail call void @batadv_mcast_purge_orig(ptr noundef %add.ptr) #10
  tail call void @batadv_frag_purge_orig(ptr noundef %add.ptr, ptr noundef null) #10
  %tt_buff = getelementptr i8, ptr %rcu, i32 -216
  %0 = ptrtoint ptr %tt_buff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tt_buff, align 4
  tail call void @kfree(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_originator_free(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %orig_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 23
  %0 = ptrtoint ptr %orig_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %orig_hash, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %orig_work = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 28
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %orig_work) #10
  %2 = ptrtoint ptr %orig_hash to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %orig_hash, align 4
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp49.not = icmp eq i32 %4, 0
  br i1 %cmp49.not, label %if.end.for.end22_crit_edge, label %for.body.lr.ph

if.end.for.end22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.body.lr.ph:                                   ; preds = %if.end
  %list_locks = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %6, i32 %i.050
  %7 = ptrtoint ptr %list_locks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list_locks, align 4
  %arrayidx2 = getelementptr %struct.spinlock, ptr %8, i32 %i.050
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx2) #10
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %10, null
  %add.ptr = getelementptr i8, ptr %10, i32 -284
  %tobool6.not4751 = icmp eq ptr %add.ptr, null
  %tobool6.not47 = or i1 %tobool3.not, %tobool6.not4751
  br i1 %tobool6.not47, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs:                                         ; preds = %batadv_orig_node_put.exit.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %orig_node.048 = phi ptr [ %add.ptr17, %batadv_orig_node_put.exit.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %hash_entry = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.048, i32 0, i32 24
  %11 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hash_entry, align 4
  %pprev2.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.048, i32 0, i32 24, i32 1
  %13 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pprev2.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %12, ptr %14, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %land.rhs.if.end.i_crit_edge, label %do.body13.i.i

land.rhs.if.end.i_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.body13.i.i:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %pprev14.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body13.i.i, %land.rhs.if.end.i_crit_edge
  %17 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.048, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_orig_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %batadv_orig_node_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i) #10
  br label %batadv_orig_node_put.exit

batadv_orig_node_put.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge
  %add.ptr17 = getelementptr i8, ptr %12, i32 -284
  %tobool6.not52 = icmp eq ptr %add.ptr17, null
  %tobool6.not = or i1 %tobool.not.i.i, %tobool6.not52
  br i1 %tobool6.not, label %batadv_orig_node_put.exit.for.end_crit_edge, label %batadv_orig_node_put.exit.land.rhs_crit_edge

batadv_orig_node_put.exit.land.rhs_crit_edge:     ; preds = %batadv_orig_node_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

batadv_orig_node_put.exit.for.end_crit_edge:      ; preds = %batadv_orig_node_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %batadv_orig_node_put.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx2) #10
  %inc = add nuw i32 %i.050, 1
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end22_crit_edge

for.end.for.end22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end22:                                        ; preds = %for.end.for.end22_crit_edge, %if.end.for.end22_crit_edge
  tail call void @batadv_hash_destroy(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end22, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hash_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_orig_node_new(ptr noundef %bat_priv, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #10
  %0 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.7, ptr noundef %addr) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 1028) #13
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %neigh_list = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 22
  %3 = ptrtoint ptr %neigh_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %neigh_list, align 4
  %vlan_list = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 34
  %4 = ptrtoint ptr %vlan_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %vlan_list, align 8
  %ifinfo_list = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %ifinfo_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ifinfo_list, align 8
  %bcast_seqno_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 26
  tail call void @__raw_spin_lock_init(ptr noundef %bcast_seqno_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @batadv_orig_node_new.__key, i16 noundef signext 3) #10
  %neigh_list_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 23
  tail call void @__raw_spin_lock_init(ptr noundef %neigh_list_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @batadv_orig_node_new.__key.9, i16 noundef signext 3) #10
  %tt_buff_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %tt_buff_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @batadv_orig_node_new.__key.11, i16 noundef signext 3) #10
  %tt_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %tt_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @batadv_orig_node_new.__key.13, i16 noundef signext 3) #10
  %vlan_list_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 35
  tail call void @__raw_spin_lock_init(ptr noundef %vlan_list_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @batadv_orig_node_new.__key.15, i16 noundef signext 3) #10
  tail call void @batadv_nc_init_orig(ptr noundef nonnull %call7.i.i) #10
  %refcount = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 27
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %6 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %refcount, align 4
  %bat_priv28 = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 25
  %7 = ptrtoint ptr %bat_priv28 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bat_priv, ptr %bat_priv28, align 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call7.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7.i.i, i32 4
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %add.ptr1.i, align 4
  %14 = shl i16 %12, 8
  %shl60.i.i.i = zext i16 %14 to i32
  %add61.i.i.i = add nuw nsw i32 %shl60.i.i.i, -559038731
  %15 = lshr i16 %12, 8
  %16 = zext i16 %15 to i32
  %add65.i.i.i = add nuw nsw i32 %add61.i.i.i, %16
  %conv68.i.i.i = shl i32 %9, 24
  %add70.i.i.i = add i32 %conv68.i.i.i, -559038731
  %17 = shl i32 %9, 8
  %shl74.i.i.i = and i32 %17, 16711680
  %add75.i.i.i = add i32 %add70.i.i.i, %shl74.i.i.i
  %18 = lshr i32 %9, 8
  %shl79.i.i.i = and i32 %18, 65280
  %add80.i.i.i = add i32 %add75.i.i.i, %shl79.i.i.i
  %19 = lshr i32 %9, 24
  %add84.i.i.i = add i32 %add80.i.i.i, %19
  %xor85.i.i.i = xor i32 %add65.i.i.i, -559038731
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i.i, i32 %add65.i.i.i, i32 14) #10
  %sub87.i.i.i = sub i32 %xor85.i.i.i, %or.i.i.i.i
  %xor88.i.i.i = xor i32 %add84.i.i.i, %sub87.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i.i, i32 %sub87.i.i.i, i32 11) #10
  %sub90.i.i.i = sub i32 %xor88.i.i.i, %or.i1.i.i.i
  %xor91.i.i.i = xor i32 %sub90.i.i.i, %add65.i.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i.i, i32 %sub90.i.i.i, i32 25) #10
  %sub93.i.i.i = sub i32 %xor91.i.i.i, %or.i2.i.i.i
  %xor94.i.i.i = xor i32 %sub93.i.i.i, %sub87.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i.i, i32 %sub93.i.i.i, i32 16) #10
  %sub96.i.i.i = sub i32 %xor94.i.i.i, %or.i3.i.i.i
  %xor97.i.i.i = xor i32 %sub96.i.i.i, %sub90.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i.i, i32 %sub96.i.i.i, i32 4) #10
  %sub99.i.i.i = sub i32 %xor97.i.i.i, %or.i4.i.i.i
  %xor100.i.i.i = xor i32 %sub99.i.i.i, %sub93.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i.i, i32 %sub99.i.i.i, i32 14) #10
  %sub102.i.i.i = sub i32 %xor100.i.i.i, %or.i5.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i.i, i32 %sub102.i.i.i, i32 24) #10
  %xor103.i.i.i = xor i32 %sub102.i.i.i, %sub96.i.i.i
  %sub105.i.i.i = sub i32 %xor103.i.i.i, %or.i6.i.i.i
  %rem.i.i = urem i32 %sub105.i.i.i, 65535
  %conv.i = trunc i32 %rem.i.i to i16
  %dat_addr.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %dat_addr.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %dat_addr.i, align 8
  %last_ttvn = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 15
  %call.i.i92 = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_ttvn, i32 noundef 4) #10
  %21 = ptrtoint ptr %last_ttvn to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %last_ttvn, align 4
  %tt_buff = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 16
  %22 = ptrtoint ptr %tt_buff to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %tt_buff, align 8
  %tt_buff_len = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 17
  %23 = ptrtoint ptr %tt_buff_len to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %tt_buff_len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %last_seen = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %last_seen to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %last_seen, align 4
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub30 = add i32 %26, -3001
  %bcast_seqno_reset = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %bcast_seqno_reset to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub30, ptr %bcast_seqno_reset, align 8
  %mcast_flags = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %mcast_flags to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 24, ptr %mcast_flags, align 8
  %mcast_want_all_unsnoopables_node = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 8
  %mcast_handler_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 6
  %29 = call ptr @memset(ptr %mcast_want_all_unsnoopables_node, i32 0, i32 24)
  tail call void @__raw_spin_lock_init(ptr noundef %mcast_handler_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @batadv_orig_node_new.__key.17, i16 noundef signext 3) #10
  %call37 = tail call ptr @batadv_orig_node_vlan_new(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 0)
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %free_orig_node, label %if.end.i

if.end.i:                                         ; preds = %if.end5
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %call37, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_orig_node_vlan_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.batadv_orig_node_vlan_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_orig_node_vlan_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %batadv_orig_node_vlan_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  %rcu.i.i = getelementptr %struct.batadv_orig_node_vlan, ptr %call37, i32 0, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 24 to ptr)) #10
  br label %batadv_orig_node_vlan_put.exit

batadv_orig_node_vlan_put.exit:                   ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_orig_node_vlan_put.exit_crit_edge
  %arrayidx = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 0
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx, align 8
  %lock = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @batadv_orig_node_new.__key.19, i16 noundef signext 3) #10
  %size = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 0, i32 4
  %32 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %size, align 2
  %arrayidx.1 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 1
  %33 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx.1, align 4
  %lock.1 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.1, ptr noundef nonnull @.str.20, ptr noundef nonnull @batadv_orig_node_new.__key.19, i16 noundef signext 3) #10
  %size.1 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 1, i32 4
  %34 = ptrtoint ptr %size.1 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %size.1, align 2
  %arrayidx.2 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 2
  %35 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx.2, align 8
  %lock.2 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.2, ptr noundef nonnull @.str.20, ptr noundef nonnull @batadv_orig_node_new.__key.19, i16 noundef signext 3) #10
  %size.2 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 2, i32 4
  %36 = ptrtoint ptr %size.2 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %size.2, align 2
  %arrayidx.3 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 3
  %37 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx.3, align 4
  %lock.3 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 3, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.3, ptr noundef nonnull @.str.20, ptr noundef nonnull @batadv_orig_node_new.__key.19, i16 noundef signext 3) #10
  %size.3 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 3, i32 4
  %38 = ptrtoint ptr %size.3 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %size.3, align 2
  %arrayidx.4 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 4
  %39 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx.4, align 8
  %lock.4 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 4, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.4, ptr noundef nonnull @.str.20, ptr noundef nonnull @batadv_orig_node_new.__key.19, i16 noundef signext 3) #10
  %size.4 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 4, i32 4
  %40 = ptrtoint ptr %size.4 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %size.4, align 2
  %arrayidx.5 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 5
  %41 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx.5, align 4
  %lock.5 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 5, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.5, ptr noundef nonnull @.str.20, ptr noundef nonnull @batadv_orig_node_new.__key.19, i16 noundef signext 3) #10
  %size.5 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 5, i32 4
  %42 = ptrtoint ptr %size.5 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %size.5, align 2
  %arrayidx.6 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 6
  %43 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx.6, align 8
  %lock.6 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 6, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.6, ptr noundef nonnull @.str.20, ptr noundef nonnull @batadv_orig_node_new.__key.19, i16 noundef signext 3) #10
  %size.6 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 6, i32 4
  %44 = ptrtoint ptr %size.6 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %size.6, align 2
  %arrayidx.7 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 7
  %45 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx.7, align 4
  %lock.7 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 7, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.7, ptr noundef nonnull @.str.20, ptr noundef nonnull @batadv_orig_node_new.__key.19, i16 noundef signext 3) #10
  %size.7 = getelementptr %struct.batadv_orig_node, ptr %call7.i.i, i32 0, i32 33, i32 7, i32 4
  %46 = ptrtoint ptr %size.7 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %size.7, align 2
  br label %cleanup

free_orig_node:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free_orig_node, %batadv_orig_node_vlan_put.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %free_orig_node ], [ null, %if.end.cleanup_crit_edge ], [ %call7.i.i, %batadv_orig_node_vlan_put.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_nc_init_orig(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_purge_orig_ref(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %orig_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 23
  %0 = ptrtoint ptr %orig_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %orig_hash, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp66.not = icmp eq i32 %3, 0
  br i1 %cmp66.not, label %for.cond.preheader.for.end24_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end24_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end24

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %list_locks = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 1
  %log_level.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %soft_iface35.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %i.067
  %6 = ptrtoint ptr %list_locks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list_locks, align 4
  %arrayidx1 = getelementptr %struct.spinlock, ptr %7, i32 %i.067
  call void @_raw_spin_lock_bh(ptr noundef %arrayidx1) #10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %9, null
  %add.ptr = getelementptr i8, ptr %9, i32 -284
  %tobool5.not6468 = icmp eq ptr %add.ptr, null
  %tobool5.not64 = or i1 %tobool2.not, %tobool5.not6468
  br i1 %tobool5.not64, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %orig_node.065 = phi ptr [ %add.ptr19, %for.inc.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %hash_entry = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.065, i32 0, i32 24
  %10 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hash_entry, align 4
  %last_seen.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.065, i32 0, i32 4
  %12 = ptrtoint ptr %last_seen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_seen.i, align 4
  %add.i.i = add i32 %13, 40000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %land.rhs
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i.i, i32 noundef 4) #10
  %15 = ptrtoint ptr %log_level.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %log_level.i.i, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.then9_crit_edge, label %if.then2.i

do.body.i.if.then9_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %last_seen.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_seen.i, align 4
  %call4.i = call i32 @jiffies_to_msecs(i32 noundef %18) #10
  %call5.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.28, ptr noundef nonnull %orig_node.065, i32 noundef %call4.i) #10
  br label %if.then9

if.end6.i:                                        ; preds = %land.rhs
  %neigh_list_lock.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.065, i32 0, i32 23
  call void @_raw_spin_lock_bh(ptr noundef %neigh_list_lock.i.i) #10
  %ifinfo_list.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.065, i32 0, i32 1
  %19 = ptrtoint ptr %ifinfo_list.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ifinfo_list.i.i, align 4
  %tobool2.not76.i.i = icmp eq ptr %20, null
  br i1 %tobool2.not76.i.i, label %if.end6.i.batadv_purge_orig_ifinfo.exit.i_crit_edge, label %land.rhs.lr.ph.i.i

if.end6.i.batadv_purge_orig_ifinfo.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_purge_orig_ifinfo.exit.i

land.rhs.lr.ph.i.i:                               ; preds = %if.end6.i
  %last_bonding_candidate.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.065, i32 0, i32 2
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %orig_ifinfo.078.i.i = phi ptr [ %20, %land.rhs.lr.ph.i.i ], [ %22, %for.inc.i.i.land.rhs.i.i_crit_edge ]
  %ifinfo_purged.0.off077.i.i = phi i1 [ false, %land.rhs.lr.ph.i.i ], [ %ifinfo_purged.1.off0.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ]
  %21 = ptrtoint ptr %orig_ifinfo.078.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %orig_ifinfo.078.i.i, align 4
  %if_outgoing5.i.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %orig_ifinfo.078.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %if_outgoing5.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %if_outgoing5.i.i, align 4
  %cmp.i83.i = icmp eq ptr %24, null
  br i1 %cmp.i83.i, label %land.rhs.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

land.rhs.i.i.for.inc.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %land.rhs.i.i
  %if_status.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %if_status.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %if_status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %switch.i.i = icmp ult i8 %26, 3
  br i1 %switch.i.i, label %do.body.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i.i, i32 noundef 4) #10
  %27 = ptrtoint ptr %log_level.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %log_level.i.i, align 4
  %and.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool19.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool19.not.i.i, label %do.body.i.i.if.end23.i.i_crit_edge, label %if.then20.i.i

do.body.i.i.if.end23.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i.i

if.then20.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %24, i32 0, i32 4
  %29 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev.i.i, align 4
  %call22.i.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.29, ptr noundef %orig_node.065, ptr noundef %30) #10
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then20.i.i, %do.body.i.i.if.end23.i.i_crit_edge
  %31 = ptrtoint ptr %orig_ifinfo.078.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %orig_ifinfo.078.i.i, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %orig_ifinfo.078.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %32, ptr %34, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i.i, label %if.end23.i.i.if.end.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.end23.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %pprev14.i.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.body13.i.i.i.i, %if.end23.i.i.if.end.i.i.i_crit_edge
  %37 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %refcount.i.i.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %orig_ifinfo.078.i.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #10
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.batadv_orig_ifinfo_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.i.i.batadv_orig_ifinfo_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_orig_ifinfo_put.exit.i.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef 3) #10
  br label %batadv_orig_ifinfo_put.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  call void @batadv_orig_ifinfo_release(ptr noundef %refcount.i.i.i) #10
  br label %batadv_orig_ifinfo_put.exit.i.i

batadv_orig_ifinfo_put.exit.i.i:                  ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.batadv_orig_ifinfo_put.exit.i.i_crit_edge
  %39 = ptrtoint ptr %last_bonding_candidate.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %last_bonding_candidate.i.i, align 4
  %cmp25.i.i = icmp eq ptr %40, %orig_ifinfo.078.i.i
  br i1 %cmp25.i.i, label %if.end.i70.i.i, label %batadv_orig_ifinfo_put.exit.i.i.for.inc.i.i_crit_edge

batadv_orig_ifinfo_put.exit.i.i.for.inc.i.i_crit_edge: ; preds = %batadv_orig_ifinfo_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i70.i.i:                                   ; preds = %batadv_orig_ifinfo_put.exit.i.i
  %41 = ptrtoint ptr %last_bonding_candidate.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %last_bonding_candidate.i.i, align 4
  %call.i.i.i.i.i.i.i67.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #10
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i68.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i68.i.i)
  %cmp.i.i.i.i.i69.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i68.i.i, 1
  br i1 %cmp.i.i.i.i.i69.i.i, label %if.then.i.i74.i.i, label %if.end5.i.i.i.i.i72.i.i

if.end5.i.i.i.i.i72.i.i:                          ; preds = %if.end.i70.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i68.i.i)
  %.not.i.i.i.i.i71.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i68.i.i, 0
  br i1 %.not.i.i.i.i.i71.i.i, label %if.end5.i.i.i.i.i72.i.i.for.inc.i.i_crit_edge, label %if.then10.i.i.i.i.i73.i.i, !prof !94

if.end5.i.i.i.i.i72.i.i.for.inc.i.i_crit_edge:    ; preds = %if.end5.i.i.i.i.i72.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then10.i.i.i.i.i73.i.i:                        ; preds = %if.end5.i.i.i.i.i72.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef 3) #10
  br label %for.inc.i.i

if.then.i.i74.i.i:                                ; preds = %if.end.i70.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  call void @batadv_orig_ifinfo_release(ptr noundef %refcount.i.i.i) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i74.i.i, %if.then10.i.i.i.i.i73.i.i, %if.end5.i.i.i.i.i72.i.i.for.inc.i.i_crit_edge, %batadv_orig_ifinfo_put.exit.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %land.rhs.i.i.for.inc.i.i_crit_edge
  %ifinfo_purged.1.off0.i.i = phi i1 [ %ifinfo_purged.0.off077.i.i, %land.rhs.i.i.for.inc.i.i_crit_edge ], [ true, %batadv_orig_ifinfo_put.exit.i.i.for.inc.i.i_crit_edge ], [ %ifinfo_purged.0.off077.i.i, %if.end.i.i.for.inc.i.i_crit_edge ], [ true, %if.end5.i.i.i.i.i72.i.i.for.inc.i.i_crit_edge ], [ true, %if.then10.i.i.i.i.i73.i.i ], [ true, %if.then.i.i74.i.i ]
  %tobool2.not.i.i = icmp eq ptr %22, null
  br i1 %tobool2.not.i.i, label %for.inc.i.i.batadv_purge_orig_ifinfo.exit.i_crit_edge, label %for.inc.i.i.land.rhs.i.i_crit_edge

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

for.inc.i.i.batadv_purge_orig_ifinfo.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_purge_orig_ifinfo.exit.i

batadv_purge_orig_ifinfo.exit.i:                  ; preds = %for.inc.i.i.batadv_purge_orig_ifinfo.exit.i_crit_edge, %if.end6.i.batadv_purge_orig_ifinfo.exit.i_crit_edge
  %ifinfo_purged.0.off0.lcssa.i.i = phi i1 [ false, %if.end6.i.batadv_purge_orig_ifinfo.exit.i_crit_edge ], [ %ifinfo_purged.1.off0.i.i, %for.inc.i.i.batadv_purge_orig_ifinfo.exit.i_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %neigh_list_lock.i.i) #10
  call void @_raw_spin_lock_bh(ptr noundef %neigh_list_lock.i.i) #10
  %neigh_list.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.065, i32 0, i32 22
  %43 = ptrtoint ptr %neigh_list.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %neigh_list.i.i, align 4
  %tobool2.not103.i.i = icmp eq ptr %44, null
  br i1 %tobool2.not103.i.i, label %batadv_purge_orig_ifinfo.exit.i.batadv_purge_orig_neighbors.exit.i_crit_edge, label %batadv_purge_orig_ifinfo.exit.i.land.rhs.i86.i_crit_edge

batadv_purge_orig_ifinfo.exit.i.land.rhs.i86.i_crit_edge: ; preds = %batadv_purge_orig_ifinfo.exit.i
  br label %land.rhs.i86.i

batadv_purge_orig_ifinfo.exit.i.batadv_purge_orig_neighbors.exit.i_crit_edge: ; preds = %batadv_purge_orig_ifinfo.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_purge_orig_neighbors.exit.i

land.rhs.i86.i:                                   ; preds = %for.inc.i108.i.land.rhs.i86.i_crit_edge, %batadv_purge_orig_ifinfo.exit.i.land.rhs.i86.i_crit_edge
  %neigh_node.0105.i.i = phi ptr [ %46, %for.inc.i108.i.land.rhs.i86.i_crit_edge ], [ %44, %batadv_purge_orig_ifinfo.exit.i.land.rhs.i86.i_crit_edge ]
  %neigh_purged.0.off0104.i.i = phi i1 [ %neigh_purged.1.off0.i.i, %for.inc.i108.i.land.rhs.i86.i_crit_edge ], [ false, %batadv_purge_orig_ifinfo.exit.i.land.rhs.i86.i_crit_edge ]
  %45 = ptrtoint ptr %neigh_node.0105.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %neigh_node.0105.i.i, align 4
  %last_seen5.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.0105.i.i, i32 0, i32 6
  %47 = ptrtoint ptr %last_seen5.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %last_seen5.i.i, align 4
  %if_incoming6.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.0105.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %if_incoming6.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %if_incoming6.i.i, align 4
  %add.i.i.i = add i32 %48, 20000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.rhs.i86.i.if.then.i91.i_crit_edge, label %lor.lhs.false.i.i

land.rhs.i86.i.if.then.i91.i_crit_edge:           ; preds = %land.rhs.i86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i91.i

lor.lhs.false.i.i:                                ; preds = %land.rhs.i86.i
  %if_status.i87.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %50, i32 0, i32 1
  %52 = ptrtoint ptr %if_status.i87.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %if_status.i87.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %53)
  %switch.i88.i = icmp ult i8 %53, 3
  br i1 %switch.i88.i, label %lor.lhs.false.i.i.if.then.i91.i_crit_edge, label %if.else57.i.i

lor.lhs.false.i.i.if.then.i91.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i91.i

if.then.i91.i:                                    ; preds = %lor.lhs.false.i.i.if.then.i91.i_crit_edge, %land.rhs.i86.i.if.then.i91.i_crit_edge
  %if_status18.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %50, i32 0, i32 1
  %54 = ptrtoint ptr %if_status18.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %if_status18.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %55)
  %switch99.i.i = icmp ult i8 %55, 3
  %call.i.i.i89.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i.i, i32 noundef 4) #10
  %56 = ptrtoint ptr %log_level.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %log_level.i.i, align 4
  %and.i90.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90.i)
  %tobool34.not.i.i = icmp eq i32 %and.i90.i, 0
  br i1 %switch99.i.i, label %do.body.i92.i, label %do.body39.i.i

do.body.i92.i:                                    ; preds = %if.then.i91.i
  br i1 %tobool34.not.i.i, label %do.body.i92.i.if.end55.i.i_crit_edge, label %if.then35.i.i

do.body.i92.i.if.end55.i.i_crit_edge:             ; preds = %do.body.i92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i.i

if.then35.i.i:                                    ; preds = %do.body.i92.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.0105.i.i, i32 0, i32 2
  %net_dev.i93.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %50, i32 0, i32 4
  %58 = ptrtoint ptr %net_dev.i93.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net_dev.i93.i, align 4
  %call38.i.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.30, ptr noundef %orig_node.065, ptr noundef %addr.i.i, ptr noundef %59) #10
  br label %if.end55.i.i

do.body39.i.i:                                    ; preds = %if.then.i91.i
  br i1 %tobool34.not.i.i, label %do.body39.i.i.if.end55.i.i_crit_edge, label %if.then45.i.i

do.body39.i.i.if.end55.i.i_crit_edge:             ; preds = %do.body39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i.i

if.then45.i.i:                                    ; preds = %do.body39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr48.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.0105.i.i, i32 0, i32 2
  %call50.i.i = call i32 @jiffies_to_msecs(i32 noundef %48) #10
  %call51.i.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.31, ptr noundef %orig_node.065, ptr noundef %addr48.i.i, i32 noundef %call50.i.i) #10
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %if.then45.i.i, %do.body39.i.i.if.end55.i.i_crit_edge, %if.then35.i.i, %do.body.i92.i.if.end55.i.i_crit_edge
  %60 = ptrtoint ptr %neigh_node.0105.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %neigh_node.0105.i.i, align 4
  %pprev2.i.i.i94.i = getelementptr inbounds %struct.hlist_node, ptr %neigh_node.0105.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %pprev2.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pprev2.i.i.i94.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %61, ptr %63, align 4
  %tobool.not.i.i.i95.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i.i95.i, label %if.end55.i.i.if.end.i.i102.i_crit_edge, label %do.body13.i.i.i97.i

if.end55.i.i.if.end.i.i102.i_crit_edge:           ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i102.i

do.body13.i.i.i97.i:                              ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i96.i = getelementptr inbounds %struct.hlist_node, ptr %61, i32 0, i32 1
  %65 = ptrtoint ptr %pprev14.i.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %pprev14.i.i.i96.i, align 4
  br label %if.end.i.i102.i

if.end.i.i102.i:                                  ; preds = %do.body13.i.i.i97.i, %if.end55.i.i.if.end.i.i102.i_crit_edge
  %66 = ptrtoint ptr %pprev2.i.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i94.i, align 4
  %refcount.i.i98.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.0105.i.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i.i99.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i98.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  call void @llvm.prefetch.p0(ptr %refcount.i.i98.i, i32 1, i32 3, i32 1) #10
  %67 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i98.i, ptr %refcount.i.i98.i, i32 1, ptr elementtype(i32) %refcount.i.i98.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i.i100.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i100.i)
  %cmp.i.i.i.i.i.i101.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i100.i, 1
  br i1 %cmp.i.i.i.i.i.i101.i, label %if.then.i.i.i106.i, label %if.end5.i.i.i.i.i.i104.i

if.end5.i.i.i.i.i.i104.i:                         ; preds = %if.end.i.i102.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i100.i)
  %.not.i.i.i.i.i.i103.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i100.i, 0
  br i1 %.not.i.i.i.i.i.i103.i, label %if.end5.i.i.i.i.i.i104.i.for.inc.i108.i_crit_edge, label %if.then10.i.i.i.i.i.i105.i, !prof !94

if.end5.i.i.i.i.i.i104.i.for.inc.i108.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i108.i

if.then10.i.i.i.i.i.i105.i:                       ; preds = %if.end5.i.i.i.i.i.i104.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i98.i, i32 noundef 3) #10
  br label %for.inc.i108.i

if.then.i.i.i106.i:                               ; preds = %if.end.i.i102.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  call void @batadv_neigh_node_release(ptr noundef %refcount.i.i98.i) #10
  br label %for.inc.i108.i

if.else57.i.i:                                    ; preds = %lor.lhs.false.i.i
  %ifinfo_lock.i.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.0105.i.i, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %ifinfo_lock.i.i.i) #10
  %ifinfo_list.i.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.0105.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %ifinfo_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ifinfo_list.i.i.i, align 4
  %tobool2.not53.i.i.i = icmp eq ptr %69, null
  br i1 %tobool2.not53.i.i.i, label %if.else57.i.i.batadv_purge_neigh_ifinfo.exit.i.i_crit_edge, label %land.rhs.lr.ph.i.i.i

if.else57.i.i.batadv_purge_neigh_ifinfo.exit.i.i_crit_edge: ; preds = %if.else57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_purge_neigh_ifinfo.exit.i.i

land.rhs.lr.ph.i.i.i:                             ; preds = %if.else57.i.i
  %addr.i.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.0105.i.i, i32 0, i32 2
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %for.inc.i.i.i.land.rhs.i.i.i_crit_edge, %land.rhs.lr.ph.i.i.i
  %neigh_ifinfo.054.i.i.i = phi ptr [ %69, %land.rhs.lr.ph.i.i.i ], [ %71, %for.inc.i.i.i.land.rhs.i.i.i_crit_edge ]
  %70 = ptrtoint ptr %neigh_ifinfo.054.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %neigh_ifinfo.054.i.i.i, align 4
  %if_outgoing5.i.i.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %neigh_ifinfo.054.i.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %if_outgoing5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %if_outgoing5.i.i.i, align 4
  %cmp.i101.i.i = icmp eq ptr %73, null
  br i1 %cmp.i101.i.i, label %land.rhs.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i102.i.i

land.rhs.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.end.i102.i.i:                                  ; preds = %land.rhs.i.i.i
  %if_status.i.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %if_status.i.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %if_status.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %75)
  %switch.i.i.i = icmp ult i8 %75, 3
  br i1 %switch.i.i.i, label %do.body.i.i.i, label %if.end.i102.i.i.for.inc.i.i.i_crit_edge

if.end.i102.i.i.for.inc.i.i.i_crit_edge:          ; preds = %if.end.i102.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

do.body.i.i.i:                                    ; preds = %if.end.i102.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i.i, i32 noundef 4) #10
  %76 = ptrtoint ptr %log_level.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %log_level.i.i, align 4
  %and.i.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool19.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool19.not.i.i.i, label %do.body.i.i.i.if.end23.i.i.i_crit_edge, label %if.then20.i.i.i

do.body.i.i.i.if.end23.i.i.i_crit_edge:           ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i.i.i

if.then20.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev.i.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %73, i32 0, i32 4
  %78 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %net_dev.i.i.i, align 4
  %call22.i.i.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.32, ptr noundef %addr.i.i.i, ptr noundef %79) #10
  br label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.then20.i.i.i, %do.body.i.i.i.if.end23.i.i.i_crit_edge
  %80 = ptrtoint ptr %neigh_ifinfo.054.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %neigh_ifinfo.054.i.i.i, align 4
  %pprev2.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %neigh_ifinfo.054.i.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %pprev2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pprev2.i.i.i.i.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %81, ptr %83, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end23.i.i.i.hlist_del_rcu.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.end23.i.i.i.hlist_del_rcu.exit.i.i.i_crit_edge: ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_rcu.exit.i.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %81, i32 0, i32 1
  %85 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %83, ptr %pprev14.i.i.i.i.i, align 4
  br label %hlist_del_rcu.exit.i.i.i

hlist_del_rcu.exit.i.i.i:                         ; preds = %do.body13.i.i.i.i.i, %if.end23.i.i.i.hlist_del_rcu.exit.i.i.i_crit_edge
  %86 = ptrtoint ptr %pprev2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i.i, align 4
  call fastcc void @batadv_neigh_ifinfo_put(ptr noundef nonnull %neigh_ifinfo.054.i.i.i) #10
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %hlist_del_rcu.exit.i.i.i, %if.end.i102.i.i.for.inc.i.i.i_crit_edge, %land.rhs.i.i.i.for.inc.i.i.i_crit_edge
  %tobool2.not.i.i.i = icmp eq ptr %71, null
  br i1 %tobool2.not.i.i.i, label %for.inc.i.i.i.batadv_purge_neigh_ifinfo.exit.i.i_crit_edge, label %for.inc.i.i.i.land.rhs.i.i.i_crit_edge

for.inc.i.i.i.land.rhs.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i.i

for.inc.i.i.i.batadv_purge_neigh_ifinfo.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_purge_neigh_ifinfo.exit.i.i

batadv_purge_neigh_ifinfo.exit.i.i:               ; preds = %for.inc.i.i.i.batadv_purge_neigh_ifinfo.exit.i.i_crit_edge, %if.else57.i.i.batadv_purge_neigh_ifinfo.exit.i.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %ifinfo_lock.i.i.i) #10
  br label %for.inc.i108.i

for.inc.i108.i:                                   ; preds = %batadv_purge_neigh_ifinfo.exit.i.i, %if.then.i.i.i106.i, %if.then10.i.i.i.i.i.i105.i, %if.end5.i.i.i.i.i.i104.i.for.inc.i108.i_crit_edge
  %neigh_purged.1.off0.i.i = phi i1 [ %neigh_purged.0.off0104.i.i, %batadv_purge_neigh_ifinfo.exit.i.i ], [ true, %if.end5.i.i.i.i.i.i104.i.for.inc.i108.i_crit_edge ], [ true, %if.then10.i.i.i.i.i.i105.i ], [ true, %if.then.i.i.i106.i ]
  %tobool2.not.i107.i = icmp eq ptr %46, null
  br i1 %tobool2.not.i107.i, label %for.inc.i108.i.batadv_purge_orig_neighbors.exit.i_crit_edge, label %for.inc.i108.i.land.rhs.i86.i_crit_edge

for.inc.i108.i.land.rhs.i86.i_crit_edge:          ; preds = %for.inc.i108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i86.i

for.inc.i108.i.batadv_purge_orig_neighbors.exit.i_crit_edge: ; preds = %for.inc.i108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_purge_orig_neighbors.exit.i

batadv_purge_orig_neighbors.exit.i:               ; preds = %for.inc.i108.i.batadv_purge_orig_neighbors.exit.i_crit_edge, %batadv_purge_orig_ifinfo.exit.i.batadv_purge_orig_neighbors.exit.i_crit_edge
  %neigh_purged.0.off0.lcssa.i.i = phi i1 [ false, %batadv_purge_orig_ifinfo.exit.i.batadv_purge_orig_neighbors.exit.i_crit_edge ], [ %neigh_purged.1.off0.i.i, %for.inc.i108.i.batadv_purge_orig_neighbors.exit.i_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %neigh_list_lock.i.i) #10
  %brmerge.i = select i1 %ifinfo_purged.0.off0.lcssa.i.i, i1 true, i1 %neigh_purged.0.off0.lcssa.i.i
  br i1 %brmerge.i, label %if.end13.i, label %batadv_purge_orig_neighbors.exit.i.if.end12_crit_edge

batadv_purge_orig_neighbors.exit.i.if.end12_crit_edge: ; preds = %batadv_purge_orig_neighbors.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end13.i:                                       ; preds = %batadv_purge_orig_neighbors.exit.i
  %call14.i = call fastcc ptr @batadv_find_best_neighbor(ptr noundef %bat_priv, ptr noundef %orig_node.065, ptr noundef null) #10
  call void @batadv_update_route(ptr noundef %bat_priv, ptr noundef %orig_node.065, ptr noundef null, ptr noundef %call14.i) #10
  %tobool.not.i109.i = icmp eq ptr %call14.i, null
  br i1 %tobool.not.i109.i, label %if.end13.i.batadv_neigh_node_put.exit.i_crit_edge, label %if.end.i110.i

if.end13.i.batadv_neigh_node_put.exit.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_neigh_node_put.exit.i

if.end.i110.i:                                    ; preds = %if.end13.i
  %refcount.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call14.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  %87 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.batadv_neigh_node_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.i.batadv_neigh_node_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_neigh_node_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #10
  br label %batadv_neigh_node_put.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  call void @batadv_neigh_node_release(ptr noundef %refcount.i.i) #10
  br label %batadv_neigh_node_put.exit.i

batadv_neigh_node_put.exit.i:                     ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.batadv_neigh_node_put.exit.i_crit_edge, %if.end13.i.batadv_neigh_node_put.exit.i_crit_edge
  %88 = call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %91, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %batadv_neigh_node_put.exit.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

batadv_neigh_node_put.exit.i.rcu_read_lock.exit.i_crit_edge: ; preds = %batadv_neigh_node_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %batadv_neigh_node_put.exit.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %batadv_neigh_node_put.exit.i.rcu_read_lock.exit.i_crit_edge
  %call16.i = call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true18.i, label %rcu_read_lock.exit.i.do.end26.i_crit_edge

rcu_read_lock.exit.i.do.end26.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26.i

land.lhs.true18.i:                                ; preds = %rcu_read_lock.exit.i
  %call19.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true18.i.do.end26.i_crit_edge, label %land.lhs.true21.i

land.lhs.true18.i.do.end26.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26.i

land.lhs.true21.i:                                ; preds = %land.lhs.true18.i
  %.b82.i = load i1, ptr @batadv_purge_orig_node.__warned, align 1
  br i1 %.b82.i, label %land.lhs.true21.i.do.end26.i_crit_edge, label %if.then23.i

land.lhs.true21.i.do.end26.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26.i

if.then23.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_purge_orig_node.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1198, ptr noundef nonnull @.str.1) #10
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then23.i, %land.lhs.true21.i.do.end26.i_crit_edge, %land.lhs.true18.i.do.end26.i_crit_edge, %rcu_read_lock.exit.i.do.end26.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.0144.i = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp.not145.i = icmp eq ptr %hard_iface.0144.i, @batadv_hardif_list
  br i1 %cmp.not145.i, label %do.end26.i.for.end.i_crit_edge, label %do.end26.i.for.body.i_crit_edge

do.end26.i.for.body.i_crit_edge:                  ; preds = %do.end26.i
  br label %for.body.i

do.end26.i.for.end.i_crit_edge:                   ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end26.i.for.body.i_crit_edge
  %hard_iface.0146.i = phi ptr [ %hard_iface.0.i, %for.inc.i.for.body.i_crit_edge ], [ %hard_iface.0144.i, %do.end26.i.for.body.i_crit_edge ]
  %if_status.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0146.i, i32 0, i32 1
  %92 = ptrtoint ptr %if_status.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %if_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %93)
  %cmp31.not.i = icmp eq i8 %93, 3
  br i1 %cmp31.not.i, label %if.end34.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end34.i:                                       ; preds = %for.body.i
  %soft_iface.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0146.i, i32 0, i32 7
  %94 = ptrtoint ptr %soft_iface.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %soft_iface.i, align 4
  %96 = ptrtoint ptr %soft_iface35.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %soft_iface35.i, align 4
  %cmp36.not.i = icmp eq ptr %95, %97
  br i1 %cmp36.not.i, label %if.end39.i, label %if.end34.i.for.inc.i_crit_edge

if.end34.i.for.inc.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end39.i:                                       ; preds = %if.end34.i
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0146.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  %call.i.i.i.i.i.i.i111.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #10
  %98 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end39.i
  %100 = phi i32 [ %99, %if.end39.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %101 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i.i.i.i112.i = icmp eq i32 %100, 0
  br i1 %tobool.not.i.i.i.i112.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %100, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #10
  %102 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %104 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %103, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i) #10, !srcloc !93
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %104, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %104, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %103
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !94

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %105 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %106, 1
  %107 = or i32 %add5.i.i.i.i.i, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %107)
  %.not.i.i.i.i.i = icmp sgt i32 %107, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !94

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #10
  %108 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %109 = phi i32 [ %106, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %109, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, label %if.end43.i

kref_get_unless_zero.exit.i.for.inc.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end43.i:                                       ; preds = %kref_get_unless_zero.exit.i
  %call44.i = call fastcc ptr @batadv_find_best_neighbor(ptr noundef %bat_priv, ptr noundef %orig_node.065, ptr noundef %hard_iface.0146.i) #10
  call void @batadv_update_route(ptr noundef %bat_priv, ptr noundef %orig_node.065, ptr noundef %hard_iface.0146.i, ptr noundef %call44.i) #10
  %tobool.not.i113.i = icmp eq ptr %call44.i, null
  br i1 %tobool.not.i113.i, label %if.end43.i.batadv_neigh_node_put.exit123.i_crit_edge, label %if.end.i118.i

if.end43.i.batadv_neigh_node_put.exit123.i_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_neigh_node_put.exit123.i

if.end.i118.i:                                    ; preds = %if.end43.i
  %refcount.i114.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call44.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i115.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i114.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  call void @llvm.prefetch.p0(ptr %refcount.i114.i, i32 1, i32 3, i32 1) #10
  %110 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i114.i, ptr %refcount.i114.i, i32 1, ptr elementtype(i32) %refcount.i114.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i116.i = extractvalue { i32, i32, i32 } %110, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i116.i)
  %cmp.i.i.i.i.i117.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i116.i, 1
  br i1 %cmp.i.i.i.i.i117.i, label %if.then.i.i122.i, label %if.end5.i.i.i.i.i120.i

if.end5.i.i.i.i.i120.i:                           ; preds = %if.end.i118.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i116.i)
  %.not.i.i.i.i.i119.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i116.i, 0
  br i1 %.not.i.i.i.i.i119.i, label %if.end5.i.i.i.i.i120.i.batadv_neigh_node_put.exit123.i_crit_edge, label %if.then10.i.i.i.i.i121.i, !prof !94

if.end5.i.i.i.i.i120.i.batadv_neigh_node_put.exit123.i_crit_edge: ; preds = %if.end5.i.i.i.i.i120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_neigh_node_put.exit123.i

if.then10.i.i.i.i.i121.i:                         ; preds = %if.end5.i.i.i.i.i120.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i114.i, i32 noundef 3) #10
  br label %batadv_neigh_node_put.exit123.i

if.then.i.i122.i:                                 ; preds = %if.end.i118.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  call void @batadv_neigh_node_release(ptr noundef %refcount.i114.i) #10
  br label %batadv_neigh_node_put.exit123.i

batadv_neigh_node_put.exit123.i:                  ; preds = %if.then.i.i122.i, %if.then10.i.i.i.i.i121.i, %if.end5.i.i.i.i.i120.i.batadv_neigh_node_put.exit123.i_crit_edge, %if.end43.i.batadv_neigh_node_put.exit123.i_crit_edge
  %tobool.not.i124.i = icmp eq ptr %hard_iface.0146.i, null
  br i1 %tobool.not.i124.i, label %batadv_neigh_node_put.exit123.i.for.inc.i_crit_edge, label %if.end.i129.i

batadv_neigh_node_put.exit123.i.for.inc.i_crit_edge: ; preds = %batadv_neigh_node_put.exit123.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i129.i:                                    ; preds = %batadv_neigh_node_put.exit123.i
  %call.i.i.i.i.i.i.i126.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %111 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i127.i = extractvalue { i32, i32, i32 } %111, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i127.i)
  %cmp.i.i.i.i.i128.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i127.i, 1
  br i1 %cmp.i.i.i.i.i128.i, label %if.then.i.i133.i, label %if.end5.i.i.i.i.i131.i

if.end5.i.i.i.i.i131.i:                           ; preds = %if.end.i129.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i127.i)
  %.not.i.i.i.i.i130.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i127.i, 0
  br i1 %.not.i.i.i.i.i130.i, label %if.end5.i.i.i.i.i131.i.for.inc.i_crit_edge, label %if.then10.i.i.i.i.i132.i, !prof !94

if.end5.i.i.i.i.i131.i.for.inc.i_crit_edge:       ; preds = %if.end5.i.i.i.i.i131.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then10.i.i.i.i.i132.i:                         ; preds = %if.end5.i.i.i.i.i131.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %for.inc.i

if.then.i.i133.i:                                 ; preds = %if.end.i129.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  call void @batadv_hardif_release(ptr noundef %refcount.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i133.i, %if.then10.i.i.i.i.i132.i, %if.end5.i.i.i.i.i131.i.for.inc.i_crit_edge, %batadv_neigh_node_put.exit123.i.for.inc.i_crit_edge, %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, %if.end34.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %112 = ptrtoint ptr %hard_iface.0146.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %hard_iface.0.i = load volatile ptr, ptr %hard_iface.0146.i, align 4
  %cmp.not.i = icmp eq ptr %hard_iface.0.i, @batadv_hardif_list
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end26.i.for.end.i_crit_edge
  %call.i134.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i134.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i137.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i137.i:                             ; preds = %for.end.i
  %call1.i135.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i135.i)
  %tobool.not.i136.i = icmp eq i32 %call1.i135.i, 0
  br i1 %tobool.not.i136.i, label %land.lhs.true.i137.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i139.i

land.lhs.true.i137.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i137.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i139.i:                            ; preds = %land.lhs.true.i137.i
  %.b4.i138.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i138.i, label %land.lhs.true2.i139.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i140.i

land.lhs.true2.i139.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i139.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i140.i:                                   ; preds = %land.lhs.true2.i139.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i140.i, %land.lhs.true2.i139.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i137.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %113 = call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i141.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i.i141.i to ptr
  %preempt_count.i.i.i.i142.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i.i.i142.i, align 4
  %sub.i.i.i.i = add i32 %116, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i142.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %if.end12

if.then9:                                         ; preds = %if.then2.i, %do.body.i.if.then9_crit_edge
  call void @batadv_gw_node_delete(ptr noundef %bat_priv, ptr noundef nonnull %orig_node.065) #10
  %117 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hash_entry, align 4
  %pprev2.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.065, i32 0, i32 24, i32 1
  %119 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pprev2.i.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %118, ptr %120, align 4
  %tobool.not.i.i53 = icmp eq ptr %118, null
  br i1 %tobool.not.i.i53, label %if.then9.if.end.i_crit_edge, label %do.body13.i.i

if.then9.if.end.i_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.body13.i.i:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %118, i32 0, i32 1
  %122 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %120, ptr %pprev14.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body13.i.i, %if.then9.if.end.i_crit_edge
  %123 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %bat_priv11 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.065, i32 0, i32 25
  %124 = ptrtoint ptr %bat_priv11 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bat_priv11, align 4
  call void @batadv_tt_global_del_orig(ptr noundef %125, ptr noundef nonnull %orig_node.065, i32 noundef -1, ptr noundef nonnull @.str.21) #10
  %refcount.i55 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.065, i32 0, i32 27
  %call.i.i.i.i.i.i.i56 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i55, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  call void @llvm.prefetch.p0(ptr %refcount.i55, i32 1, i32 3, i32 1) #10
  %126 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i55, ptr %refcount.i55, i32 1, ptr elementtype(i32) %refcount.i55) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i57 = extractvalue { i32, i32, i32 } %126, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i57)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i57, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i60, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i57)
  %.not.i.i.i.i.i58 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i57, 0
  br i1 %.not.i.i.i.i.i58, label %if.end5.i.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i.i59, !prof !94

if.end5.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10.i.i.i.i.i59:                            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i55, i32 noundef 3) #10
  br label %for.inc

if.then.i.i60:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  call void @batadv_orig_node_release(ptr noundef %refcount.i55) #10
  br label %for.inc

if.end12:                                         ; preds = %rcu_read_unlock.exit.i, %batadv_purge_orig_neighbors.exit.i.if.end12_crit_edge
  call void @batadv_frag_purge_orig(ptr noundef nonnull %orig_node.065, ptr noundef nonnull @batadv_frag_check_entry) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %if.then.i.i60, %if.then10.i.i.i.i.i59, %if.end5.i.i.i.i.i.for.inc_crit_edge
  %tobool15.not = icmp eq ptr %11, null
  %add.ptr19 = getelementptr i8, ptr %11, i32 -284
  %tobool5.not69 = icmp eq ptr %add.ptr19, null
  %tobool5.not = or i1 %tobool15.not, %tobool5.not69
  br i1 %tobool5.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1) #10
  %inc = add nuw i32 %i.067, 1
  %127 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %128
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end24_crit_edge

for.end.for.end24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end24

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end24:                                        ; preds = %for.end.for.end24_crit_edge, %for.cond.preheader.for.end24_crit_edge
  call void @batadv_gw_election(ptr noundef %bat_priv) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end24, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_gw_node_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tt_global_del_orig(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_frag_purge_orig(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @batadv_frag_check_entry(ptr noundef %frags_entry) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %frags_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %frags_entry, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %timestamp = getelementptr inbounds %struct.batadv_frag_table_entry, ptr %frags_entry, i32 0, i32 2
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timestamp, align 4
  %add.i = add i32 %3, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end ], [ true, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_gw_election(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_orig_dump(ptr noundef %msg, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %7 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nlh, align 4
  %call1 = tail call i32 @batadv_netlink_get_ifindex(ptr noundef %8, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @dev_get_by_index(ptr noundef %6, i32 noundef %call1) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call zeroext i1 @batadv_softif_is_valid(ptr noundef nonnull %call2) #10
  br i1 %call4, label %if.end6, label %lor.lhs.false.do.body1.i88_crit_edge

lor.lhs.false.do.body1.i88_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i88

if.end6:                                          ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %call2, i32 2304
  %call8 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.do.body1.i88_crit_edge, label %lor.lhs.false10

if.end6.do.body1.i88_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i88

lor.lhs.false10:                                  ; preds = %if.end6
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %call8, i32 0, i32 1
  %9 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp.not = icmp eq i8 %10, 3
  br i1 %cmp.not, label %if.end13, label %lor.lhs.false10.if.end.i73_crit_edge

lor.lhs.false10.if.end.i73_crit_edge:             ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i73

if.end13:                                         ; preds = %lor.lhs.false10
  %11 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nlh, align 4
  %call15 = tail call i32 @batadv_netlink_get_ifindex(ptr noundef %12, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.if.end31_crit_edge, label %if.then17

if.end13.if.end31_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then17:                                        ; preds = %if.end13
  %call18 = tail call ptr @dev_get_by_index(ptr noundef %6, i32 noundef %call15) #10
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then17.if.end.i73_crit_edge, label %if.end22

if.then17.if.end.i73_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i73

if.end22:                                         ; preds = %if.then17
  %call21 = tail call ptr @batadv_hardif_get_by_netdev(ptr noundef nonnull %call18) #10
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.end22.do.body1.i_crit_edge, label %if.end25

if.end22.do.body1.i_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i

if.end25:                                         ; preds = %if.end22
  %soft_iface26 = getelementptr inbounds %struct.batadv_hard_iface, ptr %call21, i32 0, i32 7
  %13 = ptrtoint ptr %soft_iface26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %soft_iface26, align 4
  %cmp27.not = icmp eq ptr %14, %call2
  br i1 %cmp27.not, label %if.end25.if.end31_crit_edge, label %if.end25.if.end.i_crit_edge

if.end25.if.end.i_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end31:                                         ; preds = %if.end25.if.end31_crit_edge, %if.end13.if.end31_crit_edge
  %hard_iface.0 = phi ptr [ %call18, %if.end25.if.end31_crit_edge ], [ null, %if.end13.if.end31_crit_edge ]
  %hardif.1 = phi ptr [ %call21, %if.end25.if.end31_crit_edge ], [ null, %if.end13.if.end31_crit_edge ]
  %algo_ops = getelementptr i8, ptr %call2, i32 2640
  %15 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %algo_ops, align 4
  %orig = getelementptr inbounds %struct.batadv_algo_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %orig, align 4
  %tobool32.not = icmp eq ptr %18, null
  br i1 %tobool32.not, label %if.end31.out_crit_edge, label %if.end34

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end34:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %18(ptr noundef %msg, ptr noundef %cb, ptr noundef %add.ptr.i, ptr noundef %hardif.1) #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  br label %out

out:                                              ; preds = %if.end34, %if.end31.out_crit_edge
  %ret.0 = phi i32 [ %20, %if.end34 ], [ -95, %if.end31.out_crit_edge ]
  %tobool.not.i = icmp eq ptr %hardif.1, null
  br i1 %tobool.not.i, label %out.batadv_hardif_put.exit_crit_edge, label %out.if.end.i_crit_edge

out.if.end.i_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

out.batadv_hardif_put.exit_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.end.i:                                         ; preds = %out.if.end.i_crit_edge, %if.end25.if.end.i_crit_edge
  %ret.0111 = phi i32 [ %ret.0, %out.if.end.i_crit_edge ], [ -2, %if.end25.if.end.i_crit_edge ]
  %hardif.2109 = phi ptr [ %hardif.1, %out.if.end.i_crit_edge ], [ %call21, %if.end25.if.end.i_crit_edge ]
  %hard_iface.1108 = phi ptr [ %hard_iface.0, %out.if.end.i_crit_edge ], [ %call18, %if.end25.if.end.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hardif.2109, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %batadv_hardif_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #10
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %out.batadv_hardif_put.exit_crit_edge
  %ret.0101 = phi i32 [ %ret.0, %out.batadv_hardif_put.exit_crit_edge ], [ %ret.0111, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge ], [ %ret.0111, %if.then10.i.i.i.i.i ], [ %ret.0111, %if.then.i.i ]
  %hard_iface.199 = phi ptr [ %hard_iface.0, %out.batadv_hardif_put.exit_crit_edge ], [ %hard_iface.1108, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge ], [ %hard_iface.1108, %if.then10.i.i.i.i.i ], [ %hard_iface.1108, %if.then.i.i ]
  %tobool.not.i67 = icmp eq ptr %hard_iface.199, null
  br i1 %tobool.not.i67, label %batadv_hardif_put.exit.if.end.i73_crit_edge, label %batadv_hardif_put.exit.do.body1.i_crit_edge

batadv_hardif_put.exit.do.body1.i_crit_edge:      ; preds = %batadv_hardif_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i

batadv_hardif_put.exit.if.end.i73_crit_edge:      ; preds = %batadv_hardif_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i73

do.body1.i:                                       ; preds = %batadv_hardif_put.exit.do.body1.i_crit_edge, %if.end22.do.body1.i_crit_edge
  %hard_iface.199125 = phi ptr [ %hard_iface.199, %batadv_hardif_put.exit.do.body1.i_crit_edge ], [ %call18, %if.end22.do.body1.i_crit_edge ]
  %ret.0101123 = phi i32 [ %ret.0101, %batadv_hardif_put.exit.do.body1.i_crit_edge ], [ -19, %if.end22.do.body1.i_crit_edge ]
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !102
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %hard_iface.199125, i32 0, i32 118
  %23 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcpu_refcnt.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %31, %25
  %32 = inttoptr i32 %add.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add13.i = add i32 %34, -1
  store i32 %add13.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !103
  %and.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !97

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #10, !srcloc !104
  br label %if.end.i73

if.end.i73:                                       ; preds = %do.end30.i, %batadv_hardif_put.exit.if.end.i73_crit_edge, %if.then17.if.end.i73_crit_edge, %lor.lhs.false10.if.end.i73_crit_edge
  %ret.0101116130 = phi i32 [ -19, %if.then17.if.end.i73_crit_edge ], [ -2, %lor.lhs.false10.if.end.i73_crit_edge ], [ %ret.0101123, %do.end30.i ], [ %ret.0101, %batadv_hardif_put.exit.if.end.i73_crit_edge ]
  %refcount.i69 = getelementptr inbounds %struct.batadv_hard_iface, ptr %call8, i32 0, i32 5
  %call.i.i.i.i.i.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i69, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i69, i32 1, i32 3, i32 1) #10
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i69, ptr %refcount.i69, i32 1, ptr elementtype(i32) %refcount.i69) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i71 = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i71)
  %cmp.i.i.i.i.i72 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i71, 1
  br i1 %cmp.i.i.i.i.i72, label %if.then.i.i77, label %if.end5.i.i.i.i.i75

if.end5.i.i.i.i.i75:                              ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i71)
  %.not.i.i.i.i.i74 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i71, 0
  br i1 %.not.i.i.i.i.i74, label %if.end5.i.i.i.i.i75.do.body1.i88_crit_edge, label %if.then10.i.i.i.i.i76, !prof !94

if.end5.i.i.i.i.i75.do.body1.i88_crit_edge:       ; preds = %if.end5.i.i.i.i.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i88

if.then10.i.i.i.i.i76:                            ; preds = %if.end5.i.i.i.i.i75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i69, i32 noundef 3) #10
  br label %do.body1.i88

if.then.i.i77:                                    ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @batadv_hardif_release(ptr noundef %refcount.i69) #10
  br label %do.body1.i88

do.body1.i88:                                     ; preds = %if.then.i.i77, %if.then10.i.i.i.i.i76, %if.end5.i.i.i.i.i75.do.body1.i88_crit_edge, %if.end6.do.body1.i88_crit_edge, %lor.lhs.false.do.body1.i88_crit_edge
  %ret.0101116131138 = phi i32 [ %ret.0101116130, %if.end5.i.i.i.i.i75.do.body1.i88_crit_edge ], [ %ret.0101116130, %if.then10.i.i.i.i.i76 ], [ %ret.0101116130, %if.then.i.i77 ], [ -19, %lor.lhs.false.do.body1.i88_crit_edge ], [ -2, %if.end6.do.body1.i88_crit_edge ]
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !102
  %pcpu_refcnt.i80 = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 118
  %38 = ptrtoint ptr %pcpu_refcnt.i80 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcpu_refcnt.i80, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i81 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i81 to ptr
  %cpu.i82 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i82 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i82, align 4
  %arrayidx.i83 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i83, align 4
  %add.i84 = add i32 %46, %40
  %47 = inttoptr i32 %add.i84 to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add13.i85 = add i32 %49, -1
  store i32 %add13.i85, ptr %47, align 4
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !103
  %and.i.i.i86 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i86)
  %tobool24.not.i87 = icmp eq i32 %and.i.i.i86, 0
  br i1 %tobool24.not.i87, label %if.then28.i89, label %do.body1.i88.do.end30.i90_crit_edge, !prof !97

do.body1.i88.do.end30.i90_crit_edge:              ; preds = %do.body1.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i90

if.then28.i89:                                    ; preds = %do.body1.i88
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i90

do.end30.i90:                                     ; preds = %if.then28.i89, %do.body1.i88.do.end30.i90_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #10, !srcloc !104
  br label %cleanup

cleanup:                                          ; preds = %do.end30.i90, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.0101116131138, %do.end30.i90 ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
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
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_mcast_purge_orig(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_find_best_neighbor(ptr nocapture noundef readonly %bat_priv, ptr noundef %orig_node, ptr noundef %if_outgoing) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_ops = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 30
  %0 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_ops, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b50 = load i1, ptr @batadv_find_best_neighbor.__warned, align 1
  br i1 %.b50, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_find_best_neighbor.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1141, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %neigh_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 22
  %6 = ptrtoint ptr %neigh_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %neigh.063 = load volatile ptr, ptr %neigh_list, align 4
  %tobool12.not64 = icmp eq ptr %neigh.063, null
  br i1 %tobool12.not64, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %cmp = getelementptr inbounds %struct.batadv_algo_ops, ptr %1, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %neigh.066 = phi ptr [ %neigh.063, %for.body.lr.ph ], [ %neigh.0, %for.inc.for.body_crit_edge ]
  %best.065 = phi ptr [ null, %for.body.lr.ph ], [ %best.1, %for.inc.for.body_crit_edge ]
  %tobool13.not = icmp eq ptr %best.065, null
  br i1 %tobool13.not, label %for.body.if.end19_crit_edge, label %land.lhs.true14

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true14:                                  ; preds = %for.body
  %7 = ptrtoint ptr %cmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmp, align 4
  %call16 = call i32 %8(ptr noundef nonnull %neigh.066, ptr noundef %if_outgoing, ptr noundef nonnull %best.065, ptr noundef %if_outgoing) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %land.lhs.true14.for.inc_crit_edge, label %land.lhs.true14.if.end19_crit_edge

land.lhs.true14.if.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end19:                                         ; preds = %land.lhs.true14.if.end19_crit_edge, %for.body.if.end19_crit_edge
  %refcount = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh.066, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %9 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end19
  %11 = phi i32 [ %10, %if.end19 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %11, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %15 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %14, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !93
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %14
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !94

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %17, 1
  %18 = or i32 %add5.i.i.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !94

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #10
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %19 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.i.i.i.i.not = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %brmerge = select i1 %tobool12.i.i.i.i.not, i1 true, i1 %tobool13.not
  %best.0.mux = select i1 %tobool12.i.i.i.i.not, ptr %best.065, ptr %neigh.066
  br i1 %brmerge, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %if.end.i

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i:                                         ; preds = %kref_get_unless_zero.exit
  %refcount.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %best.065, i32 0, i32 8
  %call.i.i.i.i.i.i.i53 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %21 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %for.inc

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  call void @batadv_neigh_node_release(ptr noundef %refcount.i) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc_crit_edge, %kref_get_unless_zero.exit.for.inc_crit_edge, %land.lhs.true14.for.inc_crit_edge
  %best.1 = phi ptr [ %best.065, %land.lhs.true14.for.inc_crit_edge ], [ %best.0.mux, %kref_get_unless_zero.exit.for.inc_crit_edge ], [ %neigh.066, %if.end5.i.i.i.i.i.for.inc_crit_edge ], [ %neigh.066, %if.then10.i.i.i.i.i ], [ %neigh.066, %if.then.i.i ]
  %22 = ptrtoint ptr %neigh.066 to i32
  call void @__asan_load4_noabort(i32 %22)
  %neigh.0 = load volatile ptr, ptr %neigh.066, align 4
  %tobool12.not = icmp eq ptr %neigh.0, null
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %best.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %best.1, %for.inc.for.end_crit_edge ]
  %call.i54 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i54, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i57

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i57:                                ; preds = %for.end
  %call1.i55 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %23 = call i32 @llvm.read_register.i32(metadata !82) #10
  %and.i.i.i.i.i61 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i62, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i62, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %best.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_update_route(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !10, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !51, !53, !54, !55, !57, !58, !60, !62, !63, !65, !67, !68, !70, !72, !74, !76, !78, !80}
!llvm.named.register.sp = !{!82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/batman-adv/originator.c", i32 71, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/batman-adv/originator.c", i32 118, i32 2}
!6 = !{ptr @batadv_originator_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../net/batman-adv/originator.c", i32 208, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @batadv_originator_init.__key.3, !7, !"__key", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/batman-adv/originator.c", i32 299, i32 2}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/batman-adv/originator.c", i32 303, i32 12}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../net/batman-adv/originator.c", i32 330, i32 2}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/batman-adv/originator.c", i32 409, i32 2}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/batman-adv/originator.c", i32 591, i32 2}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/batman-adv/originator.c", i32 783, i32 11}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/batman-adv/originator.c", i32 911, i32 2}
!26 = !{ptr @batadv_orig_node_new.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../net/batman-adv/originator.c", i32 921, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @batadv_orig_node_new.__key.9, !30, !"__key", i1 false, i1 false}
!30 = !{!"../net/batman-adv/originator.c", i32 922, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @batadv_orig_node_new.__key.11, !33, !"__key", i1 false, i1 false}
!33 = !{!"../net/batman-adv/originator.c", i32 923, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @batadv_orig_node_new.__key.13, !36, !"__key", i1 false, i1 false}
!36 = !{!"../net/batman-adv/originator.c", i32 924, i32 2}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @batadv_orig_node_new.__key.15, !39, !"__key", i1 false, i1 false}
!39 = !{!"../net/batman-adv/originator.c", i32 925, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @batadv_orig_node_new.__key.17, !42, !"__key", i1 false, i1 false}
!42 = !{!"../net/batman-adv/originator.c", i32 948, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @batadv_orig_node_new.__key.19, !45, !"__key", i1 false, i1 false}
!45 = !{!"../net/batman-adv/originator.c", i32 963, i32 3}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/batman-adv/originator.c", i32 1251, i32 10}
!49 = !{ptr @batadv_orig_hash_lock_class_key, !50, !"batadv_orig_hash_lock_class_key", i1 false, i1 false}
!50 = !{!"../net/batman-adv/originator.c", i32 47, i32 30}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../net/batman-adv/originator.c", i32 487, i32 2}
!60 = !{ptr @batadv_neigh_node_create.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../net/batman-adv/originator.c", i32 642, i32 2}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/batman-adv/originator.c", i32 660, i32 2}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../net/batman-adv/hard-interface.h", i32 110, i32 15}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/batman-adv/originator.c", i32 1177, i32 3}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../net/batman-adv/originator.c", i32 1198, i32 2}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/batman-adv/originator.c", i32 1047, i32 3}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/batman-adv/originator.c", i32 1098, i32 5}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/batman-adv/originator.c", i32 1103, i32 5}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/batman-adv/originator.c", i32 1003, i32 3}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../net/batman-adv/originator.c", i32 1141, i32 2}
!82 = !{!"sp"}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2149717322}
!93 = !{i64 546161, i64 546185, i64 546206, i64 546223, i64 546240}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 2149717588}
!96 = !{i64 2148172857, i64 2148172889, i64 2148172918, i64 2148172952, i64 2148172983, i64 2148173006}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 2149818933}
!99 = !{i64 2148260858}
!100 = !{i64 2148175322, i64 2148175354, i64 2148175383, i64 2148175417, i64 2148175448, i64 2148175471}
!101 = !{i64 2150591869}
!102 = !{i64 624654, i64 624715}
!103 = !{i64 627386}
!104 = !{i64 627671}
