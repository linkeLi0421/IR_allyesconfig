; ModuleID = '/llk/IR_all_yes/net/batman-adv/bat_v_ogm.c_pt.bc'
source_filename = "../net/batman-adv/bat_v_ogm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }
%struct.batadv_priv = type { %struct.atomic_t, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, ptr, %struct.hlist_head, %struct.spinlock, %struct.batadv_priv_bla, ptr, %struct.batadv_priv_gw, %struct.batadv_priv_tt, %struct.batadv_priv_tvlv, %struct.batadv_priv_dat, %struct.batadv_priv_mcast, %struct.atomic_t, %struct.batadv_priv_nc, %struct.batadv_priv_bat_v }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.batadv_hashtable = type { ptr, ptr, i32, %struct.atomic_t }
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.batadv_hard_iface_bat_iv = type { ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
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
%struct.batadv_ogm2_packet = type { i8, i8, i8, i8, i32, [6 x i8], i16, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
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
%struct.batadv_algo_ops = type { %struct.hlist_node, ptr, %struct.batadv_algo_iface_ops, %struct.batadv_algo_neigh_ops, %struct.batadv_algo_orig_ops, %struct.batadv_algo_gw_ops }
%struct.batadv_algo_iface_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_algo_neigh_ops = type { ptr, ptr, ptr, ptr }
%struct.batadv_algo_orig_ops = type { ptr }
%struct.batadv_algo_gw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.batadv_hardif_neigh_node = type { %struct.hlist_node, [6 x i8], [6 x i8], ptr, i32, %struct.batadv_hardif_neigh_node_bat_v, %struct.kref, %struct.callback_head }
%struct.batadv_hardif_neigh_node_bat_v = type { %struct.ewma_throughput, i32, i32, i32, %struct.work_struct }
%struct.ewma_throughput = type { i32 }
%struct.batadv_neigh_node = type { %struct.hlist_node, ptr, [6 x i8], %struct.hlist_head, %struct.spinlock, ptr, i32, ptr, %struct.kref, %struct.callback_head }
%struct.batadv_orig_ifinfo = type { %struct.hlist_node, ptr, ptr, i32, i8, i32, i32, %struct.batadv_orig_ifinfo_bat_iv, %struct.kref, %struct.callback_head }
%struct.batadv_orig_ifinfo_bat_iv = type { [2 x i32], i8 }
%struct.batadv_neigh_ifinfo = type { %struct.hlist_node, ptr, %struct.batadv_neigh_ifinfo_bat_iv, %struct.batadv_neigh_ifinfo_bat_v, i8, %struct.kref, %struct.callback_head }
%struct.batadv_neigh_ifinfo_bat_iv = type { [5 x i8], i8, i8, [2 x i32], i8 }
%struct.batadv_neigh_ifinfo_bat_v = type { i32, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BATMAN_V\00", [23 x i8] zeroinitializer }, align 32
@batadv_v_ogm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&bat_priv->bat_v.ogm_wq)->work)\00", [44 x i8] zeroinitializer }, align 32
@batadv_v_ogm_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&bat_priv->bat_v.ogm_wq)->timer\00", [62 x i8] zeroinitializer }, align 32
@batadv_v_ogm_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&bat_priv->bat_v.ogm_buff_mutex\00", [32 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/batman-adv/bat_v_ogm.c\00", [37 x i8] zeroinitializer }, align 32
@batadv_event_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.7 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"Received OGM2 packet via NB: %pM, IF: %s [%pM] (from OG: %pM, seqno %u, throughput %u, TTL %u, V %u, tvlv_len %u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Drop packet: originator packet from ourself\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Drop packet: originator packet with throughput metric of 0\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Drop packet: OGM via unknown neighbor!\0A\00", [56 x i8] zeroinitializer }, align 32
@batadv_v_ogm_process.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@batadv_hardif_list = external dso_local global %struct.list_head, align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no neighbor\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"single neighbor is source\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"single neighbor is originator\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"OGM2 packet from %pM on %s suppressed: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Drop packet: packet within window protection time from %pM\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Last reset: %ld, %ld\0A\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Searching and updating originator entry of received packet\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ttl exceeded\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Forwarding OGM2 packet on %s: throughput %u, ttl %u, received via %s\0A\00", [58 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@batadv_v_ogm_send_softif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"OGM2 from ourselves on %s suppressed: %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"Sending own OGM2 packet (originator %pM, seqno %u, throughput %u, TTL %d) on interface %s [%pM]\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 997, i32 39 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1063, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1065, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 207, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 869, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 877, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 886, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 894, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 924, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 943, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 946, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 949, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 952, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 955, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 631, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 634, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 727, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 555, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 579, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 695, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 723, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 328, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [30 x i8] c"../net/batman-adv/bat_v_ogm.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 335, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @.str, ptr @batadv_v_ogm_init.__key, ptr @.str.1, ptr @batadv_v_ogm_init.__key.2, ptr @.str.3, ptr @batadv_v_ogm_init.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_v_ogm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_v_ogm_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_v_ogm_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_v_ogm_orig_get(ptr noundef %bat_priv, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @batadv_orig_hash_find(ptr noundef %bat_priv, ptr noundef %addr) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @batadv_orig_node_new(ptr noundef %bat_priv, ptr noundef %addr) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %refcount = getelementptr inbounds %struct.batadv_orig_node, ptr %call1, i32 0, i32 27
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !66
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end4.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !67

if.end4.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end4
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !68

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end4.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end4.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %orig_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 23
  %2 = ptrtoint ptr %orig_hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig_hash, align 4
  %hash_entry = getelementptr inbounds %struct.batadv_orig_node, ptr %call1, i32 0, i32 24
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %kref_get.exit.if.end.i21_crit_edge, label %if.end.i

kref_get.exit.if.end.i21_crit_edge:               ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i21

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
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i.i, i32 %add65.i.i.i, i32 14) #9
  %sub87.i.i.i = sub i32 %xor85.i.i.i, %or.i.i.i.i
  %xor88.i.i.i = xor i32 %add84.i.i.i, %sub87.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i.i, i32 %sub87.i.i.i, i32 11) #9
  %sub90.i.i.i = sub i32 %xor88.i.i.i, %or.i1.i.i.i
  %xor91.i.i.i = xor i32 %sub90.i.i.i, %add65.i.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i.i, i32 %sub90.i.i.i, i32 25) #9
  %sub93.i.i.i = sub i32 %xor91.i.i.i, %or.i2.i.i.i
  %xor94.i.i.i = xor i32 %sub93.i.i.i, %sub87.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i.i, i32 %sub93.i.i.i, i32 16) #9
  %sub96.i.i.i = sub i32 %xor94.i.i.i, %or.i3.i.i.i
  %xor97.i.i.i = xor i32 %sub96.i.i.i, %sub90.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i.i, i32 %sub96.i.i.i, i32 4) #9
  %sub99.i.i.i = sub i32 %xor97.i.i.i, %or.i4.i.i.i
  %xor100.i.i.i = xor i32 %sub99.i.i.i, %sub93.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i.i, i32 %sub99.i.i.i, i32 14) #9
  %sub102.i.i.i = sub i32 %xor100.i.i.i, %or.i5.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i.i, i32 %sub102.i.i.i, i32 24) #9
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
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx1.i) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %node.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %22 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %node.0.i = load ptr, ptr %node.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %call3.i = tail call zeroext i1 @batadv_compare_orig(ptr noundef nonnull %node.0.i, ptr noundef nonnull %call1) #9
  br i1 %call3.i, label %batadv_hash_add.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %hash_entry, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %for.end.i.batadv_hash_add.exit.thread35_crit_edge, label %do.body49.i.i

for.end.i.batadv_hash_add.exit.thread35_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hash_add.exit.thread35

do.body49.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %hash_entry, ptr %pprev51.i.i, align 4
  br label %batadv_hash_add.exit.thread35

batadv_hash_add.exit.thread35:                    ; preds = %do.body49.i.i, %for.end.i.batadv_hash_add.exit.thread35_crit_edge
  %generation.i = getelementptr inbounds %struct.batadv_hashtable, ptr %3, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %generation.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %generation.i, i32 1, i32 3, i32 1) #9
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %generation.i, ptr %generation.i, i32 1, ptr elementtype(i32) %generation.i) #9, !srcloc !70
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1.i) #9
  br label %cleanup

batadv_hash_add.exit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1.i) #9
  br label %if.end.i21

if.end.i21:                                       ; preds = %batadv_hash_add.exit, %kref_get.exit.if.end.i21_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end.i27_crit_edge, label %if.then10.i.i.i.i.i, !prof !68

if.end5.i.i.i.i.i.if.end.i27_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i27

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %if.end.i27

if.then.i.i:                                      ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @batadv_orig_node_release(ptr noundef %refcount) #9
  br label %if.end.i27

if.end.i27:                                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end.i27_crit_edge
  %call.i.i.i.i.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i25 = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i25)
  %cmp.i.i.i.i.i26 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i25, 1
  br i1 %cmp.i.i.i.i.i26, label %if.then.i.i31, label %if.end5.i.i.i.i.i29

if.end5.i.i.i.i.i29:                              ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i25)
  %.not.i.i.i.i.i28 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i25, 0
  br i1 %.not.i.i.i.i.i28, label %if.end5.i.i.i.i.i29.cleanup_crit_edge, label %if.then10.i.i.i.i.i30, !prof !68

if.end5.i.i.i.i.i29.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i30:                            ; preds = %if.end5.i.i.i.i.i29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %cleanup

if.then.i.i31:                                    ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @batadv_orig_node_release(ptr noundef %refcount) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i31, %if.then10.i.i.i.i.i30, %if.end5.i.i.i.i.i29.cleanup_crit_edge, %batadv_hash_add.exit.thread35, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call1, %batadv_hash_add.exit.thread35 ], [ null, %if.end5.i.i.i.i.i29.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i.i30 ], [ null, %if.then.i.i31 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_node_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_compare_orig(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_v_ogm_aggr_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -296
  %lock = getelementptr i8, ptr %work, i32 112
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  tail call fastcc void @batadv_v_ogm_aggr_send(ptr noundef %add.ptr3)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %call.i.i = tail call i32 @prandom_u32() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %0 = load ptr, ptr @batadv_event_workqueue, align 4
  %conv.i.i = zext i32 %call.i.i to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 20000
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %add.i = add nuw nsw i32 %conv2.i.i, 90000
  %div2.i = udiv i32 %add.i, 1000
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %div2.i) #9
  %call.i8.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef %call2.i.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_v_ogm_aggr_send(ptr noundef %hard_iface) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aggr_len1 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 6
  %0 = ptrtoint ptr %aggr_len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aggr_len1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5, i32 2, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !67

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 207, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool26.not = icmp eq i32 %1, 0
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %if.end28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %add29 = add i32 %1, 16
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add29, i32 noundef 2592) #9
  %tobool31.not = icmp eq ptr %call.i.i, null
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then32.if.end.i_crit_edge, label %land.rhs.i

if.then32.if.end.i_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then32
  %dep_map.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5, i32 2, i32 0, i32 0, i32 4
  %call.i.i60 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60)
  %cmp.not.i = icmp eq i32 %call.i.i60, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !67

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 183, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then32.if.end.i_crit_edge
  %aggr_list25.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5
  %4 = ptrtoint ptr %aggr_list25.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aggr_list25.i, align 4
  %cmp.i.i2.i.i = icmp eq ptr %5, %aggr_list25.i
  %tobool.not.i13.i.i = icmp eq ptr %5, null
  %tobool.not.i4.i.i = or i1 %cmp.i.i2.i.i, %tobool.not.i13.i.i
  br i1 %tobool.not.i4.i.i, label %if.end.i.batadv_v_ogm_aggr_list_free.exit_crit_edge, label %while.body.lr.ph.i.i

if.end.i.batadv_v_ogm_aggr_list_free.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_aggr_list_free.exit

while.body.lr.ph.i.i:                             ; preds = %if.end.i
  %qlen.i.i.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %6 = phi ptr [ %5, %while.body.lr.ph.i.i ], [ %16, %while.body.i.i.while.body.i.i_crit_edge ]
  %7 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %6, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.0, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %prev17.i.i.i.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %12, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #9
  %15 = ptrtoint ptr %aggr_list25.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aggr_list25.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %16, %aggr_list25.i
  %tobool.not.i1.i.i = icmp eq ptr %16, null
  %tobool.not.i.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i1.i.i
  br i1 %tobool.not.i.i.i, label %while.body.i.i.batadv_v_ogm_aggr_list_free.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.batadv_v_ogm_aggr_list_free.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_aggr_list_free.exit

batadv_v_ogm_aggr_list_free.exit:                 ; preds = %while.body.i.i.batadv_v_ogm_aggr_list_free.exit_crit_edge, %if.end.i.batadv_v_ogm_aggr_list_free.exit_crit_edge
  %17 = ptrtoint ptr %aggr_len1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %aggr_len1, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 16
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %21, i32 16
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %22 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %24 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %network_header.i, align 4
  %aggr_list35 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5
  %25 = ptrtoint ptr %aggr_list35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %aggr_list35, align 4
  %cmp.i.i72 = icmp eq ptr %26, %aggr_list35
  %tobool.not.i627173 = icmp eq ptr %26, null
  %tobool.not.i6274 = or i1 %cmp.i.i72, %tobool.not.i627173
  br i1 %tobool.not.i6274, label %if.end33.while.end_crit_edge, label %while.body.lr.ph

if.end33.while.end_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end33
  %qlen.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %27 = phi ptr [ %26, %while.body.lr.ph ], [ %47, %while.body.while.body_crit_edge ]
  %28 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.0, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %27, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.0, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %33, ptr %prev17.i.i, align 4
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %31, ptr %33, align 8
  %data.i64 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 19
  %36 = ptrtoint ptr %data.i64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i64, align 4
  %tvlv_len.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %tvlv_len.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tvlv_len.i, align 2
  %conv.i65 = zext i16 %39 to i32
  %40 = ptrtoint ptr %aggr_len1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %aggr_len1, align 4
  %add.i.neg = sub nuw nsw i32 -20, %conv.i65
  %sub = add i32 %add.i.neg, %41
  store i32 %sub, ptr %aggr_len1, align 4
  %42 = load ptr, ptr %data.i64, align 4
  %tvlv_len.i67 = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %tvlv_len.i67 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %tvlv_len.i67, align 2
  %conv.i68 = zext i16 %44 to i32
  %add.i69 = add nuw nsw i32 %conv.i68, 20
  %call.i70 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add.i69) #9
  %45 = call ptr @memcpy(ptr %call.i70, ptr %42, i32 %add.i69)
  tail call void @consume_skb(ptr noundef nonnull %27) #9
  %46 = ptrtoint ptr %aggr_list35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %aggr_list35, align 4
  %cmp.i.i = icmp eq ptr %47, %aggr_list35
  %tobool.not.i6271 = icmp eq ptr %47, null
  %tobool.not.i62 = or i1 %cmp.i.i, %tobool.not.i6271
  br i1 %tobool.not.i62, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end33.while.end_crit_edge
  tail call fastcc void @batadv_v_ogm_send_to_if(ptr noundef nonnull %call.i.i, ptr noundef %hard_iface)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %batadv_v_ogm_aggr_list_free.exit, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_v_ogm_iface_enable(ptr noundef %hard_iface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %call.i.i = tail call i32 @prandom_u32() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %2 = load ptr, ptr @batadv_event_workqueue, align 4
  %conv.i.i = zext i32 %call.i.i to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 20000
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %add.i = add nuw nsw i32 %conv2.i.i, 90000
  %div2.i = udiv i32 %add.i, 1000
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %div2.i) #9
  %aggr_wq.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 4
  %call.i8.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %aggr_wq.i, i32 noundef %call2.i.i) #9
  %ogm_wq.i = getelementptr i8, ptr %1, i32 4256
  %3 = ptrtoint ptr %ogm_wq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %ogm_wq.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.batadv_v_ogm_start_timer.exit_crit_edge

