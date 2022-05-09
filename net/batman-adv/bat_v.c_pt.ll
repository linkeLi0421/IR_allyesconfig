; ModuleID = '/llk/IR_all_yes/net/batman-adv/bat_v.c_pt.bc'
source_filename = "../net/batman-adv/bat_v.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.24 }
%union.anon.24 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.batadv_algo_ops = type { %struct.hlist_node, ptr, %struct.batadv_algo_iface_ops, %struct.batadv_algo_neigh_ops, %struct.batadv_algo_orig_ops, %struct.batadv_algo_gw_ops }
%struct.batadv_algo_iface_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_algo_neigh_ops = type { ptr, ptr, ptr, ptr }
%struct.batadv_algo_orig_ops = type { ptr }
%struct.batadv_algo_gw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.batadv_hardif_neigh_node = type { %struct.hlist_node, [6 x i8], [6 x i8], ptr, i32, %struct.batadv_hardif_neigh_node_bat_v, %struct.kref, %struct.callback_head }
%struct.batadv_hardif_neigh_node_bat_v = type { %struct.ewma_throughput, i32, i32, i32, %struct.work_struct }
%struct.ewma_throughput = type { i32 }
%struct.batadv_neigh_ifinfo = type { %struct.hlist_node, ptr, %struct.batadv_neigh_ifinfo_bat_iv, %struct.batadv_neigh_ifinfo_bat_v, i8, %struct.kref, %struct.callback_head }
%struct.batadv_neigh_ifinfo_bat_iv = type { [5 x i8], i8, i8, [2 x i32], i8 }
%struct.batadv_neigh_ifinfo_bat_v = type { i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.105 }
%union.anon.105 = type { [6 x i32], [24 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
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
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }
%struct.batadv_neigh_node = type { %struct.hlist_node, ptr, [6 x i8], %struct.hlist_head, %struct.spinlock, ptr, i32, ptr, %struct.kref, %struct.callback_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.115, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.115 = type { ptr }
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
%struct.batadv_gw_node = type { %struct.hlist_node, ptr, i32, i32, %struct.kref, %struct.callback_head }

@batadv_v_hardif_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&hard_iface->bat_v.aggr_wq)->work)\00", [41 x i8] zeroinitializer }, align 32
@batadv_v_hardif_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&hard_iface->bat_v.aggr_wq)->timer\00", [59 x i8] zeroinitializer }, align 32
@batadv_batman_v = internal global %struct.batadv_algo_ops { %struct.hlist_node zeroinitializer, ptr @.str.4, %struct.batadv_algo_iface_ops { ptr @batadv_v_iface_activate, ptr @batadv_v_iface_enable, ptr null, ptr @batadv_v_iface_disable, ptr @batadv_v_iface_update_mac, ptr @batadv_v_primary_iface_set }, %struct.batadv_algo_neigh_ops { ptr @batadv_v_hardif_neigh_init, ptr @batadv_v_neigh_cmp, ptr @batadv_v_neigh_is_sob, ptr @batadv_v_neigh_dump }, %struct.batadv_algo_orig_ops { ptr @batadv_v_orig_dump }, %struct.batadv_algo_gw_ops { ptr @batadv_v_init_sel_class, ptr @batadv_v_store_sel_class, ptr @batadv_v_gw_get_best_gw_node, ptr @batadv_v_gw_is_eligible, ptr @batadv_v_gw_dump } }, section ".data..read_mostly", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BATMAN_V\00", [23 x i8] zeroinitializer }, align 32
@batadv_primary_if_get_selected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.h\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@batadv_v_hardif_neigh_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&hardif_neigh->bat_v.metric_work)\00", [44 x i8] zeroinitializer }, align 32
@batadv_v_neigh_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/batman-adv/bat_v.c\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@batadv_hardif_list = external dso_local global %struct.list_head, align 4
@batadv_v_neigh_dump_hardif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@batadv_netlink_family = external dso_local global %struct.genl_family, align 4
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@batadv_v_orig_dump_bucket.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_v_orig_dump_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"B.A.T.M.A.N. V GW selection class\00", [62 x i8] zeroinitializer }, align 32
@batadv_v_gw_get_best_gw_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"Restarting gateway selection: better gateway found (throughput curr: %u, throughput new: %u)\0A\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 843, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 1984, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 802, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [35 x i8] c"../net/batman-adv/hard-interface.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 110, i32 15 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 695, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 723, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 116, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 232, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 991, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 521, i32 10 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [26 x i8] c"../net/batman-adv/bat_v.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 654, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @batadv_v_hardif_init.__key, ptr @.str, ptr @batadv_v_hardif_init.__key.1, ptr @.str.2, ptr @skb_queue_head_init.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @batadv_v_hardif_neigh_init.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_v_hardif_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_v_hardif_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_v_hardif_neigh_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_v_hardif_init(ptr noundef %hard_iface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bat_v = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11
  %throughput_override = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %throughput_override, i32 noundef 4) #9
  %0 = ptrtoint ptr %throughput_override to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %throughput_override, align 4
  %call.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bat_v, i32 noundef 4) #9
  %1 = ptrtoint ptr %bat_v to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 500, ptr %bat_v, align 4
  %aggr_len = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 6
  %2 = ptrtoint ptr %aggr_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %aggr_len, align 4
  %aggr_list = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5
  %lock.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %3 = ptrtoint ptr %aggr_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %aggr_list, ptr %aggr_list, align 4
  %prev.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %aggr_list, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i, align 4
  %aggr_wq = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 4
  tail call void @__init_work(ptr noundef %aggr_wq, i32 noundef 0) #9
  %6 = ptrtoint ptr %aggr_wq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %aggr_wq, align 4
  %lockdep_map = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @batadv_v_hardif_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry15 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 4, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry15, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 4, i32 0, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @batadv_v_ogm_aggr_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @batadv_v_hardif_init.__key.1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_v_ogm_aggr_work(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_v_mesh_init(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @batadv_v_ogm_init(ptr noundef %bat_priv) #9
  %0 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_v_ogm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_v_mesh_free(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @batadv_v_ogm_free(ptr noundef %bat_priv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_v_ogm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_v_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @batadv_recv_handler_register(i8 noundef zeroext 3, ptr noundef nonnull @batadv_v_elp_packet_recv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @batadv_recv_handler_register(i8 noundef zeroext 4, ptr noundef nonnull @batadv_v_ogm_packet_recv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.elp_unregister_crit_edge, label %if.end4

if.end.elp_unregister_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %elp_unregister

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @batadv_algo_register(ptr noundef nonnull @batadv_batman_v) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %ogm_unregister, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ogm_unregister:                                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @batadv_recv_handler_unregister(i8 noundef zeroext 4) #9
  br label %elp_unregister

elp_unregister:                                   ; preds = %ogm_unregister, %if.end.elp_unregister_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.elp_unregister_crit_edge ], [ %call5, %ogm_unregister ]
  tail call void @batadv_recv_handler_unregister(i8 noundef zeroext 3) #9
  br label %cleanup

cleanup:                                          ; preds = %elp_unregister, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %elp_unregister ], [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_recv_handler_register(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_v_elp_packet_recv(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_v_ogm_packet_recv(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_algo_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_recv_handler_unregister(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_v_iface_activate(ptr noundef %hard_iface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call1 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  tail call void @batadv_v_elp_iface_activate(ptr noundef nonnull %call1, ptr noundef %hard_iface) #9
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call1, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !56

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %if.end

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #9, !callees !58
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 1
  %3 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp = icmp eq i8 %4, 4
  br i1 %cmp, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %if_status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %if_status, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_v_iface_enable(ptr noundef %hard_iface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @batadv_v_elp_iface_enable(ptr noundef %hard_iface) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @batadv_v_ogm_iface_enable(ptr noundef %hard_iface) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @batadv_v_elp_iface_disable(ptr noundef %hard_iface) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_v_iface_disable(ptr noundef %hard_iface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @batadv_v_ogm_iface_disable(ptr noundef %hard_iface) #9
  tail call void @batadv_v_elp_iface_disable(ptr noundef %hard_iface) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_v_iface_update_mac(ptr noundef %hard_iface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call1 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i)
  %cmp.not = icmp eq ptr %call1, %hard_iface
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @batadv_v_elp_primary_iface_set(ptr noundef %hard_iface) #9
  tail call void @batadv_v_ogm_primary_iface_set(ptr noundef %hard_iface) #9
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %tobool.not.i = icmp eq ptr %call1, null
  br i1 %tobool.not.i, label %out.batadv_hardif_put.exit_crit_edge, label %if.end.i

out.batadv_hardif_put.exit_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hardif_put.exit

if.end.i:                                         ; preds = %out
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call1, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !56

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %batadv_hardif_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #9, !callees !58
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %out.batadv_hardif_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_v_primary_iface_set(ptr noundef %hard_iface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @batadv_v_elp_primary_iface_set(ptr noundef %hard_iface) #9
  tail call void @batadv_v_ogm_primary_iface_set(ptr noundef %hard_iface) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_v_hardif_neigh_init(ptr noundef %hardif_neigh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bat_v = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh, i32 0, i32 5
  %0 = ptrtoint ptr %bat_v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bat_v, align 4
  %metric_work = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh, i32 0, i32 5, i32 4
  tail call void @__init_work(ptr noundef %metric_work, i32 noundef 0) #9
  %1 = ptrtoint ptr %metric_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %metric_work, align 4
  %lockdep_map = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh, i32 0, i32 5, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @batadv_v_hardif_neigh_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry8 = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh, i32 0, i32 5, i32 4, i32 1
  %2 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh, i32 0, i32 5, i32 4, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh, i32 0, i32 5, i32 4, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @batadv_v_elp_throughput_metric_update, ptr %func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_v_neigh_cmp(ptr noundef %neigh1, ptr noundef %if_outgoing1, ptr noundef %neigh2, ptr noundef %if_outgoing2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @batadv_neigh_ifinfo_get(ptr noundef %neigh1, ptr noundef %if_outgoing1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.err_ifinfo1_crit_edge, label %if.end

entry.err_ifinfo1_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ifinfo1

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @batadv_neigh_ifinfo_get(ptr noundef %neigh2, ptr noundef %if_outgoing2) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end.i16_crit_edge, label %if.end.i

if.end.if.end.i16_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i16

if.end.i:                                         ; preds = %if.end
  %bat_v = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %bat_v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bat_v, align 4
  %bat_v5 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %bat_v5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bat_v5, align 4
  %sub = sub i32 %1, %3
  %refcount.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call1, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end.i16_crit_edge, label %if.then10.i.i.i.i.i, !prof !56

if.end5.i.i.i.i.i.if.end.i16_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i16

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %if.end.i16

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  tail call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i) #9, !callees !58
  br label %if.end.i16

if.end.i16:                                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end.i16_crit_edge, %if.end.if.end.i16_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end.i16_crit_edge ], [ %sub, %if.end5.i.i.i.i.i.if.end.i16_crit_edge ], [ %sub, %if.then10.i.i.i.i.i ], [ %sub, %if.then.i.i ]
  %refcount.i12 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call, i32 0, i32 5
  %call.i.i.i.i.i.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i12, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcount.i12, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i12, ptr %refcount.i12, i32 1, ptr elementtype(i32) %refcount.i12) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i14 = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i14)
  %cmp.i.i.i.i.i15 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i14, 1
  br i1 %cmp.i.i.i.i.i15, label %if.then.i.i20, label %if.end5.i.i.i.i.i18

if.end5.i.i.i.i.i18:                              ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i14)
  %.not.i.i.i.i.i17 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i14, 0
  br i1 %.not.i.i.i.i.i17, label %if.end5.i.i.i.i.i18.err_ifinfo1_crit_edge, label %if.then10.i.i.i.i.i19, !prof !56

if.end5.i.i.i.i.i18.err_ifinfo1_crit_edge:        ; preds = %if.end5.i.i.i.i.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ifinfo1

if.then10.i.i.i.i.i19:                            ; preds = %if.end5.i.i.i.i.i18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i12, i32 noundef 3) #9
  br label %err_ifinfo1

if.then.i.i20:                                    ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  tail call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i12) #9, !callees !58
  br label %err_ifinfo1

err_ifinfo1:                                      ; preds = %if.then.i.i20, %if.then10.i.i.i.i.i19, %if.end5.i.i.i.i.i18.err_ifinfo1_crit_edge, %entry.err_ifinfo1_crit_edge
  %ret.1 = phi i32 [ 0, %entry.err_ifinfo1_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i18.err_ifinfo1_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i19 ], [ %ret.0, %if.then.i.i20 ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @batadv_v_neigh_is_sob(ptr noundef %neigh1, ptr noundef %if_outgoing1, ptr noundef %neigh2, ptr noundef %if_outgoing2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @batadv_neigh_ifinfo_get(ptr noundef %neigh1, ptr noundef %if_outgoing1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.err_ifinfo1_crit_edge, label %if.end

entry.err_ifinfo1_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ifinfo1

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @batadv_neigh_ifinfo_get(ptr noundef %neigh2, ptr noundef %if_outgoing2) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end.i22_crit_edge, label %if.end.i

if.end.if.end.i22_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i22

if.end.i:                                         ; preds = %if.end
  %bat_v = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %bat_v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bat_v, align 4
  %div16 = lshr i32 %1, 2
  %sub = sub i32 %1, %div16
  %bat_v7 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %bat_v7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bat_v7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub)
  %cmp = icmp ugt i32 %3, %sub
  %refcount.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call1, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end.i22_crit_edge, label %if.then10.i.i.i.i.i, !prof !56

if.end5.i.i.i.i.i.if.end.i22_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i22

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %if.end.i22

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  tail call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i) #9, !callees !58
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end.i22_crit_edge, %if.end.if.end.i22_crit_edge
  %ret.0 = phi i1 [ false, %if.end.if.end.i22_crit_edge ], [ %cmp, %if.end5.i.i.i.i.i.if.end.i22_crit_edge ], [ %cmp, %if.then10.i.i.i.i.i ], [ %cmp, %if.then.i.i ]
  %refcount.i18 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call, i32 0, i32 5
  %call.i.i.i.i.i.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i18, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcount.i18, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i18, ptr %refcount.i18, i32 1, ptr elementtype(i32) %refcount.i18) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i20 = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i20)
  %cmp.i.i.i.i.i21 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i20, 1
  br i1 %cmp.i.i.i.i.i21, label %if.then.i.i26, label %if.end5.i.i.i.i.i24

if.end5.i.i.i.i.i24:                              ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i20)
  %.not.i.i.i.i.i23 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i20, 0
  br i1 %.not.i.i.i.i.i23, label %if.end5.i.i.i.i.i24.err_ifinfo1_crit_edge, label %if.then10.i.i.i.i.i25, !prof !56

if.end5.i.i.i.i.i24.err_ifinfo1_crit_edge:        ; preds = %if.end5.i.i.i.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ifinfo1

if.then10.i.i.i.i.i25:                            ; preds = %if.end5.i.i.i.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i18, i32 noundef 3) #9
  br label %err_ifinfo1

if.then.i.i26:                                    ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  tail call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i18) #9, !callees !58
  br label %err_ifinfo1

err_ifinfo1:                                      ; preds = %if.then.i.i26, %if.then10.i.i.i.i.i25, %if.end5.i.i.i.i.i24.err_ifinfo1_crit_edge, %entry.err_ifinfo1_crit_edge
  %ret.1.off0 = phi i1 [ false, %entry.err_ifinfo1_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i24.err_ifinfo1_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i25 ], [ %ret.0, %if.then.i.i26 ]
  ret i1 %ret.1.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_v_neigh_dump(ptr noundef %msg, ptr nocapture noundef %cb, ptr nocapture noundef readonly %bat_priv, ptr noundef %single_hardif) #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #9
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
  %10 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tobool.not = icmp eq ptr %single_hardif, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then4, label %if.then.if.end43_crit_edge

if.then.if.end43_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %14 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nlmsg_seq, align 4
  %call = call fastcc i32 @batadv_v_neigh_dump_hardif(ptr noundef %msg, i32 noundef %9, i32 noundef %17, ptr noundef nonnull %single_hardif, ptr noundef nonnull %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  %spec.select = zext i1 %cmp5 to i32
  br label %if.end43

do.body:                                          ; preds = %rcu_read_lock.exit
  %call8 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true12

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b64 = load i1, ptr @batadv_v_neigh_dump.__warned, align 1
  br i1 %.b64, label %land.lhs.true12.do.end_crit_edge, label %if.then14

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @batadv_v_neigh_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 232, ptr noundef nonnull @.str.12) #9
  br label %do.end

do.end:                                           ; preds = %if.then14, %land.lhs.true12.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %nlh29 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.074 = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp20.not75 = icmp eq ptr %hard_iface.074, @batadv_hardif_list
  br i1 %cmp20.not75, label %do.end.if.end43_crit_edge, label %for.body.lr.ph

do.end.if.end43_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end24:                                         ; preds = %for.body
  %inc25 = add i32 %i_hardif.076, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i_hardif.076, i32 %2)
  %cmp26 = icmp slt i32 %i_hardif.076, %2
  br i1 %cmp26, label %if.end24.for.inc_crit_edge, label %if.end28

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end28:                                         ; preds = %if.end24
  %22 = ptrtoint ptr %nlh29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nlh29, align 4
  %nlmsg_seq30 = getelementptr inbounds %struct.nlmsghdr, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %nlmsg_seq30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nlmsg_seq30, align 4
  %call31 = call fastcc i32 @batadv_v_neigh_dump_hardif(ptr noundef %msg, i32 noundef %9, i32 noundef %25, ptr noundef %hard_iface.077, ptr noundef nonnull %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end28.for.inc_crit_edge, label %if.end28.if.end43_crit_edge

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end28.for.inc_crit_edge, %if.end24.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i_hardif.1 = phi i32 [ %i_hardif.076, %for.body.for.inc_crit_edge ], [ %inc25, %if.end24.for.inc_crit_edge ], [ %inc25, %if.end28.for.inc_crit_edge ]
  %26 = ptrtoint ptr %hard_iface.077 to i32
  call void @__asan_load4_noabort(i32 %26)
  %hard_iface.0 = load volatile ptr, ptr %hard_iface.077, align 4
  %cmp20.not = icmp eq ptr %hard_iface.0, @batadv_hardif_list
  br i1 %cmp20.not, label %for.inc.if.end43_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end43_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end43:                                         ; preds = %for.inc.if.end43_crit_edge, %if.end28.if.end43_crit_edge, %do.end.if.end43_crit_edge, %if.then4, %if.then.if.end43_crit_edge
  %i_hardif.2 = phi i32 [ 0, %if.then.if.end43_crit_edge ], [ %spec.select, %if.then4 ], [ 0, %do.end.if.end43_crit_edge ], [ %i_hardif.1, %for.inc.if.end43_crit_edge ], [ %i_hardif.076, %if.end28.if.end43_crit_edge ]
  %call.i65 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i65, label %if.end43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i68

if.end43.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i68:                                ; preds = %if.end43
  %call1.i66 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool.not.i67 = icmp eq i32 %call1.i66, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i70

land.lhs.true.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i70:                               ; preds = %land.lhs.true.i68
  %.b4.i69 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69, label %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, label %if.then.i71

land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i71:                                      ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i71, %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, %if.end43.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !60
  %27 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i.i.i72 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i72 to ptr
  %preempt_count.i.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i73, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i73, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %i_hardif.2, ptr %0, align 4
  %32 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %idx, align 4
  %34 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_v_orig_dump(ptr noundef %msg, ptr nocapture noundef %cb, ptr nocapture noundef readonly %bat_priv, ptr noundef %if_outgoing) #0 align 64 {
entry:
  %tmp.i4.i.i.i = alloca i32, align 4
  %tmp.i2.i.i.i = alloca i32, align 4
  %tmp.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
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
  %21 = call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %while.body.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

while.body.rcu_read_lock.exit.i_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %while.body
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %while.body.rcu_read_lock.exit.i_crit_edge
  %call.i = call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @batadv_v_orig_dump_bucket.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @batadv_v_orig_dump_bucket.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 397, ptr noundef nonnull @.str.12) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %25 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %arrayidx5, align 4
  %tobool10.not.i = icmp eq ptr %26, null
  %add.ptr.i = getelementptr i8, ptr %26, i32 -284
  %tobool12.not4450.i = icmp eq ptr %add.ptr.i, null
  %tobool12.not44.i = or i1 %tobool10.not.i, %tobool12.not4450.i
  br i1 %tobool12.not44.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %sub.1 = phi i32 [ %sub.2, %for.inc.i.for.body.i_crit_edge ], [ %sub.048, %do.end.i.for.body.i_crit_edge ]
  %orig_node.046.i = phi ptr [ %add.ptr31.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %idx.045.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %inc.i = add i32 %idx.045.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.045.i, i32 %idx.047)
  %cmp.i = icmp slt i32 %idx.045.i, %idx.047
  br i1 %cmp.i, label %for.body.i.for.inc.i_crit_edge, label %if.end14.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end14.i:                                       ; preds = %for.body.i
  %call.i3.i = call ptr @batadv_orig_router_get(ptr noundef nonnull %orig_node.046.i, ptr noundef %if_outgoing) #9
  %tobool.not.i4.i = icmp eq ptr %call.i3.i, null
  br i1 %tobool.not.i4.i, label %if.end14.i.for.inc.i_crit_edge, label %do.body.i.i

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.body.i.i:                                      ; preds = %if.end14.i
  %call1.i5.i = call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i6.i, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

land.lhs.true.i6.i:                               ; preds = %do.body.i.i
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i6.i.do.end.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i6.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i6.i
  %.b1.i.i = load i1, ptr @batadv_v_orig_dump_entry.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true5.i.i.do.end.i.i_crit_edge, label %if.then7.i.i

land.lhs.true5.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @batadv_v_orig_dump_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 351, ptr noundef nonnull @.str.12) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then7.i.i, %land.lhs.true5.i.i.do.end.i.i_crit_edge, %land.lhs.true.i6.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %neigh_list.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.046.i, i32 0, i32 22
  %27 = ptrtoint ptr %neigh_list.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %neigh_node.022.i.i = load volatile ptr, ptr %neigh_list.i.i, align 4
  %tobool16.not23.i.i = icmp eq ptr %neigh_node.022.i.i, null
  br i1 %tobool16.not23.i.i, label %do.end.i.i.if.end.i10.i.i_crit_edge, label %for.body.lr.ph.i.i

do.end.i.i.if.end.i10.i.i_crit_edge:              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i10.i.i

for.body.lr.ph.i.i:                               ; preds = %do.end.i.i
  %last_seen.i.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.046.i, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %neigh_node.025.i.i = phi ptr [ %neigh_node.022.i.i, %for.body.lr.ph.i.i ], [ %neigh_node.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %sub.024.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %sub.024.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.024.i.i, i32 %sub.1)
  %cmp.i.i = icmp slt i32 %sub.024.i.i, %sub.1
  br i1 %cmp.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end18.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end18.i.i:                                     ; preds = %for.body.i.i
  %cmp19.i.i = icmp eq ptr %neigh_node.025.i.i, %call.i3.i
  %call.i.i.i = call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %neigh_node.025.i.i, ptr noundef %if_outgoing) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end18.i.i.for.inc.i.i_crit_edge, label %if.end.i.i.i.i

if.end18.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i.i.i:                                   ; preds = %if.end18.i.i
  %bat_v.i.i.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call.i.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %bat_v.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bat_v.i.i.i, align 4
  %mul.i.i.i = mul i32 %29, 100
  %refcount.i.i.i.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call.i.i.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i.i, ptr %refcount.i.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i.i) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i.batadv_neigh_ifinfo_put.exit.i.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i.i, !prof !56

if.end5.i.i.i.i.i.i.i.i.batadv_neigh_ifinfo_put.exit.i.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_neigh_ifinfo_put.exit.i.i.i

if.then10.i.i.i.i.i.i.i.i:                        ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i.i, i32 noundef 3) #9
  br label %batadv_neigh_ifinfo_put.exit.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i.i.i.i) #9, !callees !58
  br label %batadv_neigh_ifinfo_put.exit.i.i.i