entry.batadv_v_ogm_start_timer.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_start_timer.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %orig_interval.i = getelementptr i8, ptr %1, i32 2352
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %orig_interval.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %orig_interval.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %orig_interval.i, align 4
  %call.i.i2 = tail call i32 @prandom_u32() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %7 = load ptr, ptr @batadv_event_workqueue, align 4
  %sub.i = add i32 %6, -20
  %conv.i.i3 = zext i32 %call.i.i2 to i64
  %mul.i.i4 = mul nuw nsw i64 %conv.i.i3, 40
  %shr.i.i5 = lshr i64 %mul.i.i4, 32
  %conv2.i.i6 = trunc i64 %shr.i.i5 to i32
  %add.i7 = add i32 %sub.i, %conv2.i.i6
  %call2.i.i9 = tail call i32 @__msecs_to_jiffies(i32 noundef %add.i7) #9
  %call.i10.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %ogm_wq.i, i32 noundef %call2.i.i9) #9
  br label %batadv_v_ogm_start_timer.exit

batadv_v_ogm_start_timer.exit:                    ; preds = %if.end.i, %entry.batadv_v_ogm_start_timer.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_v_ogm_iface_disable(ptr noundef %hard_iface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aggr_wq = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 4
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %aggr_wq) #9
  %lock = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5, i32 2, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !67

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 183, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %aggr_list25.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5
  %1 = ptrtoint ptr %aggr_list25.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aggr_list25.i, align 4
  %cmp.i.i2.i.i = icmp eq ptr %2, %aggr_list25.i
  %tobool.not.i13.i.i = icmp eq ptr %2, null
  %tobool.not.i4.i.i = or i1 %cmp.i.i2.i.i, %tobool.not.i13.i.i
  br i1 %tobool.not.i4.i.i, label %if.end.i.batadv_v_ogm_aggr_list_free.exit_crit_edge, label %while.body.lr.ph.i.i

if.end.i.batadv_v_ogm_aggr_list_free.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_aggr_list_free.exit

while.body.lr.ph.i.i:                             ; preds = %if.end.i
  %qlen.i.i.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %3 = phi ptr [ %2, %while.body.lr.ph.i.i ], [ %13, %while.body.i.i.while.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %5, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %3, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.0, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %prev17.i.i.i.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %7, ptr %9, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %3, i32 noundef 0) #9
  %12 = ptrtoint ptr %aggr_list25.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aggr_list25.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %13, %aggr_list25.i
  %tobool.not.i1.i.i = icmp eq ptr %13, null
  %tobool.not.i.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i1.i.i
  br i1 %tobool.not.i.i.i, label %while.body.i.i.batadv_v_ogm_aggr_list_free.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.batadv_v_ogm_aggr_list_free.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_aggr_list_free.exit

batadv_v_ogm_aggr_list_free.exit:                 ; preds = %while.body.i.i.batadv_v_ogm_aggr_list_free.exit_crit_edge, %if.end.i.batadv_v_ogm_aggr_list_free.exit_crit_edge
  %aggr_len.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 6
  %14 = ptrtoint ptr %aggr_len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %aggr_len.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_v_ogm_primary_iface_set(ptr nocapture noundef readonly %primary_iface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %primary_iface, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %bat_v = getelementptr i8, ptr %1, i32 4152
  %ogm_buff_mutex = getelementptr i8, ptr %1, i32 4164
  tail call void @mutex_lock_nested(ptr noundef %ogm_buff_mutex, i32 noundef 0) #9
  %2 = ptrtoint ptr %bat_v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bat_v, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %orig = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %3, i32 0, i32 5
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %primary_iface, i32 0, i32 4
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %orig to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %orig, align 4
  %add.ptr.i10 = getelementptr i8, ptr %7, i32 4
  %11 = ptrtoint ptr %add.ptr.i10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i10, align 2
  %add.ptr1.i = getelementptr %struct.batadv_ogm2_packet, ptr %3, i32 0, i32 5, i32 4
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %add.ptr1.i, align 2
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %ogm_buff_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_v_ogm_packet_recv(ptr noundef %skb, ptr noundef %if_incoming) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_incoming, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %algo_ops = getelementptr i8, ptr %1, i32 2640
  %6 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %algo_ops, align 4
  %name = getelementptr inbounds %struct.batadv_algo_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call2 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(9) @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end:                                           ; preds = %entry
  %call3 = tail call zeroext i1 @batadv_check_management_packet(ptr noundef %skb, ptr noundef %if_incoming, i32 noundef 20) #9
  br i1 %call3, label %if.end5, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end5:                                          ; preds = %if.end
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %call6 = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %h_source) #9
  br i1 %call6, label %if.end5.if.else_crit_edge, label %if.end8

if.end5.if.else_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end8:                                          ; preds = %if.end5
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !74
  %bat_counters.i = getelementptr i8, ptr %1, i32 2312
  %11 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %12, i32 9
  %13 = ptrtoint ptr %arrayidx.i to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  %add15.i = add i64 %22, 1
  store i64 %add15.i, ptr %20, align 8
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !75
  %and.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end8.batadv_add_counter.exit_crit_edge, !prof !67

if.end8.batadv_add_counter.exit_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_add_counter.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i, %if.end8.batadv_add_counter.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #9, !srcloc !76
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %add = add i32 %25, 14
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !74
  %conv6.i = zext i32 %add to i64
  %27 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i38 = getelementptr i64, ptr %28, i32 10
  %29 = ptrtoint ptr %arrayidx.i38 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i39 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i39 to ptr
  %cpu.i40 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i40, align 4
  %arrayidx14.i41 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx14.i41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx14.i41, align 4
  %add.i42 = add i32 %35, %29
  %36 = inttoptr i32 %add.i42 to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %36, align 8
  %add15.i43 = add i64 %38, %conv6.i
  store i64 %add15.i43, ptr %36, align 8
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !75
  %and.i.i.i44 = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i44)
  %tobool.not.i45 = icmp eq i32 %and.i.i.i44, 0
  br i1 %tobool.not.i45, label %if.then.i46, label %batadv_add_counter.exit.batadv_add_counter.exit47_crit_edge, !prof !67

batadv_add_counter.exit.batadv_add_counter.exit47_crit_edge: ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_add_counter.exit47

if.then.i46:                                      ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %batadv_add_counter.exit47

batadv_add_counter.exit47:                        ; preds = %if.then.i46, %batadv_add_counter.exit.batadv_add_counter.exit47_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #9, !srcloc !76
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %42 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_len.i, align 8
  %sub.i63 = sub i32 %41, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i63)
  %cmp.i64 = icmp slt i32 %sub.i63, 20
  br i1 %cmp.i64, label %batadv_add_counter.exit47.if.then16_crit_edge, label %batadv_v_ogm_aggr_packet.exit.lr.ph

batadv_add_counter.exit47.if.then16_crit_edge:    ; preds = %batadv_add_counter.exit47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

batadv_v_ogm_aggr_packet.exit.lr.ph:              ; preds = %batadv_add_counter.exit47
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_incoming, i32 0, i32 4
  br label %batadv_v_ogm_aggr_packet.exit

batadv_v_ogm_aggr_packet.exit:                    ; preds = %batadv_v_ogm_process.exit.batadv_v_ogm_aggr_packet.exit_crit_edge, %batadv_v_ogm_aggr_packet.exit.lr.ph
  %add.i4868 = phi i32 [ 20, %batadv_v_ogm_aggr_packet.exit.lr.ph ], [ %add.i48, %batadv_v_ogm_process.exit.batadv_v_ogm_aggr_packet.exit_crit_edge ]
  %sub.i67 = phi i32 [ %sub.i63, %batadv_v_ogm_aggr_packet.exit.lr.ph ], [ %sub.i, %batadv_v_ogm_process.exit.batadv_v_ogm_aggr_packet.exit_crit_edge ]
  %ogm_offset.066 = phi i32 [ 0, %batadv_v_ogm_aggr_packet.exit.lr.ph ], [ %add12, %batadv_v_ogm_process.exit.batadv_v_ogm_aggr_packet.exit_crit_edge ]
  %ogm_packet.065 = phi ptr [ %45, %batadv_v_ogm_aggr_packet.exit.lr.ph ], [ %add.ptr, %batadv_v_ogm_process.exit.batadv_v_ogm_aggr_packet.exit_crit_edge ]
  %tvlv_len.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %ogm_packet.065, i32 0, i32 6
  %46 = ptrtoint ptr %tvlv_len.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %tvlv_len.i, align 2
  %conv.i = zext i16 %47 to i32
  %add2.i = add i32 %add.i4868, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %sub.i67)
  %cmp3.not.i = icmp sle i32 %add2.i, %sub.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %add2.i)
  %cmp5.i = icmp slt i32 %add2.i, 513
  %spec.select.i = and i1 %cmp3.not.i, %cmp5.i
  br i1 %spec.select.i, label %while.body, label %batadv_v_ogm_aggr_packet.exit.if.then16_crit_edge

batadv_v_ogm_aggr_packet.exit.if.then16_crit_edge: ; preds = %batadv_v_ogm_aggr_packet.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

while.body:                                       ; preds = %batadv_v_ogm_aggr_packet.exit
  %48 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i.i49 = getelementptr i8, ptr %49, i32 2304
  %50 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i.i, align 8
  %52 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i.i = zext i16 %53 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 %conv.i.i.i
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %add.ptr.i50 = getelementptr i8, ptr %55, i32 %ogm_offset.066
  %throughput.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %add.ptr.i50, i32 0, i32 7
  %56 = ptrtoint ptr %throughput.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %throughput.i, align 2
  %log_level.i = getelementptr i8, ptr %49, i32 2360
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #9
  %58 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i51 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i51, label %while.body.if.end.i56_crit_edge, label %if.then.i55

while.body.if.end.i56_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i56

if.then.i55:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %net_dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 86
  %62 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_addr.i, align 64
  %orig.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %add.ptr.i50, i32 0, i32 5
  %seqno.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %add.ptr.i50, i32 0, i32 4
  %64 = ptrtoint ptr %seqno.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %seqno.i, align 2
  %ttl.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %add.ptr.i50, i32 0, i32 2
  %66 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ttl.i, align 2
  %conv.i52 = zext i8 %67 to i32
  %version.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %add.ptr.i50, i32 0, i32 1
  %68 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %version.i, align 1
  %conv6.i53 = zext i8 %69 to i32
  %tvlv_len.i54 = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %add.ptr.i50, i32 0, i32 6
  %70 = ptrtoint ptr %tvlv_len.i54 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %tvlv_len.i54, align 2
  %conv7.i = zext i16 %71 to i32
  %call8.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i49, ptr noundef nonnull @.str.7, ptr noundef %h_source.i, ptr noundef %61, ptr noundef %63, ptr noundef %orig.i, i32 noundef %65, i32 noundef %57, i32 noundef %conv.i52, i32 noundef %conv6.i53, i32 noundef %conv7.i) #9
  br label %if.end.i56

if.end.i56:                                       ; preds = %if.then.i55, %while.body.if.end.i56_crit_edge
  %orig9.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %add.ptr.i50, i32 0, i32 5
  %call11.i = call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i.i49, ptr noundef %orig9.i) #9
  br i1 %call11.i, label %do.body13.i, label %if.end24.i

do.body13.i:                                      ; preds = %if.end.i56
  %call.i.i213.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #9
  %72 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %log_level.i, align 4
  %and17.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %do.body13.i.batadv_v_ogm_process.exit_crit_edge, label %if.then19.i

do.body13.i.batadv_v_ogm_process.exit_crit_edge:  ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_process.exit

if.then19.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i49, ptr noundef nonnull @.str.8) #9
  br label %batadv_v_ogm_process.exit

if.end24.i:                                       ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i57 = icmp eq i32 %57, 0
  br i1 %cmp.i57, label %do.body27.i, label %if.end38.i

do.body27.i:                                      ; preds = %if.end24.i
  %call.i.i214.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #9
  %74 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %log_level.i, align 4
  %and31.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %do.body27.i.batadv_v_ogm_process.exit_crit_edge, label %if.then33.i

do.body27.i.batadv_v_ogm_process.exit_crit_edge:  ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_process.exit

if.then33.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  %call34.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i49, ptr noundef nonnull @.str.9) #9
  br label %batadv_v_ogm_process.exit

if.end38.i:                                       ; preds = %if.end24.i
  %h_source39.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %call41.i = call ptr @batadv_hardif_neigh_get(ptr noundef %if_incoming, ptr noundef %h_source39.i) #9
  %tobool42.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool42.not.i, label %do.body44.i, label %if.end55.i

do.body44.i:                                      ; preds = %if.end38.i
  %call.i.i215.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #9
  %76 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %log_level.i, align 4
  %and48.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %do.body44.i.batadv_v_ogm_process.exit_crit_edge, label %if.then50.i

do.body44.i.batadv_v_ogm_process.exit_crit_edge:  ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_process.exit

if.then50.i:                                      ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #11
  %call51.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i49, ptr noundef nonnull @.str.10) #9
  br label %batadv_v_ogm_process.exit

if.end55.i:                                       ; preds = %if.end38.i
  %call58.i = call ptr @batadv_v_ogm_orig_get(ptr noundef %add.ptr.i.i49, ptr noundef %orig9.i) #9
  %tobool59.not.i = icmp eq ptr %call58.i, null
  br i1 %tobool59.not.i, label %if.end55.i.if.end.i264.i_crit_edge, label %if.end61.i

if.end55.i.if.end.i264.i_crit_edge:               ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i264.i

if.end61.i:                                       ; preds = %if.end55.i
  %call64.i = call ptr @batadv_neigh_node_get_or_create(ptr noundef nonnull %call58.i, ptr noundef %if_incoming, ptr noundef %h_source39.i) #9
  %tobool65.not.i = icmp eq ptr %call64.i, null
  br i1 %tobool65.not.i, label %if.end61.i.if.end.i244.i_crit_edge, label %if.end67.i

if.end61.i.if.end.i244.i_crit_edge:               ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i244.i

if.end67.i:                                       ; preds = %if.end61.i
  %bat_v.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %call41.i, i32 0, i32 5
  %78 = ptrtoint ptr %bat_v.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bat_v.i, align 4
  %shr.i.i = lshr i32 %79, 10
  %80 = call i32 @llvm.umin.i32(i32 %shr.i.i, i32 %57) #9
  %81 = ptrtoint ptr %throughput.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %throughput.i, align 2
  call fastcc void @batadv_v_ogm_process_per_outif(ptr noundef %add.ptr.i.i49, ptr noundef %add.ptr.i.i.i, ptr noundef %add.ptr.i50, ptr noundef nonnull %call58.i, ptr noundef nonnull %call64.i, ptr noundef %if_incoming, ptr noundef null) #9
  %82 = call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i.i.i.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %85, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.end67.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end67.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end67.i
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end67.i.rcu_read_lock.exit.i_crit_edge
  %call74.i = call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end83.i_crit_edge

rcu_read_lock.exit.i.do.end83.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end83.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call76.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %land.lhs.true.i.do.end83.i_crit_edge, label %land.lhs.true78.i

land.lhs.true.i.do.end83.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end83.i

land.lhs.true78.i:                                ; preds = %land.lhs.true.i
  %.b212.i = load i1, ptr @batadv_v_ogm_process.__warned, align 1
  br i1 %.b212.i, label %land.lhs.true78.i.do.end83.i_crit_edge, label %if.then80.i

land.lhs.true78.i.do.end83.i_crit_edge:           ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end83.i

if.then80.i:                                      ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @batadv_v_ogm_process.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 924, ptr noundef nonnull @.str.11) #9
  br label %do.end83.i

do.end83.i:                                       ; preds = %if.then80.i, %land.lhs.true78.i.do.end83.i_crit_edge, %land.lhs.true.i.do.end83.i_crit_edge, %rcu_read_lock.exit.i.do.end83.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.0282.i = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp90.not283.i = icmp eq ptr %hard_iface.0282.i, @batadv_hardif_list
  br i1 %cmp90.not283.i, label %do.end83.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.end83.i.for.end.i_crit_edge:                   ; preds = %do.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end83.i
  %soft_iface98.i = getelementptr i8, ptr %49, i32 2308
  %orig109.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %call41.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %hard_iface.0284.i = phi ptr [ %hard_iface.0282.i, %for.body.lr.ph.i ], [ %hard_iface.0.i, %for.inc.i.for.body.i_crit_edge ]
  %if_status.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0284.i, i32 0, i32 1
  %86 = ptrtoint ptr %if_status.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %if_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %87)
  %cmp93.not.i = icmp eq i8 %87, 3
  br i1 %cmp93.not.i, label %if.end96.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end96.i:                                       ; preds = %for.body.i
  %soft_iface97.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0284.i, i32 0, i32 7
  %88 = ptrtoint ptr %soft_iface97.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %soft_iface97.i, align 4
  %90 = ptrtoint ptr %soft_iface98.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %soft_iface98.i, align 4
  %cmp99.not.i = icmp eq ptr %89, %91
  br i1 %cmp99.not.i, label %if.end102.i, label %if.end96.i.for.inc.i_crit_edge

if.end96.i.for.inc.i_crit_edge:                   ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end102.i:                                      ; preds = %if.end96.i
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0284.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #9
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #9
  %92 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end102.i
  %94 = phi i32 [ %93, %if.end102.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %95 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i.i.i.i.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %94, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #9
  %96 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %98 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %97, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i) #9, !srcloc !78
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %98, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %98, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %97
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !68

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %99 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %100, 1
  %101 = or i32 %add5.i.i.i.i.i, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %101)
  %.not.i.i.i.i.i = icmp sgt i32 %101, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !68

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #9
  %102 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %103 = phi i32 [ %100, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %103, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #9
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, label %if.end106.i

kref_get_unless_zero.exit.i.for.inc.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end106.i:                                      ; preds = %kref_get_unless_zero.exit.i
  %call111.i = call i32 @batadv_hardif_no_broadcast(ptr noundef %hard_iface.0284.i, ptr noundef %orig9.i, ptr noundef %orig109.i) #9
  %104 = zext i32 %call111.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call111.i, label %sw.default.i [
    i32 0, label %if.end132.i
    i32 1, label %if.end106.i.do.body116.i_crit_edge
    i32 2, label %sw.bb114.i
    i32 3, label %sw.bb115.i
  ]

if.end106.i.do.body116.i_crit_edge:               ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body116.i

sw.bb114.i:                                       ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body116.i

sw.bb115.i:                                       ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body116.i

sw.default.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body116.i

do.body116.i:                                     ; preds = %sw.default.i, %sw.bb115.i, %sw.bb114.i, %if.end106.i.do.body116.i_crit_edge
  %type.0.i = phi ptr [ @.str.15, %sw.default.i ], [ @.str.14, %sw.bb115.i ], [ @.str.13, %sw.bb114.i ], [ @.str.12, %if.end106.i.do.body116.i_crit_edge ]
  %call.i.i216.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #9
  %105 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %log_level.i, align 4
  %and120.i = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %do.body116.i.if.end129.i_crit_edge, label %if.then122.i

do.body116.i.if.end129.i_crit_edge:               ; preds = %do.body116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129.i

if.then122.i:                                     ; preds = %do.body116.i
  call void @__sanitizer_cov_trace_pc() #11
  %net_dev125.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0284.i, i32 0, i32 4
  %107 = ptrtoint ptr %net_dev125.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %net_dev125.i, align 4
  %call128.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i49, ptr noundef nonnull @.str.16, ptr noundef %orig9.i, ptr noundef %108, ptr noundef nonnull %type.0.i) #9
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then122.i, %do.body116.i.if.end129.i_crit_edge
  %tobool.not.i217.i = icmp eq ptr %hard_iface.0284.i, null
  br i1 %tobool.not.i217.i, label %if.end129.i.for.inc.i_crit_edge, label %if.end.i.i

if.end129.i.for.inc.i_crit_edge:                  ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end129.i
  %call.i.i.i.i.i.i.i218.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %109 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %109, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.for.inc.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !68

if.end5.i.i.i.i.i.i.for.inc.i_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %for.inc.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_hardif_release(ptr noundef %refcount.i) #9
  br label %for.inc.i

if.end132.i:                                      ; preds = %if.end106.i
  call fastcc void @batadv_v_ogm_process_per_outif(ptr noundef %add.ptr.i.i49, ptr noundef %add.ptr.i.i.i, ptr noundef %add.ptr.i50, ptr noundef nonnull %call58.i, ptr noundef nonnull %call64.i, ptr noundef %if_incoming, ptr noundef %hard_iface.0284.i) #9
  %tobool.not.i219.i = icmp eq ptr %hard_iface.0284.i, null
  br i1 %tobool.not.i219.i, label %if.end132.i.for.inc.i_crit_edge, label %if.end.i224.i

if.end132.i.for.inc.i_crit_edge:                  ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i224.i:                                    ; preds = %if.end132.i
  %call.i.i.i.i.i.i.i221.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %110 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i222.i = extractvalue { i32, i32, i32 } %110, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i222.i)
  %cmp.i.i.i.i.i223.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i222.i, 1
  br i1 %cmp.i.i.i.i.i223.i, label %if.then.i.i228.i, label %if.end5.i.i.i.i.i226.i

if.end5.i.i.i.i.i226.i:                           ; preds = %if.end.i224.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i222.i)
  %.not.i.i.i.i.i225.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i222.i, 0
  br i1 %.not.i.i.i.i.i225.i, label %if.end5.i.i.i.i.i226.i.for.inc.i_crit_edge, label %if.then10.i.i.i.i.i227.i, !prof !68

if.end5.i.i.i.i.i226.i.for.inc.i_crit_edge:       ; preds = %if.end5.i.i.i.i.i226.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then10.i.i.i.i.i227.i:                         ; preds = %if.end5.i.i.i.i.i226.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %for.inc.i

if.then.i.i228.i:                                 ; preds = %if.end.i224.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_hardif_release(ptr noundef %refcount.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i228.i, %if.then10.i.i.i.i.i227.i, %if.end5.i.i.i.i.i226.i.for.inc.i_crit_edge, %if.end132.i.for.inc.i_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.for.inc.i_crit_edge, %if.end129.i.for.inc.i_crit_edge, %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, %if.end96.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %111 = ptrtoint ptr %hard_iface.0284.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %hard_iface.0.i = load volatile ptr, ptr %hard_iface.0284.i, align 4
  %cmp90.not.i = icmp eq ptr %hard_iface.0.i, @batadv_hardif_list
  br i1 %cmp90.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end83.i.for.end.i_crit_edge
  %call.i230.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i230.i, label %for.end.i.out.i_crit_edge, label %land.lhs.true.i233.i

for.end.i.out.i_crit_edge:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

land.lhs.true.i233.i:                             ; preds = %for.end.i
  %call1.i231.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i231.i)
  %tobool.not.i232.i = icmp eq i32 %call1.i231.i, 0
  br i1 %tobool.not.i232.i, label %land.lhs.true.i233.i.out.i_crit_edge, label %land.lhs.true2.i235.i

land.lhs.true.i233.i.out.i_crit_edge:             ; preds = %land.lhs.true.i233.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

land.lhs.true2.i235.i:                            ; preds = %land.lhs.true.i233.i
  %.b4.i234.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i234.i, label %land.lhs.true2.i235.i.out.i_crit_edge, label %if.then.i236.i

land.lhs.true2.i235.i.out.i_crit_edge:            ; preds = %land.lhs.true2.i235.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then.i236.i:                                   ; preds = %land.lhs.true2.i235.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #9
  br label %out.i

out.i:                                            ; preds = %if.then.i236.i, %land.lhs.true2.i235.i.out.i_crit_edge, %land.lhs.true.i233.i.out.i_crit_edge, %for.end.i.out.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %112 = call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i.i.i.i237.i = and i32 %112, -16384
  %113 = inttoptr i32 %and.i.i.i.i.i237.i to ptr
  %preempt_count.i.i.i.i238.i = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %preempt_count.i.i.i.i238.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %preempt_count.i.i.i.i238.i, align 4
  %sub.i.i.i.i = add i32 %115, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i238.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %if.end.i244.i

if.end.i244.i:                                    ; preds = %out.i, %if.end61.i.if.end.i244.i_crit_edge
  %refcount.i240.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call58.i, i32 0, i32 27
  %call.i.i.i.i.i.i.i241.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i240.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i240.i, i32 1, i32 3, i32 1) #9
  %116 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i240.i, ptr %refcount.i240.i, i32 1, ptr elementtype(i32) %refcount.i240.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i242.i = extractvalue { i32, i32, i32 } %116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i242.i)
  %cmp.i.i.i.i.i243.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i242.i, 1
  br i1 %cmp.i.i.i.i.i243.i, label %if.then.i.i248.i, label %if.end5.i.i.i.i.i246.i

if.end5.i.i.i.i.i246.i:                           ; preds = %if.end.i244.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i242.i)
  %.not.i.i.i.i.i245.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i242.i, 0
  br i1 %.not.i.i.i.i.i245.i, label %if.end5.i.i.i.i.i246.i.batadv_orig_node_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i247.i, !prof !68

if.end5.i.i.i.i.i246.i.batadv_orig_node_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i246.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_orig_node_put.exit.i

if.then10.i.i.i.i.i247.i:                         ; preds = %if.end5.i.i.i.i.i246.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i240.i, i32 noundef 3) #9
  br label %batadv_orig_node_put.exit.i

if.then.i.i248.i:                                 ; preds = %if.end.i244.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_orig_node_release(ptr noundef %refcount.i240.i) #9
  br label %batadv_orig_node_put.exit.i

batadv_orig_node_put.exit.i:                      ; preds = %if.then.i.i248.i, %if.then10.i.i.i.i.i247.i, %if.end5.i.i.i.i.i246.i.batadv_orig_node_put.exit.i_crit_edge
  br i1 %tobool65.not.i, label %batadv_orig_node_put.exit.i.if.end.i264.i_crit_edge, label %if.end.i254.i

batadv_orig_node_put.exit.i.if.end.i264.i_crit_edge: ; preds = %batadv_orig_node_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i264.i

if.end.i254.i:                                    ; preds = %batadv_orig_node_put.exit.i
  %refcount.i250.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call64.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i251.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i250.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i250.i, i32 1, i32 3, i32 1) #9
  %117 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i250.i, ptr %refcount.i250.i, i32 1, ptr elementtype(i32) %refcount.i250.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i252.i = extractvalue { i32, i32, i32 } %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i252.i)
  %cmp.i.i.i.i.i253.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i252.i, 1
  br i1 %cmp.i.i.i.i.i253.i, label %if.then.i.i258.i, label %if.end5.i.i.i.i.i256.i

if.end5.i.i.i.i.i256.i:                           ; preds = %if.end.i254.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i252.i)
  %.not.i.i.i.i.i255.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i252.i, 0
  br i1 %.not.i.i.i.i.i255.i, label %if.end5.i.i.i.i.i256.i.if.end.i264.i_crit_edge, label %if.then10.i.i.i.i.i257.i, !prof !68

if.end5.i.i.i.i.i256.i.if.end.i264.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i256.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i264.i

if.then10.i.i.i.i.i257.i:                         ; preds = %if.end5.i.i.i.i.i256.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i250.i, i32 noundef 3) #9
  br label %if.end.i264.i

if.then.i.i258.i:                                 ; preds = %if.end.i254.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_neigh_node_release(ptr noundef %refcount.i250.i) #9
  br label %if.end.i264.i

if.end.i264.i:                                    ; preds = %if.then.i.i258.i, %if.then10.i.i.i.i.i257.i, %if.end5.i.i.i.i.i256.i.if.end.i264.i_crit_edge, %batadv_orig_node_put.exit.i.if.end.i264.i_crit_edge, %if.end55.i.if.end.i264.i_crit_edge
  %refcount.i260.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %call41.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i261.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i260.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i260.i, i32 1, i32 3, i32 1) #9
  %118 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i260.i, ptr %refcount.i260.i, i32 1, ptr elementtype(i32) %refcount.i260.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i262.i = extractvalue { i32, i32, i32 } %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i262.i)
  %cmp.i.i.i.i.i263.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i262.i, 1
  br i1 %cmp.i.i.i.i.i263.i, label %if.then.i.i268.i, label %if.end5.i.i.i.i.i266.i

if.end5.i.i.i.i.i266.i:                           ; preds = %if.end.i264.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i262.i)
  %.not.i.i.i.i.i265.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i262.i, 0
  br i1 %.not.i.i.i.i.i265.i, label %if.end5.i.i.i.i.i266.i.batadv_v_ogm_process.exit_crit_edge, label %if.then10.i.i.i.i.i267.i, !prof !68

if.end5.i.i.i.i.i266.i.batadv_v_ogm_process.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i266.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_process.exit

if.then10.i.i.i.i.i267.i:                         ; preds = %if.end5.i.i.i.i.i266.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i260.i, i32 noundef 3) #9
  br label %batadv_v_ogm_process.exit

if.then.i.i268.i:                                 ; preds = %if.end.i264.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_hardif_neigh_release(ptr noundef %refcount.i260.i) #9
  br label %batadv_v_ogm_process.exit