batadv_neigh_ifinfo_put.exit.i.i.i:               ; preds = %if.then.i.i.i.i.i, %if.then10.i.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.i.batadv_neigh_ifinfo_put.exit.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = ptrtoint ptr %last_seen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %last_seen.i.i.i, align 4
  %sub.i.i.i = sub i32 %31, %33
  %call2.i.i.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i.i.i) #9
  br i1 %cmp.not.i.i.i, label %batadv_neigh_ifinfo_put.exit.i.i.i.if.end5.i.i.i_crit_edge, label %land.lhs.true.i.i.i

batadv_neigh_ifinfo_put.exit.i.i.i.if.end5.i.i.i_crit_edge: ; preds = %batadv_neigh_ifinfo_put.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i.i

land.lhs.true.i.i.i:                              ; preds = %batadv_neigh_ifinfo_put.exit.i.i.i
  %if_incoming.i.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.025.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %if_incoming.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %if_incoming.i.i.i, align 4
  %cmp3.not.i.i.i = icmp eq ptr %35, %if_outgoing
  br i1 %cmp3.not.i.i.i, label %land.lhs.true.i.i.i.if.end5.i.i.i_crit_edge, label %land.lhs.true.i.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i.i.if.end5.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.end5.i.i.i_crit_edge, %batadv_neigh_ifinfo_put.exit.i.i.i.if.end5.i.i.i_crit_edge
  %call6.i.i.i = call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %12, i32 noundef %20, ptr noundef nonnull @batadv_netlink_family, i32 noundef 2, i8 noundef zeroext 8) #9
  %tobool7.not.i.i.i = icmp eq ptr %call6.i.i.i, null
  br i1 %tobool7.not.i.i.i, label %if.end5.i.i.i.if.end.i.i.i_crit_edge, label %if.end9.i.i.i

if.end5.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.end9.i.i.i:                                    ; preds = %if.end5.i.i.i
  %call10.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 9, i32 noundef 6, ptr noundef nonnull %orig_node.046.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end9.i.i.i.if.then.i.i.i.i_crit_edge

if.end9.i.i.i.if.then.i.i.i.i_crit_edge:          ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end9.i.i.i
  %addr.i.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.025.i.i, i32 0, i32 2
  %call13.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 24, i32 noundef 6, ptr noundef %addr.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i.i)
  %tobool14.not.i.i.i = icmp eq i32 %call13.i.i.i, 0
  br i1 %tobool14.not.i.i.i, label %lor.lhs.false15.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then.i.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

lor.lhs.false15.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %if_incoming16.i.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node.025.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %if_incoming16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %if_incoming16.i.i.i, align 4
  %net_dev.i.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net_dev.i.i.i, align 4
  %call.i.i.i.i = call i32 @strlen(ptr noundef %39) #12
  %add.i.i.i7.i = add i32 %call.i.i.i.i, 1
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 7, i32 noundef %add.i.i.i7.i, ptr noundef %39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool19.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool19.not.i.i.i, label %lor.lhs.false20.i.i.i, label %lor.lhs.false15.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false15.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false15.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

lor.lhs.false20.i.i.i:                            ; preds = %lor.lhs.false15.i.i.i
  %40 = ptrtoint ptr %if_incoming16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %if_incoming16.i.i.i, align 4
  %net_dev22.i.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %net_dev22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net_dev22.i.i.i, align 4
  %ifindex.i.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 17
  %44 = ptrtoint ptr %ifindex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ifindex.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #9
  %46 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tmp.i.i.i.i, align 4
  %call.i1.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %call.i1.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %lor.lhs.false25.i.i.i, label %lor.lhs.false20.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false20.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

lor.lhs.false25.i.i.i:                            ; preds = %lor.lhs.false20.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i2.i.i.i) #9
  %47 = ptrtoint ptr %tmp.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul.i.i.i, ptr %tmp.i2.i.i.i, align 4
  %call.i3.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 26, i32 noundef 4, ptr noundef nonnull %tmp.i2.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i2.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i.i.i)
  %tobool27.not.i.i.i = icmp eq i32 %call.i3.i.i.i, 0
  br i1 %tobool27.not.i.i.i, label %lor.lhs.false28.i.i.i, label %lor.lhs.false25.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false25.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false25.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

lor.lhs.false28.i.i.i:                            ; preds = %lor.lhs.false25.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i4.i.i.i) #9
  %48 = ptrtoint ptr %tmp.i4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call2.i.i.i, ptr %tmp.i4.i.i.i, align 4
  %call.i5.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 23, i32 noundef 4, ptr noundef nonnull %tmp.i4.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i4.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %call.i5.i.i.i, 0
  br i1 %tobool30.not.i.i.i, label %if.end32.i.i.i, label %lor.lhs.false28.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false28.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false28.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

if.end32.i.i.i:                                   ; preds = %lor.lhs.false28.i.i.i
  br i1 %cmp19.i.i, label %land.lhs.true34.i.i.i, label %if.end32.i.i.i.if.end38.i.i.i_crit_edge

if.end32.i.i.i.if.end38.i.i.i_crit_edge:          ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i.i.i

land.lhs.true34.i.i.i:                            ; preds = %if.end32.i.i.i
  %call.i6.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 22, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool36.not.i.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool36.not.i.i.i, label %land.lhs.true34.i.i.i.if.end38.i.i.i_crit_edge, label %land.lhs.true34.i.i.i.if.then.i.i.i.i_crit_edge

land.lhs.true34.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %land.lhs.true34.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

land.lhs.true34.i.i.i.if.end38.i.i.i_crit_edge:   ; preds = %land.lhs.true34.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i.i.i

if.end38.i.i.i:                                   ; preds = %land.lhs.true34.i.i.i.if.end38.i.i.i_crit_edge, %if.end32.i.i.i.if.end38.i.i.i_crit_edge
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %call6.i.i.i, i32 -20
  %49 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tail.i.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %51 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.ptr.sub.i.i.i.i.i, ptr %add.ptr1.i.i.i.i, align 4
  br label %for.inc.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true34.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false28.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false25.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false20.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false15.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then.i.i.i.i_crit_edge, %if.end9.i.i.i.if.then.i.i.i.i_crit_edge
  %add.ptr1.i8.i.i.i = getelementptr i8, ptr %call6.i.i.i, i32 -20
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %add.ptr1.i8.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %52 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i.i = icmp ugt ptr %53, %add.ptr1.i8.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %do.end.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge, !prof !61

if.then.i.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i.i.i

do.end.i.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.end.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge
  %54 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i.i = ptrtoint ptr %add.ptr1.i8.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i.i.i = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i.i.i.i) #9
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i_crit_edge, %if.end5.i.i.i.if.end.i.i.i_crit_edge
  %refcount.i.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call.i3.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #9
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i4.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.if.then17.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !56

if.end5.i.i.i.i.i.i.i.if.then17.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef 3) #9
  br label %if.then17.i

if.then.i.i4.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @batadv_neigh_node_release(ptr noundef %refcount.i.i.i) #9, !callees !58
  br label %if.then17.i

for.inc.i.i:                                      ; preds = %if.end38.i.i.i, %land.lhs.true.i.i.i.for.inc.i.i_crit_edge, %if.end18.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %57 = ptrtoint ptr %neigh_node.025.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %neigh_node.0.i.i = load volatile ptr, ptr %neigh_node.025.i.i, align 4
  %tobool16.not.i.i = icmp eq ptr %neigh_node.0.i.i, null
  br i1 %tobool16.not.i.i, label %for.inc.i.i.if.end.i10.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.end.i10.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i10.i.i

if.end.i10.i.i:                                   ; preds = %for.inc.i.i.if.end.i10.i.i_crit_edge, %do.end.i.i.if.end.i10.i.i_crit_edge
  %refcount.i6.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call.i3.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i7.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i6.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  call void @llvm.prefetch.p0(ptr %refcount.i6.i.i, i32 1, i32 3, i32 1) #9
  %58 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i6.i.i, ptr %refcount.i6.i.i, i32 1, ptr elementtype(i32) %refcount.i6.i.i) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i8.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i8.i.i)
  %cmp.i.i.i.i.i9.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i8.i.i, 1
  br i1 %cmp.i.i.i.i.i9.i.i, label %if.then.i.i14.i.i, label %if.end5.i.i.i.i.i12.i.i

if.end5.i.i.i.i.i12.i.i:                          ; preds = %if.end.i10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i8.i.i)
  %.not.i.i.i.i.i11.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i8.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i, label %if.end5.i.i.i.i.i12.i.i.for.inc.i_crit_edge, label %if.then10.i.i.i.i.i13.i.i, !prof !56

if.end5.i.i.i.i.i12.i.i.for.inc.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then10.i.i.i.i.i13.i.i:                        ; preds = %if.end5.i.i.i.i.i12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i6.i.i, i32 noundef 3) #9
  br label %for.inc.i