batadv_v_ogm_process.exit:                        ; preds = %if.then.i.i268.i, %if.then10.i.i.i.i.i267.i, %if.end5.i.i.i.i.i266.i.batadv_v_ogm_process.exit_crit_edge, %if.then50.i, %do.body44.i.batadv_v_ogm_process.exit_crit_edge, %if.then33.i, %do.body27.i.batadv_v_ogm_process.exit_crit_edge, %if.then19.i, %do.body13.i.batadv_v_ogm_process.exit_crit_edge
  %119 = ptrtoint ptr %tvlv_len.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %tvlv_len.i, align 2
  %conv = zext i16 %120 to i32
  %add12 = add i32 %add.i4868, %conv
  %121 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %122, i32 %add12
  %123 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %len, align 4
  %125 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %124, %126
  %add.i48 = add i32 %add12, 20
  %cmp.i = icmp sgt i32 %add.i48, %sub.i
  br i1 %cmp.i, label %batadv_v_ogm_process.exit.if.then16_crit_edge, label %batadv_v_ogm_process.exit.batadv_v_ogm_aggr_packet.exit_crit_edge

batadv_v_ogm_process.exit.batadv_v_ogm_aggr_packet.exit_crit_edge: ; preds = %batadv_v_ogm_process.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_aggr_packet.exit

batadv_v_ogm_process.exit.if.then16_crit_edge:    ; preds = %batadv_v_ogm_process.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %batadv_v_ogm_process.exit.if.then16_crit_edge, %batadv_v_ogm_aggr_packet.exit.if.then16_crit_edge, %batadv_add_counter.exit47.if.then16_crit_edge
  call void @consume_skb(ptr noundef %skb) #9
  br label %if.end17

if.else:                                          ; preds = %if.end5.if.else_crit_edge, %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  %ret.061 = phi i32 [ 1, %if.else ], [ 0, %if.then16 ]
  ret i32 %ret.061
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_check_management_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_is_my_mac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_v_ogm_init(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  %random_seqno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %random_seqno) #9
  %0 = ptrtoint ptr %random_seqno to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %random_seqno, align 4, !annotation !80
  %ogm_buff_len = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 42, i32 1
  %1 = ptrtoint ptr %ogm_buff_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 20, ptr %ogm_buff_len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 20) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bat_v = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 42
  %3 = ptrtoint ptr %bat_v to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %bat_v, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %call7.i.i, align 8
  %version = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 15, ptr %version, align 1
  %ttl = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 50, ptr %ttl, align 2
  %flags = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %flags, align 1
  %throughput = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %call7.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %throughput to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %throughput, align 8
  call void @get_random_bytes(ptr noundef nonnull %random_seqno, i32 noundef 4) #9
  %ogm_seqno = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 42, i32 2
  %9 = ptrtoint ptr %random_seqno to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %random_seqno, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ogm_seqno, i32 noundef 4) #9
  %11 = ptrtoint ptr %ogm_seqno to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %10, ptr %ogm_seqno, align 4
  %ogm_wq = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 42, i32 4
  call void @__init_work(ptr noundef %ogm_wq, i32 noundef 0) #9
  %12 = ptrtoint ptr %ogm_wq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %ogm_wq, align 4
  %lockdep_map = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 42, i32 4, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @batadv_v_ogm_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry17 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 42, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 42, i32 4, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 42, i32 4, i32 0, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @batadv_v_ogm_send, ptr %func, align 4
  %timer = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 42, i32 4, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @batadv_v_ogm_init.__key.2) #9
  %ogm_buff_mutex = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 42, i32 3
  call void @__mutex_init(ptr noundef %ogm_buff_mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @batadv_v_ogm_init.__key.4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %random_seqno) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_v_ogm_send(ptr noundef %work) #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  %ogm_buff.i = alloca ptr, align 4
  %ogm_buff_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1952
  %ogm_buff_mutex = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %ogm_buff_mutex, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ogm_buff.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ogm_buff_len.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr i8, ptr %work, i32 -28
  %call.i159.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159.i)
  %cmp.not.i = icmp eq i32 %call.i159.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !67

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr3, i32 noundef 4) #9
  %1 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %add.ptr3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp25.i = icmp eq i32 %2, 2
  br i1 %cmp25.i, label %if.end.i.batadv_v_ogm_send_softif.exit_crit_edge, label %if.end27.i

if.end.i.batadv_v_ogm_send_softif.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_send_softif.exit

if.end27.i:                                       ; preds = %if.end.i
  %bat_v28.i = getelementptr i8, ptr %work, i32 -104
  %3 = ptrtoint ptr %bat_v28.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bat_v28.i, align 4
  %5 = ptrtoint ptr %ogm_buff.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ogm_buff.i, align 4
  %ogm_buff_len31.i = getelementptr i8, ptr %work, i32 -100
  %6 = ptrtoint ptr %ogm_buff_len31.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ogm_buff_len31.i, align 4
  %8 = ptrtoint ptr %ogm_buff_len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ogm_buff_len.i, align 4
  tail call void @batadv_tt_local_commit_changes(ptr noundef %add.ptr3) #9
  %call32.i = call zeroext i16 @batadv_tvlv_container_ogm_append(ptr noundef %add.ptr3, ptr noundef nonnull %ogm_buff.i, ptr noundef nonnull %ogm_buff_len.i, i32 noundef 20) #9
  %9 = ptrtoint ptr %ogm_buff.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ogm_buff.i, align 4
  %11 = ptrtoint ptr %bat_v28.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %bat_v28.i, align 4
  %12 = ptrtoint ptr %ogm_buff_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ogm_buff_len.i, align 4
  %14 = ptrtoint ptr %ogm_buff_len31.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ogm_buff_len31.i, align 4
  %add.i.i.i = add i32 %13, 16
  %call.i.i160.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i.i.i, i32 noundef 2592) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i160.i, null
  br i1 %tobool.not.i.i.i, label %if.end27.i.reschedule.i_crit_edge, label %if.end40.i

if.end27.i.reschedule.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reschedule.i

if.end40.i:                                       ; preds = %if.end27.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i160.i, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i160.i, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 16
  store ptr %add.ptr.i.i, ptr %data.i.i.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %18, i32 16
  store ptr %add.ptr1.i.i, ptr %tail.i.i.i.i, align 8
  %19 = ptrtoint ptr %ogm_buff.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ogm_buff.i, align 4
  %21 = ptrtoint ptr %ogm_buff_len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ogm_buff_len.i, align 4
  %call.i161.i = call ptr @skb_put(ptr noundef nonnull %call.i.i160.i, i32 noundef %22) #9
  %23 = call ptr @memcpy(ptr %call.i161.i, ptr %20, i32 %22)
  %24 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i.i.i, align 4
  %ogm_seqno.i = getelementptr i8, ptr %work, i32 -96
  %call.i.i155.i = call zeroext i1 @__kasan_check_read(ptr noundef %ogm_seqno.i, i32 noundef 4) #9
  %26 = ptrtoint ptr %ogm_seqno.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %ogm_seqno.i, align 4
  %seqno.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %25, i32 0, i32 4
  %28 = ptrtoint ptr %seqno.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %seqno.i, align 2
  %call.i.i156.i = call zeroext i1 @__kasan_check_write(ptr noundef %ogm_seqno.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %ogm_seqno.i, i32 1, i32 3, i32 1) #9
  %29 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ogm_seqno.i, ptr %ogm_seqno.i, i32 1, ptr elementtype(i32) %ogm_seqno.i) #9, !srcloc !70
  %tvlv_len46.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %25, i32 0, i32 6
  %30 = ptrtoint ptr %tvlv_len46.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %call32.i, ptr %tvlv_len46.i, align 2
  %31 = call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.end40.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end40.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end40.i
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end40.i.rcu_read_lock.exit.i_crit_edge
  %call48.i = call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end57.i_crit_edge

rcu_read_lock.exit.i.do.end57.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call50.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %land.lhs.true.i.do.end57.i_crit_edge, label %land.lhs.true52.i

land.lhs.true.i.do.end57.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57.i

land.lhs.true52.i:                                ; preds = %land.lhs.true.i
  %.b154.i = load i1, ptr @batadv_v_ogm_send_softif.__warned, align 1
  br i1 %.b154.i, label %land.lhs.true52.i.do.end57.i_crit_edge, label %if.then54.i

land.lhs.true52.i.do.end57.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57.i

if.then54.i:                                      ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @batadv_v_ogm_send_softif.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 303, ptr noundef nonnull @.str.11) #9
  br label %do.end57.i

do.end57.i:                                       ; preds = %if.then54.i, %land.lhs.true52.i.do.end57.i_crit_edge, %land.lhs.true.i.do.end57.i_crit_edge, %rcu_read_lock.exit.i.do.end57.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.0191.i = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp63.not192.i = icmp eq ptr %hard_iface.0191.i, @batadv_hardif_list
  br i1 %cmp63.not192.i, label %do.end57.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.end57.i.for.end.i_crit_edge:                   ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end57.i
  %soft_iface64.i = getelementptr i8, ptr %work, i32 -1948
  %log_level88.i = getelementptr i8, ptr %work, i32 -1896
  %orig.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %25, i32 0, i32 5
  %throughput.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %25, i32 0, i32 7
  %ttl.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %25, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %hard_iface.0193.i = phi ptr [ %hard_iface.0191.i, %for.body.lr.ph.i ], [ %hard_iface.0.i, %for.inc.i.for.body.i_crit_edge ]
  %soft_iface.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0193.i, i32 0, i32 7
  %35 = ptrtoint ptr %soft_iface.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %soft_iface.i, align 4
  %37 = ptrtoint ptr %soft_iface64.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %soft_iface64.i, align 4
  %cmp65.not.i = icmp eq ptr %36, %38
  br i1 %cmp65.not.i, label %if.end67.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end67.i:                                       ; preds = %for.body.i
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0193.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #9
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #9
  %39 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end67.i
  %41 = phi i32 [ %40, %if.end67.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %42 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %41, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #9
  %43 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %45 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %44, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i) #9, !srcloc !78
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %45, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %45, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %44
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !68

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %46 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %47, 1
  %48 = or i32 %add5.i.i.i.i.i, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %.not.i.i.i.i.i = icmp sgt i32 %48, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !68

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #9
  %49 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %50 = phi i32 [ %47, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %50, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #9
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, label %if.end71.i

kref_get_unless_zero.exit.i.for.inc.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end71.i:                                       ; preds = %kref_get_unless_zero.exit.i
  %call72.i = call i32 @batadv_hardif_no_broadcast(ptr noundef %hard_iface.0193.i, ptr noundef null, ptr noundef null) #9
  %51 = zext i32 %call72.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call72.i, label %sw.default.i [
    i32 0, label %do.body86.i
    i32 1, label %if.end71.i.do.body77.i_crit_edge
    i32 2, label %sw.bb75.i
    i32 3, label %sw.bb76.i
  ]

if.end71.i.do.body77.i_crit_edge:                 ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77.i

sw.bb75.i:                                        ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77.i

sw.bb76.i:                                        ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77.i

sw.default.i:                                     ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77.i

do.body77.i:                                      ; preds = %sw.default.i, %sw.bb76.i, %sw.bb75.i, %if.end71.i.do.body77.i_crit_edge
  %type.0.i = phi ptr [ @.str.15, %sw.default.i ], [ @.str.14, %sw.bb76.i ], [ @.str.13, %sw.bb75.i ], [ @.str.12, %if.end71.i.do.body77.i_crit_edge ]
  %call.i.i157.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level88.i, i32 noundef 4) #9
  %52 = ptrtoint ptr %log_level88.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %log_level88.i, align 4
  %and.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool79.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool79.not.i, label %do.body77.i.if.end82.i_crit_edge, label %if.then80.i

do.body77.i.if.end82.i_crit_edge:                 ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82.i

if.then80.i:                                      ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #11
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0193.i, i32 0, i32 4
  %54 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net_dev.i, align 4
  %call81.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr3, ptr noundef nonnull @.str.25, ptr noundef %55, ptr noundef nonnull %type.0.i) #9
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then80.i, %do.body77.i.if.end82.i_crit_edge
  %tobool.not.i162.i = icmp eq ptr %hard_iface.0193.i, null
  br i1 %tobool.not.i162.i, label %if.end82.i.for.inc.i_crit_edge, label %if.end.i.i

if.end82.i.for.inc.i_crit_edge:                   ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end82.i
  %call.i.i.i.i.i.i.i163.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i164.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.for.inc.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !68

if.end5.i.i.i.i.i.i.for.inc.i_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %for.inc.i

if.then.i.i164.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_hardif_release(ptr noundef %refcount.i) #9
  br label %for.inc.i

do.body86.i:                                      ; preds = %if.end71.i
  %call.i.i158.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level88.i, i32 noundef 4) #9
  %57 = ptrtoint ptr %log_level88.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %log_level88.i, align 4
  %and90.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  br i1 %tobool91.not.i, label %do.body86.i.if.end100.i_crit_edge, label %if.then92.i

do.body86.i.if.end100.i_crit_edge:                ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100.i

if.then92.i:                                      ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %seqno.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %seqno.i, align 2
  %61 = ptrtoint ptr %throughput.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %throughput.i, align 2
  %63 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ttl.i, align 2
  %conv.i = zext i8 %64 to i32
  %net_dev95.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0193.i, i32 0, i32 4
  %65 = ptrtoint ptr %net_dev95.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net_dev95.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 86
  %67 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_addr.i, align 64
  %call99.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr3, ptr noundef nonnull @.str.26, ptr noundef %orig.i, i32 noundef %60, i32 noundef %62, i32 noundef %conv.i, ptr noundef %66, ptr noundef %68) #9
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.then92.i, %do.body86.i.if.end100.i_crit_edge
  %call103.i = call ptr @skb_clone(ptr noundef nonnull %call.i.i160.i, i32 noundef 2592) #9
  %tobool104.not.i = icmp eq ptr %call103.i, null
  br i1 %tobool104.not.i, label %if.then105.i, label %if.end106.i

if.then105.i:                                     ; preds = %if.end100.i
  %tobool.not.i9 = icmp eq ptr %hard_iface.0193.i, null
  br i1 %tobool.not.i9, label %if.then105.i.for.end.i_crit_edge, label %if.end.i13

if.then105.i.for.end.i_crit_edge:                 ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.i13:                                       ; preds = %if.then105.i
  %call.i.i.i.i.i.i.i11 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %69 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i12 = extractvalue { i32, i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i12)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i12, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i16, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i12)
  %.not.i.i.i.i.i14 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i12, 0
  br i1 %.not.i.i.i.i.i14, label %if.end5.i.i.i.i.i.for.end.i_crit_edge, label %if.then10.i.i.i.i.i15, !prof !68

if.end5.i.i.i.i.i.for.end.i_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.then10.i.i.i.i.i15:                            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %for.end.i

if.then.i.i16:                                    ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_hardif_release(ptr noundef %refcount.i) #9
  br label %for.end.i

if.end106.i:                                      ; preds = %if.end100.i
  call fastcc void @batadv_v_ogm_queue_on_if(ptr noundef nonnull %call103.i, ptr noundef %hard_iface.0193.i) #9
  %tobool.not.i165.i = icmp eq ptr %hard_iface.0193.i, null
  br i1 %tobool.not.i165.i, label %if.end106.i.for.inc.i_crit_edge, label %if.end.i170.i

if.end106.i.for.inc.i_crit_edge:                  ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i170.i:                                    ; preds = %if.end106.i
  %call.i.i.i.i.i.i.i167.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %70 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i168.i = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i168.i)
  %cmp.i.i.i.i.i169.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i168.i, 1
  br i1 %cmp.i.i.i.i.i169.i, label %if.then.i.i174.i, label %if.end5.i.i.i.i.i172.i