if.then.i.i14.i.i:                                ; preds = %if.end.i10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @batadv_neigh_node_release(ptr noundef %refcount.i6.i.i) #9, !callees !58
  br label %for.inc.i

if.then17.i:                                      ; preds = %if.then.i.i4.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.if.then17.i_crit_edge
  %call.i8.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i8.i, label %if.then17.i.batadv_v_orig_dump_bucket.exit_crit_edge, label %land.lhs.true.i11.i

if.then17.i.batadv_v_orig_dump_bucket.exit_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_orig_dump_bucket.exit

land.lhs.true.i11.i:                              ; preds = %if.then17.i
  %call1.i9.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call1.i9.i, 0
  br i1 %tobool.not.i10.i, label %land.lhs.true.i11.i.batadv_v_orig_dump_bucket.exit_crit_edge, label %land.lhs.true2.i13.i

land.lhs.true.i11.i.batadv_v_orig_dump_bucket.exit_crit_edge: ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_orig_dump_bucket.exit

land.lhs.true2.i13.i:                             ; preds = %land.lhs.true.i11.i
  %.b4.i12.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12.i, label %land.lhs.true2.i13.i.batadv_v_orig_dump_bucket.exit_crit_edge, label %if.then.i14.i

land.lhs.true2.i13.i.batadv_v_orig_dump_bucket.exit_crit_edge: ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_orig_dump_bucket.exit

if.then.i14.i:                                    ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #9
  br label %batadv_v_orig_dump_bucket.exit

for.inc.i:                                        ; preds = %if.then.i.i14.i.i, %if.then10.i.i.i.i.i13.i.i, %if.end5.i.i.i.i.i12.i.i.for.inc.i_crit_edge, %if.end14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %sub.2 = phi i32 [ %sub.1, %for.body.i.for.inc.i_crit_edge ], [ 0, %if.then.i.i14.i.i ], [ 0, %if.then10.i.i.i.i.i13.i.i ], [ 0, %if.end5.i.i.i.i.i12.i.i.for.inc.i_crit_edge ], [ 0, %if.end14.i.for.inc.i_crit_edge ]
  %hash_entry.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.046.i, i32 0, i32 24
  %59 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %hash_entry.i, align 4
  %tobool27.not.i = icmp eq ptr %60, null
  %add.ptr31.i = getelementptr i8, ptr %60, i32 -284
  %tobool12.not69.i = icmp eq ptr %add.ptr31.i, null
  %tobool12.not.i = or i1 %tobool27.not.i, %tobool12.not69.i
  br i1 %tobool12.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i18.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i18.i, label %for.end.i.if.end_crit_edge, label %land.lhs.true.i21.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i21.i:                              ; preds = %for.end.i
  %call1.i19.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call1.i19.i, 0
  br i1 %tobool.not.i20.i, label %land.lhs.true.i21.i.if.end_crit_edge, label %land.lhs.true2.i23.i

land.lhs.true.i21.i.if.end_crit_edge:             ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true2.i23.i:                             ; preds = %land.lhs.true.i21.i
  %.b4.i22.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i, label %land.lhs.true2.i23.i.if.end_crit_edge, label %if.then.i24.i

land.lhs.true2.i23.i.if.end_crit_edge:            ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i24.i:                                    ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #9
  br label %if.end

batadv_v_orig_dump_bucket.exit:                   ; preds = %if.then.i14.i, %land.lhs.true2.i13.i.batadv_v_orig_dump_bucket.exit_crit_edge, %land.lhs.true.i11.i.batadv_v_orig_dump_bucket.exit_crit_edge, %if.then17.i.batadv_v_orig_dump_bucket.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !60
  %61 = call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i.i.i15.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i15.i to ptr
  %preempt_count.i.i.i.i16.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i16.i, align 4
  %sub.i.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i16.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %while.end

if.end:                                           ; preds = %if.then.i24.i, %land.lhs.true2.i23.i.if.end_crit_edge, %land.lhs.true.i21.i.if.end_crit_edge, %for.end.i.if.end_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !60
  %65 = call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i.i.i25.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i25.i to ptr
  %preempt_count.i.i.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i26.i, align 4
  %sub.i.i.i27.i = add i32 %68, -1
  store volatile i32 %sub.i.i.i27.i, ptr %preempt_count.i.i.i.i26.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %inc = add nuw i32 %bucket.049, 1
  %69 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %70
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %batadv_v_orig_dump_bucket.exit, %entry.while.end_crit_edge
  %bucket.040 = phi i32 [ %bucket.049, %batadv_v_orig_dump_bucket.exit ], [ %4, %entry.while.end_crit_edge ], [ %inc, %if.end.while.end_crit_edge ]
  %idx.2 = phi i32 [ %idx.045.i, %batadv_v_orig_dump_bucket.exit ], [ %6, %entry.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ]
  %sub.4 = phi i32 [ %sub.024.i.i, %batadv_v_orig_dump_bucket.exit ], [ %8, %entry.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ]
  %71 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %bucket.040, ptr %2, align 4
  %72 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %idx.2, ptr %arrayidx1, align 4
  %73 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub.4, ptr %arrayidx2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_v_init_sel_class(ptr noundef %bat_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sel_class = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sel_class, i32 noundef 4) #9
  %0 = ptrtoint ptr %sel_class to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 50, ptr %sel_class, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_v_store_sel_class(ptr noundef %bat_priv, ptr noundef %buff, i32 noundef %count) #0 align 64 {
entry:
  %class = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %class) #9
  %0 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %class, align 4, !annotation !62
  %soft_iface = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %1 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %soft_iface, align 4
  %call = call zeroext i1 @batadv_parse_throughput(ptr noundef %2, ptr noundef %buff, ptr noundef nonnull @.str.14, ptr noundef nonnull %class) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sel_class = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sel_class, i32 noundef 4) #9
  %3 = ptrtoint ptr %sel_class to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sel_class, align 4
  %5 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %class, align 4
  %call.i.i10 = call zeroext i1 @__kasan_check_write(ptr noundef %sel_class, i32 noundef 4) #9
  %7 = ptrtoint ptr %sel_class to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %6, ptr %sel_class, align 4
  %8 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %class, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %9)
  %cmp.not = icmp eq i32 %4, %9
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @batadv_gw_reselect(ptr noundef %bat_priv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.then4 ], [ %count, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %class) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @batadv_v_gw_get_best_gw_node(ptr noundef %bat_priv) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  %bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bw) #9
  %0 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bw, align 4, !annotation !62
  %1 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b53 = load i1, ptr @batadv_v_gw_get_best_gw_node.__warned, align 1
  br i1 %.b53, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @batadv_v_gw_get_best_gw_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 588, ptr noundef nonnull @.str.12) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %gw = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35
  %5 = ptrtoint ptr %gw to i32
  call void @__asan_load4_noabort(i32 %5)
  %gw_node.080 = load volatile ptr, ptr %gw, align 4
  %tobool12.not81 = icmp eq ptr %gw_node.080, null
  br i1 %tobool12.not81, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %gw_node.084 = phi ptr [ %gw_node.0, %for.inc.for.body_crit_edge ], [ %gw_node.080, %do.end.for.body_crit_edge ]
  %curr_gw.083 = phi ptr [ %curr_gw.2, %for.inc.for.body_crit_edge ], [ null, %do.end.for.body_crit_edge ]
  %max_bw.082 = phi i32 [ %max_bw.2, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %refcount = getelementptr inbounds %struct.batadv_gw_node, ptr %gw_node.084, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
  %6 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %for.body
  %8 = phi i32 [ %7, %for.body ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #9
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #9, !srcloc !63
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !56

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !56

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #9
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %if.end16

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end16:                                         ; preds = %kref_get_unless_zero.exit
  %call17 = call fastcc i32 @batadv_v_gw_throughput_get(ptr noundef nonnull %gw_node.084, ptr noundef nonnull %bw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end16.if.end.i65_crit_edge, label %if.end19

if.end16.if.end.i65_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i65

if.end19:                                         ; preds = %if.end16
  %tobool20.not = icmp eq ptr %curr_gw.083, null
  br i1 %tobool20.not, label %if.end19.batadv_gw_node_put.exit_crit_edge, label %land.lhs.true21

if.end19.batadv_gw_node_put.exit_crit_edge:       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_gw_node_put.exit

land.lhs.true21:                                  ; preds = %if.end19
  %18 = ptrtoint ptr %bw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %max_bw.082)
  %cmp22.not = icmp ugt i32 %19, %max_bw.082
  br i1 %cmp22.not, label %if.end.i, label %land.lhs.true21.if.end.i65_crit_edge

land.lhs.true21.if.end.i65_crit_edge:             ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i65

if.end.i:                                         ; preds = %land.lhs.true21
  %refcount.i = getelementptr inbounds %struct.batadv_gw_node, ptr %curr_gw.083, i32 0, i32 4
  %call.i.i.i.i.i.i.i56 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %20 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_gw_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !56

if.end5.i.i.i.i.i.batadv_gw_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_gw_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %batadv_gw_node_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @batadv_gw_node_release(ptr noundef %refcount.i) #9, !callees !58
  br label %batadv_gw_node_put.exit

batadv_gw_node_put.exit:                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_gw_node_put.exit_crit_edge, %if.end19.batadv_gw_node_put.exit_crit_edge
  %call.i.i.i.i.i.i57 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %21 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !64
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %batadv_gw_node_put.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !61

batadv_gw_node_put.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %batadv_gw_node_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %batadv_gw_node_put.exit
  %add.i.i.i.i58 = add i32 %asmresult.i.i.i.i.i.i, 1
  %22 = or i32 %add.i.i.i.i58, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i59 = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i59, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !56

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %batadv_gw_node_put.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %batadv_gw_node_put.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %23 = ptrtoint ptr %bw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bw, align 4
  br label %if.end.i65

if.end.i65:                                       ; preds = %kref_get.exit, %land.lhs.true21.if.end.i65_crit_edge, %if.end16.if.end.i65_crit_edge
  %max_bw.1 = phi i32 [ %max_bw.082, %if.end16.if.end.i65_crit_edge ], [ %max_bw.082, %land.lhs.true21.if.end.i65_crit_edge ], [ %24, %kref_get.exit ]
  %curr_gw.1 = phi ptr [ %curr_gw.083, %if.end16.if.end.i65_crit_edge ], [ %curr_gw.083, %land.lhs.true21.if.end.i65_crit_edge ], [ %gw_node.084, %kref_get.exit ]
  %call.i.i.i.i.i.i.i62 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i63 = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i63)
  %cmp.i.i.i.i.i64 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i63, 1
  br i1 %cmp.i.i.i.i.i64, label %if.then.i.i69, label %if.end5.i.i.i.i.i67

if.end5.i.i.i.i.i67:                              ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i63)
  %.not.i.i.i.i.i66 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i63, 0
  br i1 %.not.i.i.i.i.i66, label %if.end5.i.i.i.i.i67.for.inc_crit_edge, label %if.then10.i.i.i.i.i68, !prof !56

if.end5.i.i.i.i.i67.for.inc_crit_edge:            ; preds = %if.end5.i.i.i.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then10.i.i.i.i.i68:                            ; preds = %if.end5.i.i.i.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %for.inc

if.then.i.i69:                                    ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @batadv_gw_node_release(ptr noundef %refcount) #9, !callees !58
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i69, %if.then10.i.i.i.i.i68, %if.end5.i.i.i.i.i67.for.inc_crit_edge, %kref_get_unless_zero.exit.for.inc_crit_edge
  %max_bw.2 = phi i32 [ %max_bw.082, %kref_get_unless_zero.exit.for.inc_crit_edge ], [ %max_bw.1, %if.end5.i.i.i.i.i67.for.inc_crit_edge ], [ %max_bw.1, %if.then10.i.i.i.i.i68 ], [ %max_bw.1, %if.then.i.i69 ]
  %curr_gw.2 = phi ptr [ %curr_gw.083, %kref_get_unless_zero.exit.for.inc_crit_edge ], [ %curr_gw.1, %if.end5.i.i.i.i.i67.for.inc_crit_edge ], [ %curr_gw.1, %if.then10.i.i.i.i.i68 ], [ %curr_gw.1, %if.then.i.i69 ]
  %26 = ptrtoint ptr %gw_node.084 to i32
  call void @__asan_load4_noabort(i32 %26)
  %gw_node.0 = load volatile ptr, ptr %gw_node.084, align 4
  %tobool12.not = icmp eq ptr %gw_node.0, null
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %curr_gw.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %curr_gw.2, %for.inc.for.end_crit_edge ]
  %call.i71 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i71, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i74

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i74:                                ; preds = %for.end
  %call1.i72 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i72)
  %tobool.not.i73 = icmp eq i32 %call1.i72, 0
  br i1 %tobool.not.i73, label %land.lhs.true.i74.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i76

land.lhs.true.i74.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i76:                               ; preds = %land.lhs.true.i74
  %.b4.i75 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i75, label %land.lhs.true2.i76.rcu_read_unlock.exit_crit_edge, label %if.then.i77

land.lhs.true2.i76.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i77:                                      ; preds = %land.lhs.true2.i76
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i77, %land.lhs.true2.i76.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i74.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !60
  %27 = call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i.i.i78 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i78 to ptr
  %preempt_count.i.i.i.i79 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i79, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i79, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bw) #9
  ret ptr %curr_gw.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @batadv_v_gw_is_eligible(ptr noundef %bat_priv, ptr noundef %curr_gw_orig, ptr noundef %orig_node) #0 align 64 {
entry:
  %gw_throughput = alloca i32, align 4
  %orig_throughput = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gw_throughput) #9
  %0 = ptrtoint ptr %gw_throughput to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %gw_throughput, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig_throughput) #9
  %1 = ptrtoint ptr %orig_throughput to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %orig_throughput, align 4, !annotation !62
  %sel_class = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sel_class, i32 noundef 4) #9
  %2 = ptrtoint ptr %sel_class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sel_class, align 4
  %call1 = tail call ptr @batadv_gw_node_get(ptr noundef %bat_priv, ptr noundef %curr_gw_orig) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.batadv_gw_node_put.exit45_crit_edge, label %if.end

entry.batadv_gw_node_put.exit45_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_gw_node_put.exit45

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @batadv_v_gw_throughput_get(ptr noundef nonnull %call1, ptr noundef nonnull %gw_throughput)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.if.end.i_crit_edge, label %if.end4

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @batadv_gw_node_get(ptr noundef %bat_priv, ptr noundef %orig_node) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.if.end.i_crit_edge, label %if.end8

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end8:                                          ; preds = %if.end4
  %call9 = call fastcc i32 @batadv_v_gw_throughput_get(ptr noundef nonnull %call5, ptr noundef nonnull %orig_throughput)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.if.end.i_crit_edge, label %if.end12

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end12:                                         ; preds = %if.end8
  %4 = ptrtoint ptr %orig_throughput to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %orig_throughput, align 4
  %6 = ptrtoint ptr %gw_throughput to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gw_throughput, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp13 = icmp ult i32 %5, %7
  %sub = sub i32 %5, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %3)
  %cmp16 = icmp ult i32 %sub, %3
  %or.cond = select i1 %cmp13, i1 true, i1 %cmp16
  br i1 %or.cond, label %if.end12.if.end.i_crit_edge, label %do.body

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.body:                                          ; preds = %if.end12
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i34 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #9
  %8 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %do.body.if.end.i_crit_edge, label %if.then21

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef %5) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then21, %do.body.if.end.i_crit_edge, %if.end12.if.end.i_crit_edge, %if.end8.if.end.i_crit_edge, %if.end4.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %orig_gw.0.ph = phi ptr [ %call5, %do.body.if.end.i_crit_edge ], [ %call5, %if.then21 ], [ null, %if.end.if.end.i_crit_edge ], [ null, %if.end4.if.end.i_crit_edge ], [ %call5, %if.end12.if.end.i_crit_edge ], [ %call5, %if.end8.if.end.i_crit_edge ]
  %ret.0.off0.ph = phi i1 [ true, %do.body.if.end.i_crit_edge ], [ true, %if.then21 ], [ true, %if.end.if.end.i_crit_edge ], [ false, %if.end4.if.end.i_crit_edge ], [ false, %if.end12.if.end.i_crit_edge ], [ false, %if.end8.if.end.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_gw_node, ptr %call1, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_gw_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !56

if.end5.i.i.i.i.i.batadv_gw_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_gw_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %batadv_gw_node_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  tail call void @batadv_gw_node_release(ptr noundef %refcount.i) #9, !callees !58
  br label %batadv_gw_node_put.exit

batadv_gw_node_put.exit:                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_gw_node_put.exit_crit_edge
  %tobool.not.i35 = icmp eq ptr %orig_gw.0.ph, null
  br i1 %tobool.not.i35, label %batadv_gw_node_put.exit.batadv_gw_node_put.exit45_crit_edge, label %if.end.i40

batadv_gw_node_put.exit.batadv_gw_node_put.exit45_crit_edge: ; preds = %batadv_gw_node_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_gw_node_put.exit45

if.end.i40:                                       ; preds = %batadv_gw_node_put.exit
  %refcount.i36 = getelementptr inbounds %struct.batadv_gw_node, ptr %orig_gw.0.ph, i32 0, i32 4
  %call.i.i.i.i.i.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i36, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcount.i36, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i36, ptr %refcount.i36, i32 1, ptr elementtype(i32) %refcount.i36) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i38 = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i38)
  %cmp.i.i.i.i.i39 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i38, 1
  br i1 %cmp.i.i.i.i.i39, label %if.then.i.i44, label %if.end5.i.i.i.i.i42

if.end5.i.i.i.i.i42:                              ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i38)
  %.not.i.i.i.i.i41 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i38, 0
  br i1 %.not.i.i.i.i.i41, label %if.end5.i.i.i.i.i42.batadv_gw_node_put.exit45_crit_edge, label %if.then10.i.i.i.i.i43, !prof !56

if.end5.i.i.i.i.i42.batadv_gw_node_put.exit45_crit_edge: ; preds = %if.end5.i.i.i.i.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_gw_node_put.exit45

if.then10.i.i.i.i.i43:                            ; preds = %if.end5.i.i.i.i.i42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i36, i32 noundef 3) #9
  br label %batadv_gw_node_put.exit45

if.then.i.i44:                                    ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  tail call void @batadv_gw_node_release(ptr noundef %refcount.i36) #9, !callees !58
  br label %batadv_gw_node_put.exit45

batadv_gw_node_put.exit45:                        ; preds = %if.then.i.i44, %if.then10.i.i.i.i.i43, %if.end5.i.i.i.i.i42.batadv_gw_node_put.exit45_crit_edge, %batadv_gw_node_put.exit.batadv_gw_node_put.exit45_crit_edge, %entry.batadv_gw_node_put.exit45_crit_edge
  %ret.0.off05155 = phi i1 [ %ret.0.off0.ph, %batadv_gw_node_put.exit.batadv_gw_node_put.exit45_crit_edge ], [ %ret.0.off0.ph, %if.end5.i.i.i.i.i42.batadv_gw_node_put.exit45_crit_edge ], [ %ret.0.off0.ph, %if.then10.i.i.i.i.i43 ], [ %ret.0.off0.ph, %if.then.i.i44 ], [ true, %entry.batadv_gw_node_put.exit45_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig_throughput) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gw_throughput) #9
  ret i1 %ret.0.off05155
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_v_gw_dump(ptr noundef %msg, ptr nocapture noundef %cb, ptr noundef %bat_priv) #0 align 64 {
entry:
  %tmp.i120.i = alloca i32, align 4
  %tmp.i118.i = alloca i32, align 4
  %tmp.i116.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #9
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
  %gw_node.0107 = load ptr, ptr %gw, align 4
  %tobool6.not108 = icmp eq ptr %gw_node.0107, null
  br i1 %tobool6.not108, label %entry.unlock_crit_edge, label %for.body.lr.ph

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

for.body.lr.ph:                                   ; preds = %entry
  %nlh.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %prev_seq.i.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %gw_node.0110 = phi ptr [ %gw_node.0107, %for.body.lr.ph ], [ %gw_node.0, %for.inc.for.body_crit_edge ]
  %idx.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %inc = add i32 %idx.0109, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0109, i32 %6)
  %cmp = icmp slt i32 %idx.0109, %6
  br i1 %cmp, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %orig_node.i = getelementptr inbounds %struct.batadv_gw_node, ptr %gw_node.0110, i32 0, i32 1
  %11 = ptrtoint ptr %orig_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %orig_node.i, align 4
  %call.i = call ptr @batadv_orig_router_get(ptr noundef %12, ptr noundef null) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.for.inc_crit_edge, label %if.end.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i:                                         ; preds = %if.end
  %call1.i = call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %call.i, ptr noundef null) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end.i140.i_crit_edge, label %if.end4.i

if.end.i.if.end.i140.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i140.i

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call ptr @batadv_gw_get_selected_gw_node(ptr noundef %bat_priv) #9
  %13 = ptrtoint ptr %nlh.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nlh.i, align 4
  %nlmsg_seq.i = getelementptr inbounds %struct.nlmsghdr, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nlmsg_seq.i, align 4
  %call6.i = call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %3, i32 noundef %16, ptr noundef nonnull @batadv_netlink_family, i32 noundef 2, i8 noundef zeroext 10) #9
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end4.i.out.i_crit_edge, label %if.end9.i

if.end4.i.out.i_crit_edge:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end9.i:                                        ; preds = %if.end4.i
  %17 = ptrtoint ptr %prev_seq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prev_seq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i, label %if.end9.i.genl_dump_check_consistent.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end9.i.genl_dump_check_consistent.exit.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %genl_dump_check_consistent.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end9.i
  %19 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp.not.i.i.i = icmp eq i32 %20, %18
  br i1 %cmp.not.i.i.i, label %land.lhs.true.i.i.i.genl_dump_check_consistent.exit.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.genl_dump_check_consistent.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %genl_dump_check_consistent.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
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
  %cmp.i = icmp eq ptr %call5.i, %gw_node.0110
  br i1 %cmp.i, label %if.then10.i, label %genl_dump_check_consistent.exit.i.if.end15.i_crit_edge