if.end5.i.i.i.i.i172.i:                           ; preds = %if.end.i170.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i168.i)
  %.not.i.i.i.i.i171.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i168.i, 0
  br i1 %.not.i.i.i.i.i171.i, label %if.end5.i.i.i.i.i172.i.for.inc.i_crit_edge, label %if.then10.i.i.i.i.i173.i, !prof !68

if.end5.i.i.i.i.i172.i.for.inc.i_crit_edge:       ; preds = %if.end5.i.i.i.i.i172.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then10.i.i.i.i.i173.i:                         ; preds = %if.end5.i.i.i.i.i172.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %for.inc.i

if.then.i.i174.i:                                 ; preds = %if.end.i170.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_hardif_release(ptr noundef %refcount.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i174.i, %if.then10.i.i.i.i.i173.i, %if.end5.i.i.i.i.i172.i.for.inc.i_crit_edge, %if.end106.i.for.inc.i_crit_edge, %if.then.i.i164.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.for.inc.i_crit_edge, %if.end82.i.for.inc.i_crit_edge, %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %71 = ptrtoint ptr %hard_iface.0193.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %hard_iface.0.i = load volatile ptr, ptr %hard_iface.0193.i, align 4
  %cmp63.not.i = icmp eq ptr %hard_iface.0.i, @batadv_hardif_list
  br i1 %cmp63.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then.i.i16, %if.then10.i.i.i.i.i15, %if.end5.i.i.i.i.i.for.end.i_crit_edge, %if.then105.i.for.end.i_crit_edge, %do.end57.i.for.end.i_crit_edge
  %call.i176.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i176.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i179.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i179.i:                             ; preds = %for.end.i
  %call1.i177.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i177.i)
  %tobool.not.i178.i = icmp eq i32 %call1.i177.i, 0
  br i1 %tobool.not.i178.i, label %land.lhs.true.i179.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i181.i

land.lhs.true.i179.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i179.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i181.i:                            ; preds = %land.lhs.true.i179.i
  %.b4.i180.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i180.i, label %land.lhs.true2.i181.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i182.i

land.lhs.true2.i181.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i181.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i182.i:                                   ; preds = %land.lhs.true2.i181.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i182.i, %land.lhs.true2.i181.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i179.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %72 = call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i.i.i.i183.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i183.i to ptr
  %preempt_count.i.i.i.i184.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i184.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i184.i, align 4
  %sub.i.i.i.i = add i32 %75, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i184.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @consume_skb(ptr noundef nonnull %call.i.i160.i) #9
  br label %reschedule.i

reschedule.i:                                     ; preds = %rcu_read_unlock.exit.i, %if.end27.i.reschedule.i_crit_edge
  %76 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %work, align 4
  %and1.i.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i185.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i185.i, label %if.end.i187.i, label %reschedule.i.batadv_v_ogm_send_softif.exit_crit_edge

reschedule.i.batadv_v_ogm_send_softif.exit_crit_edge: ; preds = %reschedule.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_send_softif.exit

if.end.i187.i:                                    ; preds = %reschedule.i
  call void @__sanitizer_cov_trace_pc() #11
  %orig_interval.i.i = getelementptr i8, ptr %work, i32 -1904
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %orig_interval.i.i, i32 noundef 4) #9
  %78 = ptrtoint ptr %orig_interval.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %orig_interval.i.i, align 4
  %call.i.i186.i = call i32 @prandom_u32() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %80 = load ptr, ptr @batadv_event_workqueue, align 4
  %sub.i.i = add i32 %79, -20
  %conv.i.i.i = zext i32 %call.i.i186.i to i64
  %mul.i.i.i = mul nuw nsw i64 %conv.i.i.i, 40
  %shr.i.i.i = lshr i64 %mul.i.i.i, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %add.i.i = add i32 %sub.i.i, %conv2.i.i.i
  %call2.i.i.i = call i32 @__msecs_to_jiffies(i32 noundef %add.i.i) #9
  %call.i10.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %80, ptr noundef %work, i32 noundef %call2.i.i.i) #9
  br label %batadv_v_ogm_send_softif.exit

batadv_v_ogm_send_softif.exit:                    ; preds = %if.end.i187.i, %reschedule.i.batadv_v_ogm_send_softif.exit_crit_edge, %if.end.i.batadv_v_ogm_send_softif.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ogm_buff_len.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ogm_buff.i) #9
  call void @mutex_unlock(ptr noundef %ogm_buff_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_v_ogm_free(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bat_v = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 42
  %ogm_wq = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 42, i32 4
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ogm_wq) #9
  %ogm_buff_mutex = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 42, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ogm_buff_mutex, i32 noundef 0) #9
  %0 = ptrtoint ptr %bat_v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_v, align 4
  tail call void @kfree(ptr noundef %1) #9
  %2 = ptrtoint ptr %bat_v to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bat_v, align 4
  %ogm_buff_len = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 42, i32 1
  %3 = ptrtoint ptr %ogm_buff_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ogm_buff_len, align 4
  tail call void @mutex_unlock(ptr noundef %ogm_buff_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_v_ogm_send_to_if(ptr noundef %skb, ptr noundef %hard_iface) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 1
  %0 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.not = icmp eq i8 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 7
  %2 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soft_iface, align 4
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !74
  %bat_counters.i = getelementptr i8, ptr %3, i32 2312
  %5 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %6, i32 7
  %7 = ptrtoint ptr %arrayidx.i to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  %add15.i = add i64 %16, 1
  store i64 %add15.i, ptr %14, align 8
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !75
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.batadv_add_counter.exit_crit_edge, !prof !67

if.end.batadv_add_counter.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_add_counter.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i, %if.end.batadv_add_counter.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #9, !srcloc !76
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %add = add i32 %19, 14
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !74
  %conv6.i = zext i32 %add to i64
  %21 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i8 = getelementptr i64, ptr %22, i32 8
  %23 = ptrtoint ptr %arrayidx.i8 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i9 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i9 to ptr
  %cpu.i10 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i10, align 4
  %arrayidx14.i11 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx14.i11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx14.i11, align 4
  %add.i12 = add i32 %29, %23
  %30 = inttoptr i32 %add.i12 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %30, align 8
  %add15.i13 = add i64 %32, %conv6.i
  store i64 %add15.i13, ptr %30, align 8
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !75
  %and.i.i.i14 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i14)
  %tobool.not.i15 = icmp eq i32 %and.i.i.i14, 0
  br i1 %tobool.not.i15, label %if.then.i16, label %batadv_add_counter.exit.batadv_add_counter.exit17_crit_edge, !prof !67

batadv_add_counter.exit.batadv_add_counter.exit17_crit_edge: ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_add_counter.exit17

if.then.i16:                                      ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %batadv_add_counter.exit17

batadv_add_counter.exit17:                        ; preds = %if.then.i16, %batadv_add_counter.exit.batadv_add_counter.exit17_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #9, !srcloc !76
  %call2 = tail call i32 @batadv_send_broadcast_skb(ptr noundef %skb, ptr noundef %hard_iface) #9
  br label %cleanup

cleanup:                                          ; preds = %batadv_add_counter.exit17, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_send_broadcast_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_hardif_neigh_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_neigh_node_get_or_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_v_ogm_process_per_outif(ptr noundef %bat_priv, ptr noundef %ethhdr, ptr noundef %ogm2, ptr noundef %orig_node, ptr noundef %neigh_node, ptr noundef %if_incoming, ptr noundef %if_outgoing) unnamed_addr #0 align 64 {
entry:
  %protection_started.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %protection_started.i) #9
  %0 = ptrtoint ptr %protection_started.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %protection_started.i, align 1
  %call.i = tail call ptr @batadv_orig_ifinfo_new(ptr noundef %orig_node, ptr noundef %if_outgoing) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %batadv_v_ogm_metric_update.exit.thread, label %if.end.i

batadv_v_ogm_metric_update.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %protection_started.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %seqno.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %ogm2, i32 0, i32 4
  %1 = ptrtoint ptr %seqno.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %seqno.i, align 2
  %last_real_seqno.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %last_real_seqno.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_real_seqno.i, align 4
  %sub.i = sub i32 %2, %4
  %neigh_list.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 22
  %5 = ptrtoint ptr %neigh_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %neigh_list.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.not.i, label %if.end.i.if.end22.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %batman_seqno_reset.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call.i, i32 0, i32 6
  %call3.i = call zeroext i1 @batadv_window_protected(ptr noundef %bat_priv, i32 noundef %sub.i, i32 noundef 64, ptr noundef %batman_seqno_reset.i, ptr noundef nonnull %protection_started.i) #9
  br i1 %call3.i, label %do.body.i, label %land.lhs.true.i.if.end22.i_crit_edge

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

do.body.i:                                        ; preds = %land.lhs.true.i
  %log_level.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #9
  %7 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %do.body.i.if.end9.i_crit_edge, label %if.then7.i

do.body.i.if.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %orig.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %ogm2, i32 0, i32 5
  %call8.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.17, ptr noundef %orig.i) #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %do.body.i.if.end9.i_crit_edge
  %call.i.i72.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %log_level.i, align 4
  %and14.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end9.i.if.end.i75.i_crit_edge, label %if.then16.i

if.end9.i.if.end.i75.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i75.i

if.then16.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %batman_seqno_reset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %batman_seqno_reset.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %call18.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.18, i32 noundef %12, i32 noundef %13) #9
  br label %if.end.i75.i

if.end22.i:                                       ; preds = %land.lhs.true.i.if.end22.i_crit_edge, %if.end.i.if.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true23.i, label %if.end22.i.if.end26.i_crit_edge

if.end22.i.if.end26.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

land.lhs.true23.i:                                ; preds = %if.end22.i
  %14 = ptrtoint ptr %protection_started.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %protection_started.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool24.not.i = icmp eq i8 %15, 0
  br i1 %tobool24.not.i, label %land.lhs.true23.i.if.end.i75.i_crit_edge, label %land.lhs.true23.i.if.end26.i_crit_edge

land.lhs.true23.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

land.lhs.true23.i.if.end.i75.i_crit_edge:         ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i75.i

if.end26.i:                                       ; preds = %land.lhs.true23.i.if.end26.i_crit_edge, %if.end22.i.if.end26.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %last_seen.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node, i32 0, i32 6
  %17 = ptrtoint ptr %last_seen.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %last_seen.i, align 4
  %18 = load volatile i32, ptr @jiffies, align 128
  %last_seen27.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 4
  %19 = ptrtoint ptr %last_seen27.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %last_seen27.i, align 4
  %20 = ptrtoint ptr %seqno.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %seqno.i, align 2
  %22 = ptrtoint ptr %last_real_seqno.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %last_real_seqno.i, align 4
  %ttl.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %ogm2, i32 0, i32 2
  %23 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ttl.i, align 2
  %last_ttl.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %last_ttl.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %last_ttl.i, align 4
  %call30.i = call ptr @batadv_neigh_ifinfo_new(ptr noundef %neigh_node, ptr noundef %if_outgoing) #9
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %if.end26.i.if.end.i75.i_crit_edge, label %if.end33.i

if.end26.i.if.end.i75.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i75.i

if.end33.i:                                       ; preds = %if.end26.i
  %throughput.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %ogm2, i32 0, i32 7
  %26 = ptrtoint ptr %throughput.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %throughput.i, align 2
  %hop_penalty.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_incoming, i32 0, i32 9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %hop_penalty.i.i, i32 noundef 4) #9
  %28 = ptrtoint ptr %hop_penalty.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %hop_penalty.i.i, align 4
  %hop_penalty2.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 13
  %call.i.i25.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %hop_penalty2.i.i, i32 noundef 4) #9
  %30 = ptrtoint ptr %hop_penalty2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %hop_penalty2.i.i, align 4
  %sub.i.i = sub i32 255, %29
  %mul.i.i = mul i32 %sub.i.i, %27
  %div.i.i = udiv i32 %mul.i.i, 255
  %cmp.i.i = icmp eq ptr %if_outgoing, null
  br i1 %cmp.i.i, label %if.end33.i.batadv_v_forward_penalty.exit.i_crit_edge, label %if.end.i.i

if.end33.i.batadv_v_forward_penalty.exit.i_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_forward_penalty.exit.i

if.end.i.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2804, i32 %mul.i.i)
  %cmp4.i.i = icmp ugt i32 %mul.i.i, 2804
  %cmp5.i.i = icmp eq ptr %if_incoming, %if_outgoing
  %or.cond.i.i = and i1 %cmp5.i.i, %cmp4.i.i
  br i1 %or.cond.i.i, label %land.lhs.true6.i.i, label %if.end.i.i.if.end9.i.i_crit_edge

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i

land.lhs.true6.i.i:                               ; preds = %if.end.i.i
  %flags.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_incoming, i32 0, i32 11, i32 8
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags.i.i, align 4
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i73.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i73.i, label %if.then7.i.i, label %land.lhs.true6.i.i.if.end9.i.i_crit_edge

land.lhs.true6.i.i.if.end9.i.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div8.i.i = udiv i32 %mul.i.i, 510
  br label %batadv_v_forward_penalty.exit.i

if.end9.i.i:                                      ; preds = %land.lhs.true6.i.i.if.end9.i.i_crit_edge, %if.end.i.i.if.end9.i.i_crit_edge
  %sub10.i.i = sub i32 255, %31
  %mul11.i.i = mul i32 %div.i.i, %sub10.i.i
  %div12.i.i = udiv i32 %mul11.i.i, 255
  br label %batadv_v_forward_penalty.exit.i

batadv_v_forward_penalty.exit.i:                  ; preds = %if.end9.i.i, %if.then7.i.i, %if.end33.i.batadv_v_forward_penalty.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %div12.i.i, %if.end9.i.i ], [ %div8.i.i, %if.then7.i.i ], [ %div.i.i, %if.end33.i.batadv_v_forward_penalty.exit.i_crit_edge ]
  %bat_v.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call30.i, i32 0, i32 3
  %35 = ptrtoint ptr %bat_v.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i, ptr %bat_v.i, align 4
  %36 = ptrtoint ptr %seqno.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %seqno.i, align 2
  %last_seqno.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call30.i, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %last_seqno.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %last_seqno.i, align 4
  %39 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ttl.i, align 2
  %last_ttl39.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call30.i, i32 0, i32 4
  %41 = ptrtoint ptr %last_ttl39.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %last_ttl39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp40.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp40.i, label %batadv_v_forward_penalty.exit.i.if.end.i75.i_crit_edge, label %lor.lhs.false.i

batadv_v_forward_penalty.exit.i.if.end.i75.i_crit_edge: ; preds = %batadv_v_forward_penalty.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i75.i

lor.lhs.false.i:                                  ; preds = %batadv_v_forward_penalty.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %protection_started.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %protection_started.i, align 1, !range !81
  %44 = zext i8 %43 to i32
  br label %if.end.i75.i

if.end.i75.i:                                     ; preds = %lor.lhs.false.i, %batadv_v_forward_penalty.exit.i.if.end.i75.i_crit_edge, %if.end26.i.if.end.i75.i_crit_edge, %land.lhs.true23.i.if.end.i75.i_crit_edge, %if.then16.i, %if.end9.i.if.end.i75.i_crit_edge
  %neigh_ifinfo.0.ph.i = phi ptr [ %call30.i, %lor.lhs.false.i ], [ %call30.i, %batadv_v_forward_penalty.exit.i.if.end.i75.i_crit_edge ], [ null, %if.end9.i.if.end.i75.i_crit_edge ], [ null, %if.then16.i ], [ null, %land.lhs.true23.i.if.end.i75.i_crit_edge ], [ null, %if.end26.i.if.end.i75.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ %44, %lor.lhs.false.i ], [ 1, %batadv_v_forward_penalty.exit.i.if.end.i75.i_crit_edge ], [ -22, %if.end9.i.if.end.i75.i_crit_edge ], [ -22, %if.then16.i ], [ -22, %land.lhs.true23.i.if.end.i75.i_crit_edge ], [ -22, %if.end26.i.if.end.i75.i_crit_edge ]
  %refcount.i.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.batadv_orig_ifinfo_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !68

if.end5.i.i.i.i.i.i.batadv_orig_ifinfo_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_orig_ifinfo_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #9
  br label %batadv_orig_ifinfo_put.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_orig_ifinfo_release(ptr noundef %refcount.i.i) #9
  br label %batadv_orig_ifinfo_put.exit.i

batadv_orig_ifinfo_put.exit.i:                    ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.batadv_orig_ifinfo_put.exit.i_crit_edge
  %tobool.not.i76.i = icmp eq ptr %neigh_ifinfo.0.ph.i, null
  br i1 %tobool.not.i76.i, label %batadv_orig_ifinfo_put.exit.i.batadv_v_ogm_metric_update.exit_crit_edge, label %if.end.i81.i

batadv_orig_ifinfo_put.exit.i.batadv_v_ogm_metric_update.exit_crit_edge: ; preds = %batadv_orig_ifinfo_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_metric_update.exit

if.end.i81.i:                                     ; preds = %batadv_orig_ifinfo_put.exit.i
  %refcount.i77.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %neigh_ifinfo.0.ph.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i78.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i77.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i77.i, i32 1, i32 3, i32 1) #9
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i77.i, ptr %refcount.i77.i, i32 1, ptr elementtype(i32) %refcount.i77.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i79.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i79.i)
  %cmp.i.i.i.i.i80.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i79.i, 1
  br i1 %cmp.i.i.i.i.i80.i, label %if.then.i.i85.i, label %if.end5.i.i.i.i.i83.i

if.end5.i.i.i.i.i83.i:                            ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i79.i)
  %.not.i.i.i.i.i82.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i79.i, 0
  br i1 %.not.i.i.i.i.i82.i, label %if.end5.i.i.i.i.i83.i.batadv_v_ogm_metric_update.exit_crit_edge, label %if.then10.i.i.i.i.i84.i, !prof !68

if.end5.i.i.i.i.i83.i.batadv_v_ogm_metric_update.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_metric_update.exit

if.then10.i.i.i.i.i84.i:                          ; preds = %if.end5.i.i.i.i.i83.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i77.i, i32 noundef 3) #9
  br label %batadv_v_ogm_metric_update.exit

if.then.i.i85.i:                                  ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i77.i) #9
  br label %batadv_v_ogm_metric_update.exit

batadv_v_ogm_metric_update.exit:                  ; preds = %if.then.i.i85.i, %if.then10.i.i.i.i.i84.i, %if.end5.i.i.i.i.i83.i.batadv_v_ogm_metric_update.exit_crit_edge, %batadv_orig_ifinfo_put.exit.i.batadv_v_ogm_metric_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %protection_started.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.ph.i)
  %cmp = icmp slt i32 %ret.0.ph.i, 0
  br i1 %cmp, label %batadv_v_ogm_metric_update.exit.cleanup_crit_edge, label %if.end

batadv_v_ogm_metric_update.exit.cleanup_crit_edge: ; preds = %batadv_v_ogm_metric_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %batadv_v_ogm_metric_update.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.ph.i)
  %cmp1.not = icmp ne i32 %ret.0.ph.i, 0
  %cmp2 = icmp eq ptr %if_outgoing, null
  %or.cond = and i1 %cmp2, %cmp1.not
  br i1 %or.cond, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr %struct.batadv_ogm2_packet, ptr %ogm2, i32 1
  %tvlv_len = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %ogm2, i32 0, i32 6
  %47 = ptrtoint ptr %tvlv_len to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %tvlv_len, align 2
  %call4 = call i32 @batadv_tvlv_containers_process(ptr noundef %bat_priv, i1 noundef zeroext true, ptr noundef %orig_node, ptr noundef null, ptr noundef null, ptr noundef %add.ptr, i16 noundef zeroext %48) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %ethhdr, i32 0, i32 1
  %call.i28 = call ptr @batadv_v_ogm_orig_get(ptr noundef %bat_priv, ptr noundef %h_source.i) #9
  %tobool.not.i29 = icmp eq ptr %call.i28, null
  br i1 %tobool.not.i29, label %if.end5.cleanup_crit_edge, label %if.end.i30

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i30:                                       ; preds = %if.end5
  %call1.i = call ptr @batadv_orig_router_get(ptr noundef nonnull %call.i28, ptr noundef %if_outgoing) #9
  %call2.i = call ptr @batadv_orig_router_get(ptr noundef %orig_node, ptr noundef %if_outgoing) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i30.if.end13.i_crit_edge, label %land.lhs.true.i32

if.end.i30.if.end13.i_crit_edge:                  ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

land.lhs.true.i32:                                ; preds = %if.end.i30
  %orig_node4.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call2.i, i32 0, i32 1
  %49 = ptrtoint ptr %orig_node4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %orig_node4.i, align 4
  %cmp.not.i = icmp ne ptr %50, %orig_node
  %tobool6.not.i31 = icmp eq ptr %call1.i, null
  %or.cond.i = select i1 %cmp.not.i, i1 %tobool6.not.i31, i1 false
  br i1 %or.cond.i, label %do.body.i36, label %land.lhs.true.i32.if.end13.i_crit_edge

land.lhs.true.i32.if.end13.i_crit_edge:           ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

do.body.i36:                                      ; preds = %land.lhs.true.i32
  %log_level.i33 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i.i34 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i33, i32 noundef 4) #9
  %51 = ptrtoint ptr %log_level.i33 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %log_level.i33, align 4
  %and.i35 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %tobool9.not.i = icmp eq i32 %and.i35, 0
  br i1 %tobool9.not.i, label %do.body.i36.if.end.i.i47_crit_edge, label %if.then10.i

do.body.i36.if.end.i.i47_crit_edge:               ; preds = %do.body.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i47

if.then10.i:                                      ; preds = %do.body.i36
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.10) #9
  br label %if.end.i.i47

if.end13.i:                                       ; preds = %land.lhs.true.i32.if.end13.i_crit_edge, %if.end.i30.if.end13.i_crit_edge
  %log_level16.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i1.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level16.i, i32 noundef 4) #9
  %53 = ptrtoint ptr %log_level16.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %log_level16.i, align 4
  %and18.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end13.i.if.end22.i37_crit_edge, label %if.then20.i

if.end13.i.if.end22.i37_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i37

if.then20.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %call21.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.19) #9
  br label %if.end22.i37

if.end22.i37:                                     ; preds = %if.then20.i, %if.end13.i.if.end22.i37_crit_edge
  %cmp25.i = icmp eq ptr %call2.i, %neigh_node
  br i1 %cmp25.i, label %if.end22.i37.out.i_crit_edge, label %if.end27.i

if.end22.i37.out.i_crit_edge:                     ; preds = %if.end22.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end27.i:                                       ; preds = %if.end22.i37
  br i1 %tobool3.not.i, label %if.end27.i.if.end46.i_crit_edge, label %if.then29.i

if.end27.i.if.end46.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then29.i:                                      ; preds = %if.end27.i
  %call30.i38 = call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %call2.i, ptr noundef %if_outgoing) #9
  %call31.i = call ptr @batadv_neigh_ifinfo_get(ptr noundef %neigh_node, ptr noundef %if_outgoing) #9
  %tobool32.not.i = icmp eq ptr %call30.i38, null
  br i1 %tobool32.not.i, label %if.then29.i.if.end.i.i47_crit_edge, label %lor.lhs.false.i39

if.then29.i.if.end.i.i47_crit_edge:               ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i47

lor.lhs.false.i39:                                ; preds = %if.then29.i
  %tobool33.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool33.not.i, label %lor.lhs.false.i39.if.end.i.i47_crit_edge, label %if.end35.i

lor.lhs.false.i39.if.end.i.i47_crit_edge:         ; preds = %lor.lhs.false.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i47

if.end35.i:                                       ; preds = %lor.lhs.false.i39
  %last_seqno.i40 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call31.i, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %last_seqno.i40 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %last_seqno.i40, align 4
  %last_seqno37.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call30.i38, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %last_seqno37.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %last_seqno37.i, align 4
  %sub.i41 = sub i32 %56, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i41)
  %cmp41.i = icmp slt i32 %sub.i41, 5
  br i1 %cmp41.i, label %land.lhs.true42.i, label %if.end35.i.if.end46.i_crit_edge

if.end35.i.if.end46.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

land.lhs.true42.i:                                ; preds = %if.end35.i
  %bat_v.i42 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call31.i, i32 0, i32 3
  %59 = ptrtoint ptr %bat_v.i42 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bat_v.i42, align 4
  %bat_v36.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call30.i38, i32 0, i32 3
  %61 = ptrtoint ptr %bat_v36.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bat_v36.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %60)
  %cmp43.not.i = icmp ult i32 %62, %60
  br i1 %cmp43.not.i, label %land.lhs.true42.i.if.end46.i_crit_edge, label %land.lhs.true42.i.if.end.i.i47_crit_edge

land.lhs.true42.i.if.end.i.i47_crit_edge:         ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i47

land.lhs.true42.i.if.end46.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.end46.i:                                       ; preds = %land.lhs.true42.i.if.end46.i_crit_edge, %if.end35.i.if.end46.i_crit_edge, %if.end27.i.if.end46.i_crit_edge
  %router_ifinfo.0.i = phi ptr [ %call30.i38, %land.lhs.true42.i.if.end46.i_crit_edge ], [ %call30.i38, %if.end35.i.if.end46.i_crit_edge ], [ null, %if.end27.i.if.end46.i_crit_edge ]
  %neigh_ifinfo.0.i = phi ptr [ %call31.i, %land.lhs.true42.i.if.end46.i_crit_edge ], [ %call31.i, %if.end35.i.if.end46.i_crit_edge ], [ null, %if.end27.i.if.end46.i_crit_edge ]
  call void @batadv_update_route(ptr noundef %bat_priv, ptr noundef %orig_node, ptr noundef %if_outgoing, ptr noundef %neigh_node) #9
  br label %out.i

out.i:                                            ; preds = %if.end46.i, %if.end22.i37.out.i_crit_edge
  %router_ifinfo.1.i = phi ptr [ null, %if.end22.i37.out.i_crit_edge ], [ %router_ifinfo.0.i, %if.end46.i ]
  %neigh_ifinfo.1.i = phi ptr [ null, %if.end22.i37.out.i_crit_edge ], [ %neigh_ifinfo.0.i, %if.end46.i ]
  br i1 %tobool3.not.i, label %out.i.batadv_neigh_node_put.exit.i_crit_edge, label %out.i.if.end.i.i47_crit_edge

out.i.if.end.i.i47_crit_edge:                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i47

out.i.batadv_neigh_node_put.exit.i_crit_edge:     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_neigh_node_put.exit.i

if.end.i.i47:                                     ; preds = %out.i.if.end.i.i47_crit_edge, %land.lhs.true42.i.if.end.i.i47_crit_edge, %lor.lhs.false.i39.if.end.i.i47_crit_edge, %if.then29.i.if.end.i.i47_crit_edge, %if.then10.i, %do.body.i36.if.end.i.i47_crit_edge
  %forward.0.off057.i = phi i1 [ true, %out.i.if.end.i.i47_crit_edge ], [ false, %do.body.i36.if.end.i.i47_crit_edge ], [ false, %if.then10.i ], [ true, %if.then29.i.if.end.i.i47_crit_edge ], [ true, %lor.lhs.false.i39.if.end.i.i47_crit_edge ], [ true, %land.lhs.true42.i.if.end.i.i47_crit_edge ]
  %neigh_ifinfo.155.i = phi ptr [ %neigh_ifinfo.1.i, %out.i.if.end.i.i47_crit_edge ], [ null, %do.body.i36.if.end.i.i47_crit_edge ], [ null, %if.then10.i ], [ %call31.i, %if.then29.i.if.end.i.i47_crit_edge ], [ null, %lor.lhs.false.i39.if.end.i.i47_crit_edge ], [ %call31.i, %land.lhs.true42.i.if.end.i.i47_crit_edge ]
  %router_ifinfo.153.i = phi ptr [ %router_ifinfo.1.i, %out.i.if.end.i.i47_crit_edge ], [ null, %do.body.i36.if.end.i.i47_crit_edge ], [ null, %if.then10.i ], [ null, %if.then29.i.if.end.i.i47_crit_edge ], [ %call30.i38, %lor.lhs.false.i39.if.end.i.i47_crit_edge ], [ %call30.i38, %land.lhs.true42.i.if.end.i.i47_crit_edge ]
  %orig_neigh_router.051.i = phi ptr [ %call1.i, %out.i.if.end.i.i47_crit_edge ], [ null, %do.body.i36.if.end.i.i47_crit_edge ], [ null, %if.then10.i ], [ %call1.i, %if.then29.i.if.end.i.i47_crit_edge ], [ %call1.i, %lor.lhs.false.i39.if.end.i.i47_crit_edge ], [ %call1.i, %land.lhs.true42.i.if.end.i.i47_crit_edge ]
  %refcount.i.i43 = getelementptr inbounds %struct.batadv_neigh_node, ptr %call2.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i.i44 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i43, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i.i43, i32 1, i32 3, i32 1) #9
  %63 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i43, ptr %refcount.i.i43, i32 1, ptr elementtype(i32) %refcount.i.i43) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i.i45 = extractvalue { i32, i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i45)
  %cmp.i.i.i.i.i.i46 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i45, 1
  br i1 %cmp.i.i.i.i.i.i46, label %if.then.i.i.i51, label %if.end5.i.i.i.i.i.i49

if.end5.i.i.i.i.i.i49:                            ; preds = %if.end.i.i47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i45)
  %.not.i.i.i.i.i.i48 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i45, 0
  br i1 %.not.i.i.i.i.i.i48, label %if.end5.i.i.i.i.i.i49.batadv_neigh_node_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i50, !prof !68

if.end5.i.i.i.i.i.i49.batadv_neigh_node_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_neigh_node_put.exit.i

if.then10.i.i.i.i.i.i50:                          ; preds = %if.end5.i.i.i.i.i.i49
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i43, i32 noundef 3) #9
  br label %batadv_neigh_node_put.exit.i

if.then.i.i.i51:                                  ; preds = %if.end.i.i47
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_neigh_node_release(ptr noundef %refcount.i.i43) #9
  br label %batadv_neigh_node_put.exit.i