genl_dump_check_consistent.exit.i.if.end15.i_crit_edge: ; preds = %genl_dump_check_consistent.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then10.i:                                      ; preds = %genl_dump_check_consistent.exit.i
  %call.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 22, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i, label %if.then10.i.if.end15.i_crit_edge, label %if.then.i.i

if.then10.i.if.end15.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then.i.i:                                      ; preds = %if.then10.i
  %add.ptr1.i.i = getelementptr i8, ptr %call6.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.out.i_crit_edge, label %if.then.i.i.i.i

if.then.i.i.out.i_crit_edge:                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %27 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %28, %add.ptr1.i.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !61

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %29 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i.i) #9
  br label %out.i

if.end15.i:                                       ; preds = %if.then10.i.if.end15.i_crit_edge, %genl_dump_check_consistent.exit.i.if.end15.i_crit_edge
  %31 = ptrtoint ptr %orig_node.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %orig_node.i, align 4
  %call17.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 9, i32 noundef 6, ptr noundef %32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.then.i92.i

if.then.i92.i:                                    ; preds = %if.end15.i
  %add.ptr1.i90.i = getelementptr i8, ptr %call6.i, i32 -20
  %tobool.not.i.i.i91.i = icmp eq ptr %add.ptr1.i90.i, null
  br i1 %tobool.not.i.i.i91.i, label %if.then.i92.i.out.i_crit_edge, label %if.then.i.i.i95.i

if.then.i92.i.out.i_crit_edge:                    ; preds = %if.then.i92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then.i.i.i95.i:                                ; preds = %if.then.i92.i
  %33 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i94.i = icmp ugt ptr %34, %add.ptr1.i90.i
  br i1 %cmp.i.i.i94.i, label %do.end.i.i.i96.i, label %if.then.i.i.i95.i.if.end.i.i.i100.i_crit_edge, !prof !61

if.then.i.i.i95.i.if.end.i.i.i100.i_crit_edge:    ; preds = %if.then.i.i.i95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i100.i

do.end.i.i.i96.i:                                 ; preds = %if.then.i.i.i95.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i.i100.i

if.end.i.i.i100.i:                                ; preds = %do.end.i.i.i96.i, %if.then.i.i.i95.i.if.end.i.i.i100.i_crit_edge
  %35 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i97.i = ptrtoint ptr %add.ptr1.i90.i to i32
  %sub.ptr.rhs.cast.i.i.i98.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i.i99.i = sub i32 %sub.ptr.lhs.cast.i.i.i97.i, %sub.ptr.rhs.cast.i.i.i98.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i99.i) #9
  br label %out.i

if.end20.i:                                       ; preds = %if.end15.i
  %bat_v.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call1.i, i32 0, i32 3
  %37 = ptrtoint ptr %bat_v.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bat_v.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #9
  %39 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tmp.i.i, align 4
  %call.i102.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 26, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102.i)
  %tobool22.not.i = icmp eq i32 %call.i102.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.then.i106.i

if.then.i106.i:                                   ; preds = %if.end20.i
  %add.ptr1.i104.i = getelementptr i8, ptr %call6.i, i32 -20
  %tobool.not.i.i.i105.i = icmp eq ptr %add.ptr1.i104.i, null
  br i1 %tobool.not.i.i.i105.i, label %if.then.i106.i.out.i_crit_edge, label %if.then.i.i.i109.i

if.then.i106.i.out.i_crit_edge:                   ; preds = %if.then.i106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then.i.i.i109.i:                               ; preds = %if.then.i106.i
  %40 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i108.i = icmp ugt ptr %41, %add.ptr1.i104.i
  br i1 %cmp.i.i.i108.i, label %do.end.i.i.i110.i, label %if.then.i.i.i109.i.if.end.i.i.i114.i_crit_edge, !prof !61

if.then.i.i.i109.i.if.end.i.i.i114.i_crit_edge:   ; preds = %if.then.i.i.i109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i114.i

do.end.i.i.i110.i:                                ; preds = %if.then.i.i.i109.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i.i114.i

if.end.i.i.i114.i:                                ; preds = %do.end.i.i.i110.i, %if.then.i.i.i109.i.if.end.i.i.i114.i_crit_edge
  %42 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i111.i = ptrtoint ptr %add.ptr1.i104.i to i32
  %sub.ptr.rhs.cast.i.i.i112.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i.i.i113.i = sub i32 %sub.ptr.lhs.cast.i.i.i111.i, %sub.ptr.rhs.cast.i.i.i112.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i113.i) #9
  br label %out.i

if.end24.i:                                       ; preds = %if.end20.i
  %addr.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call.i, i32 0, i32 2
  %call26.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 29, i32 noundef 6, ptr noundef %addr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.then.i94

if.then.i94:                                      ; preds = %if.end24.i
  %add.ptr1.i92 = getelementptr i8, ptr %call6.i, i32 -20
  %tobool.not.i.i.i93 = icmp eq ptr %add.ptr1.i92, null
  br i1 %tobool.not.i.i.i93, label %if.then.i94.out.i_crit_edge, label %if.then.i.i.i97

if.then.i94.out.i_crit_edge:                      ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then.i.i.i97:                                  ; preds = %if.then.i94
  %44 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i96 = icmp ugt ptr %45, %add.ptr1.i92
  br i1 %cmp.i.i.i96, label %do.end.i.i.i98, label %if.then.i.i.i97.if.end.i.i.i102_crit_edge, !prof !61

if.then.i.i.i97.if.end.i.i.i102_crit_edge:        ; preds = %if.then.i.i.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i102

do.end.i.i.i98:                                   ; preds = %if.then.i.i.i97
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i.i102

if.end.i.i.i102:                                  ; preds = %do.end.i.i.i98, %if.then.i.i.i97.if.end.i.i.i102_crit_edge
  %46 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i99 = ptrtoint ptr %add.ptr1.i92 to i32
  %sub.ptr.rhs.cast.i.i.i100 = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i.i.i101 = sub i32 %sub.ptr.lhs.cast.i.i.i99, %sub.ptr.rhs.cast.i.i.i100
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i101) #9
  br label %out.i

if.end29.i:                                       ; preds = %if.end24.i
  %if_incoming.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call.i, i32 0, i32 5
  %48 = ptrtoint ptr %if_incoming.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %if_incoming.i, align 4
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net_dev.i, align 4
  %call.i89 = call i32 @strlen(ptr noundef %51) #12
  %add.i = add i32 %call.i89, 1
  %call1.i90 = call i32 @nla_put(ptr noundef %msg, i32 noundef 7, i32 noundef %add.i, ptr noundef %51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i90)
  %tobool32.not.i = icmp eq i32 %call1.i90, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.then.i78

if.then.i78:                                      ; preds = %if.end29.i
  %add.ptr1.i76 = getelementptr i8, ptr %call6.i, i32 -20
  %tobool.not.i.i.i77 = icmp eq ptr %add.ptr1.i76, null
  br i1 %tobool.not.i.i.i77, label %if.then.i78.out.i_crit_edge, label %if.then.i.i.i81

if.then.i78.out.i_crit_edge:                      ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then.i.i.i81:                                  ; preds = %if.then.i78
  %52 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i80 = icmp ugt ptr %53, %add.ptr1.i76
  br i1 %cmp.i.i.i80, label %do.end.i.i.i82, label %if.then.i.i.i81.if.end.i.i.i86_crit_edge, !prof !61

if.then.i.i.i81.if.end.i.i.i86_crit_edge:         ; preds = %if.then.i.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i86

do.end.i.i.i82:                                   ; preds = %if.then.i.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i.i86

if.end.i.i.i86:                                   ; preds = %do.end.i.i.i82, %if.then.i.i.i81.if.end.i.i.i86_crit_edge
  %54 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i83 = ptrtoint ptr %add.ptr1.i76 to i32
  %sub.ptr.rhs.cast.i.i.i84 = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i.i.i85 = sub i32 %sub.ptr.lhs.cast.i.i.i83, %sub.ptr.rhs.cast.i.i.i84
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i85) #9
  br label %out.i

if.end34.i:                                       ; preds = %if.end29.i
  %56 = ptrtoint ptr %if_incoming.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %if_incoming.i, align 4
  %net_dev36.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %net_dev36.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net_dev36.i, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 17
  %60 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i116.i) #9
  %62 = ptrtoint ptr %tmp.i116.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %tmp.i116.i, align 4
  %call.i117.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i116.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i116.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117.i)
  %tobool38.not.i = icmp eq i32 %call.i117.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.then.i64

if.then.i64:                                      ; preds = %if.end34.i
  %add.ptr1.i62 = getelementptr i8, ptr %call6.i, i32 -20
  %tobool.not.i.i.i63 = icmp eq ptr %add.ptr1.i62, null
  br i1 %tobool.not.i.i.i63, label %if.then.i64.out.i_crit_edge, label %if.then.i.i.i67

if.then.i64.out.i_crit_edge:                      ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then.i.i.i67:                                  ; preds = %if.then.i64
  %63 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i66 = icmp ugt ptr %64, %add.ptr1.i62
  br i1 %cmp.i.i.i66, label %do.end.i.i.i68, label %if.then.i.i.i67.if.end.i.i.i72_crit_edge, !prof !61

if.then.i.i.i67.if.end.i.i.i72_crit_edge:         ; preds = %if.then.i.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i72

do.end.i.i.i68:                                   ; preds = %if.then.i.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i.i72

if.end.i.i.i72:                                   ; preds = %do.end.i.i.i68, %if.then.i.i.i67.if.end.i.i.i72_crit_edge
  %65 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i69 = ptrtoint ptr %add.ptr1.i62 to i32
  %sub.ptr.rhs.cast.i.i.i70 = ptrtoint ptr %66 to i32
  %sub.ptr.sub.i.i.i71 = sub i32 %sub.ptr.lhs.cast.i.i.i69, %sub.ptr.rhs.cast.i.i.i70
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i71) #9
  br label %out.i

if.end40.i:                                       ; preds = %if.end34.i
  %bandwidth_down.i = getelementptr inbounds %struct.batadv_gw_node, ptr %gw_node.0110, i32 0, i32 2
  %67 = ptrtoint ptr %bandwidth_down.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bandwidth_down.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i118.i) #9
  %69 = ptrtoint ptr %tmp.i118.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %tmp.i118.i, align 4
  %call.i119.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 28, i32 noundef 4, ptr noundef nonnull %tmp.i118.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i118.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119.i)
  %tobool42.not.i = icmp eq i32 %call.i119.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.then.i50

if.then.i50:                                      ; preds = %if.end40.i
  %add.ptr1.i48 = getelementptr i8, ptr %call6.i, i32 -20
  %tobool.not.i.i.i49 = icmp eq ptr %add.ptr1.i48, null
  br i1 %tobool.not.i.i.i49, label %if.then.i50.out.i_crit_edge, label %if.then.i.i.i53