batadv_neigh_node_put.exit.i:                     ; preds = %if.then.i.i.i51, %if.then10.i.i.i.i.i.i50, %if.end5.i.i.i.i.i.i49.batadv_neigh_node_put.exit.i_crit_edge, %out.i.batadv_neigh_node_put.exit.i_crit_edge
  %forward.0.off058.i = phi i1 [ true, %out.i.batadv_neigh_node_put.exit.i_crit_edge ], [ %forward.0.off057.i, %if.end5.i.i.i.i.i.i49.batadv_neigh_node_put.exit.i_crit_edge ], [ %forward.0.off057.i, %if.then10.i.i.i.i.i.i50 ], [ %forward.0.off057.i, %if.then.i.i.i51 ]
  %neigh_ifinfo.156.i = phi ptr [ %neigh_ifinfo.1.i, %out.i.batadv_neigh_node_put.exit.i_crit_edge ], [ %neigh_ifinfo.155.i, %if.end5.i.i.i.i.i.i49.batadv_neigh_node_put.exit.i_crit_edge ], [ %neigh_ifinfo.155.i, %if.then10.i.i.i.i.i.i50 ], [ %neigh_ifinfo.155.i, %if.then.i.i.i51 ]
  %router_ifinfo.154.i = phi ptr [ %router_ifinfo.1.i, %out.i.batadv_neigh_node_put.exit.i_crit_edge ], [ %router_ifinfo.153.i, %if.end5.i.i.i.i.i.i49.batadv_neigh_node_put.exit.i_crit_edge ], [ %router_ifinfo.153.i, %if.then10.i.i.i.i.i.i50 ], [ %router_ifinfo.153.i, %if.then.i.i.i51 ]
  %orig_neigh_router.052.i = phi ptr [ %call1.i, %out.i.batadv_neigh_node_put.exit.i_crit_edge ], [ %orig_neigh_router.051.i, %if.end5.i.i.i.i.i.i49.batadv_neigh_node_put.exit.i_crit_edge ], [ %orig_neigh_router.051.i, %if.then10.i.i.i.i.i.i50 ], [ %orig_neigh_router.051.i, %if.then.i.i.i51 ]
  %tobool.not.i2.i = icmp eq ptr %orig_neigh_router.052.i, null
  br i1 %tobool.not.i2.i, label %batadv_neigh_node_put.exit.i.if.end.i18.i_crit_edge, label %if.end.i7.i

batadv_neigh_node_put.exit.i.if.end.i18.i_crit_edge: ; preds = %batadv_neigh_node_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i18.i

if.end.i7.i:                                      ; preds = %batadv_neigh_node_put.exit.i
  %refcount.i3.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %orig_neigh_router.052.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i4.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i3.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i3.i, i32 1, i32 3, i32 1) #9
  %64 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i3.i, ptr %refcount.i3.i, i32 1, ptr elementtype(i32) %refcount.i3.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i5.i = extractvalue { i32, i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i5.i)
  %cmp.i.i.i.i.i6.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i5.i, 1
  br i1 %cmp.i.i.i.i.i6.i, label %if.then.i.i11.i, label %if.end5.i.i.i.i.i9.i

if.end5.i.i.i.i.i9.i:                             ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i5.i)
  %.not.i.i.i.i.i8.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i5.i, 0
  br i1 %.not.i.i.i.i.i8.i, label %if.end5.i.i.i.i.i9.i.if.end.i18.i_crit_edge, label %if.then10.i.i.i.i.i10.i, !prof !68

if.end5.i.i.i.i.i9.i.if.end.i18.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i18.i

if.then10.i.i.i.i.i10.i:                          ; preds = %if.end5.i.i.i.i.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i3.i, i32 noundef 3) #9
  br label %if.end.i18.i

if.then.i.i11.i:                                  ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_neigh_node_release(ptr noundef %refcount.i3.i) #9
  br label %if.end.i18.i

if.end.i18.i:                                     ; preds = %if.then.i.i11.i, %if.then10.i.i.i.i.i10.i, %if.end5.i.i.i.i.i9.i.if.end.i18.i_crit_edge, %batadv_neigh_node_put.exit.i.if.end.i18.i_crit_edge
  %refcount.i14.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call.i28, i32 0, i32 27
  %call.i.i.i.i.i.i.i15.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i14.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i14.i, i32 1, i32 3, i32 1) #9
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i14.i, ptr %refcount.i14.i, i32 1, ptr elementtype(i32) %refcount.i14.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i16.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i16.i)
  %cmp.i.i.i.i.i17.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i16.i, 1
  br i1 %cmp.i.i.i.i.i17.i, label %if.then.i.i22.i, label %if.end5.i.i.i.i.i20.i

if.end5.i.i.i.i.i20.i:                            ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i16.i)
  %.not.i.i.i.i.i19.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i16.i, 0
  br i1 %.not.i.i.i.i.i19.i, label %if.end5.i.i.i.i.i20.i.batadv_orig_node_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i21.i, !prof !68

if.end5.i.i.i.i.i20.i.batadv_orig_node_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_orig_node_put.exit.i

if.then10.i.i.i.i.i21.i:                          ; preds = %if.end5.i.i.i.i.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i14.i, i32 noundef 3) #9
  br label %batadv_orig_node_put.exit.i

if.then.i.i22.i:                                  ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_orig_node_release(ptr noundef %refcount.i14.i) #9
  br label %batadv_orig_node_put.exit.i

batadv_orig_node_put.exit.i:                      ; preds = %if.then.i.i22.i, %if.then10.i.i.i.i.i21.i, %if.end5.i.i.i.i.i20.i.batadv_orig_node_put.exit.i_crit_edge
  %tobool.not.i23.i = icmp eq ptr %router_ifinfo.154.i, null
  br i1 %tobool.not.i23.i, label %batadv_orig_node_put.exit.i.batadv_neigh_ifinfo_put.exit.i_crit_edge, label %if.end.i28.i

batadv_orig_node_put.exit.i.batadv_neigh_ifinfo_put.exit.i_crit_edge: ; preds = %batadv_orig_node_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_neigh_ifinfo_put.exit.i

if.end.i28.i:                                     ; preds = %batadv_orig_node_put.exit.i
  %refcount.i24.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %router_ifinfo.154.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i25.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i24.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i24.i, i32 1, i32 3, i32 1) #9
  %66 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i24.i, ptr %refcount.i24.i, i32 1, ptr elementtype(i32) %refcount.i24.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i26.i = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i26.i)
  %cmp.i.i.i.i.i27.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i26.i, 1
  br i1 %cmp.i.i.i.i.i27.i, label %if.then.i.i32.i, label %if.end5.i.i.i.i.i30.i

if.end5.i.i.i.i.i30.i:                            ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i26.i)
  %.not.i.i.i.i.i29.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i26.i, 0
  br i1 %.not.i.i.i.i.i29.i, label %if.end5.i.i.i.i.i30.i.batadv_neigh_ifinfo_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i31.i, !prof !68

if.end5.i.i.i.i.i30.i.batadv_neigh_ifinfo_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_neigh_ifinfo_put.exit.i

if.then10.i.i.i.i.i31.i:                          ; preds = %if.end5.i.i.i.i.i30.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i24.i, i32 noundef 3) #9
  br label %batadv_neigh_ifinfo_put.exit.i

if.then.i.i32.i:                                  ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i24.i) #9
  br label %batadv_neigh_ifinfo_put.exit.i

batadv_neigh_ifinfo_put.exit.i:                   ; preds = %if.then.i.i32.i, %if.then10.i.i.i.i.i31.i, %if.end5.i.i.i.i.i30.i.batadv_neigh_ifinfo_put.exit.i_crit_edge, %batadv_orig_node_put.exit.i.batadv_neigh_ifinfo_put.exit.i_crit_edge
  %tobool.not.i33.i = icmp eq ptr %neigh_ifinfo.156.i, null
  br i1 %tobool.not.i33.i, label %batadv_neigh_ifinfo_put.exit.i.batadv_v_ogm_route_update.exit_crit_edge, label %if.end.i38.i

batadv_neigh_ifinfo_put.exit.i.batadv_v_ogm_route_update.exit_crit_edge: ; preds = %batadv_neigh_ifinfo_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_route_update.exit

if.end.i38.i:                                     ; preds = %batadv_neigh_ifinfo_put.exit.i
  %refcount.i34.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %neigh_ifinfo.156.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i35.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i34.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i34.i, i32 1, i32 3, i32 1) #9
  %67 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i34.i, ptr %refcount.i34.i, i32 1, ptr elementtype(i32) %refcount.i34.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i36.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i36.i)
  %cmp.i.i.i.i.i37.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i36.i, 1
  br i1 %cmp.i.i.i.i.i37.i, label %if.then.i.i42.i, label %if.end5.i.i.i.i.i40.i

if.end5.i.i.i.i.i40.i:                            ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i36.i)
  %.not.i.i.i.i.i39.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i36.i, 0
  br i1 %.not.i.i.i.i.i39.i, label %if.end5.i.i.i.i.i40.i.batadv_v_ogm_route_update.exit_crit_edge, label %if.then10.i.i.i.i.i41.i, !prof !68

if.end5.i.i.i.i.i40.i.batadv_v_ogm_route_update.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_route_update.exit

if.then10.i.i.i.i.i41.i:                          ; preds = %if.end5.i.i.i.i.i40.i
  call void @refcount_warn_saturate(ptr noundef %refcount.i34.i, i32 noundef 3) #9
  %forward.0.off058.i.not82 = xor i1 %forward.0.off058.i, true
  %brmerge83 = or i1 %cmp2, %forward.0.off058.i.not82
  br i1 %brmerge83, label %if.then10.i.i.i.i.i41.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i41.i.if.end.i55_crit_edge

if.then10.i.i.i.i.i41.i.if.end.i55_crit_edge:     ; preds = %if.then10.i.i.i.i.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55

if.then10.i.i.i.i.i41.i.cleanup_crit_edge:        ; preds = %if.then10.i.i.i.i.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i42.i:                                  ; preds = %if.end.i38.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i34.i) #9
  %forward.0.off058.i.not = xor i1 %forward.0.off058.i, true
  %brmerge = or i1 %cmp2, %forward.0.off058.i.not
  br i1 %brmerge, label %if.then.i.i42.i.cleanup_crit_edge, label %if.then.i.i42.i.if.end.i55_crit_edge

if.then.i.i42.i.if.end.i55_crit_edge:             ; preds = %if.then.i.i42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55

if.then.i.i42.i.cleanup_crit_edge:                ; preds = %if.then.i.i42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

batadv_v_ogm_route_update.exit:                   ; preds = %if.end5.i.i.i.i.i40.i.batadv_v_ogm_route_update.exit_crit_edge, %batadv_neigh_ifinfo_put.exit.i.batadv_v_ogm_route_update.exit_crit_edge
  %forward.0.off058.i.not84 = xor i1 %forward.0.off058.i, true
  %brmerge85 = or i1 %cmp2, %forward.0.off058.i.not84
  br i1 %brmerge85, label %batadv_v_ogm_route_update.exit.cleanup_crit_edge, label %batadv_v_ogm_route_update.exit.if.end.i55_crit_edge

batadv_v_ogm_route_update.exit.if.end.i55_crit_edge: ; preds = %batadv_v_ogm_route_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55

batadv_v_ogm_route_update.exit.cleanup_crit_edge: ; preds = %batadv_v_ogm_route_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i55:                                       ; preds = %batadv_v_ogm_route_update.exit.if.end.i55_crit_edge, %if.then.i.i42.i.if.end.i55_crit_edge, %if.then10.i.i.i.i.i41.i.if.end.i55_crit_edge
  %call.i53 = call ptr @batadv_orig_ifinfo_new(ptr noundef %orig_node, ptr noundef nonnull %if_outgoing) #9
  %tobool.not.i54 = icmp eq ptr %call.i53, null
  br i1 %tobool.not.i54, label %if.end.i55.cleanup_crit_edge, label %if.end2.i

if.end.i55.cleanup_crit_edge:                     ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i55
  %call3.i56 = call ptr @batadv_orig_router_get(ptr noundef %orig_node, ptr noundef nonnull %if_outgoing) #9
  %cmp4.not.i = icmp eq ptr %call3.i56, %neigh_node
  br i1 %cmp4.not.i, label %if.end6.i, label %if.end2.i.if.end.i.i72_crit_edge

if.end2.i.if.end.i.i72_crit_edge:                 ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i72

if.end6.i:                                        ; preds = %if.end2.i
  %last_seqno_forwarded.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call.i53, i32 0, i32 5
  %68 = ptrtoint ptr %last_seqno_forwarded.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %last_seqno_forwarded.i, align 4
  %70 = ptrtoint ptr %seqno.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %seqno.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp7.i = icmp eq i32 %69, %71
  br i1 %cmp7.i, label %if.end6.i.if.end.i.i72_crit_edge, label %if.end9.i59

if.end6.i.if.end.i.i72_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i72

if.end9.i59:                                      ; preds = %if.end6.i
  %72 = ptrtoint ptr %last_seqno_forwarded.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %last_seqno_forwarded.i, align 4
  %ttl.i58 = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %ogm2, i32 0, i32 2
  %73 = ptrtoint ptr %ttl.i58 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ttl.i58, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %74)
  %cmp12.i = icmp ult i8 %74, 2
  br i1 %cmp12.i, label %do.body.i63, label %if.end20.i

do.body.i63:                                      ; preds = %if.end9.i59
  %log_level.i60 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i.i61 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i60, i32 noundef 4) #9
  %75 = ptrtoint ptr %log_level.i60 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %log_level.i60, align 4
  %and.i62 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool16.not.i = icmp eq i32 %and.i62, 0
  br i1 %tobool16.not.i, label %do.body.i63.if.end.i.i72_crit_edge, label %if.then17.i

do.body.i63.if.end.i.i72_crit_edge:               ; preds = %do.body.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i72

if.then17.i:                                      ; preds = %do.body.i63
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i64 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.20) #9
  br label %if.end.i.i72

if.end20.i:                                       ; preds = %if.end9.i59
  %call21.i65 = call ptr @batadv_neigh_ifinfo_get(ptr noundef %neigh_node, ptr noundef nonnull %if_outgoing) #9
  %tobool22.not.i = icmp eq ptr %call21.i65, null
  br i1 %tobool22.not.i, label %if.end20.i.if.end.i.i72_crit_edge, label %if.end24.i

if.end20.i.if.end.i.i72_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i72

if.end24.i:                                       ; preds = %if.end20.i
  %tvlv_len25.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %ogm2, i32 0, i32 6
  %77 = ptrtoint ptr %tvlv_len25.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %tvlv_len25.i, align 2
  %conv26.i = zext i16 %78 to i32
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_outgoing, i32 0, i32 4
  %79 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %net_dev.i, align 4
  %add.i.i.i = add nuw nsw i32 %conv26.i, 36
  %call.i.i82.i = call ptr @__netdev_alloc_skb(ptr noundef %80, i32 noundef %add.i.i.i, i32 noundef 2592) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i82.i, null
  br i1 %tobool.not.i.i.i, label %if.end24.i.if.end.i.i72_crit_edge, label %if.end31.i

if.end24.i.if.end.i.i72_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i72

if.end31.i:                                       ; preds = %if.end24.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i82.i, i32 0, i32 19
  %81 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i82.i, i32 0, i32 16
  %83 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.i = add nuw nsw i32 %conv26.i, 20
  %add.ptr.i.i = getelementptr i8, ptr %82, i32 16
  store ptr %add.ptr.i.i, ptr %data.i.i.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %84, i32 16
  store ptr %add.ptr1.i.i, ptr %tail.i.i.i.i, align 8
  %call.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i82.i, i32 noundef %add.i) #9
  %85 = call ptr @memcpy(ptr %call.i.i, ptr %ogm2, i32 %add.i)
  %bat_v.i66 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call21.i65, i32 0, i32 3
  %86 = ptrtoint ptr %bat_v.i66 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bat_v.i66, align 4
  %throughput33.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %call.i.i, i32 0, i32 7
  %88 = ptrtoint ptr %throughput33.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %87, ptr %throughput33.i, align 2
  %ttl34.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %call.i.i, i32 0, i32 2
  %89 = ptrtoint ptr %ttl34.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ttl34.i, align 2
  %dec.i = add i8 %90, -1
  store i8 %dec.i, ptr %ttl34.i, align 2
  %log_level37.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i81.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level37.i, i32 noundef 4) #9
  %91 = ptrtoint ptr %log_level37.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %log_level37.i, align 4
  %and39.i = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end31.i.if.end50.i_crit_edge, label %if.then41.i

if.end31.i.if.end50.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

if.then41.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %net_dev.i, align 4
  %95 = ptrtoint ptr %throughput33.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %throughput33.i, align 2
  %97 = ptrtoint ptr %ttl34.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %ttl34.i, align 2
  %conv45.i = zext i8 %98 to i32
  %net_dev46.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_incoming, i32 0, i32 4
  %99 = ptrtoint ptr %net_dev46.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %net_dev46.i, align 4
  %call49.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.21, ptr noundef %94, i32 noundef %96, i32 noundef %conv45.i, ptr noundef %100) #9
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then41.i, %if.end31.i.if.end50.i_crit_edge
  call fastcc void @batadv_v_ogm_queue_on_if(ptr noundef nonnull %call.i.i82.i, ptr noundef nonnull %if_outgoing) #9
  br label %if.end.i.i72

if.end.i.i72:                                     ; preds = %if.end50.i, %if.end24.i.if.end.i.i72_crit_edge, %if.end20.i.if.end.i.i72_crit_edge, %if.then17.i, %do.body.i63.if.end.i.i72_crit_edge, %if.end6.i.if.end.i.i72_crit_edge, %if.end2.i.if.end.i.i72_crit_edge
  %neigh_ifinfo.0.ph.i67 = phi ptr [ null, %do.body.i63.if.end.i.i72_crit_edge ], [ null, %if.then17.i ], [ null, %if.end20.i.if.end.i.i72_crit_edge ], [ %call21.i65, %if.end50.i ], [ null, %if.end6.i.if.end.i.i72_crit_edge ], [ null, %if.end2.i.if.end.i.i72_crit_edge ], [ %call21.i65, %if.end24.i.if.end.i.i72_crit_edge ]
  %refcount.i.i68 = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call.i53, i32 0, i32 8
  %call.i.i.i.i.i.i.i.i69 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i68, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i.i68, i32 1, i32 3, i32 1) #9
  %101 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i68, ptr %refcount.i.i68, i32 1, ptr elementtype(i32) %refcount.i.i68) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i.i70 = extractvalue { i32, i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i70)
  %cmp.i.i.i.i.i.i71 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i70, 1
  br i1 %cmp.i.i.i.i.i.i71, label %if.then.i.i83.i, label %if.end5.i.i.i.i.i.i74

if.end5.i.i.i.i.i.i74:                            ; preds = %if.end.i.i72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i70)
  %.not.i.i.i.i.i.i73 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i70, 0
  br i1 %.not.i.i.i.i.i.i73, label %if.end5.i.i.i.i.i.i74.batadv_orig_ifinfo_put.exit.i76_crit_edge, label %if.then10.i.i.i.i.i.i75, !prof !68

if.end5.i.i.i.i.i.i74.batadv_orig_ifinfo_put.exit.i76_crit_edge: ; preds = %if.end5.i.i.i.i.i.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_orig_ifinfo_put.exit.i76

if.then10.i.i.i.i.i.i75:                          ; preds = %if.end5.i.i.i.i.i.i74
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i68, i32 noundef 3) #9
  br label %batadv_orig_ifinfo_put.exit.i76

if.then.i.i83.i:                                  ; preds = %if.end.i.i72
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_orig_ifinfo_release(ptr noundef %refcount.i.i68) #9
  br label %batadv_orig_ifinfo_put.exit.i76

batadv_orig_ifinfo_put.exit.i76:                  ; preds = %if.then.i.i83.i, %if.then10.i.i.i.i.i.i75, %if.end5.i.i.i.i.i.i74.batadv_orig_ifinfo_put.exit.i76_crit_edge
  %tobool.not.i84.i = icmp eq ptr %call3.i56, null
  br i1 %tobool.not.i84.i, label %batadv_orig_ifinfo_put.exit.i76.batadv_neigh_node_put.exit.i77_crit_edge, label %if.end.i89.i

batadv_orig_ifinfo_put.exit.i76.batadv_neigh_node_put.exit.i77_crit_edge: ; preds = %batadv_orig_ifinfo_put.exit.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_neigh_node_put.exit.i77

if.end.i89.i:                                     ; preds = %batadv_orig_ifinfo_put.exit.i76
  %refcount.i85.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call3.i56, i32 0, i32 8
  %call.i.i.i.i.i.i.i86.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i85.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i85.i, i32 1, i32 3, i32 1) #9
  %102 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i85.i, ptr %refcount.i85.i, i32 1, ptr elementtype(i32) %refcount.i85.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i87.i = extractvalue { i32, i32, i32 } %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i87.i)
  %cmp.i.i.i.i.i88.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i87.i, 1
  br i1 %cmp.i.i.i.i.i88.i, label %if.then.i.i93.i, label %if.end5.i.i.i.i.i91.i

if.end5.i.i.i.i.i91.i:                            ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i87.i)
  %.not.i.i.i.i.i90.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i87.i, 0
  br i1 %.not.i.i.i.i.i90.i, label %if.end5.i.i.i.i.i91.i.batadv_neigh_node_put.exit.i77_crit_edge, label %if.then10.i.i.i.i.i92.i, !prof !68

if.end5.i.i.i.i.i91.i.batadv_neigh_node_put.exit.i77_crit_edge: ; preds = %if.end5.i.i.i.i.i91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_neigh_node_put.exit.i77

if.then10.i.i.i.i.i92.i:                          ; preds = %if.end5.i.i.i.i.i91.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i85.i, i32 noundef 3) #9
  br label %batadv_neigh_node_put.exit.i77

if.then.i.i93.i:                                  ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_neigh_node_release(ptr noundef %refcount.i85.i) #9
  br label %batadv_neigh_node_put.exit.i77

batadv_neigh_node_put.exit.i77:                   ; preds = %if.then.i.i93.i, %if.then10.i.i.i.i.i92.i, %if.end5.i.i.i.i.i91.i.batadv_neigh_node_put.exit.i77_crit_edge, %batadv_orig_ifinfo_put.exit.i76.batadv_neigh_node_put.exit.i77_crit_edge
  %tobool.not.i94.i = icmp eq ptr %neigh_ifinfo.0.ph.i67, null
  br i1 %tobool.not.i94.i, label %batadv_neigh_node_put.exit.i77.cleanup_crit_edge, label %if.end.i99.i

batadv_neigh_node_put.exit.i77.cleanup_crit_edge: ; preds = %batadv_neigh_node_put.exit.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i99.i:                                     ; preds = %batadv_neigh_node_put.exit.i77
  %refcount.i95.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %neigh_ifinfo.0.ph.i67, i32 0, i32 5
  %call.i.i.i.i.i.i.i96.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i95.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @llvm.prefetch.p0(ptr %refcount.i95.i, i32 1, i32 3, i32 1) #9
  %103 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i95.i, ptr %refcount.i95.i, i32 1, ptr elementtype(i32) %refcount.i95.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i97.i = extractvalue { i32, i32, i32 } %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i97.i)
  %cmp.i.i.i.i.i98.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i97.i, 1
  br i1 %cmp.i.i.i.i.i98.i, label %if.then.i.i103.i, label %if.end5.i.i.i.i.i101.i

if.end5.i.i.i.i.i101.i:                           ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i97.i)
  %.not.i.i.i.i.i100.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i97.i, 0
  br i1 %.not.i.i.i.i.i100.i, label %if.end5.i.i.i.i.i101.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i102.i, !prof !68

if.end5.i.i.i.i.i101.i.cleanup_crit_edge:         ; preds = %if.end5.i.i.i.i.i101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i102.i:                         ; preds = %if.end5.i.i.i.i.i101.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i95.i, i32 noundef 3) #9
  br label %cleanup

if.then.i.i103.i:                                 ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i95.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i103.i, %if.then10.i.i.i.i.i102.i, %if.end5.i.i.i.i.i101.i.cleanup_crit_edge, %batadv_neigh_node_put.exit.i77.cleanup_crit_edge, %if.end.i55.cleanup_crit_edge, %batadv_v_ogm_route_update.exit.cleanup_crit_edge, %if.then.i.i42.i.cleanup_crit_edge, %if.then10.i.i.i.i.i41.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %batadv_v_ogm_metric_update.exit.cleanup_crit_edge, %batadv_v_ogm_metric_update.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_hardif_no_broadcast(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_tvlv_containers_process(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_ifinfo_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_window_protected(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_neigh_ifinfo_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_ifinfo_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_neigh_ifinfo_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_router_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_neigh_ifinfo_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_update_route(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_v_ogm_queue_on_if(ptr noundef %skb, ptr noundef %hard_iface) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %aggregated_ogms = getelementptr i8, ptr %1, i32 2316
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aggregated_ogms, i32 noundef 4) #9
  %2 = ptrtoint ptr %aggregated_ogms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %aggregated_ogms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @batadv_v_ogm_send_to_if(ptr noundef %skb, ptr noundef %hard_iface)
  br label %cleanup

if.end:                                           ; preds = %entry
  %aggr_list = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5
  %lock = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 4
  %4 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %tvlv_len.i.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %tvlv_len.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tvlv_len.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %12 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end.batadv_v_ogm_queue_left.exit_crit_edge, label %land.rhs.i

if.end.batadv_v_ogm_queue_left.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_queue_left.exit

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5, i32 2, i32 0, i32 0, i32 4
  %call.i.i22 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %cmp2.not.i = icmp eq i32 %call.i.i22, 0
  br i1 %cmp2.not.i, label %do.end.i, label %land.rhs.i.batadv_v_ogm_queue_left.exit_crit_edge, !prof !67

land.rhs.i.batadv_v_ogm_queue_left.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_ogm_queue_left.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 168, i32 noundef 9, ptr noundef null) #9
  br label %batadv_v_ogm_queue_left.exit

batadv_v_ogm_queue_left.exit:                     ; preds = %do.end.i, %land.rhs.i.batadv_v_ogm_queue_left.exit_crit_edge, %if.end.batadv_v_ogm_queue_left.exit_crit_edge
  %conv.i.i = zext i16 %11 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 20
  %13 = tail call i32 @llvm.umin.i32(i32 %7, i32 512) #9
  %aggr_len.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 6
  %14 = ptrtoint ptr %aggr_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %aggr_len.i, align 4
  %add.i = add i32 %add.i.i, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %13)
  %cmp28.i.not = icmp ugt i32 %add.i, %13
  br i1 %cmp28.i.not, label %if.then3, label %batadv_v_ogm_queue_left.exit.if.end4_crit_edge

batadv_v_ogm_queue_left.exit.if.end4_crit_edge:   ; preds = %batadv_v_ogm_queue_left.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %batadv_v_ogm_queue_left.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @batadv_v_ogm_aggr_send(ptr noundef %hard_iface)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %batadv_v_ogm_queue_left.exit.if.end4_crit_edge
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %tvlv_len.i = getelementptr inbounds %struct.batadv_ogm2_packet, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %tvlv_len.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tvlv_len.i, align 2
  %conv.i = zext i16 %19 to i32
  %add.i23 = add nuw nsw i32 %conv.i, 20
  %20 = ptrtoint ptr %aggr_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %aggr_len.i, align 4
  %add = add i32 %add.i23, %21
  store i32 %add, ptr %aggr_len.i, align 4
  %prev.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %aggr_list, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 1
  %25 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %skb, ptr %23, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 5, i32 1
  %27 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_neigh_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_neigh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tt_local_commit_changes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @batadv_tvlv_container_ogm_append(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !49, !50, !52, !54}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/batman-adv/bat_v_ogm.c", i32 997, i32 39}
!2 = !{ptr @batadv_v_ogm_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../net/batman-adv/bat_v_ogm.c", i32 1063, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @batadv_v_ogm_init.__key.2, !3, !"__key", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @batadv_v_ogm_init.__key.4, !8, !"__key", i1 false, i1 false}
!8 = !{!"../net/batman-adv/bat_v_ogm.c", i32 1065, i32 2}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/batman-adv/bat_v_ogm.c", i32 207, i32 2}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/batman-adv/bat_v_ogm.c", i32 869, i32 2}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/batman-adv/bat_v_ogm.c", i32 877, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/batman-adv/bat_v_ogm.c", i32 886, i32 3}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/batman-adv/bat_v_ogm.c", i32 894, i32 3}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/batman-adv/bat_v_ogm.c", i32 924, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/batman-adv/bat_v_ogm.c", i32 943, i32 12}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/batman-adv/bat_v_ogm.c", i32 946, i32 12}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/batman-adv/bat_v_ogm.c", i32 949, i32 12}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/batman-adv/bat_v_ogm.c", i32 952, i32 12}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/batman-adv/bat_v_ogm.c", i32 955, i32 4}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/batman-adv/bat_v_ogm.c", i32 631, i32 3}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/batman-adv/bat_v_ogm.c", i32 634, i32 3}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/batman-adv/bat_v_ogm.c", i32 727, i32 2}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/batman-adv/bat_v_ogm.c", i32 555, i32 3}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/batman-adv/bat_v_ogm.c", i32 579, i32 2}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/batman-adv/bat_v_ogm.c", i32 303, i32 2}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/batman-adv/bat_v_ogm.c", i32 328, i32 4}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/batman-adv/bat_v_ogm.c", i32 335, i32 3}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2148164857, i64 2148164889, i64 2148164918, i64 2148164952, i64 2148164983, i64 2148165006}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2149810933}
!70 = !{i64 2148163327, i64 2148163353, i64 2148163382, i64 2148163416, i64 2148163447, i64 2148163470}
!71 = !{i64 2148252858}
!72 = !{i64 2148167322, i64 2148167354, i64 2148167383, i64 2148167417, i64 2148167448, i64 2148167471}
!73 = !{i64 2150583869}
!74 = !{i64 616654, i64 616715}
!75 = !{i64 619386}
!76 = !{i64 619671}
!77 = !{i64 2149709322}
!78 = !{i64 538161, i64 538185, i64 538206, i64 538223, i64 538240}
!79 = !{i64 2149709588}
!80 = !{!"auto-init"}
!81 = !{i8 0, i8 2}