if.then.i50.out.i_crit_edge:                      ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then.i.i.i53:                                  ; preds = %if.then.i50
  %70 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i52 = icmp ugt ptr %71, %add.ptr1.i48
  br i1 %cmp.i.i.i52, label %do.end.i.i.i54, label %if.then.i.i.i53.if.end.i.i.i58_crit_edge, !prof !61

if.then.i.i.i53.if.end.i.i.i58_crit_edge:         ; preds = %if.then.i.i.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i58

do.end.i.i.i54:                                   ; preds = %if.then.i.i.i53
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i.i58

if.end.i.i.i58:                                   ; preds = %do.end.i.i.i54, %if.then.i.i.i53.if.end.i.i.i58_crit_edge
  %72 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i55 = ptrtoint ptr %add.ptr1.i48 to i32
  %sub.ptr.rhs.cast.i.i.i56 = ptrtoint ptr %73 to i32
  %sub.ptr.sub.i.i.i57 = sub i32 %sub.ptr.lhs.cast.i.i.i55, %sub.ptr.rhs.cast.i.i.i56
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i57) #9
  br label %out.i

if.end44.i:                                       ; preds = %if.end40.i
  %bandwidth_up.i = getelementptr inbounds %struct.batadv_gw_node, ptr %gw_node.0110, i32 0, i32 3
  %74 = ptrtoint ptr %bandwidth_up.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bandwidth_up.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i120.i) #9
  %76 = ptrtoint ptr %tmp.i120.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %tmp.i120.i, align 4
  %call.i121.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 27, i32 noundef 4, ptr noundef nonnull %tmp.i120.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i120.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121.i)
  %tobool46.not.i = icmp eq i32 %call.i121.i, 0
  %add.ptr1.i122.i = getelementptr i8, ptr %call6.i, i32 -20
  br i1 %tobool46.not.i, label %if.end48.i, label %if.then.i

if.then.i:                                        ; preds = %if.end44.i
  %tobool.not.i.i.i41 = icmp eq ptr %add.ptr1.i122.i, null
  br i1 %tobool.not.i.i.i41, label %if.then.i.out.i_crit_edge, label %if.then.i.i.i42

if.then.i.out.i_crit_edge:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then.i.i.i42:                                  ; preds = %if.then.i
  %77 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %78, %add.ptr1.i122.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i42.if.end.i.i.i_crit_edge, !prof !61

if.then.i.i.i42.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i42
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i42.if.end.i.i.i_crit_edge
  %79 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i43 = ptrtoint ptr %add.ptr1.i122.i to i32
  %sub.ptr.rhs.cast.i.i.i44 = ptrtoint ptr %80 to i32
  %sub.ptr.sub.i.i.i45 = sub i32 %sub.ptr.lhs.cast.i.i.i43, %sub.ptr.rhs.cast.i.i.i44
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i45) #9
  br label %out.i

if.end48.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %82 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i122.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %83 = ptrtoint ptr %add.ptr1.i122.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i122.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.end48.i, %if.end.i.i.i, %if.then.i.out.i_crit_edge, %if.end.i.i.i58, %if.then.i50.out.i_crit_edge, %if.end.i.i.i72, %if.then.i64.out.i_crit_edge, %if.end.i.i.i86, %if.then.i78.out.i_crit_edge, %if.end.i.i.i102, %if.then.i94.out.i_crit_edge, %if.end.i.i.i114.i, %if.then.i106.i.out.i_crit_edge, %if.end.i.i.i100.i, %if.then.i92.i.out.i_crit_edge, %if.end.i.i.i.i, %if.then.i.i.out.i_crit_edge, %if.end4.i.out.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end48.i ], [ -105, %if.end4.i.out.i_crit_edge ], [ -90, %if.then.i.i.out.i_crit_edge ], [ -90, %if.end.i.i.i.i ], [ -90, %if.then.i92.i.out.i_crit_edge ], [ -90, %if.end.i.i.i100.i ], [ -90, %if.then.i106.i.out.i_crit_edge ], [ -90, %if.end.i.i.i114.i ], [ -90, %if.then.i94.out.i_crit_edge ], [ -90, %if.end.i.i.i102 ], [ -90, %if.then.i78.out.i_crit_edge ], [ -90, %if.end.i.i.i86 ], [ -90, %if.then.i64.out.i_crit_edge ], [ -90, %if.end.i.i.i72 ], [ -90, %if.then.i50.out.i_crit_edge ], [ -90, %if.end.i.i.i58 ], [ -90, %if.then.i.out.i_crit_edge ], [ -90, %if.end.i.i.i ]
  %tobool.not.i123.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i123.i, label %out.i.if.end.i130.i_crit_edge, label %if.end.i.i

out.i.if.end.i130.i_crit_edge:                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i130.i

if.end.i.i:                                       ; preds = %out.i
  %refcount.i.i = getelementptr inbounds %struct.batadv_gw_node, ptr %call5.i, i32 0, i32 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %84 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i124.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end.i130.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !56

if.end5.i.i.i.i.i.i.if.end.i130.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i130.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #9
  br label %if.end.i130.i

if.then.i.i124.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @batadv_gw_node_release(ptr noundef %refcount.i.i) #9, !callees !58
  br label %if.end.i130.i

if.end.i130.i:                                    ; preds = %if.then.i.i124.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end.i130.i_crit_edge, %out.i.if.end.i130.i_crit_edge
  %refcount.i126.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call1.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i127.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i126.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  call void @llvm.prefetch.p0(ptr %refcount.i126.i, i32 1, i32 3, i32 1) #9
  %85 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i126.i, ptr %refcount.i126.i, i32 1, ptr elementtype(i32) %refcount.i126.i) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i128.i = extractvalue { i32, i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i128.i)
  %cmp.i.i.i.i.i129.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i128.i, 1
  br i1 %cmp.i.i.i.i.i129.i, label %if.then.i.i134.i, label %if.end5.i.i.i.i.i132.i

if.end5.i.i.i.i.i132.i:                           ; preds = %if.end.i130.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i128.i)
  %.not.i.i.i.i.i131.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i128.i, 0
  br i1 %.not.i.i.i.i.i131.i, label %if.end5.i.i.i.i.i132.i.if.end.i140.i_crit_edge, label %if.then10.i.i.i.i.i133.i, !prof !56

if.end5.i.i.i.i.i132.i.if.end.i140.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i140.i

if.then10.i.i.i.i.i133.i:                         ; preds = %if.end5.i.i.i.i.i132.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i126.i, i32 noundef 3) #9
  br label %if.end.i140.i

if.then.i.i134.i:                                 ; preds = %if.end.i130.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i126.i) #9, !callees !58
  br label %if.end.i140.i

if.end.i140.i:                                    ; preds = %if.then.i.i134.i, %if.then10.i.i.i.i.i133.i, %if.end5.i.i.i.i.i132.i.if.end.i140.i_crit_edge, %if.end.i.if.end.i140.i_crit_edge
  %ret.0150155.ph.i = phi i32 [ 0, %if.end.i.if.end.i140.i_crit_edge ], [ %ret.0.i, %if.then.i.i134.i ], [ %ret.0.i, %if.then10.i.i.i.i.i133.i ], [ %ret.0.i, %if.end5.i.i.i.i.i132.i.if.end.i140.i_crit_edge ]
  %refcount.i136.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i137.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i136.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  call void @llvm.prefetch.p0(ptr %refcount.i136.i, i32 1, i32 3, i32 1) #9
  %86 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i136.i, ptr %refcount.i136.i, i32 1, ptr elementtype(i32) %refcount.i136.i) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i138.i = extractvalue { i32, i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i138.i)
  %cmp.i.i.i.i.i139.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i138.i, 1
  br i1 %cmp.i.i.i.i.i139.i, label %if.then.i.i144.i, label %if.end5.i.i.i.i.i142.i

if.end5.i.i.i.i.i142.i:                           ; preds = %if.end.i140.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i138.i)
  %.not.i.i.i.i.i141.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i138.i, 0
  br i1 %.not.i.i.i.i.i141.i, label %if.end5.i.i.i.i.i142.i.batadv_v_gw_dump_entry.exit_crit_edge, label %if.then10.i.i.i.i.i143.i, !prof !56

if.end5.i.i.i.i.i142.i.batadv_v_gw_dump_entry.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i142.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_gw_dump_entry.exit

if.then10.i.i.i.i.i143.i:                         ; preds = %if.end5.i.i.i.i.i142.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i136.i, i32 noundef 3) #9
  br label %batadv_v_gw_dump_entry.exit

if.then.i.i144.i:                                 ; preds = %if.end.i140.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @batadv_neigh_node_release(ptr noundef %refcount.i136.i) #9, !callees !58
  br label %batadv_v_gw_dump_entry.exit

batadv_v_gw_dump_entry.exit:                      ; preds = %if.then.i.i144.i, %if.then10.i.i.i.i.i143.i, %if.end5.i.i.i.i.i142.i.batadv_v_gw_dump_entry.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0150155.ph.i)
  %tobool7.not = icmp eq i32 %ret.0150155.ph.i, 0
  br i1 %tobool7.not, label %batadv_v_gw_dump_entry.exit.for.inc_crit_edge, label %batadv_v_gw_dump_entry.exit.unlock_crit_edge

batadv_v_gw_dump_entry.exit.unlock_crit_edge:     ; preds = %batadv_v_gw_dump_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

batadv_v_gw_dump_entry.exit.for.inc_crit_edge:    ; preds = %batadv_v_gw_dump_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %batadv_v_gw_dump_entry.exit.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %87 = ptrtoint ptr %gw_node.0110 to i32
  call void @__asan_load4_noabort(i32 %87)
  %gw_node.0 = load ptr, ptr %gw_node.0110, align 4
  %tobool6.not = icmp eq ptr %gw_node.0, null
  br i1 %tobool6.not, label %for.inc.unlock_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.unlock_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

unlock:                                           ; preds = %for.inc.unlock_crit_edge, %batadv_v_gw_dump_entry.exit.unlock_crit_edge, %entry.unlock_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %entry.unlock_crit_edge ], [ %inc, %for.inc.unlock_crit_edge ], [ %idx.0109, %batadv_v_gw_dump_entry.exit.unlock_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #9
  %88 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %idx.0.lcssa, ptr %4, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv) unnamed_addr #4 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %primary_if = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 29
  %4 = ptrtoint ptr %primary_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %primary_if, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b18 = load i1, ptr @batadv_primary_if_get_selected.__warned, align 1
  br i1 %.b18, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @batadv_primary_if_get_selected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 110, ptr noundef nonnull @.str.6) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.out_crit_edge, label %if.end11

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end11:                                         ; preds = %do.end7
  %refcount = getelementptr inbounds %struct.batadv_hard_iface, ptr %5, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #9
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #9, !srcloc !63
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !56

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !56

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #9
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  %spec.select = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %5
  br label %out

out:                                              ; preds = %kref_get_unless_zero.exit, %do.end7.out_crit_edge
  %hard_iface.0 = phi ptr [ null, %do.end7.out_crit_edge ], [ %spec.select, %kref_get_unless_zero.exit ]
  %call.i19 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i19, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %out
  %call1.i20 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !60
  %18 = call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i.i.i26 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %hard_iface.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_v_elp_iface_activate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_v_elp_iface_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_v_ogm_iface_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_v_elp_iface_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_v_ogm_iface_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_v_elp_primary_iface_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_v_ogm_primary_iface_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_v_elp_throughput_metric_update(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_neigh_ifinfo_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_neigh_ifinfo_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @batadv_v_neigh_dump_hardif(ptr noundef %msg, i32 noundef %portid, i32 noundef %seq, ptr noundef %hard_iface, ptr nocapture noundef %idx_s) unnamed_addr #0 align 64 {
entry:
  %tmp.i41.i = alloca i32, align 4
  %tmp.i39.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @batadv_v_neigh_dump_hardif.__warned, align 1
  br i1 %.b1, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @batadv_v_neigh_dump_hardif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 189, ptr noundef nonnull @.str.12) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %neigh_list = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 12
  %0 = ptrtoint ptr %neigh_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %hardif_neigh.06 = load volatile ptr, ptr %neigh_list, align 4
  %tobool12.not7 = icmp eq ptr %hardif_neigh.06, null
  br i1 %tobool12.not7, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end14:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %last_seen.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh.09, i32 0, i32 4
  %4 = ptrtoint ptr %last_seen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_seen.i, align 4
  %sub.i = sub i32 %3, %5
  %call.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i) #9
  %bat_v.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh.09, i32 0, i32 5
  %6 = ptrtoint ptr %bat_v.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bat_v.i, align 4
  %shr.i.i = lshr i32 %7, 10
  %mul.i = mul nuw nsw i32 %shr.i.i, 100
  %call3.i = call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @batadv_netlink_family, i32 noundef 2, i8 noundef zeroext 9) #9
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.end14.cleanup_crit_edge, label %if.end.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end14
  %addr.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh.09, i32 0, i32 1
  %call4.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 24, i32 noundef 6, ptr noundef %addr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %if_incoming.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh.09, i32 0, i32 3
  %8 = ptrtoint ptr %if_incoming.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %if_incoming.i, align 4
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev.i, align 4
  %call.i.i = call i32 @strlen(ptr noundef %11) #12
  %add.i.i = add i32 %call.i.i, 1
  %call1.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 7, i32 noundef %add.i.i, ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool8.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false.i.if.then.i.i_crit_edge

lor.lhs.false.i.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %12 = ptrtoint ptr %if_incoming.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %if_incoming.i, align 4
  %net_dev11.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %net_dev11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev11.i, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #9
  %18 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tmp.i.i, align 4
  %call.i38.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %tobool13.not.i = icmp eq i32 %call.i38.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false14.i, label %lor.lhs.false9.i.if.then.i.i_crit_edge

lor.lhs.false9.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false14.i:                                ; preds = %lor.lhs.false9.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i39.i) #9
  %19 = ptrtoint ptr %tmp.i39.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i, ptr %tmp.i39.i, align 4
  %call.i40.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 23, i32 noundef 4, ptr noundef nonnull %tmp.i39.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i39.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %tobool16.not.i = icmp eq i32 %call.i40.i, 0
  br i1 %tobool16.not.i, label %lor.lhs.false17.i, label %lor.lhs.false14.i.if.then.i.i_crit_edge

lor.lhs.false14.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false14.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i41.i) #9
  %20 = ptrtoint ptr %tmp.i41.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul.i, ptr %tmp.i41.i, align 4
  %call.i42.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 26, i32 noundef 4, ptr noundef nonnull %tmp.i41.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %tobool19.not.i = icmp eq i32 %call.i42.i, 0
  br i1 %tobool19.not.i, label %batadv_v_neigh_dump_neigh.exit, label %lor.lhs.false17.i.if.then.i.i_crit_edge

lor.lhs.false17.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false17.i.if.then.i.i_crit_edge, %lor.lhs.false14.i.if.then.i.i_crit_edge, %lor.lhs.false9.i.if.then.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %add.ptr1.i43.i = getelementptr i8, ptr %call3.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i43.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %22, %add.ptr1.i43.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !61

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %23 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i43.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i.i) #9
  br label %cleanup

batadv_v_neigh_dump_neigh.exit:                   ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr1.i.i = getelementptr i8, ptr %call3.i, i32 -20
  %25 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %27 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %batadv_v_neigh_dump_neigh.exit, %for.body.for.inc_crit_edge
  %28 = ptrtoint ptr %hardif_neigh.09 to i32
  call void @__asan_load4_noabort(i32 %28)
  %hardif_neigh.0 = load volatile ptr, ptr %hardif_neigh.09, align 4
  %tobool12.not = icmp eq ptr %hardif_neigh.0, null
  br i1 %tobool12.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.i.i.i.i, %if.then.i.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %storemerge = phi i32 [ %idx.08, %if.then.i.i.cleanup_crit_edge ], [ %idx.08, %if.end.i.i.i.i ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %idx.08, %if.end14.cleanup_crit_edge ]
  %retval.0 = phi i32 [ -90, %if.then.i.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i.i ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -90, %if.end14.cleanup_crit_edge ]
  %29 = ptrtoint ptr %idx_s to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge, ptr %idx_s, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_router_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_neigh_node_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_parse_throughput(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_gw_reselect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @batadv_v_gw_throughput_get(ptr nocapture noundef readonly %gw_node, ptr nocapture noundef writeonly %bw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %orig_node1 = getelementptr inbounds %struct.batadv_gw_node, ptr %gw_node, i32 0, i32 1
  %0 = ptrtoint ptr %orig_node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %orig_node1, align 4
  %call = tail call ptr @batadv_orig_router_get(ptr noundef %1, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.batadv_neigh_ifinfo_put.exit_crit_edge, label %if.end

entry.batadv_neigh_ifinfo_put.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_neigh_ifinfo_put.exit

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %call, ptr noundef null) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end.i_crit_edge, label %if.end5

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bat_v = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call2, i32 0, i32 3
  %2 = ptrtoint ptr %bat_v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bat_v, align 4
  %4 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bw, align 4
  %bandwidth_down = getelementptr inbounds %struct.batadv_gw_node, ptr %gw_node, i32 0, i32 2
  %5 = ptrtoint ptr %bandwidth_down to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bandwidth_down, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %3, i32 %6)
  %8 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %bw, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5, %if.end.if.end.i_crit_edge
  %ret.0.ph = phi i32 [ -1, %if.end.if.end.i_crit_edge ], [ 0, %if.end5 ]
  %refcount.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_neigh_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !56

if.end5.i.i.i.i.i.batadv_neigh_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_neigh_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %batadv_neigh_node_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  tail call void @batadv_neigh_node_release(ptr noundef %refcount.i) #9, !callees !58
  br label %batadv_neigh_node_put.exit

batadv_neigh_node_put.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_neigh_node_put.exit_crit_edge
  br i1 %tobool3.not, label %batadv_neigh_node_put.exit.batadv_neigh_ifinfo_put.exit_crit_edge, label %if.end.i21

batadv_neigh_node_put.exit.batadv_neigh_ifinfo_put.exit_crit_edge: ; preds = %batadv_neigh_node_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_neigh_ifinfo_put.exit

if.end.i21:                                       ; preds = %batadv_neigh_node_put.exit
  %refcount.i17 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call2, i32 0, i32 5
  %call.i.i.i.i.i.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i17, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcount.i17, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i17, ptr %refcount.i17, i32 1, ptr elementtype(i32) %refcount.i17) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i19 = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i19)
  %cmp.i.i.i.i.i20 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i19, 1
  br i1 %cmp.i.i.i.i.i20, label %if.then.i.i25, label %if.end5.i.i.i.i.i23

if.end5.i.i.i.i.i23:                              ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i19)
  %.not.i.i.i.i.i22 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i19, 0
  br i1 %.not.i.i.i.i.i22, label %if.end5.i.i.i.i.i23.batadv_neigh_ifinfo_put.exit_crit_edge, label %if.then10.i.i.i.i.i24, !prof !56

if.end5.i.i.i.i.i23.batadv_neigh_ifinfo_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_neigh_ifinfo_put.exit

if.then10.i.i.i.i.i24:                            ; preds = %if.end5.i.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i17, i32 noundef 3) #9
  br label %batadv_neigh_ifinfo_put.exit

if.then.i.i25:                                    ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  tail call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i17) #9, !callees !58
  br label %batadv_neigh_ifinfo_put.exit

batadv_neigh_ifinfo_put.exit:                     ; preds = %if.then.i.i25, %if.then10.i.i.i.i.i24, %if.end5.i.i.i.i.i23.batadv_neigh_ifinfo_put.exit_crit_edge, %batadv_neigh_node_put.exit.batadv_neigh_ifinfo_put.exit_crit_edge, %entry.batadv_neigh_ifinfo_put.exit_crit_edge
  %ret.02935 = phi i32 [ %ret.0.ph, %batadv_neigh_node_put.exit.batadv_neigh_ifinfo_put.exit_crit_edge ], [ %ret.0.ph, %if.end5.i.i.i.i.i23.batadv_neigh_ifinfo_put.exit_crit_edge ], [ %ret.0.ph, %if.then10.i.i.i.i.i24 ], [ %ret.0.ph, %if.then.i.i25 ], [ -1, %entry.batadv_neigh_ifinfo_put.exit_crit_edge ]
  ret i32 %ret.02935
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_gw_node_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_gw_node_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_gw_get_selected_gw_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !12, !14, !15, !16, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @batadv_v_hardif_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/batman-adv/bat_v.c", i32 843, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @batadv_v_hardif_init.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @skb_queue_head_init.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/batman-adv/bat_v.c", i32 802, i32 10}
!10 = !{ptr @batadv_batman_v, !11, !"batadv_batman_v", i1 false, i1 false}
!11 = !{!"../net/batman-adv/bat_v.c", i32 801, i32 31}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/batman-adv/hard-interface.h", i32 110, i32 15}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @batadv_v_hardif_neigh_init.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../net/batman-adv/bat_v.c", i32 116, i32 2}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/batman-adv/bat_v.c", i32 232, i32 3}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/batman-adv/bat_v.c", i32 188, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/net/netlink.h", i32 991, i32 3}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/batman-adv/bat_v.c", i32 397, i32 2}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/batman-adv/bat_v.c", i32 351, i32 2}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/batman-adv/bat_v.c", i32 521, i32 10}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../net/batman-adv/bat_v.c", i32 588, i32 2}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/batman-adv/bat_v.c", i32 654, i32 2}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2148242951}
!55 = !{i64 2148157415, i64 2148157447, i64 2148157476, i64 2148157510, i64 2148157541, i64 2148157564}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2150573962}
!58 = !{ptr @batadv_gw_node_release, ptr @batadv_hardif_release, ptr @batadv_neigh_ifinfo_release, ptr @batadv_neigh_node_release}
!59 = !{i64 2149699415}
!60 = !{i64 2149699681}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{!"auto-init"}
!63 = !{i64 528254, i64 528278, i64 528299, i64 528316, i64 528333}
!64 = !{i64 2148154950, i64 2148154982, i64 2148155011, i64 2148155045, i64 2148155076, i64 2148155099}
